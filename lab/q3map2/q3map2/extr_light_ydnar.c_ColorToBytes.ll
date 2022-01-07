; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_light_ydnar.c_ColorToBytes.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_light_ydnar.c_ColorToBytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lightmapGamma = common dso_local global float 0.000000e+00, align 4
@lightmapCompensate = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ColorToBytes(float* %0, float* %1, float %2) #0 {
  %4 = alloca float*, align 8
  %5 = alloca float*, align 8
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float*, align 8
  store float* %0, float** %4, align 8
  store float* %1, float** %5, align 8
  store float %2, float* %6, align 4
  %11 = load float, float* %6, align 4
  %12 = fcmp ole float %11, 0.000000e+00
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store float 1.000000e+00, float* %6, align 4
  br label %14

14:                                               ; preds = %13, %3
  %15 = load float*, float** %4, align 8
  %16 = load float, float* %6, align 4
  %17 = load float*, float** %10, align 8
  %18 = call i32 @VectorScale(float* %15, float %16, float* %17)
  %19 = load float, float* @lightmapGamma, align 4
  %20 = fdiv float 1.000000e+00, %19
  store float %20, float* %9, align 4
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %50, %14
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 3
  br i1 %23, label %24, label %53

24:                                               ; preds = %21
  %25 = load float*, float** %10, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds float, float* %25, i64 %27
  %29 = load float, float* %28, align 4
  %30 = fcmp olt float %29, 0.000000e+00
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = load float*, float** %10, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds float, float* %32, i64 %34
  store float 0.000000e+00, float* %35, align 4
  br label %50

36:                                               ; preds = %24
  %37 = load float*, float** %10, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds float, float* %37, i64 %39
  %41 = load float, float* %40, align 4
  %42 = fdiv float %41, 2.550000e+02
  %43 = load float, float* %9, align 4
  %44 = call float @pow(float %42, float %43)
  %45 = fmul float %44, 2.550000e+02
  %46 = load float*, float** %10, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds float, float* %46, i64 %48
  store float %45, float* %49, align 4
  br label %50

50:                                               ; preds = %36, %31
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %21

53:                                               ; preds = %21
  %54 = load float*, float** %10, align 8
  %55 = getelementptr inbounds float, float* %54, i64 0
  %56 = load float, float* %55, align 4
  store float %56, float* %8, align 4
  %57 = load float*, float** %10, align 8
  %58 = getelementptr inbounds float, float* %57, i64 1
  %59 = load float, float* %58, align 4
  %60 = load float, float* %8, align 4
  %61 = fcmp ogt float %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %53
  %63 = load float*, float** %10, align 8
  %64 = getelementptr inbounds float, float* %63, i64 1
  %65 = load float, float* %64, align 4
  store float %65, float* %8, align 4
  br label %66

66:                                               ; preds = %62, %53
  %67 = load float*, float** %10, align 8
  %68 = getelementptr inbounds float, float* %67, i64 2
  %69 = load float, float* %68, align 4
  %70 = load float, float* %8, align 4
  %71 = fcmp ogt float %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %66
  %73 = load float*, float** %10, align 8
  %74 = getelementptr inbounds float, float* %73, i64 2
  %75 = load float, float* %74, align 4
  store float %75, float* %8, align 4
  br label %76

76:                                               ; preds = %72, %66
  %77 = load float, float* %8, align 4
  %78 = fcmp ogt float %77, 2.550000e+02
  br i1 %78, label %79, label %85

79:                                               ; preds = %76
  %80 = load float*, float** %10, align 8
  %81 = load float, float* %8, align 4
  %82 = fdiv float 2.550000e+02, %81
  %83 = load float*, float** %10, align 8
  %84 = call i32 @VectorScale(float* %80, float %82, float* %83)
  br label %85

85:                                               ; preds = %79, %76
  %86 = load float*, float** %10, align 8
  %87 = load float, float* @lightmapCompensate, align 4
  %88 = fdiv float 1.000000e+00, %87
  %89 = load float*, float** %10, align 8
  %90 = call i32 @VectorScale(float* %86, float %88, float* %89)
  %91 = load float*, float** %10, align 8
  %92 = getelementptr inbounds float, float* %91, i64 0
  %93 = load float, float* %92, align 4
  %94 = load float*, float** %5, align 8
  %95 = getelementptr inbounds float, float* %94, i64 0
  store float %93, float* %95, align 4
  %96 = load float*, float** %10, align 8
  %97 = getelementptr inbounds float, float* %96, i64 1
  %98 = load float, float* %97, align 4
  %99 = load float*, float** %5, align 8
  %100 = getelementptr inbounds float, float* %99, i64 1
  store float %98, float* %100, align 4
  %101 = load float*, float** %10, align 8
  %102 = getelementptr inbounds float, float* %101, i64 2
  %103 = load float, float* %102, align 4
  %104 = load float*, float** %5, align 8
  %105 = getelementptr inbounds float, float* %104, i64 2
  store float %103, float* %105, align 4
  ret void
}

declare dso_local i32 @VectorScale(float*, float, float*) #1

declare dso_local float @pow(float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
