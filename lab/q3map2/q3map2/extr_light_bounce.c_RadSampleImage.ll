; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_light_bounce.c_RadSampleImage.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_light_bounce.c_RadSampleImage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RadSampleImage(float* %0, i32 %1, i32 %2, float* %3, float* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca [2 x float], align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store float* %0, float** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store float* %3, float** %10, align 8
  store float* %4, float** %11, align 8
  %15 = load float*, float** %11, align 8
  %16 = getelementptr inbounds float, float* %15, i64 3
  store float 2.550000e+02, float* %16, align 4
  %17 = load float*, float** %11, align 8
  %18 = getelementptr inbounds float, float* %17, i64 2
  store float 2.550000e+02, float* %18, align 4
  %19 = load float*, float** %11, align 8
  %20 = getelementptr inbounds float, float* %19, i64 1
  store float 2.550000e+02, float* %20, align 4
  %21 = load float*, float** %11, align 8
  %22 = getelementptr inbounds float, float* %21, i64 0
  store float 2.550000e+02, float* %22, align 4
  %23 = load float*, float** %7, align 8
  %24 = icmp eq float* %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %5
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %26, 1
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %29, 1
  br i1 %30, label %31, label %33

31:                                               ; preds = %28, %25, %5
  %32 = load i32, i32* @qfalse, align 4
  store i32 %32, i32* %6, align 4
  br label %99

33:                                               ; preds = %28
  %34 = load float*, float** %10, align 8
  %35 = getelementptr inbounds float, float* %34, i64 0
  %36 = load float, float* %35, align 4
  %37 = getelementptr inbounds [2 x float], [2 x float]* %12, i64 0, i64 0
  store float %36, float* %37, align 4
  br label %38

38:                                               ; preds = %42, %33
  %39 = getelementptr inbounds [2 x float], [2 x float]* %12, i64 0, i64 0
  %40 = load float, float* %39, align 4
  %41 = fcmp olt float %40, 0.000000e+00
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = getelementptr inbounds [2 x float], [2 x float]* %12, i64 0, i64 0
  %44 = load float, float* %43, align 4
  %45 = fadd float %44, 1.000000e+00
  store float %45, float* %43, align 4
  br label %38

46:                                               ; preds = %38
  %47 = load float*, float** %10, align 8
  %48 = getelementptr inbounds float, float* %47, i64 1
  %49 = load float, float* %48, align 4
  %50 = getelementptr inbounds [2 x float], [2 x float]* %12, i64 0, i64 1
  store float %49, float* %50, align 4
  br label %51

51:                                               ; preds = %55, %46
  %52 = getelementptr inbounds [2 x float], [2 x float]* %12, i64 0, i64 1
  %53 = load float, float* %52, align 4
  %54 = fcmp olt float %53, 0.000000e+00
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = getelementptr inbounds [2 x float], [2 x float]* %12, i64 0, i64 1
  %57 = load float, float* %56, align 4
  %58 = fadd float %57, 1.000000e+00
  store float %58, float* %56, align 4
  br label %51

59:                                               ; preds = %51
  %60 = load i32, i32* %8, align 4
  %61 = sitofp i32 %60 to float
  %62 = getelementptr inbounds [2 x float], [2 x float]* %12, i64 0, i64 0
  %63 = load float, float* %62, align 4
  %64 = fmul float %61, %63
  %65 = fadd float %64, 5.000000e-01
  %66 = fptosi float %65 to i32
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %13, align 4
  %69 = srem i32 %68, %67
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %9, align 4
  %71 = sitofp i32 %70 to float
  %72 = getelementptr inbounds [2 x float], [2 x float]* %12, i64 0, i64 1
  %73 = load float, float* %72, align 4
  %74 = fmul float %71, %73
  %75 = fadd float %74, 5.000000e-01
  %76 = fptosi float %75 to i32
  store i32 %76, i32* %14, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %14, align 4
  %79 = srem i32 %78, %77
  store i32 %79, i32* %14, align 4
  %80 = load i32, i32* %14, align 4
  %81 = load i32, i32* %8, align 4
  %82 = mul nsw i32 %80, %81
  %83 = mul nsw i32 %82, 4
  %84 = load i32, i32* %13, align 4
  %85 = mul nsw i32 %84, 4
  %86 = add nsw i32 %83, %85
  %87 = load float*, float** %7, align 8
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds float, float* %87, i64 %88
  store float* %89, float** %7, align 8
  %90 = load float*, float** %7, align 8
  %91 = load float*, float** %11, align 8
  %92 = call i32 @VectorCopy(float* %90, float* %91)
  %93 = load float*, float** %7, align 8
  %94 = getelementptr inbounds float, float* %93, i64 3
  %95 = load float, float* %94, align 4
  %96 = load float*, float** %11, align 8
  %97 = getelementptr inbounds float, float* %96, i64 3
  store float %95, float* %97, align 4
  %98 = load i32, i32* @qtrue, align 4
  store i32 %98, i32* %6, align 4
  br label %99

99:                                               ; preds = %59, %31
  %100 = load i32, i32* %6, align 4
  ret i32 %100
}

declare dso_local i32 @VectorCopy(float*, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
