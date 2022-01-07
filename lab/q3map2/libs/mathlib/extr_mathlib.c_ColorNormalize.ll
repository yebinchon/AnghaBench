; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/mathlib/extr_mathlib.c_ColorNormalize.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/mathlib/extr_mathlib.c_ColorNormalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @ColorNormalize(float* %0, float* %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float*, align 8
  %5 = alloca float*, align 8
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  store float* %0, float** %4, align 8
  store float* %1, float** %5, align 8
  %8 = load float*, float** %4, align 8
  %9 = getelementptr inbounds float, float* %8, i64 0
  %10 = load float, float* %9, align 4
  store float %10, float* %6, align 4
  %11 = load float*, float** %4, align 8
  %12 = getelementptr inbounds float, float* %11, i64 1
  %13 = load float, float* %12, align 4
  %14 = load float, float* %6, align 4
  %15 = fcmp ogt float %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load float*, float** %4, align 8
  %18 = getelementptr inbounds float, float* %17, i64 1
  %19 = load float, float* %18, align 4
  store float %19, float* %6, align 4
  br label %20

20:                                               ; preds = %16, %2
  %21 = load float*, float** %4, align 8
  %22 = getelementptr inbounds float, float* %21, i64 2
  %23 = load float, float* %22, align 4
  %24 = load float, float* %6, align 4
  %25 = fcmp ogt float %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load float*, float** %4, align 8
  %28 = getelementptr inbounds float, float* %27, i64 2
  %29 = load float, float* %28, align 4
  store float %29, float* %6, align 4
  br label %30

30:                                               ; preds = %26, %20
  %31 = load float, float* %6, align 4
  %32 = fcmp oeq float %31, 0.000000e+00
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load float*, float** %5, align 8
  %35 = getelementptr inbounds float, float* %34, i64 2
  store float 1.000000e+00, float* %35, align 4
  %36 = load float*, float** %5, align 8
  %37 = getelementptr inbounds float, float* %36, i64 1
  store float 1.000000e+00, float* %37, align 4
  %38 = load float*, float** %5, align 8
  %39 = getelementptr inbounds float, float* %38, i64 0
  store float 1.000000e+00, float* %39, align 4
  store float 0.000000e+00, float* %3, align 4
  br label %48

40:                                               ; preds = %30
  %41 = load float, float* %6, align 4
  %42 = fdiv float 1.000000e+00, %41
  store float %42, float* %7, align 4
  %43 = load float*, float** %4, align 8
  %44 = load float, float* %7, align 4
  %45 = load float*, float** %5, align 8
  %46 = call i32 @VectorScale(float* %43, float %44, float* %45)
  %47 = load float, float* %6, align 4
  store float %47, float* %3, align 4
  br label %48

48:                                               ; preds = %40, %33
  %49 = load float, float* %3, align 4
  ret float %49
}

declare dso_local i32 @VectorScale(float*, float, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
