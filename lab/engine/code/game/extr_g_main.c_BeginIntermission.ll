; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_g_main.c_BeginIntermission.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_g_main.c_BeginIntermission.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64, i64 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_10__ = type { i64 }

@level = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@g_gametype = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@GT_TOURNAMENT = common dso_local global i64 0, align 8
@g_entities = common dso_local global %struct.TYPE_8__* null, align 8
@GT_SINGLE_PLAYER = common dso_local global i64 0, align 8
@g_singlePlayer = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BeginIntermission() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @level, i32 0, i32 2), align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %51

6:                                                ; preds = %0
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @g_gametype, i32 0, i32 0), align 8
  %8 = load i64, i64* @GT_TOURNAMENT, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = call i32 (...) @AdjustTournamentScores()
  br label %12

12:                                               ; preds = %10, %6
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @level, i32 0, i32 1), align 8
  store i64 %13, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @level, i32 0, i32 2), align 8
  store i32 0, i32* %1, align 4
  br label %14

14:                                               ; preds = %39, %12
  %15 = load i32, i32* %1, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @level, i32 0, i32 0), align 8
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %42

18:                                               ; preds = %14
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** @g_entities, align 8
  %20 = load i32, i32* %1, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i64 %21
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %2, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %18
  br label %39

28:                                               ; preds = %18
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp sle i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %35 = call i32 @ClientRespawn(%struct.TYPE_8__* %34)
  br label %36

36:                                               ; preds = %33, %28
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %38 = call i32 @MoveClientToIntermission(%struct.TYPE_8__* %37)
  br label %39

39:                                               ; preds = %36, %27
  %40 = load i32, i32* %1, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %1, align 4
  br label %14

42:                                               ; preds = %14
  %43 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @g_gametype, i32 0, i32 0), align 8
  %44 = load i64, i64* @GT_SINGLE_PLAYER, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = call i32 (...) @UpdateTournamentInfo()
  %48 = call i32 (...) @SpawnModelsOnVictoryPads()
  br label %49

49:                                               ; preds = %46, %42
  %50 = call i32 (...) @SendScoreboardMessageToAllClients()
  br label %51

51:                                               ; preds = %49, %5
  ret void
}

declare dso_local i32 @AdjustTournamentScores(...) #1

declare dso_local i32 @ClientRespawn(%struct.TYPE_8__*) #1

declare dso_local i32 @MoveClientToIntermission(%struct.TYPE_8__*) #1

declare dso_local i32 @UpdateTournamentInfo(...) #1

declare dso_local i32 @SpawnModelsOnVictoryPads(...) #1

declare dso_local i32 @SendScoreboardMessageToAllClients(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
