; ModuleID = '/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_main.c_UI_GameType_HandleKey.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_main.c_UI_GameType_HandleKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { i64 }

@qtrue = common dso_local global i64 0, align 8
@ui_gameType = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@uiInfo = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@GT_TEAM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"ui_Q3Model\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"ui_gameType\00", align 1
@ui_currentMap = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"ui_currentMap\00", align 1
@FEEDER_MAPS = common dso_local global i32 0, align 4
@qfalse = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, float*, i32, i64)* @UI_GameType_HandleKey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @UI_GameType_HandleKey(i32 %0, float* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store float* %1, float** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %12 = load i32, i32* %8, align 4
  %13 = call i32 @UI_SelectForKey(i32 %12)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %91

16:                                               ; preds = %4
  %17 = load i64, i64* @qtrue, align 8
  %18 = call i32 @UI_MapCountByGameType(i64 %17)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %16
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ui_gameType, i32 0, i32 0), align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ui_gameType, i32 0, i32 0), align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ui_gameType, i32 0, i32 0), align 4
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ui_gameType, i32 0, i32 0), align 4
  br label %34

27:                                               ; preds = %21
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ui_gameType, i32 0, i32 0), align 4
  %29 = icmp slt i32 %28, 2
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @uiInfo, i32 0, i32 0), align 8
  %32 = sub nsw i32 %31, 1
  store i32 %32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ui_gameType, i32 0, i32 0), align 4
  br label %33

33:                                               ; preds = %30, %27
  br label %34

34:                                               ; preds = %33, %26
  br label %48

35:                                               ; preds = %16
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ui_gameType, i32 0, i32 0), align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ui_gameType, i32 0, i32 0), align 4
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ui_gameType, i32 0, i32 0), align 4
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @uiInfo, i32 0, i32 0), align 8
  %40 = icmp sge i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ui_gameType, i32 0, i32 0), align 4
  br label %47

42:                                               ; preds = %35
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ui_gameType, i32 0, i32 0), align 4
  %44 = icmp eq i32 %43, 2
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 3, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ui_gameType, i32 0, i32 0), align 4
  br label %46

46:                                               ; preds = %45, %42
  br label %47

47:                                               ; preds = %46, %41
  br label %48

48:                                               ; preds = %47, %34
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @uiInfo, i32 0, i32 1), align 8
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ui_gameType, i32 0, i32 0), align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @GT_TEAM, align 8
  %56 = icmp slt i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %48
  %58 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 1)
  br label %61

59:                                               ; preds = %48
  %60 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %61

61:                                               ; preds = %59, %57
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ui_gameType, i32 0, i32 0), align 4
  %63 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = load i64, i64* @qtrue, align 8
  %65 = call i32 @UI_SetCapFragLimits(i64 %64)
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @uiInfo, i32 0, i32 2), align 8
  %67 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ui_currentMap, i32 0, i32 0), align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @uiInfo, i32 0, i32 1), align 8
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ui_gameType, i32 0, i32 0), align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @UI_LoadBestScores(i32 %70, i64 %76)
  %78 = load i64, i64* %9, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %61
  %81 = load i32, i32* %11, align 4
  %82 = load i64, i64* @qtrue, align 8
  %83 = call i32 @UI_MapCountByGameType(i64 %82)
  %84 = icmp ne i32 %81, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %87 = load i32, i32* @FEEDER_MAPS, align 4
  %88 = call i32 @Menu_SetFeederSelection(i32* null, i32 %87, i32 0, i32* null)
  br label %89

89:                                               ; preds = %85, %80, %61
  %90 = load i64, i64* @qtrue, align 8
  store i64 %90, i64* %5, align 8
  br label %93

91:                                               ; preds = %4
  %92 = load i64, i64* @qfalse, align 8
  store i64 %92, i64* %5, align 8
  br label %93

93:                                               ; preds = %91, %89
  %94 = load i64, i64* %5, align 8
  ret i64 %94
}

declare dso_local i32 @UI_SelectForKey(i32) #1

declare dso_local i32 @UI_MapCountByGameType(i64) #1

declare dso_local i32 @trap_Cvar_SetValue(i8*, i32) #1

declare dso_local i32 @UI_SetCapFragLimits(i64) #1

declare dso_local i32 @UI_LoadBestScores(i32, i64) #1

declare dso_local i32 @Menu_SetFeederSelection(i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
