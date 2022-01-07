; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_ai_dmq3.c_BotSetLastOrderedTask.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_ai_dmq3.c_BotSetLastOrderedTask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64, i64, i32, i64, i32, i32, i64, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32 }

@gametype = common dso_local global i64 0, align 8
@GT_CTF = common dso_local global i64 0, align 8
@LTG_RETURNFLAG = common dso_local global i64 0, align 8
@TEAM_RED = common dso_local global i64 0, align 8
@qtrue = common dso_local global i32 0, align 4
@LTG_GETFLAG = common dso_local global i64 0, align 8
@TFL_DEFAULT = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BotSetLastOrderedTask(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %8 = load i64, i64* @gametype, align 8
  %9 = load i64, i64* @GT_CTF, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %42

11:                                               ; preds = %1
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @LTG_RETURNFLAG, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %41

17:                                               ; preds = %11
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %19 = call i64 @BotTeam(%struct.TYPE_12__* %18)
  %20 = load i64, i64* @TEAM_RED, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %17
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  br label %30

30:                                               ; preds = %27, %22
  br label %40

31:                                               ; preds = %17
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  br label %39

39:                                               ; preds = %36, %31
  br label %40

40:                                               ; preds = %39, %30
  br label %41

41:                                               ; preds = %40, %11
  br label %42

42:                                               ; preds = %41, %1
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %125

47:                                               ; preds = %42
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 12
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 13
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @qtrue, align 4
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 8
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 4
  store i64 %58, i64* %60, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 11
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 10
  %65 = call i32 @memcpy(i32* %62, i32* %64, i32 4)
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 8
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 9
  store i32 %68, i32* %70, align 4
  %71 = call i64 (...) @FloatTime()
  %72 = add nsw i64 %71, 300
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 7
  store i64 %72, i64* %74, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %76 = call i32 @BotSetTeamStatus(%struct.TYPE_12__* %75)
  %77 = load i64, i64* @gametype, align 8
  %78 = load i64, i64* @GT_CTF, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %123

80:                                               ; preds = %47
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @LTG_GETFLAG, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %122

86:                                               ; preds = %80
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %88 = call %struct.TYPE_13__* @BotTeamFlag(%struct.TYPE_12__* %87)
  store %struct.TYPE_13__* %88, %struct.TYPE_13__** %4, align 8
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %90 = call %struct.TYPE_13__* @BotEnemyFlag(%struct.TYPE_12__* %89)
  store %struct.TYPE_13__* %90, %struct.TYPE_13__** %5, align 8
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 6
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @TFL_DEFAULT, align 4
  %101 = call i32 @trap_AAS_AreaTravelTimeToGoalArea(i32 %93, i32 %96, i32 %99, i32 %100)
  store i32 %101, i32* %6, align 4
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 6
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @TFL_DEFAULT, align 4
  %112 = call i32 @trap_AAS_AreaTravelTimeToGoalArea(i32 %104, i32 %107, i32 %110, i32 %111)
  store i32 %112, i32* %7, align 4
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* %6, align 4
  %115 = icmp sgt i32 %113, %114
  br i1 %115, label %116, label %121

116:                                              ; preds = %86
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %119 = call i32 @BotOppositeTeam(%struct.TYPE_12__* %118)
  %120 = call i32 @BotGetAlternateRouteGoal(%struct.TYPE_12__* %117, i32 %119)
  br label %121

121:                                              ; preds = %116, %86
  br label %122

122:                                              ; preds = %121, %80
  br label %123

123:                                              ; preds = %122, %47
  %124 = load i32, i32* @qtrue, align 4
  store i32 %124, i32* %2, align 4
  br label %127

125:                                              ; preds = %42
  %126 = load i32, i32* @qfalse, align 4
  store i32 %126, i32* %2, align 4
  br label %127

127:                                              ; preds = %125, %123
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local i64 @BotTeam(%struct.TYPE_12__*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @FloatTime(...) #1

declare dso_local i32 @BotSetTeamStatus(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_13__* @BotTeamFlag(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_13__* @BotEnemyFlag(%struct.TYPE_12__*) #1

declare dso_local i32 @trap_AAS_AreaTravelTimeToGoalArea(i32, i32, i32, i32) #1

declare dso_local i32 @BotGetAlternateRouteGoal(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @BotOppositeTeam(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
