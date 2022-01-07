; ModuleID = '/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_main.c_UI_StartServerRefresh.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_main.c_UI_StartServerRefresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64, i64, i64, i64, i32 }
%struct.TYPE_9__ = type { i64, i32, i32, i64, i32 }

@ui_netSource = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@UIAS_GLOBAL0 = common dso_local global i64 0, align 8
@UIAS_GLOBAL5 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"ui_lastServerRefresh_%i\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"%s-%i, %i at %i:%02i\00", align 1
@MonthAbbrev = common dso_local global i32* null, align 8
@qtrue = common dso_local global i32 0, align 4
@uiInfo = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@UIAS_LOCAL = common dso_local global i64 0, align 8
@EXEC_NOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"localservers\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"debug_protocol\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"globalservers %d %s full empty\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"globalservers %d %d full empty\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"protocol\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @UI_StartServerRefresh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UI_StartServerRefresh(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %24, label %10

10:                                               ; preds = %2
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ui_netSource, i32 0, i32 0), align 8
  %12 = load i64, i64* @UIAS_GLOBAL0, align 8
  %13 = icmp sge i64 %11, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %10
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ui_netSource, i32 0, i32 0), align 8
  %16 = load i64, i64* @UIAS_GLOBAL5, align 8
  %17 = icmp sle i64 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = call i32 (...) @UI_SourceForLAN()
  %20 = call i64 @trap_LAN_GetServerCount(i32 %19)
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %100

23:                                               ; preds = %18
  br label %24

24:                                               ; preds = %23, %14, %10, %2
  %25 = call i32 @trap_RealTime(%struct.TYPE_9__* %7)
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ui_netSource, i32 0, i32 0), align 8
  %27 = call i8* (i8*, i64, ...) @va(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %26)
  %28 = load i32*, i32** @MonthAbbrev, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 1900, %37
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i8* (i8*, i64, ...) @va(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %33, i32 %35, i64 %38, i32 %40, i32 %42)
  %44 = call i32 @trap_Cvar_Set(i8* %27, i8* %43)
  %45 = load i32, i32* %3, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %24
  %48 = call i32 (...) @UI_UpdatePendingPings()
  br label %100

49:                                               ; preds = %24
  %50 = load i32, i32* @qtrue, align 4
  store i32 %50, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @uiInfo, i32 0, i32 1, i32 4), align 8
  %51 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @uiInfo, i32 0, i32 0, i32 0), align 8
  %52 = add nsw i64 %51, 1000
  store i64 %52, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @uiInfo, i32 0, i32 1, i32 3), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @uiInfo, i32 0, i32 1, i32 2), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @uiInfo, i32 0, i32 1, i32 1), align 8
  %53 = call i32 (...) @UI_SourceForLAN()
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @qtrue, align 4
  %56 = call i32 @trap_LAN_MarkServerVisible(i32 %54, i32 -1, i32 %55)
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @trap_LAN_ResetPings(i32 %57)
  %59 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ui_netSource, i32 0, i32 0), align 8
  %60 = load i64, i64* @UIAS_LOCAL, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %49
  %63 = load i32, i32* @EXEC_NOW, align 4
  %64 = call i32 @trap_Cmd_ExecuteText(i32 %63, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %65 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @uiInfo, i32 0, i32 0, i32 0), align 8
  %66 = add nsw i64 %65, 5000
  store i64 %66, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @uiInfo, i32 0, i32 1, i32 0), align 8
  br label %100

67:                                               ; preds = %49
  %68 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @uiInfo, i32 0, i32 0, i32 0), align 8
  %69 = add nsw i64 %68, 5000
  store i64 %69, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @uiInfo, i32 0, i32 1, i32 0), align 8
  %70 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ui_netSource, i32 0, i32 0), align 8
  %71 = load i64, i64* @UIAS_GLOBAL0, align 8
  %72 = icmp sge i64 %70, %71
  br i1 %72, label %73, label %100

73:                                               ; preds = %67
  %74 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ui_netSource, i32 0, i32 0), align 8
  %75 = load i64, i64* @UIAS_GLOBAL5, align 8
  %76 = icmp sle i64 %74, %75
  br i1 %76, label %77, label %100

77:                                               ; preds = %73
  %78 = call i8* @UI_Cvar_VariableString(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  store i8* %78, i8** %5, align 8
  %79 = load i8*, i8** %5, align 8
  %80 = call i64 @strlen(i8* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %77
  %83 = load i32, i32* @EXEC_NOW, align 4
  %84 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ui_netSource, i32 0, i32 0), align 8
  %85 = load i64, i64* @UIAS_GLOBAL0, align 8
  %86 = sub nsw i64 %84, %85
  %87 = load i8*, i8** %5, align 8
  %88 = call i8* (i8*, i64, ...) @va(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i64 %86, i8* %87)
  %89 = call i32 @trap_Cmd_ExecuteText(i32 %83, i8* %88)
  br label %99

90:                                               ; preds = %77
  %91 = load i32, i32* @EXEC_NOW, align 4
  %92 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ui_netSource, i32 0, i32 0), align 8
  %93 = load i64, i64* @UIAS_GLOBAL0, align 8
  %94 = sub nsw i64 %92, %93
  %95 = call i64 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %96 = trunc i64 %95 to i32
  %97 = call i8* (i8*, i64, ...) @va(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i64 %94, i32 %96)
  %98 = call i32 @trap_Cmd_ExecuteText(i32 %91, i8* %97)
  br label %99

99:                                               ; preds = %90, %82
  br label %100

100:                                              ; preds = %22, %47, %62, %99, %73, %67
  ret void
}

declare dso_local i64 @trap_LAN_GetServerCount(i32) #1

declare dso_local i32 @UI_SourceForLAN(...) #1

declare dso_local i32 @trap_RealTime(%struct.TYPE_9__*) #1

declare dso_local i32 @trap_Cvar_Set(i8*, i8*) #1

declare dso_local i8* @va(i8*, i64, ...) #1

declare dso_local i32 @UI_UpdatePendingPings(...) #1

declare dso_local i32 @trap_LAN_MarkServerVisible(i32, i32, i32) #1

declare dso_local i32 @trap_LAN_ResetPings(i32) #1

declare dso_local i32 @trap_Cmd_ExecuteText(i32, i8*) #1

declare dso_local i8* @UI_Cvar_VariableString(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @trap_Cvar_VariableValue(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
