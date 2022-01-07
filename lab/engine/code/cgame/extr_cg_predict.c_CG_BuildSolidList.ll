; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_predict.c_CG_BuildSolidList.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_predict.c_CG_BuildSolidList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_12__*, %struct.TYPE_12__*, i32, i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_14__ = type { %struct.TYPE_11__, %struct.TYPE_13__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_13__ = type { i64 }

@cg_numSolidEntities = common dso_local global i64 0, align 8
@cg_numTriggerEntities = common dso_local global i64 0, align 8
@cg = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@cg_entities = common dso_local global %struct.TYPE_14__* null, align 8
@ET_ITEM = common dso_local global i64 0, align 8
@ET_PUSH_TRIGGER = common dso_local global i64 0, align 8
@ET_TELEPORT_TRIGGER = common dso_local global i64 0, align 8
@cg_triggerEntities = common dso_local global %struct.TYPE_14__** null, align 8
@cg_solidEntities = common dso_local global %struct.TYPE_14__** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CG_BuildSolidList() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  store i64 0, i64* @cg_numSolidEntities, align 8
  store i64 0, i64* @cg_numTriggerEntities, align 8
  %5 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 1), align 8
  %6 = icmp ne %struct.TYPE_12__* %5, null
  br i1 %6, label %7, label %15

7:                                                ; preds = %0
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 3), align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %7
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 2), align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 1), align 8
  store %struct.TYPE_12__* %14, %struct.TYPE_12__** %3, align 8
  br label %17

15:                                               ; preds = %10, %7, %0
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 0), align 8
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %3, align 8
  br label %17

17:                                               ; preds = %15, %13
  store i32 0, i32* %1, align 4
  br label %18

18:                                               ; preds = %75, %17
  %19 = load i32, i32* %1, align 4
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %78

24:                                               ; preds = %18
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** @cg_entities, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %29 = load i32, i32* %1, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i64 %33
  store %struct.TYPE_14__* %34, %struct.TYPE_14__** %2, align 8
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 1
  store %struct.TYPE_13__* %36, %struct.TYPE_13__** %4, align 8
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @ET_ITEM, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %54, label %42

42:                                               ; preds = %24
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @ET_PUSH_TRIGGER, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %54, label %48

48:                                               ; preds = %42
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @ET_TELEPORT_TRIGGER, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %48, %42, %24
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %56 = load %struct.TYPE_14__**, %struct.TYPE_14__*** @cg_triggerEntities, align 8
  %57 = load i64, i64* @cg_numTriggerEntities, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %56, i64 %57
  store %struct.TYPE_14__* %55, %struct.TYPE_14__** %58, align 8
  %59 = load i64, i64* @cg_numTriggerEntities, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* @cg_numTriggerEntities, align 8
  br label %75

61:                                               ; preds = %48
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %61
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %69 = load %struct.TYPE_14__**, %struct.TYPE_14__*** @cg_solidEntities, align 8
  %70 = load i64, i64* @cg_numSolidEntities, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %69, i64 %70
  store %struct.TYPE_14__* %68, %struct.TYPE_14__** %71, align 8
  %72 = load i64, i64* @cg_numSolidEntities, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* @cg_numSolidEntities, align 8
  br label %75

74:                                               ; preds = %61
  br label %75

75:                                               ; preds = %74, %67, %54
  %76 = load i32, i32* %1, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %1, align 4
  br label %18

78:                                               ; preds = %18
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
