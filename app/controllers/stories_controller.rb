class StoriesController < ApplicationController
  def index

    @stories = Story.all

  end


  def new

    @story = Story.new

  end

  def create

    @story = Story.new(magical_params)
    if @story.save
       flash[:notice] = "Story submission succeeded"
       redirect_to stories_path

    else

      render :new


    end


  end

  private

  def magical_params 
    
    params.require(:story).permit(:name,:link)

end

end