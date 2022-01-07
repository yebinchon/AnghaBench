; ModuleID = '/home/carl/AnghaBench/glfw/examples/extr_heightmap.c_generate_heightmap__circle.c'
source_filename = "/home/carl/AnghaBench/glfw/examples/extr_heightmap.c_generate_heightmap__circle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAP_SIZE = common dso_local global float 0.000000e+00, align 4
@RAND_MAX = common dso_local global float 0.000000e+00, align 4
@MAX_CIRCLE_SIZE = common dso_local global float 0.000000e+00, align 4
@DISPLACEMENT_SIGN_LIMIT = common dso_local global float 0.000000e+00, align 4
@MAX_DISPLACEMENT = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, float*, float*, float*)* @generate_heightmap__circle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generate_heightmap__circle(float* %0, float* %1, float* %2, float* %3) #0 {
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float, align 4
  store float* %0, float** %5, align 8
  store float* %1, float** %6, align 8
  store float* %2, float** %7, align 8
  store float* %3, float** %8, align 8
  %10 = load float, float* @MAP_SIZE, align 4
  %11 = call float (...) @rand()
  %12 = fmul float %10, %11
  %13 = load float, float* @RAND_MAX, align 4
  %14 = fmul float 1.000000e+00, %13
  %15 = fdiv float %12, %14
  %16 = load float*, float** %5, align 8
  store float %15, float* %16, align 4
  %17 = load float, float* @MAP_SIZE, align 4
  %18 = call float (...) @rand()
  %19 = fmul float %17, %18
  %20 = load float, float* @RAND_MAX, align 4
  %21 = fmul float 1.000000e+00, %20
  %22 = fdiv float %19, %21
  %23 = load float*, float** %6, align 8
  store float %22, float* %23, align 4
  %24 = load float, float* @MAX_CIRCLE_SIZE, align 4
  %25 = call float (...) @rand()
  %26 = fmul float %24, %25
  %27 = load float, float* @RAND_MAX, align 4
  %28 = fmul float 1.000000e+00, %27
  %29 = fdiv float %26, %28
  %30 = load float*, float** %7, align 8
  store float %29, float* %30, align 4
  %31 = call float (...) @rand()
  %32 = fmul float 1.000000e+00, %31
  %33 = load float, float* @RAND_MAX, align 4
  %34 = fmul float 1.000000e+00, %33
  %35 = fdiv float %32, %34
  store float %35, float* %9, align 4
  %36 = load float, float* %9, align 4
  %37 = load float, float* @DISPLACEMENT_SIGN_LIMIT, align 4
  %38 = fcmp olt float %36, %37
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, float -1.000000e+00, float 1.000000e+00
  store float %40, float* %9, align 4
  %41 = load float, float* %9, align 4
  %42 = load float, float* @MAX_DISPLACEMENT, align 4
  %43 = call float (...) @rand()
  %44 = fmul float %42, %43
  %45 = fmul float %41, %44
  %46 = load float, float* @RAND_MAX, align 4
  %47 = fmul float 1.000000e+00, %46
  %48 = fdiv float %45, %47
  %49 = load float*, float** %8, align 8
  store float %48, float* %49, align 4
  ret void
}

declare dso_local float @rand(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
