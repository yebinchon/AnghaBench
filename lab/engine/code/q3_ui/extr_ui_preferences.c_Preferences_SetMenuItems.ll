; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_preferences.c_Preferences_SetMenuItems.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_preferences.c_Preferences_SetMenuItems.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_24__, %struct.TYPE_23__, %struct.TYPE_22__, %struct.TYPE_21__, %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"cg_drawCrosshair\00", align 1
@NUM_CROSSHAIRS = common dso_local global i32 0, align 4
@s_preferences = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"cg_simpleItems\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"cg_brassTime\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"cg_marks\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"cg_drawCrosshairNames\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"r_dynamiclight\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"r_fastsky\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"r_finish\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"cg_forcemodel\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"cg_drawTeamOverlay\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"cl_allowDownload\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @Preferences_SetMenuItems to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Preferences_SetMenuItems() #0 {
  %1 = call i64 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %2 = trunc i64 %1 to i32
  %3 = load i32, i32* @NUM_CROSSHAIRS, align 4
  %4 = srem i32 %2, %3
  store i32 %4, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @s_preferences, i32 0, i32 10, i32 0), align 4
  %5 = call i64 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %6 = icmp ne i64 %5, 0
  %7 = zext i1 %6 to i32
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @s_preferences, i32 0, i32 9, i32 0), align 4
  %8 = call i64 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %9 = icmp ne i64 %8, 0
  %10 = zext i1 %9 to i32
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @s_preferences, i32 0, i32 8, i32 0), align 4
  %11 = call i64 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %12 = icmp ne i64 %11, 0
  %13 = zext i1 %12 to i32
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @s_preferences, i32 0, i32 7, i32 0), align 4
  %14 = call i64 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %15 = icmp ne i64 %14, 0
  %16 = zext i1 %15 to i32
  store i32 %16, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @s_preferences, i32 0, i32 6, i32 0), align 4
  %17 = call i64 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %18 = icmp ne i64 %17, 0
  %19 = zext i1 %18 to i32
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @s_preferences, i32 0, i32 5, i32 0), align 4
  %20 = call i64 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %21 = icmp eq i64 %20, 0
  %22 = zext i1 %21 to i32
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @s_preferences, i32 0, i32 4, i32 0), align 4
  %23 = call i64 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %24 = icmp ne i64 %23, 0
  %25 = zext i1 %24 to i32
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @s_preferences, i32 0, i32 3, i32 0), align 4
  %26 = call i64 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %27 = icmp ne i64 %26, 0
  %28 = zext i1 %27 to i32
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @s_preferences, i32 0, i32 2, i32 0), align 4
  %29 = call i64 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  %30 = call i32 @Com_Clamp(i32 0, i32 3, i64 %29)
  store i32 %30, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @s_preferences, i32 0, i32 1, i32 0), align 4
  %31 = call i64 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  %32 = icmp ne i64 %31, 0
  %33 = zext i1 %32 to i32
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @s_preferences, i32 0, i32 0, i32 0), align 4
  ret void
}

declare dso_local i64 @trap_Cvar_VariableValue(i8*) #1

declare dso_local i32 @Com_Clamp(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
