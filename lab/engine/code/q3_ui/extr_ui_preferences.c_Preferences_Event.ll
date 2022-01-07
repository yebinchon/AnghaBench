; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_preferences.c_Preferences_Event.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_preferences.c_Preferences_Event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_26__, %struct.TYPE_25__, %struct.TYPE_24__, %struct.TYPE_23__, %struct.TYPE_22__, %struct.TYPE_21__, %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_18__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_16__ = type { i32 }

@QM_ACTIVATED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"cg_drawCrosshair\00", align 1
@s_preferences = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"cg_simpleItems\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"r_fastsky\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"cg_brassTime\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"cg_marks\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"r_dynamiclight\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"cg_drawCrosshairNames\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"r_finish\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"cg_forcemodel\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"cg_drawTeamOverlay\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"cl_allowDownload\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"sv_allowDownload\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @Preferences_Event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Preferences_Event(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @QM_ACTIVATED, align 4
  %7 = icmp ne i32 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %59

9:                                                ; preds = %2
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_16__*
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %59 [
    i32 137, label %14
    i32 130, label %17
    i32 132, label %20
    i32 134, label %26
    i32 128, label %34
    i32 135, label %37
    i32 131, label %40
    i32 129, label %43
    i32 133, label %46
    i32 136, label %49
    i32 139, label %52
    i32 138, label %57
  ]

14:                                               ; preds = %9
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @s_preferences, i32 0, i32 10, i32 0), align 4
  %16 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %59

17:                                               ; preds = %9
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @s_preferences, i32 0, i32 9, i32 0), align 4
  %19 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  br label %59

20:                                               ; preds = %9
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @s_preferences, i32 0, i32 8, i32 0), align 4
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %24)
  br label %59

26:                                               ; preds = %9
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @s_preferences, i32 0, i32 7, i32 0), align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = call i32 @trap_Cvar_Reset(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %33

31:                                               ; preds = %26
  %32 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 0)
  br label %33

33:                                               ; preds = %31, %29
  br label %59

34:                                               ; preds = %9
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @s_preferences, i32 0, i32 6, i32 0), align 4
  %36 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %35)
  br label %59

37:                                               ; preds = %9
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @s_preferences, i32 0, i32 5, i32 0), align 4
  %39 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %38)
  br label %59

40:                                               ; preds = %9
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @s_preferences, i32 0, i32 4, i32 0), align 4
  %42 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %41)
  br label %59

43:                                               ; preds = %9
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @s_preferences, i32 0, i32 3, i32 0), align 4
  %45 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %44)
  br label %59

46:                                               ; preds = %9
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @s_preferences, i32 0, i32 2, i32 0), align 4
  %48 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 %47)
  br label %59

49:                                               ; preds = %9
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @s_preferences, i32 0, i32 1, i32 0), align 4
  %51 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i32 %50)
  br label %59

52:                                               ; preds = %9
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @s_preferences, i32 0, i32 0, i32 0), align 4
  %54 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @s_preferences, i32 0, i32 0, i32 0), align 4
  %56 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i32 %55)
  br label %59

57:                                               ; preds = %9
  %58 = call i32 (...) @UI_PopMenu()
  br label %59

59:                                               ; preds = %8, %9, %57, %52, %49, %46, %43, %40, %37, %34, %33, %20, %17, %14
  ret void
}

declare dso_local i32 @trap_Cvar_SetValue(i8*, i32) #1

declare dso_local i32 @trap_Cvar_Reset(i8*) #1

declare dso_local i32 @UI_PopMenu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
