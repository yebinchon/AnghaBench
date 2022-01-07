; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_snapshot.c_CG_ProcessSnapshots.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_snapshot.c_CG_ProcessSnapshots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64, %struct.TYPE_9__*, %struct.TYPE_8__*, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_10__ = type { i32 }

@cg = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@.str = private unnamed_addr constant [46 x i8] c"CG_ProcessSnapshots: n < cg.latestSnapshotNum\00", align 1
@SNAPFLAG_NOT_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"CG_ProcessSnapshots: Server time went backwards\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"CG_ProcessSnapshots: cg.snap == NULL\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"CG_ProcessSnapshots: cg.nextSnap->serverTime <= cg.time\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CG_ProcessSnapshots() #0 {
  %1 = alloca %struct.TYPE_10__*, align 8
  %2 = alloca i32, align 4
  %3 = call i32 @trap_GetCurrentSnapshotNumber(i32* %2, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 4))
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 0), align 8
  %6 = icmp ne i32 %4, %5
  br i1 %6, label %7, label %15

7:                                                ; preds = %0
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 0), align 8
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = call i32 @CG_Error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %7
  %14 = load i32, i32* %2, align 4
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 0), align 8
  br label %15

15:                                               ; preds = %13, %0
  br label %16

16:                                               ; preds = %35, %15
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 3), align 8
  %18 = icmp ne %struct.TYPE_8__* %17, null
  %19 = xor i1 %18, true
  br i1 %19, label %20, label %36

20:                                               ; preds = %16
  %21 = call %struct.TYPE_10__* (...) @CG_ReadNextSnapshot()
  store %struct.TYPE_10__* %21, %struct.TYPE_10__** %1, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %23 = icmp ne %struct.TYPE_10__* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  br label %100

25:                                               ; preds = %20
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @SNAPFLAG_NOT_ACTIVE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %25
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %34 = call i32 @CG_SetInitialSnapshot(%struct.TYPE_10__* %33)
  br label %35

35:                                               ; preds = %32, %25
  br label %16

36:                                               ; preds = %16
  br label %37

37:                                               ; preds = %73, %36
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 2), align 8
  %39 = icmp ne %struct.TYPE_9__* %38, null
  br i1 %39, label %58, label %40

40:                                               ; preds = %37
  %41 = call %struct.TYPE_10__* (...) @CG_ReadNextSnapshot()
  store %struct.TYPE_10__* %41, %struct.TYPE_10__** %1, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %43 = icmp ne %struct.TYPE_10__* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  br label %74

45:                                               ; preds = %40
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %47 = call i32 @CG_SetNextSnap(%struct.TYPE_10__* %46)
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 2), align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 3), align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp slt i64 %50, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %45
  %56 = call i32 @CG_Error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %45
  br label %58

58:                                               ; preds = %57, %37
  %59 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 1), align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 3), align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp sge i64 %59, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %58
  %65 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 1), align 8
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 2), align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp slt i64 %65, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  br label %74

71:                                               ; preds = %64, %58
  %72 = call i32 (...) @CG_TransitionSnapshot()
  br label %73

73:                                               ; preds = %71
  br i1 true, label %37, label %74

74:                                               ; preds = %73, %70, %44
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 3), align 8
  %76 = icmp eq %struct.TYPE_8__* %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = call i32 @CG_Error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %79

79:                                               ; preds = %77, %74
  %80 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 1), align 8
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 3), align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp slt i64 %80, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %79
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 3), align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  store i64 %88, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 1), align 8
  br label %89

89:                                               ; preds = %85, %79
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 2), align 8
  %91 = icmp ne %struct.TYPE_9__* %90, null
  br i1 %91, label %92, label %100

92:                                               ; preds = %89
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 2), align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 1), align 8
  %97 = icmp sle i64 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %92
  %99 = call i32 @CG_Error(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0))
  br label %100

100:                                              ; preds = %24, %98, %92, %89
  ret void
}

declare dso_local i32 @trap_GetCurrentSnapshotNumber(i32*, i32*) #1

declare dso_local i32 @CG_Error(i8*) #1

declare dso_local %struct.TYPE_10__* @CG_ReadNextSnapshot(...) #1

declare dso_local i32 @CG_SetInitialSnapshot(%struct.TYPE_10__*) #1

declare dso_local i32 @CG_SetNextSnap(%struct.TYPE_10__*) #1

declare dso_local i32 @CG_TransitionSnapshot(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
