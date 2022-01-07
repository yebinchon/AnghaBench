; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_rankings.c_Rankings_MenuEvent.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_rankings.c_Rankings_MenuEvent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@QM_ACTIVATED = common dso_local global i32 0, align 4
@EXEC_APPEND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"cmd rank_spectate\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"disconnect\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @Rankings_MenuEvent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Rankings_MenuEvent(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @QM_ACTIVATED, align 4
  %7 = icmp ne i32 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %31

9:                                                ; preds = %2
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_2__*
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %31 [
    i32 131, label %14
    i32 130, label %16
    i32 133, label %19
    i32 128, label %21
    i32 129, label %25
    i32 132, label %27
  ]

14:                                               ; preds = %9
  %15 = call i32 (...) @UI_LoginMenu()
  br label %31

16:                                               ; preds = %9
  %17 = call i32 (...) @trap_CL_UI_RankUserRequestLogout()
  %18 = call i32 (...) @UI_ForceMenuOff()
  br label %31

19:                                               ; preds = %9
  %20 = call i32 (...) @UI_SignupMenu()
  br label %31

21:                                               ; preds = %9
  %22 = load i32, i32* @EXEC_APPEND, align 4
  %23 = call i32 @trap_Cmd_ExecuteText(i32 %22, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %24 = call i32 (...) @UI_ForceMenuOff()
  br label %31

25:                                               ; preds = %9
  %26 = call i32 (...) @UI_SetupMenu()
  br label %31

27:                                               ; preds = %9
  %28 = load i32, i32* @EXEC_APPEND, align 4
  %29 = call i32 @trap_Cmd_ExecuteText(i32 %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %30 = call i32 (...) @UI_ForceMenuOff()
  br label %31

31:                                               ; preds = %8, %9, %27, %25, %21, %19, %16, %14
  ret void
}

declare dso_local i32 @UI_LoginMenu(...) #1

declare dso_local i32 @trap_CL_UI_RankUserRequestLogout(...) #1

declare dso_local i32 @UI_ForceMenuOff(...) #1

declare dso_local i32 @UI_SignupMenu(...) #1

declare dso_local i32 @trap_Cmd_ExecuteText(i32, i8*) #1

declare dso_local i32 @UI_SetupMenu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
