; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/mathlib/extr_mathlib.c_VectorToAngles.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/mathlib/extr_mathlib.c_VectorToAngles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M_PI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VectorToAngles(float* %0, float* %1) #0 {
  %3 = alloca float*, align 8
  %4 = alloca float*, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  store float* %0, float** %3, align 8
  store float* %1, float** %4, align 8
  %8 = load float*, float** %3, align 8
  %9 = getelementptr inbounds float, float* %8, i64 0
  %10 = load float, float* %9, align 4
  %11 = fcmp oeq float %10, 0.000000e+00
  br i1 %11, label %12, label %25

12:                                               ; preds = %2
  %13 = load float*, float** %3, align 8
  %14 = getelementptr inbounds float, float* %13, i64 1
  %15 = load float, float* %14, align 4
  %16 = fcmp oeq float %15, 0.000000e+00
  br i1 %16, label %17, label %25

17:                                               ; preds = %12
  store float 0.000000e+00, float* %6, align 4
  %18 = load float*, float** %3, align 8
  %19 = getelementptr inbounds float, float* %18, i64 2
  %20 = load float, float* %19, align 4
  %21 = fcmp ogt float %20, 0.000000e+00
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store float 9.000000e+01, float* %7, align 4
  br label %24

23:                                               ; preds = %17
  store float 2.700000e+02, float* %7, align 4
  br label %24

24:                                               ; preds = %23, %22
  br label %77

25:                                               ; preds = %12, %2
  %26 = load float*, float** %3, align 8
  %27 = getelementptr inbounds float, float* %26, i64 1
  %28 = load float, float* %27, align 4
  %29 = load float*, float** %3, align 8
  %30 = getelementptr inbounds float, float* %29, i64 0
  %31 = load float, float* %30, align 4
  %32 = call i64 @atan2(float %28, float %31)
  %33 = trunc i64 %32 to i32
  %34 = mul nsw i32 %33, 180
  %35 = load i32, i32* @M_PI, align 4
  %36 = sdiv i32 %34, %35
  %37 = sitofp i32 %36 to float
  store float %37, float* %6, align 4
  %38 = load float, float* %6, align 4
  %39 = fcmp olt float %38, 0.000000e+00
  br i1 %39, label %40, label %43

40:                                               ; preds = %25
  %41 = load float, float* %6, align 4
  %42 = fadd float %41, 3.600000e+02
  store float %42, float* %6, align 4
  br label %43

43:                                               ; preds = %40, %25
  %44 = load float*, float** %3, align 8
  %45 = getelementptr inbounds float, float* %44, i64 0
  %46 = load float, float* %45, align 4
  %47 = load float*, float** %3, align 8
  %48 = getelementptr inbounds float, float* %47, i64 0
  %49 = load float, float* %48, align 4
  %50 = fmul float %46, %49
  %51 = load float*, float** %3, align 8
  %52 = getelementptr inbounds float, float* %51, i64 1
  %53 = load float, float* %52, align 4
  %54 = load float*, float** %3, align 8
  %55 = getelementptr inbounds float, float* %54, i64 1
  %56 = load float, float* %55, align 4
  %57 = fmul float %53, %56
  %58 = fadd float %50, %57
  %59 = call i64 @sqrt(float %58)
  %60 = sitofp i64 %59 to float
  store float %60, float* %5, align 4
  %61 = load float*, float** %3, align 8
  %62 = getelementptr inbounds float, float* %61, i64 2
  %63 = load float, float* %62, align 4
  %64 = load float, float* %5, align 4
  %65 = call i64 @atan2(float %63, float %64)
  %66 = trunc i64 %65 to i32
  %67 = mul nsw i32 %66, 180
  %68 = load i32, i32* @M_PI, align 4
  %69 = sdiv i32 %67, %68
  %70 = sitofp i32 %69 to float
  store float %70, float* %7, align 4
  %71 = load float, float* %7, align 4
  %72 = fcmp olt float %71, 0.000000e+00
  br i1 %72, label %73, label %76

73:                                               ; preds = %43
  %74 = load float, float* %7, align 4
  %75 = fadd float %74, 3.600000e+02
  store float %75, float* %7, align 4
  br label %76

76:                                               ; preds = %73, %43
  br label %77

77:                                               ; preds = %76, %24
  %78 = load float, float* %7, align 4
  %79 = load float*, float** %4, align 8
  %80 = getelementptr inbounds float, float* %79, i64 0
  store float %78, float* %80, align 4
  %81 = load float, float* %6, align 4
  %82 = load float*, float** %4, align 8
  %83 = getelementptr inbounds float, float* %82, i64 1
  store float %81, float* %83, align 4
  %84 = load float*, float** %4, align 8
  %85 = getelementptr inbounds float, float* %84, i64 2
  store float 0.000000e+00, float* %85, align 4
  ret void
}

declare dso_local i64 @atan2(float, float) #1

declare dso_local i64 @sqrt(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
