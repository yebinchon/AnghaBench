; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_g_bot.c_G_AddRandomBot.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_g_bot.c_G_AddRandomBot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"g_spSkill\00", align 1
@TEAM_RED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"red\00", align 1
@TEAM_BLUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"blue\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"free\00", align 1
@EXEC_INSERT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"addbot random %f %s %i\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @G_AddRandomBot(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca float, align 4
  store i32 %0, i32* %2, align 4
  %5 = call float @trap_Cvar_VariableValue(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store float %5, float* %4, align 4
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @TEAM_RED, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %17

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @TEAM_BLUE, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %16

15:                                               ; preds = %10
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %16

16:                                               ; preds = %15, %14
  br label %17

17:                                               ; preds = %16, %9
  %18 = load i32, i32* @EXEC_INSERT, align 4
  %19 = load float, float* %4, align 4
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 @va(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), float %19, i8* %20, i32 0)
  %22 = call i32 @trap_SendConsoleCommand(i32 %18, i32 %21)
  ret void
}

declare dso_local float @trap_Cvar_VariableValue(i8*) #1

declare dso_local i32 @trap_SendConsoleCommand(i32, i32) #1

declare dso_local i32 @va(i8*, float, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
