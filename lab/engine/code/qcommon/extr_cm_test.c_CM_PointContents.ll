; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_cm_test.c_CM_PointContents.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_cm_test.c_CM_PointContents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32*, %struct.TYPE_11__*, %struct.TYPE_12__*, i32 }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_9__*, i32* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { float, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_12__ }

@cm = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CM_PointContents(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca %struct.TYPE_10__*, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cm, i32 0, i32 3), align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %123

18:                                               ; preds = %2
  %19 = load i64, i64* %5, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load i64, i64* %5, align 8
  %23 = call %struct.TYPE_10__* @CM_ClipHandleToModel(i64 %22)
  store %struct.TYPE_10__* %23, %struct.TYPE_10__** %14, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  store %struct.TYPE_12__* %25, %struct.TYPE_12__** %10, align 8
  br label %33

26:                                               ; preds = %18
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @CM_PointLeafnum_r(i32 %27, i32 0)
  store i32 %28, i32* %6, align 4
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cm, i32 0, i32 2), align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i64 %31
  store %struct.TYPE_12__* %32, %struct.TYPE_12__** %10, align 8
  br label %33

33:                                               ; preds = %26, %21
  store i32 0, i32* %12, align 4
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %118, %33
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %121

40:                                               ; preds = %34
  %41 = load i32*, i32** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cm, i32 0, i32 0), align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %44, %45
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %41, i64 %47
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %9, align 4
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cm, i32 0, i32 1), align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i64 %52
  store %struct.TYPE_11__* %53, %struct.TYPE_11__** %11, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 3
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 3
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @CM_BoundsIntersectPoint(i32 %58, i32 %63, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %40
  br label %118

68:                                               ; preds = %40
  store i32 0, i32* %7, align 4
  br label %69

69:                                               ; preds = %102, %68
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp slt i32 %70, %73
  br i1 %74, label %75, label %105

75:                                               ; preds = %69
  %76 = load i32, i32* %4, align 4
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call float @DotProduct(i32 %76, i32 %86)
  store float %87, float* %13, align 4
  %88 = load float, float* %13, align 4
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 2
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load float, float* %97, align 4
  %99 = fcmp ogt float %88, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %75
  br label %105

101:                                              ; preds = %75
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %7, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %7, align 4
  br label %69

105:                                              ; preds = %100, %69
  %106 = load i32, i32* %7, align 4
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp eq i32 %106, %109
  br i1 %110, label %111, label %117

111:                                              ; preds = %105
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %12, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %12, align 4
  br label %117

117:                                              ; preds = %111, %105
  br label %118

118:                                              ; preds = %117, %67
  %119 = load i32, i32* %8, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %8, align 4
  br label %34

121:                                              ; preds = %34
  %122 = load i32, i32* %12, align 4
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %121, %17
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local %struct.TYPE_10__* @CM_ClipHandleToModel(i64) #1

declare dso_local i32 @CM_PointLeafnum_r(i32, i32) #1

declare dso_local i32 @CM_BoundsIntersectPoint(i32, i32, i32) #1

declare dso_local float @DotProduct(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
