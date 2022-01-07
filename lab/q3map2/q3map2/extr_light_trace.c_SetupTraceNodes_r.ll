; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_light_trace.c_SetupTraceNodes_r.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_light_trace.c_SetupTraceNodes_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_9__ = type { i64*, i32, i32* }
%struct.TYPE_10__ = type { i32 }

@bspNodes = common dso_local global %struct.TYPE_8__* null, align 8
@bspPlanes = common dso_local global %struct.TYPE_7__* null, align 8
@traceNodes = common dso_local global %struct.TYPE_9__* null, align 8
@bspLeafs = common dso_local global %struct.TYPE_10__* null, align 8
@TRACE_LEAF_SOLID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @SetupTraceNodes_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SetupTraceNodes_r(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %2, align 4
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** @bspNodes, align 8
  %9 = load i32, i32* %2, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i64 %10
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %7, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** @bspPlanes, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i64 %15
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %6, align 8
  %17 = call i8* (...) @AllocTraceNode()
  %18 = ptrtoint i8* %17 to i32
  store i32 %18, i32* %4, align 4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @PlaneTypeForNormal(i32 %21)
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** @traceNodes, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  store i32 %22, i32* %27, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** @traceNodes, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @VectorCopy(i32 %30, i32* %36)
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** @traceNodes, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 3
  store i32 %40, i32* %47, align 4
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %124, %1
  %49 = load i32, i32* %3, align 4
  %50 = icmp slt i32 %49, 2
  br i1 %50, label %51, label %127

51:                                               ; preds = %48
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %104

60:                                               ; preds = %51
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %3, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = sub nsw i32 0, %67
  %69 = sub nsw i32 %68, 1
  store i32 %69, i32* %5, align 4
  %70 = call i8* (...) @AllocTraceNode()
  %71 = ptrtoint i8* %70 to i64
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** @traceNodes, align 8
  %73 = load i32, i32* %4, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i64*, i64** %76, align 8
  %78 = load i32, i32* %3, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %77, i64 %79
  store i64 %71, i64* %80, align 8
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** @bspLeafs, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp eq i32 %86, -1
  br i1 %87, label %88, label %103

88:                                               ; preds = %60
  %89 = load i32, i32* @TRACE_LEAF_SOLID, align 4
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** @traceNodes, align 8
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** @traceNodes, align 8
  %92 = load i32, i32* %4, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load i64*, i64** %95, align 8
  %97 = load i32, i32* %3, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i64, i64* %96, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 1
  store i32 %89, i32* %102, align 8
  br label %103

103:                                              ; preds = %88, %60
  br label %123

104:                                              ; preds = %51
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %3, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @SetupTraceNodes_r(i32 %111)
  %113 = sext i32 %112 to i64
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** @traceNodes, align 8
  %115 = load i32, i32* %4, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  %119 = load i64*, i64** %118, align 8
  %120 = load i32, i32* %3, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i64, i64* %119, i64 %121
  store i64 %113, i64* %122, align 8
  br label %123

123:                                              ; preds = %104, %103
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %3, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %3, align 4
  br label %48

127:                                              ; preds = %48
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local i8* @AllocTraceNode(...) #1

declare dso_local i32 @PlaneTypeForNormal(i32) #1

declare dso_local i32 @VectorCopy(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
