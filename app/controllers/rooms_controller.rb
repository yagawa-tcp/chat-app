class RoomsController < ApplicationController

def index
end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    room = Room.find(params[:room_id]) 
    mroom.destroy
    redirect_to room_path
  end

  private

  def room_params
    params.require(:room).permit(:name, user_ids:[])
  end
end