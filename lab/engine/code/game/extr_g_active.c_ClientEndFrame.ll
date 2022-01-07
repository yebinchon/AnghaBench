; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_g_active.c_ClientEndFrame.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_g_active.c_ClientEndFrame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, i64 }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_18__ = type { i64, %struct.TYPE_17__*, i32 }
%struct.TYPE_17__ = type { i64, i32, %struct.TYPE_23__, %struct.TYPE_16__ }
%struct.TYPE_23__ = type { i64*, i64*, i64, i32, i32, i32 }
%struct.TYPE_16__ = type { i64 }

@TEAM_SPECTATOR = common dso_local global i64 0, align 8
@MAX_POWERUPS = common dso_local global i32 0, align 4
@level = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@EF_CONNECTION = common dso_local global i32 0, align 4
@STAT_HEALTH = common dso_local global i64 0, align 8
@g_smoothClients = common dso_local global %struct.TYPE_21__ zeroinitializer, align 8
@qtrue = common dso_local global i32 0, align 4
@PM_NORMAL = common dso_local global i64 0, align 8
@PW_AMMOREGEN = common dso_local global i64 0, align 8
@PW_DOUBLER = common dso_local global i64 0, align 8
@PW_GUARD = common dso_local global i64 0, align 8
@PW_INVULNERABILITY = common dso_local global i64 0, align 8
@PW_SCOUT = common dso_local global i64 0, align 8
@STAT_PERSISTANT_POWERUP = common dso_local global i64 0, align 8
@bg_itemlist = common dso_local global %struct.TYPE_22__* null, align 8
@g_synchronousClients = common dso_local global %struct.TYPE_20__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ClientEndFrame(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_18__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %2, align 8
  %4 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 1
  %6 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @TEAM_SPECTATOR, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %14 = call i32 @SpectatorClientEndFrame(%struct.TYPE_18__* %13)
  br label %130

15:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %44, %15
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @MAX_POWERUPS, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %47

20:                                               ; preds = %16
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @level, i32 0, i32 0), align 8
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %20
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  store i64 0, i64* %42, align 8
  br label %43

43:                                               ; preds = %33, %20
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %16

47:                                               ; preds = %16
  %48 = load i64, i64* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @level, i32 0, i32 1), align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  br label %130

51:                                               ; preds = %47
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %53 = call i32 @P_WorldEffects(%struct.TYPE_18__* %52)
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %55 = call i32 @P_DamageFeedback(%struct.TYPE_18__* %54)
  %56 = load i64, i64* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @level, i32 0, i32 0), align 8
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = sub nsw i64 %56, %62
  %64 = icmp sgt i64 %63, 1000
  br i1 %64, label %65, label %74

65:                                               ; preds = %51
  %66 = load i32, i32* @EF_CONNECTION, align 4
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %66
  store i32 %73, i32* %71, align 4
  br label %84

74:                                               ; preds = %51
  %75 = load i32, i32* @EF_CONNECTION, align 4
  %76 = xor i32 %75, -1
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, %76
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %74, %65
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %91, i32 0, i32 1
  %93 = load i64*, i64** %92, align 8
  %94 = load i64, i64* @STAT_HEALTH, align 8
  %95 = getelementptr inbounds i64, i64* %93, i64 %94
  store i64 %87, i64* %95, align 8
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %97 = call i32 @G_SetClientSound(%struct.TYPE_18__* %96)
  %98 = load i64, i64* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @g_smoothClients, i32 0, i32 0), align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %115

100:                                              ; preds = %84
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 2
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 2
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @qtrue, align 4
  %114 = call i32 @BG_PlayerStateToEntityStateExtraPolate(%struct.TYPE_23__* %104, i32* %106, i32 %112, i32 %113)
  br label %124

115:                                              ; preds = %84
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 2
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 2
  %122 = load i32, i32* @qtrue, align 4
  %123 = call i32 @BG_PlayerStateToEntityState(%struct.TYPE_23__* %119, i32* %121, i32 %122)
  br label %124

124:                                              ; preds = %115, %100
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 2
  %129 = call i32 @SendPendingPredictableEvents(%struct.TYPE_23__* %128)
  br label %130

130:                                              ; preds = %124, %50, %12
  ret void
}

declare dso_local i32 @SpectatorClientEndFrame(%struct.TYPE_18__*) #1

declare dso_local i32 @P_WorldEffects(%struct.TYPE_18__*) #1

declare dso_local i32 @P_DamageFeedback(%struct.TYPE_18__*) #1

declare dso_local i32 @G_SetClientSound(%struct.TYPE_18__*) #1

declare dso_local i32 @BG_PlayerStateToEntityStateExtraPolate(%struct.TYPE_23__*, i32*, i32, i32) #1

declare dso_local i32 @BG_PlayerStateToEntityState(%struct.TYPE_23__*, i32*, i32) #1

declare dso_local i32 @SendPendingPredictableEvents(%struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
