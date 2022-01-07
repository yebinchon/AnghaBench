; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/mathlib/extr_mathlib.c_ProjectPointOnPlane.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/mathlib/extr_mathlib.c_ProjectPointOnPlane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ProjectPointOnPlane(float* %0, float* %1, float* %2) #0 {
  %4 = alloca float*, align 8
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float, align 4
  %8 = alloca float*, align 8
  %9 = alloca float, align 4
  store float* %0, float** %4, align 8
  store float* %1, float** %5, align 8
  store float* %2, float** %6, align 8
  %10 = load float*, float** %6, align 8
  %11 = load float*, float** %6, align 8
  %12 = call float @DotProduct(float* %10, float* %11)
  %13 = fdiv float 1.000000e+00, %12
  store float %13, float* %9, align 4
  %14 = load float*, float** %6, align 8
  %15 = load float*, float** %5, align 8
  %16 = call float @DotProduct(float* %14, float* %15)
  %17 = load float, float* %9, align 4
  %18 = fmul float %16, %17
  store float %18, float* %7, align 4
  %19 = load float*, float** %6, align 8
  %20 = getelementptr inbounds float, float* %19, i64 0
  %21 = load float, float* %20, align 4
  %22 = load float, float* %9, align 4
  %23 = fmul float %21, %22
  %24 = load float*, float** %8, align 8
  %25 = getelementptr inbounds float, float* %24, i64 0
  store float %23, float* %25, align 4
  %26 = load float*, float** %6, align 8
  %27 = getelementptr inbounds float, float* %26, i64 1
  %28 = load float, float* %27, align 4
  %29 = load float, float* %9, align 4
  %30 = fmul float %28, %29
  %31 = load float*, float** %8, align 8
  %32 = getelementptr inbounds float, float* %31, i64 1
  store float %30, float* %32, align 4
  %33 = load float*, float** %6, align 8
  %34 = getelementptr inbounds float, float* %33, i64 2
  %35 = load float, float* %34, align 4
  %36 = load float, float* %9, align 4
  %37 = fmul float %35, %36
  %38 = load float*, float** %8, align 8
  %39 = getelementptr inbounds float, float* %38, i64 2
  store float %37, float* %39, align 4
  %40 = load float*, float** %5, align 8
  %41 = getelementptr inbounds float, float* %40, i64 0
  %42 = load float, float* %41, align 4
  %43 = load float, float* %7, align 4
  %44 = load float*, float** %8, align 8
  %45 = getelementptr inbounds float, float* %44, i64 0
  %46 = load float, float* %45, align 4
  %47 = fmul float %43, %46
  %48 = fsub float %42, %47
  %49 = load float*, float** %4, align 8
  %50 = getelementptr inbounds float, float* %49, i64 0
  store float %48, float* %50, align 4
  %51 = load float*, float** %5, align 8
  %52 = getelementptr inbounds float, float* %51, i64 1
  %53 = load float, float* %52, align 4
  %54 = load float, float* %7, align 4
  %55 = load float*, float** %8, align 8
  %56 = getelementptr inbounds float, float* %55, i64 1
  %57 = load float, float* %56, align 4
  %58 = fmul float %54, %57
  %59 = fsub float %53, %58
  %60 = load float*, float** %4, align 8
  %61 = getelementptr inbounds float, float* %60, i64 1
  store float %59, float* %61, align 4
  %62 = load float*, float** %5, align 8
  %63 = getelementptr inbounds float, float* %62, i64 2
  %64 = load float, float* %63, align 4
  %65 = load float, float* %7, align 4
  %66 = load float*, float** %8, align 8
  %67 = getelementptr inbounds float, float* %66, i64 2
  %68 = load float, float* %67, align 4
  %69 = fmul float %65, %68
  %70 = fsub float %64, %69
  %71 = load float*, float** %4, align 8
  %72 = getelementptr inbounds float, float* %71, i64 2
  store float %70, float* %72, align 4
  ret void
}

declare dso_local float @DotProduct(float*, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
