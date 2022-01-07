; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_g_team.c_CheckTeamStatus.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_g_team.c_CheckTeamStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i64 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_16__ = type { i64, %struct.TYPE_15__*, i64 }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_12__ }
%struct.TYPE_14__ = type { i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i64 }

@level = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@TEAM_LOCATION_UPDATE_TIME = common dso_local global i64 0, align 8
@g_maxclients = common dso_local global %struct.TYPE_18__ zeroinitializer, align 4
@g_entities = common dso_local global %struct.TYPE_16__* null, align 8
@CON_CONNECTED = common dso_local global i64 0, align 8
@TEAM_RED = common dso_local global i64 0, align 8
@TEAM_BLUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CheckTeamStatus() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @level, i32 0, i32 0), align 8
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @level, i32 0, i32 1), align 8
  %6 = sub nsw i64 %4, %5
  %7 = load i64, i64* @TEAM_LOCATION_UPDATE_TIME, align 8
  %8 = icmp sgt i64 %6, %7
  br i1 %8, label %9, label %111

9:                                                ; preds = %0
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @level, i32 0, i32 0), align 8
  store i64 %10, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @level, i32 0, i32 1), align 8
  store i32 0, i32* %1, align 4
  br label %11

11:                                               ; preds = %76, %9
  %12 = load i32, i32* %1, align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @g_maxclients, i32 0, i32 0), align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %79

15:                                               ; preds = %11
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** @g_entities, align 8
  %17 = load i32, i32* %1, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i64 %18
  store %struct.TYPE_16__* %19, %struct.TYPE_16__** %3, align 8
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @CON_CONNECTED, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %15
  br label %76

29:                                               ; preds = %15
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %75

34:                                               ; preds = %29
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @TEAM_RED, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %52, label %43

43:                                               ; preds = %34
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @TEAM_BLUE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %75

52:                                               ; preds = %43, %34
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %54 = call %struct.TYPE_16__* @Team_GetLocation(%struct.TYPE_16__* %53)
  store %struct.TYPE_16__* %54, %struct.TYPE_16__** %2, align 8
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %56 = icmp ne %struct.TYPE_16__* %55, null
  br i1 %56, label %57, label %67

57:                                               ; preds = %52
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  store i64 %60, i64* %66, align 8
  br label %74

67:                                               ; preds = %52
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  store i64 0, i64* %73, align 8
  br label %74

74:                                               ; preds = %67, %57
  br label %75

75:                                               ; preds = %74, %43, %29
  br label %76

76:                                               ; preds = %75, %28
  %77 = load i32, i32* %1, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %1, align 4
  br label %11

79:                                               ; preds = %11
  store i32 0, i32* %1, align 4
  br label %80

80:                                               ; preds = %107, %79
  %81 = load i32, i32* %1, align 4
  %82 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @g_maxclients, i32 0, i32 0), align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %110

84:                                               ; preds = %80
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** @g_entities, align 8
  %86 = load i32, i32* %1, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i64 %87
  store %struct.TYPE_16__* %88, %struct.TYPE_16__** %3, align 8
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @CON_CONNECTED, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %84
  br label %107

98:                                               ; preds = %84
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %105 = call i32 @TeamplayInfoMessage(%struct.TYPE_16__* %104)
  br label %106

106:                                              ; preds = %103, %98
  br label %107

107:                                              ; preds = %106, %97
  %108 = load i32, i32* %1, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %1, align 4
  br label %80

110:                                              ; preds = %80
  br label %111

111:                                              ; preds = %110, %0
  ret void
}

declare dso_local %struct.TYPE_16__* @Team_GetLocation(%struct.TYPE_16__*) #1

declare dso_local i32 @TeamplayInfoMessage(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
