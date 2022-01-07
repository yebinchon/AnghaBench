; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_cmd.c_Cmd_Init.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_cmd.c_Cmd_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"cmdlist\00", align 1
@Cmd_List_f = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"exec\00", align 1
@Cmd_Exec_f = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"execq\00", align 1
@Cmd_CompleteCfgName = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"vstr\00", align 1
@Cmd_Vstr_f = common dso_local global i32 0, align 4
@Cvar_CompleteCvarName = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"echo\00", align 1
@Cmd_Echo_f = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"wait\00", align 1
@Cmd_Wait_f = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Cmd_Init() #0 {
  %1 = load i32, i32* @Cmd_List_f, align 4
  %2 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %1)
  %3 = load i32, i32* @Cmd_Exec_f, align 4
  %4 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %3)
  %5 = load i32, i32* @Cmd_Exec_f, align 4
  %6 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %5)
  %7 = load i32, i32* @Cmd_CompleteCfgName, align 4
  %8 = call i32 @Cmd_SetCommandCompletionFunc(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %7)
  %9 = load i32, i32* @Cmd_CompleteCfgName, align 4
  %10 = call i32 @Cmd_SetCommandCompletionFunc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* @Cmd_Vstr_f, align 4
  %12 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* @Cvar_CompleteCvarName, align 4
  %14 = call i32 @Cmd_SetCommandCompletionFunc(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* @Cmd_Echo_f, align 4
  %16 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @Cmd_Wait_f, align 4
  %18 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %17)
  ret void
}

declare dso_local i32 @Cmd_AddCommand(i8*, i32) #1

declare dso_local i32 @Cmd_SetCommandCompletionFunc(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
