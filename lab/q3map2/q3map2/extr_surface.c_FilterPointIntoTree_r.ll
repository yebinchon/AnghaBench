; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_surface.c_FilterPointIntoTree_r.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_surface.c_FilterPointIntoTree_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { float, i32 }
%struct.TYPE_7__ = type { i64, %struct.TYPE_7__** }

@PLANENUM_LEAF = common dso_local global i64 0, align 8
@mapplanes = common dso_local global %struct.TYPE_6__* null, align 8
@ON_EPSILON = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FilterPointIntoTree_r(i32 %0, i32* %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca float, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @PLANENUM_LEAF, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %63

16:                                               ; preds = %3
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mapplanes, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i64 %20
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %9, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call float @DotProduct(i32 %22, i32 %25)
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load float, float* %28, align 4
  %30 = fsub float %26, %29
  store float %30, float* %8, align 4
  store i32 0, i32* %10, align 4
  %31 = load float, float* %8, align 4
  %32 = load float, float* @ON_EPSILON, align 4
  %33 = fneg float %32
  %34 = fcmp oge float %31, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %16
  %36 = load i32, i32* %5, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %40, i64 0
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = call i32 @FilterPointIntoTree_r(i32 %36, i32* %37, %struct.TYPE_7__* %42)
  %44 = load i32, i32* %10, align 4
  %45 = add nsw i32 %44, %43
  store i32 %45, i32* %10, align 4
  br label %46

46:                                               ; preds = %35, %16
  %47 = load float, float* %8, align 4
  %48 = load float, float* @ON_EPSILON, align 4
  %49 = fcmp ole float %47, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %46
  %51 = load i32, i32* %5, align 4
  %52 = load i32*, i32** %6, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %55, i64 1
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = call i32 @FilterPointIntoTree_r(i32 %51, i32* %52, %struct.TYPE_7__* %57)
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, %58
  store i32 %60, i32* %10, align 4
  br label %61

61:                                               ; preds = %50, %46
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %4, align 4
  br label %67

63:                                               ; preds = %3
  %64 = load i32*, i32** %6, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %66 = call i32 @AddReferenceToLeaf(i32* %64, %struct.TYPE_7__* %65)
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %63, %61
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local float @DotProduct(i32, i32) #1

declare dso_local i32 @AddReferenceToLeaf(i32*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
