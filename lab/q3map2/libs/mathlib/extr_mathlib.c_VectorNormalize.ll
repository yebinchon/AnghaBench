; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/mathlib/extr_mathlib.c_VectorNormalize.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/mathlib/extr_mathlib.c_VectorNormalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @VectorNormalize(float* %0, float* %1) #0 {
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
  %11 = load float*, float** %4, align 8
  %12 = getelementptr inbounds float, float* %11, i64 0
  %13 = load float, float* %12, align 4
  %14 = fmul float %10, %13
  %15 = load float*, float** %4, align 8
  %16 = getelementptr inbounds float, float* %15, i64 1
  %17 = load float, float* %16, align 4
  %18 = load float*, float** %4, align 8
  %19 = getelementptr inbounds float, float* %18, i64 1
  %20 = load float, float* %19, align 4
  %21 = fmul float %17, %20
  %22 = fadd float %14, %21
  %23 = load float*, float** %4, align 8
  %24 = getelementptr inbounds float, float* %23, i64 2
  %25 = load float, float* %24, align 4
  %26 = load float*, float** %4, align 8
  %27 = getelementptr inbounds float, float* %26, i64 2
  %28 = load float, float* %27, align 4
  %29 = fmul float %25, %28
  %30 = fadd float %22, %29
  %31 = call double @sqrt(float %30)
  %32 = fptrunc double %31 to float
  store float %32, float* %6, align 4
  %33 = load float, float* %6, align 4
  %34 = fcmp oeq float %33, 0.000000e+00
  br i1 %34, label %35, label %38

35:                                               ; preds = %2
  %36 = load float*, float** %5, align 8
  %37 = call i32 @VectorClear(float* %36)
  store float 0.000000e+00, float* %3, align 4
  br label %63

38:                                               ; preds = %2
  %39 = load float, float* %6, align 4
  %40 = fdiv float 1.000000e+00, %39
  store float %40, float* %7, align 4
  %41 = load float*, float** %4, align 8
  %42 = getelementptr inbounds float, float* %41, i64 0
  %43 = load float, float* %42, align 4
  %44 = load float, float* %7, align 4
  %45 = fmul float %43, %44
  %46 = load float*, float** %5, align 8
  %47 = getelementptr inbounds float, float* %46, i64 0
  store float %45, float* %47, align 4
  %48 = load float*, float** %4, align 8
  %49 = getelementptr inbounds float, float* %48, i64 1
  %50 = load float, float* %49, align 4
  %51 = load float, float* %7, align 4
  %52 = fmul float %50, %51
  %53 = load float*, float** %5, align 8
  %54 = getelementptr inbounds float, float* %53, i64 1
  store float %52, float* %54, align 4
  %55 = load float*, float** %4, align 8
  %56 = getelementptr inbounds float, float* %55, i64 2
  %57 = load float, float* %56, align 4
  %58 = load float, float* %7, align 4
  %59 = fmul float %57, %58
  %60 = load float*, float** %5, align 8
  %61 = getelementptr inbounds float, float* %60, i64 2
  store float %59, float* %61, align 4
  %62 = load float, float* %6, align 4
  store float %62, float* %3, align 4
  br label %63

63:                                               ; preds = %38, %35
  %64 = load float, float* %3, align 4
  ret float %64
}

declare dso_local double @sqrt(float) #1

declare dso_local i32 @VectorClear(float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
