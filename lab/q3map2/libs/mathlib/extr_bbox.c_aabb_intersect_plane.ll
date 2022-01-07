; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/mathlib/extr_bbox.c_aabb_intersect_plane.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/mathlib/extr_bbox.c_aabb_intersect_plane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float, float*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aabb_intersect_plane(%struct.TYPE_3__* %0, float* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca float*, align 8
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store float* %1, float** %5, align 8
  %8 = load float*, float** %5, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call float @DotProduct(float* %8, i32 %11)
  %13 = load float*, float** %5, align 8
  %14 = getelementptr inbounds float, float* %13, i64 3
  %15 = load float, float* %14, align 4
  %16 = fadd float %12, %15
  store float %16, float* %6, align 4
  %17 = load float, float* %6, align 4
  %18 = call float @fabs(float %17)
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load float, float* %20, align 8
  %22 = fcmp ogt float %18, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load float, float* %6, align 4
  %25 = fcmp olt float %24, 0.000000e+00
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 2, i32* %3, align 4
  br label %72

27:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %72

28:                                               ; preds = %2
  %29 = load float*, float** %5, align 8
  %30 = getelementptr inbounds float, float* %29, i64 0
  %31 = load float, float* %30, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load float*, float** %33, align 8
  %35 = getelementptr inbounds float, float* %34, i64 0
  %36 = load float, float* %35, align 4
  %37 = fmul float %31, %36
  %38 = call float @fabs(float %37)
  %39 = load float*, float** %5, align 8
  %40 = getelementptr inbounds float, float* %39, i64 1
  %41 = load float, float* %40, align 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load float*, float** %43, align 8
  %45 = getelementptr inbounds float, float* %44, i64 1
  %46 = load float, float* %45, align 4
  %47 = fmul float %41, %46
  %48 = call float @fabs(float %47)
  %49 = fadd float %38, %48
  %50 = load float*, float** %5, align 8
  %51 = getelementptr inbounds float, float* %50, i64 2
  %52 = load float, float* %51, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load float*, float** %54, align 8
  %56 = getelementptr inbounds float, float* %55, i64 2
  %57 = load float, float* %56, align 4
  %58 = fmul float %52, %57
  %59 = call float @fabs(float %58)
  %60 = fadd float %49, %59
  store float %60, float* %7, align 4
  %61 = load float, float* %6, align 4
  %62 = call float @fabs(float %61)
  %63 = load float, float* %7, align 4
  %64 = fcmp olt float %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %28
  store i32 1, i32* %3, align 4
  br label %72

66:                                               ; preds = %28
  %67 = load float, float* %6, align 4
  %68 = fcmp olt float %67, 0.000000e+00
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  store i32 2, i32* %3, align 4
  br label %72

70:                                               ; preds = %66
  br label %71

71:                                               ; preds = %70
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %69, %65, %27, %26
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local float @DotProduct(float*, i32) #1

declare dso_local float @fabs(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
