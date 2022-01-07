; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_cm_patch.c_CM_CheckFacetPlane.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_cm_patch.c_CM_CheckFacetPlane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@qfalse = common dso_local global i32 0, align 4
@SURFACE_CLIP_EPSILON = common dso_local global float 0.000000e+00, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CM_CheckFacetPlane(float* %0, i32 %1, i32 %2, float* %3, float* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca float*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  store float* %0, float** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store float* %3, float** %11, align 8
  store float* %4, float** %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = load i32, i32* @qfalse, align 4
  %18 = load i32*, i32** %13, align 8
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load float*, float** %8, align 8
  %21 = call float @DotProduct(i32 %19, float* %20)
  %22 = load float*, float** %8, align 8
  %23 = getelementptr inbounds float, float* %22, i64 3
  %24 = load float, float* %23, align 4
  %25 = fsub float %21, %24
  store float %25, float* %14, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load float*, float** %8, align 8
  %28 = call float @DotProduct(i32 %26, float* %27)
  %29 = load float*, float** %8, align 8
  %30 = getelementptr inbounds float, float* %29, i64 3
  %31 = load float, float* %30, align 4
  %32 = fsub float %28, %31
  store float %32, float* %15, align 4
  %33 = load float, float* %14, align 4
  %34 = fcmp ogt float %33, 0.000000e+00
  br i1 %34, label %35, label %45

35:                                               ; preds = %6
  %36 = load float, float* %15, align 4
  %37 = load float, float* @SURFACE_CLIP_EPSILON, align 4
  %38 = fcmp oge float %36, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load float, float* %15, align 4
  %41 = load float, float* %14, align 4
  %42 = fcmp oge float %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39, %35
  %44 = load i32, i32* @qfalse, align 4
  store i32 %44, i32* %7, align 4
  br label %101

45:                                               ; preds = %39, %6
  %46 = load float, float* %14, align 4
  %47 = fcmp ole float %46, 0.000000e+00
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load float, float* %15, align 4
  %50 = fcmp ole float %49, 0.000000e+00
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load i32, i32* @qtrue, align 4
  store i32 %52, i32* %7, align 4
  br label %101

53:                                               ; preds = %48, %45
  %54 = load float, float* %14, align 4
  %55 = load float, float* %15, align 4
  %56 = fcmp ogt float %54, %55
  br i1 %56, label %57, label %79

57:                                               ; preds = %53
  %58 = load float, float* %14, align 4
  %59 = load float, float* @SURFACE_CLIP_EPSILON, align 4
  %60 = fsub float %58, %59
  %61 = load float, float* %14, align 4
  %62 = load float, float* %15, align 4
  %63 = fsub float %61, %62
  %64 = fdiv float %60, %63
  store float %64, float* %16, align 4
  %65 = load float, float* %16, align 4
  %66 = fcmp olt float %65, 0.000000e+00
  br i1 %66, label %67, label %68

67:                                               ; preds = %57
  store float 0.000000e+00, float* %16, align 4
  br label %68

68:                                               ; preds = %67, %57
  %69 = load float, float* %16, align 4
  %70 = load float*, float** %11, align 8
  %71 = load float, float* %70, align 4
  %72 = fcmp ogt float %69, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load float, float* %16, align 4
  %75 = load float*, float** %11, align 8
  store float %74, float* %75, align 4
  %76 = load i32, i32* @qtrue, align 4
  %77 = load i32*, i32** %13, align 8
  store i32 %76, i32* %77, align 4
  br label %78

78:                                               ; preds = %73, %68
  br label %99

79:                                               ; preds = %53
  %80 = load float, float* %14, align 4
  %81 = load float, float* @SURFACE_CLIP_EPSILON, align 4
  %82 = fadd float %80, %81
  %83 = load float, float* %14, align 4
  %84 = load float, float* %15, align 4
  %85 = fsub float %83, %84
  %86 = fdiv float %82, %85
  store float %86, float* %16, align 4
  %87 = load float, float* %16, align 4
  %88 = fcmp ogt float %87, 1.000000e+00
  br i1 %88, label %89, label %90

89:                                               ; preds = %79
  store float 1.000000e+00, float* %16, align 4
  br label %90

90:                                               ; preds = %89, %79
  %91 = load float, float* %16, align 4
  %92 = load float*, float** %12, align 8
  %93 = load float, float* %92, align 4
  %94 = fcmp olt float %91, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load float, float* %16, align 4
  %97 = load float*, float** %12, align 8
  store float %96, float* %97, align 4
  br label %98

98:                                               ; preds = %95, %90
  br label %99

99:                                               ; preds = %98, %78
  %100 = load i32, i32* @qtrue, align 4
  store i32 %100, i32* %7, align 4
  br label %101

101:                                              ; preds = %99, %51, %43
  %102 = load i32, i32* %7, align 4
  ret i32 %102
}

declare dso_local float @DotProduct(i32, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
