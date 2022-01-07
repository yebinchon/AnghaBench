; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_draw.c_CG_Draw2D.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_draw.c_CG_Draw2D.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32, %struct.TYPE_15__*, i32, i64 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, i64*, i64* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_16__ = type { i64, i64, i64 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_17__ = type { i32 }

@cg = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@cg_draw2D = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@cg_drawReducedUI = common dso_local global %struct.TYPE_21__ zeroinitializer, align 8
@STEREO_CENTER = common dso_local global i64 0, align 8
@cg_drawCrosshairAlways = common dso_local global %struct.TYPE_22__ zeroinitializer, align 8
@cg_drawScriptTextAlways = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@cg_drawScriptRectanglesAlways = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@PM_INTERMISSION = common dso_local global i64 0, align 8
@PERS_TEAM = common dso_local global i64 0, align 8
@TEAM_SPECTATOR = common dso_local global i64 0, align 8
@STAT_HEALTH = common dso_local global i64 0, align 8
@cgs = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@GT_TEAM = common dso_local global i64 0, align 8
@cg_drawStatus = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@cg_paused = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @CG_Draw2D to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_Draw2D(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cg, i32 0, i32 4), align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %118

6:                                                ; preds = %1
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg_draw2D, i32 0, i32 0), align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @cg_drawReducedUI, i32 0, i32 0), align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %38

12:                                               ; preds = %9, %6
  %13 = load i64, i64* %2, align 8
  %14 = load i64, i64* @STEREO_CENTER, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %37

16:                                               ; preds = %12
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @cg_drawCrosshairAlways, i32 0, i32 0), align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = call i32 (...) @CG_DrawCrosshair()
  br label %21

21:                                               ; preds = %19, %16
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @cg_drawReducedUI, i32 0, i32 0), align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = call i32 (...) @CG_DrawStatusBarReduced()
  br label %26

26:                                               ; preds = %24, %21
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cg_drawScriptTextAlways, i32 0, i32 0), align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = call i32 (...) @CG_DrawScriptMessage()
  br label %31

31:                                               ; preds = %29, %26
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @cg_drawScriptRectanglesAlways, i32 0, i32 0), align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = call i32 (...) @CG_DrawScriptFilledRectangles()
  br label %36

36:                                               ; preds = %34, %31
  br label %37

37:                                               ; preds = %36, %12
  br label %118

38:                                               ; preds = %9
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cg, i32 0, i32 2), align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @PM_INTERMISSION, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = call i32 (...) @CG_DrawIntermission()
  br label %118

47:                                               ; preds = %38
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cg, i32 0, i32 2), align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 1
  %51 = load i64*, i64** %50, align 8
  %52 = load i64, i64* @PERS_TEAM, align 8
  %53 = getelementptr inbounds i64, i64* %51, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @TEAM_SPECTATOR, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %47
  %58 = call i32 (...) @CG_DrawSpectator()
  %59 = load i64, i64* %2, align 8
  %60 = load i64, i64* @STEREO_CENTER, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = call i32 (...) @CG_DrawCrosshair()
  br label %64

64:                                               ; preds = %62, %57
  %65 = call i32 (...) @CG_DrawCrosshairNames()
  br label %92

66:                                               ; preds = %47
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cg, i32 0, i32 3), align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %91, label %69

69:                                               ; preds = %66
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cg, i32 0, i32 2), align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 2
  %73 = load i64*, i64** %72, align 8
  %74 = load i64, i64* @STAT_HEALTH, align 8
  %75 = getelementptr inbounds i64, i64* %73, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = icmp sgt i64 %76, 0
  br i1 %77, label %78, label %91

78:                                               ; preds = %69
  %79 = call i32 (...) @CG_DrawStatusBar()
  %80 = call i32 (...) @CG_DrawAmmoWarning()
  %81 = load i64, i64* %2, align 8
  %82 = load i64, i64* @STEREO_CENTER, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %78
  %85 = call i32 (...) @CG_DrawCrosshair()
  br label %86

86:                                               ; preds = %84, %78
  %87 = call i32 (...) @CG_DrawCrosshairNames()
  %88 = call i32 (...) @CG_DrawWeaponSelect()
  %89 = call i32 (...) @CG_DrawHoldableItem()
  %90 = call i32 (...) @CG_DrawReward()
  br label %91

91:                                               ; preds = %86, %69, %66
  br label %92

92:                                               ; preds = %91, %64
  %93 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @cgs, i32 0, i32 1), align 8
  %94 = load i64, i64* @GT_TEAM, align 8
  %95 = icmp sge i64 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = call i32 (...) @CG_DrawTeamInfo()
  br label %98

98:                                               ; preds = %96, %92
  %99 = call i32 (...) @CG_DrawScriptMessage()
  %100 = call i32 (...) @CG_DrawScriptFilledRectangles()
  %101 = call i32 (...) @CG_DrawVote()
  %102 = call i32 (...) @CG_DrawTeamVote()
  %103 = call i32 (...) @CG_DrawLagometer()
  %104 = load i64, i64* %2, align 8
  %105 = call i32 @CG_DrawUpperRight(i64 %104)
  %106 = call i32 (...) @CG_DrawLowerRight()
  %107 = call i32 (...) @CG_DrawLowerLeft()
  %108 = call i32 (...) @CG_DrawFollow()
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %98
  %111 = call i32 (...) @CG_DrawWarmup()
  br label %112

112:                                              ; preds = %110, %98
  %113 = call i32 (...) @CG_DrawScoreboard()
  store i32 %113, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cg, i32 0, i32 1), align 8
  %114 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cg, i32 0, i32 1), align 8
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %112
  %117 = call i32 (...) @CG_DrawCenterString()
  br label %118

118:                                              ; preds = %5, %37, %45, %116, %112
  ret void
}

declare dso_local i32 @CG_DrawCrosshair(...) #1

declare dso_local i32 @CG_DrawStatusBarReduced(...) #1

declare dso_local i32 @CG_DrawScriptMessage(...) #1

declare dso_local i32 @CG_DrawScriptFilledRectangles(...) #1

declare dso_local i32 @CG_DrawIntermission(...) #1

declare dso_local i32 @CG_DrawSpectator(...) #1

declare dso_local i32 @CG_DrawCrosshairNames(...) #1

declare dso_local i32 @CG_DrawStatusBar(...) #1

declare dso_local i32 @CG_DrawAmmoWarning(...) #1

declare dso_local i32 @CG_DrawWeaponSelect(...) #1

declare dso_local i32 @CG_DrawHoldableItem(...) #1

declare dso_local i32 @CG_DrawReward(...) #1

declare dso_local i32 @CG_DrawTeamInfo(...) #1

declare dso_local i32 @CG_DrawVote(...) #1

declare dso_local i32 @CG_DrawTeamVote(...) #1

declare dso_local i32 @CG_DrawLagometer(...) #1

declare dso_local i32 @CG_DrawUpperRight(i64) #1

declare dso_local i32 @CG_DrawLowerRight(...) #1

declare dso_local i32 @CG_DrawLowerLeft(...) #1

declare dso_local i32 @CG_DrawFollow(...) #1

declare dso_local i32 @CG_DrawWarmup(...) #1

declare dso_local i32 @CG_DrawScoreboard(...) #1

declare dso_local i32 @CG_DrawCenterString(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
