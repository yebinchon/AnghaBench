; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_surface_meta.c_PointTriangleIntersect.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_surface_meta.c_PointTriangleIntersect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MIN_OUTSIDE_EPSILON = common dso_local global float 0.000000e+00, align 4
@MAX_OUTSIDE_EPSILON = common dso_local global float 0.000000e+00, align 4
@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (float*, i32, float*, float*, float*, float*)* @PointTriangleIntersect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PointTriangleIntersect(float* %0, i32 %1, float* %2, float* %3, float* %4, float* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca float*, align 8
  %9 = alloca i32, align 4
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca float*, align 8
  %14 = alloca float*, align 8
  %15 = alloca float*, align 8
  %16 = alloca float*, align 8
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  store float* %0, float** %8, align 8
  store i32 %1, i32* %9, align 4
  store float* %2, float** %10, align 8
  store float* %3, float** %11, align 8
  store float* %4, float** %12, align 8
  store float* %5, float** %13, align 8
  %23 = load float*, float** %11, align 8
  %24 = load float*, float** %10, align 8
  %25 = load float*, float** %14, align 8
  %26 = call i32 @VectorSubtract(float* %23, float* %24, float* %25)
  %27 = load float*, float** %12, align 8
  %28 = load float*, float** %10, align 8
  %29 = load float*, float** %15, align 8
  %30 = call i32 @VectorSubtract(float* %27, float* %28, float* %29)
  %31 = load float*, float** %8, align 8
  %32 = load float*, float** %10, align 8
  %33 = load float*, float** %16, align 8
  %34 = call i32 @VectorSubtract(float* %31, float* %32, float* %33)
  %35 = load float*, float** %14, align 8
  %36 = load float*, float** %14, align 8
  %37 = call float @DotProduct(float* %35, float* %36)
  store float %37, float* %17, align 4
  %38 = load float*, float** %14, align 8
  %39 = load float*, float** %15, align 8
  %40 = call float @DotProduct(float* %38, float* %39)
  store float %40, float* %18, align 4
  %41 = load float*, float** %15, align 8
  %42 = load float*, float** %15, align 8
  %43 = call float @DotProduct(float* %41, float* %42)
  store float %43, float* %19, align 4
  %44 = load float*, float** %16, align 8
  %45 = load float*, float** %14, align 8
  %46 = call float @DotProduct(float* %44, float* %45)
  store float %46, float* %20, align 4
  %47 = load float*, float** %16, align 8
  %48 = load float*, float** %15, align 8
  %49 = call float @DotProduct(float* %47, float* %48)
  store float %49, float* %21, align 4
  %50 = load float, float* %18, align 4
  %51 = load float, float* %18, align 4
  %52 = fmul float %50, %51
  %53 = load float, float* %17, align 4
  %54 = load float, float* %19, align 4
  %55 = fmul float %53, %54
  %56 = fsub float %52, %55
  store float %56, float* %22, align 4
  %57 = load float, float* %18, align 4
  %58 = load float, float* %21, align 4
  %59 = fmul float %57, %58
  %60 = load float, float* %19, align 4
  %61 = load float, float* %20, align 4
  %62 = fmul float %60, %61
  %63 = fsub float %59, %62
  %64 = load float, float* %22, align 4
  %65 = fdiv float %63, %64
  %66 = load float*, float** %13, align 8
  %67 = getelementptr inbounds float, float* %66, i64 1
  store float %65, float* %67, align 4
  %68 = load float*, float** %13, align 8
  %69 = getelementptr inbounds float, float* %68, i64 1
  %70 = load float, float* %69, align 4
  %71 = load float, float* @MIN_OUTSIDE_EPSILON, align 4
  %72 = fcmp olt float %70, %71
  br i1 %72, label %79, label %73

73:                                               ; preds = %6
  %74 = load float*, float** %13, align 8
  %75 = getelementptr inbounds float, float* %74, i64 1
  %76 = load float, float* %75, align 4
  %77 = load float, float* @MAX_OUTSIDE_EPSILON, align 4
  %78 = fcmp ogt float %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %73, %6
  %80 = load i32, i32* @qfalse, align 4
  store i32 %80, i32* %7, align 4
  br label %118

81:                                               ; preds = %73
  %82 = load float, float* %18, align 4
  %83 = load float, float* %21, align 4
  %84 = fmul float %82, %83
  %85 = load float, float* %17, align 4
  %86 = load float, float* %21, align 4
  %87 = fmul float %85, %86
  %88 = fsub float %84, %87
  %89 = load float, float* %22, align 4
  %90 = fdiv float %88, %89
  %91 = load float*, float** %13, align 8
  %92 = getelementptr inbounds float, float* %91, i64 2
  store float %90, float* %92, align 4
  %93 = load float*, float** %13, align 8
  %94 = getelementptr inbounds float, float* %93, i64 2
  %95 = load float, float* %94, align 4
  %96 = load float, float* @MIN_OUTSIDE_EPSILON, align 4
  %97 = fcmp olt float %95, %96
  br i1 %97, label %104, label %98

98:                                               ; preds = %81
  %99 = load float*, float** %13, align 8
  %100 = getelementptr inbounds float, float* %99, i64 2
  %101 = load float, float* %100, align 4
  %102 = load float, float* @MAX_OUTSIDE_EPSILON, align 4
  %103 = fcmp ogt float %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %98, %81
  %105 = load i32, i32* @qfalse, align 4
  store i32 %105, i32* %7, align 4
  br label %118

106:                                              ; preds = %98
  %107 = load float*, float** %13, align 8
  %108 = getelementptr inbounds float, float* %107, i64 1
  %109 = load float, float* %108, align 4
  %110 = load float*, float** %13, align 8
  %111 = getelementptr inbounds float, float* %110, i64 2
  %112 = load float, float* %111, align 4
  %113 = fadd float %109, %112
  %114 = fsub float 1.000000e+00, %113
  %115 = load float*, float** %13, align 8
  %116 = getelementptr inbounds float, float* %115, i64 0
  store float %114, float* %116, align 4
  %117 = load i32, i32* @qtrue, align 4
  store i32 %117, i32* %7, align 4
  br label %118

118:                                              ; preds = %106, %104, %79
  %119 = load i32, i32* %7, align 4
  ret i32 %119
}

declare dso_local i32 @VectorSubtract(float*, float*, float*) #1

declare dso_local float @DotProduct(float*, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
