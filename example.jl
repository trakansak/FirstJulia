using Pkg
using Random
using Formatting
using Printf

# VERSION
function Version()
    println("PYTHON CONVERT JULIA (1)")
    println("Julia Version :: " , VERSION)
end

# RANDOM NUMBER
function rng()
    println("PYTHON CONVERT JULIA (2)")
    # Generate 5 random numbers
    rng = MersenneTwister(1234);
    for i = 1:5
        x = rand!(rng, zeros(1))
        println(x)
    end
    println()

    # Generate a list of 5 random numbers
    y = rand!(rng, zeros(5))
    println(y)
    println()

    # np.info('random')
    z = sqrt(2)
    println(z)
end

function Constant()

    println("PYTHON CONVERT JULIA (3)")
    n = 1000000
    some = 0.0
    for k = 1:n
        some += 1.0/(k*k)
    end

    api = sqrt(6*some)
    println("PI = $(@sprintf("%16.15f",api))")
    bpi = 4*atan(1)
    println("PI = $(@sprintf("%16.15f",bpi))")
    println("PI = $(@sprintf("%16.15f",pi))")
end

function formatting()
    println("PYTHON CONVERT JULIA (4)")
    println("$(@sprintf("%.16f %.16f",(1/49.0*49),(1/51.0*51)))")
    # println("$(@sprintf("{1:.16f}","{2:.16f}",(1/49.0*49),(1/51.0*51)))")
end

function Hyperbolic()
    println("PYTHON CONVERT JULIA (5)")
    e = MathConstants.e
    x = 2*pi
    r1 = sinh(x)
    r2 = (exp(x) - exp(-x))/2
    r3 = (e^(x) - e^(-x))/2

    println("$(@sprintf("%.16f\n%.16f\n%.16f\n",r1,r2,r3))")
end

function Mth()
    println("PYTHON CONVERT JULIA (6)")
    x = 1 ./ 3
    n = 20
    s = 0
    for k = 1:(n+1)
        s += (1.0/k)*(x/(1.0+x))^k
    end
    println("$(@sprintf("%.16f",s))")
    println("$(@sprintf("%.16f", log(x+1)))")
end

function main()
    #1
    println()
    Version()
    #2
    println()
    rng()
    #3
    println()
    Constant()
    #4
    println()
    formatting()
    #5
    println()
    Hyperbolic()
    #6
    println()
    Mth()
end

# RUNNING
main()

