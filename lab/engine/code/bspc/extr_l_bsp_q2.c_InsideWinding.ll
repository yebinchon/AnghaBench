; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_l_bsp_q2.c_InsideWinding.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_l_bsp_q2.c_InsideWinding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32** }

@dplanes = common dso_local global %struct.TYPE_6__* null, align 8
@WCONVEX_EPSILON = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @InsideWinding(%struct.TYPE_5__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %15

15:                                               ; preds = %73, %3
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp sle i32 %16, %19
  br i1 %20, label %21, label %76

21:                                               ; preds = %15
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i32**, i32*** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = srem i32 %25, %28
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32*, i32** %24, i64 %30
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %10, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i32**, i32*** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, 1
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = srem i32 %37, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32*, i32** %35, i64 %42
  %44 = load i32*, i32** %43, align 8
  store i32* %44, i32** %11, align 8
  %45 = load i32*, i32** %11, align 8
  %46 = load i32*, i32** %10, align 8
  %47 = load i32*, i32** %13, align 8
  %48 = call i32 @VectorSubtract(i32* %45, i32* %46, i32* %47)
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dplanes, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i64 %51
  store %struct.TYPE_6__* %52, %struct.TYPE_6__** %14, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %13, align 8
  %57 = load i32*, i32** %12, align 8
  %58 = call i32 @CrossProduct(i32 %55, i32* %56, i32* %57)
  %59 = load i32*, i32** %12, align 8
  %60 = call i32 @VectorNormalize(i32* %59)
  %61 = load i32*, i32** %12, align 8
  %62 = load i32*, i32** %10, align 8
  %63 = call float @DotProduct(i32* %61, i32* %62)
  store float %63, float* %9, align 4
  %64 = load i32*, i32** %12, align 8
  %65 = load i32*, i32** %6, align 8
  %66 = call float @DotProduct(i32* %64, i32* %65)
  %67 = load float, float* %9, align 4
  %68 = fsub float %66, %67
  %69 = load float, float* @WCONVEX_EPSILON, align 4
  %70 = fcmp ogt float %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %77

72:                                               ; preds = %21
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %8, align 4
  br label %15

76:                                               ; preds = %15
  store i32 1, i32* %4, align 4
  br label %77

77:                                               ; preds = %76, %71
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @VectorSubtract(i32*, i32*, i32*) #1

declare dso_local i32 @CrossProduct(i32, i32*, i32*) #1

declare dso_local i32 @VectorNormalize(i32*) #1

declare dso_local float @DotProduct(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
