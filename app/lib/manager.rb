class Manager
  NEW_YROK_GEOS = [
    [40.70699430376331,-74.01042938232422],
    [40.720136007355364,-74.00588035583496],
    [40.71675324247426,-73.98794174194336],
    [40.728266950429735,-73.98193359375],
    [40.730088145502236,-74.0009880065918],
    [40.73607172122901,-73.99223327636719],
    [40.743615462751656,-74.00141716003418],
    [40.74615152850815,-73.97944450378418],
    [40.750573155441934,-73.99463653564453],
    [40.7578551941835,-73.99995803833008],
    [40.757335075010026,-73.9706039428711],
    [40.763121171621314,-73.98210525512695],
    [40.76988181489869,-73.9918041229248],
    [40.76975180901395,-73.95918846130371],
    [40.776186794983424,-73.97541046142577],
    [40.78346602771937,-73.95549774169922],
    [40.78963975163512,-73.97051811218262],
    [40.80114084320795,-73.96056175231934],
    [40.79646267347455,-73.94339561462402],
    [40.809131953785965,-73.9434814453125],
    [40.81413402921382,-73.95661354064941],
    [40.82166891138587,-73.93884658813477],
    [40.82946271642238,-73.94768714904785],
    [40.839658228207675,-73.94021987915038],
    [40.85134542065296,-73.9339542388916],
    [40.85933048338915,-73.93017768859863],
    [40.87004064134163,-73.92030715942383]
  ]

  def self.update
    NEW_YROK_GEOS.each do |geo|
      UpdateWorker.perform_async(geo[0], geo[1], "new york")
    end
  end
end