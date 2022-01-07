; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_keys.c_CL_BindUICommand.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_keys.c_CL_BindUICommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KEYCATCH_CONSOLE = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"toggleconsole\00", align 1
@qtrue = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"togglemenu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @CL_BindUICommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CL_BindUICommand(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = call i32 (...) @Key_GetCatcher()
  %5 = load i32, i32* @KEYCATCH_CONSOLE, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @qfalse, align 4
  store i32 %9, i32* %2, align 4
  br label %24

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  %12 = call i32 @Q_stricmp(i8* %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = load i32, i32* @qtrue, align 4
  store i32 %15, i32* %2, align 4
  br label %24

16:                                               ; preds = %10
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @Q_stricmp(i8* %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* @qtrue, align 4
  store i32 %21, i32* %2, align 4
  br label %24

22:                                               ; preds = %16
  %23 = load i32, i32* @qfalse, align 4
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %22, %20, %14, %8
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @Key_GetCatcher(...) #1

declare dso_local i32 @Q_stricmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
