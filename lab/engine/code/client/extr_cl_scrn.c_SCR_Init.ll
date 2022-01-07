; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_scrn.c_SCR_Init.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_scrn.c_SCR_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"timegraph\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@CVAR_CHEAT = common dso_local global i32 0, align 4
@cl_timegraph = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"debuggraph\00", align 1
@cl_debuggraph = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"graphheight\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"32\00", align 1
@cl_graphheight = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [11 x i8] c"graphscale\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@cl_graphscale = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [11 x i8] c"graphshift\00", align 1
@cl_graphshift = common dso_local global i8* null, align 8
@qtrue = common dso_local global i32 0, align 4
@scr_initialized = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SCR_Init() #0 {
  %1 = load i32, i32* @CVAR_CHEAT, align 4
  %2 = call i8* @Cvar_Get(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %1)
  store i8* %2, i8** @cl_timegraph, align 8
  %3 = load i32, i32* @CVAR_CHEAT, align 4
  %4 = call i8* @Cvar_Get(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %3)
  store i8* %4, i8** @cl_debuggraph, align 8
  %5 = load i32, i32* @CVAR_CHEAT, align 4
  %6 = call i8* @Cvar_Get(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %5)
  store i8* %6, i8** @cl_graphheight, align 8
  %7 = load i32, i32* @CVAR_CHEAT, align 4
  %8 = call i8* @Cvar_Get(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 %7)
  store i8* %8, i8** @cl_graphscale, align 8
  %9 = load i32, i32* @CVAR_CHEAT, align 4
  %10 = call i8* @Cvar_Get(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %9)
  store i8* %10, i8** @cl_graphshift, align 8
  %11 = load i32, i32* @qtrue, align 4
  store i32 %11, i32* @scr_initialized, align 4
  ret void
}

declare dso_local i8* @Cvar_Get(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
