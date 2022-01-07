; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_q_math.c_VectorNormalize2.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_q_math.c_VectorNormalize2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @VectorNormalize2(float* %0, float* %1) #0 {
  %3 = alloca float*, align 8
  %4 = alloca float*, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  store float* %0, float** %3, align 8
  store float* %1, float** %4, align 8
  %7 = load float*, float** %3, align 8
  %8 = getelementptr inbounds float, float* %7, i64 0
  %9 = load float, float* %8, align 4
  %10 = load float*, float** %3, align 8
  %11 = getelementptr inbounds float, float* %10, i64 0
  %12 = load float, float* %11, align 4
  %13 = fmul float %9, %12
  %14 = load float*, float** %3, align 8
  %15 = getelementptr inbounds float, float* %14, i64 1
  %16 = load float, float* %15, align 4
  %17 = load float*, float** %3, align 8
  %18 = getelementptr inbounds float, float* %17, i64 1
  %19 = load float, float* %18, align 4
  %20 = fmul float %16, %19
  %21 = fadd float %13, %20
  %22 = load float*, float** %3, align 8
  %23 = getelementptr inbounds float, float* %22, i64 2
  %24 = load float, float* %23, align 4
  %25 = load float*, float** %3, align 8
  %26 = getelementptr inbounds float, float* %25, i64 2
  %27 = load float, float* %26, align 4
  %28 = fmul float %24, %27
  %29 = fadd float %21, %28
  store float %29, float* %5, align 4
  %30 = load float, float* %5, align 4
  %31 = fcmp une float %30, 0.000000e+00
  br i1 %31, label %32, label %61

32:                                               ; preds = %2
  %33 = load float, float* %5, align 4
  %34 = call i64 @sqrt(float %33)
  %35 = sitofp i64 %34 to float
  %36 = fdiv float 1.000000e+00, %35
  store float %36, float* %6, align 4
  %37 = load float, float* %6, align 4
  %38 = load float, float* %5, align 4
  %39 = fmul float %38, %37
  store float %39, float* %5, align 4
  %40 = load float*, float** %3, align 8
  %41 = getelementptr inbounds float, float* %40, i64 0
  %42 = load float, float* %41, align 4
  %43 = load float, float* %6, align 4
  %44 = fmul float %42, %43
  %45 = load float*, float** %4, align 8
  %46 = getelementptr inbounds float, float* %45, i64 0
  store float %44, float* %46, align 4
  %47 = load float*, float** %3, align 8
  %48 = getelementptr inbounds float, float* %47, i64 1
  %49 = load float, float* %48, align 4
  %50 = load float, float* %6, align 4
  %51 = fmul float %49, %50
  %52 = load float*, float** %4, align 8
  %53 = getelementptr inbounds float, float* %52, i64 1
  store float %51, float* %53, align 4
  %54 = load float*, float** %3, align 8
  %55 = getelementptr inbounds float, float* %54, i64 2
  %56 = load float, float* %55, align 4
  %57 = load float, float* %6, align 4
  %58 = fmul float %56, %57
  %59 = load float*, float** %4, align 8
  %60 = getelementptr inbounds float, float* %59, i64 2
  store float %58, float* %60, align 4
  br label %64

61:                                               ; preds = %2
  %62 = load float*, float** %4, align 8
  %63 = call i32 @VectorClear(float* %62)
  br label %64

64:                                               ; preds = %61, %32
  %65 = load float, float* %5, align 4
  ret float %65
}

declare dso_local i64 @sqrt(float) #1

declare dso_local i32 @VectorClear(float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
