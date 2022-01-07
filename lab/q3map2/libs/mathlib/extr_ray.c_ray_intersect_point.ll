; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/mathlib/extr_ray.c_ray_intersect_point.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/mathlib/extr_ray.c_ray_intersect_point.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@VEC_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @ray_intersect_point(%struct.TYPE_3__* %0, i32 %1, float %2, float %3) #0 {
  %5 = alloca float, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32 %1, i32* %7, align 4
  store float %2, float* %8, align 4
  store float %3, float* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %10, align 4
  %17 = call i32 @VectorSubtract(i32 %12, i32 %15, i32 %16)
  %18 = load i32, i32* %10, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call float @DotProduct(i32 %18, i32 %21)
  store float %22, float* %11, align 4
  %23 = load float, float* %11, align 4
  %24 = fcmp olt float %23, 0.000000e+00
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load i32, i32* @VEC_MAX, align 4
  %27 = sitofp i32 %26 to float
  store float %27, float* %5, align 4
  br label %56

28:                                               ; preds = %4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load float, float* %11, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @VectorMA(i32 %31, float %32, i32 %35, i32 %36)
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @VectorSubtract(i32 %38, i32 %39, i32 %40)
  %42 = load i32, i32* %10, align 4
  %43 = call float @VectorLength(i32 %42)
  %44 = load float, float* %8, align 4
  %45 = load float, float* %11, align 4
  %46 = load float, float* %9, align 4
  %47 = fmul float %45, %46
  %48 = fadd float %44, %47
  %49 = fsub float %43, %48
  %50 = fcmp ogt float %49, 0.000000e+00
  br i1 %50, label %51, label %54

51:                                               ; preds = %28
  %52 = load i32, i32* @VEC_MAX, align 4
  %53 = sitofp i32 %52 to float
  store float %53, float* %5, align 4
  br label %56

54:                                               ; preds = %28
  %55 = load float, float* %11, align 4
  store float %55, float* %5, align 4
  br label %56

56:                                               ; preds = %54, %51, %25
  %57 = load float, float* %5, align 4
  ret float %57
}

declare dso_local i32 @VectorSubtract(i32, i32, i32) #1

declare dso_local float @DotProduct(i32, i32) #1

declare dso_local i32 @VectorMA(i32, float, i32, i32) #1

declare dso_local float @VectorLength(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
