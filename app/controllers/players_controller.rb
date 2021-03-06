class PlayersController < ApplicationController
  before_action :logged_in_user, only: [:index]

  def index
    @players = sort_by_position(Player.all)
  end

  def show
    @player = Player.find(params[:id])
    @points = @player['gameweek_points']
  end

  def new
  end
end
