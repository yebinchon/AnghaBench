; ModuleID = '/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_main.c_UI_NetGameType_HandleKey.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_main.c_UI_NetGameType_HandleKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@ui_netGameType = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@uiInfo = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str = private unnamed_addr constant [15 x i8] c"ui_netGameType\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"ui_actualnetGameType\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"ui_currentNetMap\00", align 1
@qfalse = common dso_local global i32 0, align 4
@FEEDER_ALLMAPS = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, float*, i32)* @UI_NetGameType_HandleKey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @UI_NetGameType_HandleKey(i32 %0, float* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store float* %1, float** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = call i32 @UI_SelectForKey(i32 %9)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %44

13:                                               ; preds = %3
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ui_netGameType, i32 0, i32 0), align 4
  %16 = add nsw i32 %15, %14
  store i32 %16, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ui_netGameType, i32 0, i32 0), align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ui_netGameType, i32 0, i32 0), align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @uiInfo, i32 0, i32 0), align 8
  %21 = sub nsw i32 %20, 1
  store i32 %21, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ui_netGameType, i32 0, i32 0), align 4
  br label %28

22:                                               ; preds = %13
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ui_netGameType, i32 0, i32 0), align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @uiInfo, i32 0, i32 0), align 8
  %25 = icmp sge i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ui_netGameType, i32 0, i32 0), align 4
  br label %27

27:                                               ; preds = %26, %22
  br label %28

28:                                               ; preds = %27, %19
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ui_netGameType, i32 0, i32 0), align 4
  %30 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @uiInfo, i32 0, i32 1), align 8
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ui_netGameType, i32 0, i32 0), align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %39 = load i32, i32* @qfalse, align 4
  %40 = call i32 @UI_MapCountByGameType(i32 %39)
  %41 = load i32, i32* @FEEDER_ALLMAPS, align 4
  %42 = call i32 @Menu_SetFeederSelection(i32* null, i32 %41, i32 0, i32* null)
  %43 = load i32, i32* @qtrue, align 4
  store i32 %43, i32* %4, align 4
  br label %46

44:                                               ; preds = %3
  %45 = load i32, i32* @qfalse, align 4
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %44, %28
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @UI_SelectForKey(i32) #1

declare dso_local i32 @trap_Cvar_SetValue(i8*, i32) #1

declare dso_local i32 @UI_MapCountByGameType(i32) #1

declare dso_local i32 @Menu_SetFeederSelection(i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
