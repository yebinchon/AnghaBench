; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_surface.c_CalcLightmapAxis.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_surface.c_CalcLightmapAxis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CalcLightmapAxis(float* %0, float* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca float*, align 8
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  store float* %0, float** %4, align 8
  store float* %1, float** %5, align 8
  %7 = load float*, float** %4, align 8
  %8 = getelementptr inbounds float, float* %7, i64 0
  %9 = load float, float* %8, align 4
  %10 = fcmp oeq float %9, 0.000000e+00
  br i1 %10, label %11, label %25

11:                                               ; preds = %2
  %12 = load float*, float** %4, align 8
  %13 = getelementptr inbounds float, float* %12, i64 1
  %14 = load float, float* %13, align 4
  %15 = fcmp oeq float %14, 0.000000e+00
  br i1 %15, label %16, label %25

16:                                               ; preds = %11
  %17 = load float*, float** %4, align 8
  %18 = getelementptr inbounds float, float* %17, i64 2
  %19 = load float, float* %18, align 4
  %20 = fcmp oeq float %19, 0.000000e+00
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load float*, float** %5, align 8
  %23 = call i32 @VectorClear(float* %22)
  %24 = load i32, i32* @qfalse, align 4
  store i32 %24, i32* %3, align 4
  br label %118

25:                                               ; preds = %16, %11, %2
  %26 = load float*, float** %4, align 8
  %27 = getelementptr inbounds float, float* %26, i64 0
  %28 = load float, float* %27, align 4
  %29 = call float @fabs(float %28)
  %30 = load float*, float** %6, align 8
  %31 = getelementptr inbounds float, float* %30, i64 0
  store float %29, float* %31, align 4
  %32 = load float*, float** %4, align 8
  %33 = getelementptr inbounds float, float* %32, i64 1
  %34 = load float, float* %33, align 4
  %35 = call float @fabs(float %34)
  %36 = load float*, float** %6, align 8
  %37 = getelementptr inbounds float, float* %36, i64 1
  store float %35, float* %37, align 4
  %38 = load float*, float** %4, align 8
  %39 = getelementptr inbounds float, float* %38, i64 2
  %40 = load float, float* %39, align 4
  %41 = call float @fabs(float %40)
  %42 = load float*, float** %6, align 8
  %43 = getelementptr inbounds float, float* %42, i64 2
  store float %41, float* %43, align 4
  %44 = load float*, float** %6, align 8
  %45 = getelementptr inbounds float, float* %44, i64 2
  %46 = load float, float* %45, align 4
  %47 = load float*, float** %6, align 8
  %48 = getelementptr inbounds float, float* %47, i64 0
  %49 = load float, float* %48, align 4
  %50 = fsub float %49, 0x3F1A36E2E0000000
  %51 = fcmp ogt float %46, %50
  br i1 %51, label %52, label %73

52:                                               ; preds = %25
  %53 = load float*, float** %6, align 8
  %54 = getelementptr inbounds float, float* %53, i64 2
  %55 = load float, float* %54, align 4
  %56 = load float*, float** %6, align 8
  %57 = getelementptr inbounds float, float* %56, i64 1
  %58 = load float, float* %57, align 4
  %59 = fsub float %58, 0x3F1A36E2E0000000
  %60 = fcmp ogt float %55, %59
  br i1 %60, label %61, label %73

61:                                               ; preds = %52
  %62 = load float*, float** %4, align 8
  %63 = getelementptr inbounds float, float* %62, i64 2
  %64 = load float, float* %63, align 4
  %65 = fcmp ogt float %64, 0.000000e+00
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load float*, float** %5, align 8
  %68 = call i32 @VectorSet(float* %67, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)
  br label %72

69:                                               ; preds = %61
  %70 = load float*, float** %5, align 8
  %71 = call i32 @VectorSet(float* %70, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)
  br label %72

72:                                               ; preds = %69, %66
  br label %116

73:                                               ; preds = %52, %25
  %74 = load float*, float** %6, align 8
  %75 = getelementptr inbounds float, float* %74, i64 0
  %76 = load float, float* %75, align 4
  %77 = load float*, float** %6, align 8
  %78 = getelementptr inbounds float, float* %77, i64 1
  %79 = load float, float* %78, align 4
  %80 = fsub float %79, 0x3F1A36E2E0000000
  %81 = fcmp ogt float %76, %80
  br i1 %81, label %82, label %103

82:                                               ; preds = %73
  %83 = load float*, float** %6, align 8
  %84 = getelementptr inbounds float, float* %83, i64 0
  %85 = load float, float* %84, align 4
  %86 = load float*, float** %6, align 8
  %87 = getelementptr inbounds float, float* %86, i64 2
  %88 = load float, float* %87, align 4
  %89 = fsub float %88, 0x3F1A36E2E0000000
  %90 = fcmp ogt float %85, %89
  br i1 %90, label %91, label %103

91:                                               ; preds = %82
  %92 = load float*, float** %4, align 8
  %93 = getelementptr inbounds float, float* %92, i64 0
  %94 = load float, float* %93, align 4
  %95 = fcmp ogt float %94, 0.000000e+00
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load float*, float** %5, align 8
  %98 = call i32 @VectorSet(float* %97, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00)
  br label %102

99:                                               ; preds = %91
  %100 = load float*, float** %5, align 8
  %101 = call i32 @VectorSet(float* %100, float -1.000000e+00, float 0.000000e+00, float 0.000000e+00)
  br label %102

102:                                              ; preds = %99, %96
  br label %115

103:                                              ; preds = %82, %73
  %104 = load float*, float** %4, align 8
  %105 = getelementptr inbounds float, float* %104, i64 1
  %106 = load float, float* %105, align 4
  %107 = fcmp ogt float %106, 0.000000e+00
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = load float*, float** %5, align 8
  %110 = call i32 @VectorSet(float* %109, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00)
  br label %114

111:                                              ; preds = %103
  %112 = load float*, float** %5, align 8
  %113 = call i32 @VectorSet(float* %112, float 0.000000e+00, float -1.000000e+00, float 0.000000e+00)
  br label %114

114:                                              ; preds = %111, %108
  br label %115

115:                                              ; preds = %114, %102
  br label %116

116:                                              ; preds = %115, %72
  %117 = load i32, i32* @qtrue, align 4
  store i32 %117, i32* %3, align 4
  br label %118

118:                                              ; preds = %116, %21
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local i32 @VectorClear(float*) #1

declare dso_local float @fabs(float) #1

declare dso_local i32 @VectorSet(float*, float, float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
