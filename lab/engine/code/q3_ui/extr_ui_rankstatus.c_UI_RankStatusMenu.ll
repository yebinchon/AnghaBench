; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_rankstatus.c_UI_RankStatusMenu.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_rankstatus.c_UI_RankStatusMenu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"client_status\00", align 1
@s_status = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Username unavailable\00", align 1
@s_rankstatus_message = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"Invalid password\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"Timed out\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"No membership\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"Validation failed\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@s_rankstatus = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UI_RankStatusMenu() #0 {
  %1 = call i64 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %2 = trunc i64 %1 to i32
  store i32 %2, i32* @s_status, align 4
  %3 = load i32, i32* @s_status, align 4
  switch i32 %3, label %14 [
    i32 133, label %4
    i32 130, label %5
    i32 131, label %6
    i32 136, label %7
    i32 128, label %8
    i32 132, label %9
    i32 134, label %10
    i32 135, label %11
    i32 129, label %12
    i32 137, label %12
  ]

4:                                                ; preds = %0
  br label %19

5:                                                ; preds = %0
  br label %19

6:                                                ; preds = %0
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8** @s_rankstatus_message, align 8
  br label %15

7:                                                ; preds = %0
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8** @s_rankstatus_message, align 8
  br label %15

8:                                                ; preds = %0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** @s_rankstatus_message, align 8
  br label %15

9:                                                ; preds = %0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8** @s_rankstatus_message, align 8
  br label %15

10:                                               ; preds = %0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8** @s_rankstatus_message, align 8
  br label %15

11:                                               ; preds = %0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8** @s_rankstatus_message, align 8
  br label %15

12:                                               ; preds = %0, %0
  %13 = call i32 (...) @UI_ForceMenuOff()
  br label %19

14:                                               ; preds = %0
  br label %19

15:                                               ; preds = %11, %10, %9, %8, %7, %6
  %16 = call i32 (...) @RankStatus_MenuInit()
  %17 = call i32 (...) @trap_CL_UI_RankUserReset()
  %18 = call i32 @UI_PushMenu(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_rankstatus, i32 0, i32 0))
  br label %19

19:                                               ; preds = %15, %14, %12, %5, %4
  ret void
}

declare dso_local i64 @trap_Cvar_VariableValue(i8*) #1

declare dso_local i32 @UI_ForceMenuOff(...) #1

declare dso_local i32 @RankStatus_MenuInit(...) #1

declare dso_local i32 @trap_CL_UI_RankUserReset(...) #1

declare dso_local i32 @UI_PushMenu(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
