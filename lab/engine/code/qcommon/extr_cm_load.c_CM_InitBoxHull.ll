; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_cm_load.c_CM_InitBoxHull.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_cm_load.c_CM_InitBoxHull.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64, i32, i64, i64*, %struct.TYPE_10__*, %struct.TYPE_11__*, %struct.TYPE_14__* }
%struct.TYPE_10__ = type { i32, i32*, i64 }
%struct.TYPE_11__ = type { i64, %struct.TYPE_10__* }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_11__* }
%struct.TYPE_13__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i64 }

@cm = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@box_planes = common dso_local global %struct.TYPE_10__* null, align 8
@box_brush = common dso_local global %struct.TYPE_14__* null, align 8
@CONTENTS_BODY = common dso_local global i32 0, align 4
@box_model = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CM_InitBoxHull() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cm, i32 0, i32 5), align 8
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cm, i32 0, i32 0), align 8
  %7 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i64 %6
  store %struct.TYPE_10__* %7, %struct.TYPE_10__** @box_planes, align 8
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cm, i32 0, i32 7), align 8
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cm, i32 0, i32 1), align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i64 %9
  store %struct.TYPE_14__* %10, %struct.TYPE_14__** @box_brush, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** @box_brush, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  store i32 6, i32* %12, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cm, i32 0, i32 6), align 8
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cm, i32 0, i32 2), align 8
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i64 %15
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** @box_brush, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 2
  store %struct.TYPE_11__* %16, %struct.TYPE_11__** %18, align 8
  %19 = load i32, i32* @CONTENTS_BODY, align 4
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** @box_brush, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @box_model, i32 0, i32 0, i32 0), align 8
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cm, i32 0, i32 3), align 8
  store i64 %22, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @box_model, i32 0, i32 0, i32 1), align 8
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cm, i32 0, i32 1), align 8
  %24 = load i64*, i64** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cm, i32 0, i32 4), align 8
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cm, i32 0, i32 3), align 8
  %26 = getelementptr inbounds i64, i64* %24, i64 %25
  store i64 %23, i64* %26, align 8
  store i32 0, i32* %1, align 4
  br label %27

27:                                               ; preds = %101, %0
  %28 = load i32, i32* %1, align 4
  %29 = icmp slt i32 %28, 6
  br i1 %29, label %30, label %104

30:                                               ; preds = %27
  %31 = load i32, i32* %1, align 4
  %32 = and i32 %31, 1
  store i32 %32, i32* %2, align 4
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cm, i32 0, i32 6), align 8
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cm, i32 0, i32 2), align 8
  %35 = load i32, i32* %1, align 4
  %36 = add nsw i32 %34, %35
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i64 %37
  store %struct.TYPE_11__* %38, %struct.TYPE_11__** %4, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cm, i32 0, i32 5), align 8
  %40 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cm, i32 0, i32 0), align 8
  %41 = load i32, i32* %1, align 4
  %42 = mul nsw i32 %41, 2
  %43 = sext i32 %42 to i64
  %44 = add i64 %40, %43
  %45 = load i32, i32* %2, align 4
  %46 = sext i32 %45 to i64
  %47 = add i64 %44, %46
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i64 %47
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 1
  store %struct.TYPE_10__* %48, %struct.TYPE_10__** %50, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  store i64 0, i64* %52, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** @box_planes, align 8
  %54 = load i32, i32* %1, align 4
  %55 = mul nsw i32 %54, 2
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i64 %56
  store %struct.TYPE_10__* %57, %struct.TYPE_10__** %3, align 8
  %58 = load i32, i32* %1, align 4
  %59 = ashr i32 %58, 1
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 2
  store i64 0, i64* %63, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @VectorClear(i32* %66)
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %1, align 4
  %72 = ashr i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %70, i64 %73
  store i32 1, i32* %74, align 4
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** @box_planes, align 8
  %76 = load i32, i32* %1, align 4
  %77 = mul nsw i32 %76, 2
  %78 = add nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i64 %79
  store %struct.TYPE_10__* %80, %struct.TYPE_10__** %3, align 8
  %81 = load i32, i32* %1, align 4
  %82 = ashr i32 %81, 1
  %83 = add nsw i32 3, %82
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 2
  store i64 0, i64* %87, align 8
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @VectorClear(i32* %90)
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %1, align 4
  %96 = ashr i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %94, i64 %97
  store i32 -1, i32* %98, align 4
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %100 = call i32 @SetPlaneSignbits(%struct.TYPE_10__* %99)
  br label %101

101:                                              ; preds = %30
  %102 = load i32, i32* %1, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %1, align 4
  br label %27

104:                                              ; preds = %27
  ret void
}

declare dso_local i32 @VectorClear(i32*) #1

declare dso_local i32 @SetPlaneSignbits(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
