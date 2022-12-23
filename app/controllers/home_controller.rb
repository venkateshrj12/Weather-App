class HomeController < ApplicationController

  def index
    url = "https://api.openweathermap.org/data/2.5/weather?lat=16.8302&lon=75.7100&units=metric&appid=" + api_key
    uri = URI(url)
    res = Net::HTTP.get_response(uri)
    @data = JSON.parse(res.body)

  end

  private
  def api_key
    api_id = "c808287b313648fde08d62045a001233"
  end

  def co_ordinates
    @lat = :lat
    @lon = :lon
  end

end
