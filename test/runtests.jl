########################################################################################################################
module runtests
########################################################################################################################
########################################################################################################################
# imports and exports
using DataAssimilationBenchmarks.DeSolvers
using DataAssimilationBenchmarks.L96
using JLD
using Random
using Test

# include statements and import statements
include("TestDeSolvers.jl")
import .TestDeSolvers
import .L96

include("TestTimeSeriesGeneration.jl")
import .TestDeSolvers
import .L96

# test case 1: TestDeSolvers
@testset "Euler Maruyama" begin
    @test TestDeSolvers.sumfunc()
end

# test case 2: TestTimeSeriesGeneration
@testset "Time Series" begin
    @test TestTimeSeriesGeneration.testL96()
end
end
