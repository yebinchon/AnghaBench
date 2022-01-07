; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_shaders.c_TCModRotate.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_shaders.c_TCModRotate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Q_PI = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TCModRotate(float** %0, float %1) #0 {
  %3 = alloca float**, align 8
  %4 = alloca float, align 4
  %5 = alloca float**, align 8
  %6 = alloca float**, align 8
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  store float** %0, float*** %3, align 8
  store float %1, float* %4, align 4
  %10 = load float**, float*** %5, align 8
  %11 = load float**, float*** %3, align 8
  %12 = call i32 @memcpy(float** %10, float** %11, i32 8)
  %13 = load float**, float*** %6, align 8
  %14 = call i32 @TCModIdentity(float** %13)
  %15 = load float, float* %4, align 4
  %16 = fdiv float %15, 1.800000e+02
  %17 = load float, float* @Q_PI, align 4
  %18 = fmul float %16, %17
  store float %18, float* %7, align 4
  %19 = load float, float* %7, align 4
  %20 = call float @sin(float %19)
  store float %20, float* %8, align 4
  %21 = load float, float* %7, align 4
  %22 = call float @cos(float %21)
  store float %22, float* %9, align 4
  %23 = load float, float* %9, align 4
  %24 = load float**, float*** %6, align 8
  %25 = getelementptr inbounds float*, float** %24, i64 0
  %26 = load float*, float** %25, align 8
  %27 = getelementptr inbounds float, float* %26, i64 0
  store float %23, float* %27, align 4
  %28 = load float, float* %8, align 4
  %29 = fneg float %28
  %30 = load float**, float*** %6, align 8
  %31 = getelementptr inbounds float*, float** %30, i64 0
  %32 = load float*, float** %31, align 8
  %33 = getelementptr inbounds float, float* %32, i64 1
  store float %29, float* %33, align 4
  %34 = load float, float* %8, align 4
  %35 = load float**, float*** %6, align 8
  %36 = getelementptr inbounds float*, float** %35, i64 1
  %37 = load float*, float** %36, align 8
  %38 = getelementptr inbounds float, float* %37, i64 0
  store float %34, float* %38, align 4
  %39 = load float, float* %9, align 4
  %40 = load float**, float*** %6, align 8
  %41 = getelementptr inbounds float*, float** %40, i64 1
  %42 = load float*, float** %41, align 8
  %43 = getelementptr inbounds float, float* %42, i64 1
  store float %39, float* %43, align 4
  %44 = load float**, float*** %5, align 8
  %45 = load float**, float*** %6, align 8
  %46 = load float**, float*** %3, align 8
  %47 = call i32 @TCModMultiply(float** %44, float** %45, float** %46)
  ret void
}

declare dso_local i32 @memcpy(float**, float**, i32) #1

declare dso_local i32 @TCModIdentity(float**) #1

declare dso_local float @sin(float) #1

declare dso_local float @cos(float) #1

declare dso_local i32 @TCModMultiply(float**, float**, float**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
