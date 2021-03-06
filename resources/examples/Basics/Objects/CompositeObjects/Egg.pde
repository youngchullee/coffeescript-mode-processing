class Egg
    
    # x, y // X-coordinate, y-coordinate
    # tilt // Left and right angle offset
    # angle // Used to define the tilt
    # scalar // Height of the egg

    # Constructor
    constructor: ( @x, @y, @tilt, s) ->
        
        @scalar = s / 100.0
        @angle = 0.0
    
    
    wobble: ->
        
        @tilt = cos(@angle) / 8
        @angle += 0.1
    
    
    display: ->
        
        noStroke()
        fill 255
        pushMatrix()
        translate @x, @y
        rotate @tilt
        scale @scalar
        beginShape()
        vertex 0, -100
        bezierVertex 25, -100, 40, -65, 40, -40
        bezierVertex 40, -15, 25, 0, 0, 0
        bezierVertex -25, 0, -40, -15, -40, -40
        bezierVertex -40, -65, -25, -100, 0, -100
        endShape()
        popMatrix()

