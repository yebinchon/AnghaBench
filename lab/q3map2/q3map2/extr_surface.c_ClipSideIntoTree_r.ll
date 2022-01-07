; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_surface.c_ClipSideIntoTree_r.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_surface.c_ClipSideIntoTree_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_9__** }

@PLANENUM_LEAF = common dso_local global i32 0, align 4
@mapplanes = common dso_local global %struct.TYPE_8__* null, align 8
@ON_EPSILON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ClipSideIntoTree_r(i32* %0, %struct.TYPE_7__* %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %6, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  br label %105

13:                                               ; preds = %3
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @PLANENUM_LEAF, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %84

19:                                               ; preds = %13
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %22, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %19
  %28 = load i32*, i32** %4, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %32, i64 0
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  call void @ClipSideIntoTree_r(i32* %28, %struct.TYPE_7__* %29, %struct.TYPE_9__* %34)
  br label %105

35:                                               ; preds = %19
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = xor i32 %41, 1
  %43 = icmp eq i32 %38, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %35
  %45 = load i32*, i32** %4, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %49, i64 1
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  call void @ClipSideIntoTree_r(i32* %45, %struct.TYPE_7__* %46, %struct.TYPE_9__* %51)
  br label %105

52:                                               ; preds = %35
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** @mapplanes, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i64 %57
  store %struct.TYPE_8__* %58, %struct.TYPE_8__** %7, align 8
  %59 = load i32*, i32** %4, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @ON_EPSILON, align 4
  %67 = call i32 @ClipWindingEpsilon(i32* %59, i32 %62, i32 %65, i32 %66, i32** %8, i32** %9)
  %68 = load i32*, i32** %4, align 8
  %69 = call i32 @FreeWinding(i32* %68)
  %70 = load i32*, i32** %8, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %74, i64 0
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  call void @ClipSideIntoTree_r(i32* %70, %struct.TYPE_7__* %71, %struct.TYPE_9__* %76)
  %77 = load i32*, i32** %9, align 8
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 2
  %81 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %81, i64 1
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %82, align 8
  call void @ClipSideIntoTree_r(i32* %77, %struct.TYPE_7__* %78, %struct.TYPE_9__* %83)
  br label %105

84:                                               ; preds = %13
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %102, label %89

89:                                               ; preds = %84
  %90 = load i32*, i32** %4, align 8
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** @mapplanes, align 8
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @AddWindingToConvexHull(i32* %90, i32* %92, i32 %100)
  br label %102

102:                                              ; preds = %89, %84
  %103 = load i32*, i32** %4, align 8
  %104 = call i32 @FreeWinding(i32* %103)
  br label %105

105:                                              ; preds = %102, %52, %44, %27, %12
  ret void
}

declare dso_local i32 @ClipWindingEpsilon(i32*, i32, i32, i32, i32**, i32**) #1

declare dso_local i32 @FreeWinding(i32*) #1

declare dso_local i32 @AddWindingToConvexHull(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
