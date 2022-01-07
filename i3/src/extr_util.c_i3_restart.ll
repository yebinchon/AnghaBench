; ModuleID = '/home/carl/AnghaBench/i3/src/extr_util.c_i3_restart.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_util.c_i3_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@config_error_nagbar_pid = common dso_local global i32 0, align 4
@command_error_nagbar_pid = common dso_local global i32 0, align 4
@SHUTDOWN_REASON_RESTART = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"restarting \22%s\22...\0A\00", align 1
@start_argv = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"-a\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-d\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"--restart\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"-r\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i3_restart(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %9

7:                                                ; preds = %1
  %8 = call i8* (...) @store_restart_layout()
  br label %9

9:                                                ; preds = %7, %6
  %10 = phi i8* [ null, %6 ], [ %8, %7 ]
  store i8* %10, i8** %3, align 8
  %11 = call i32 @kill_nagbar(i32* @config_error_nagbar_pid, i32 1)
  %12 = call i32 @kill_nagbar(i32* @command_error_nagbar_pid, i32 1)
  %13 = call i32 (...) @restore_geometry()
  %14 = load i32, i32* @SHUTDOWN_REASON_RESTART, align 4
  %15 = call i32 @ipc_shutdown(i32 %14, i32 -1)
  %16 = load i32*, i32** @start_argv, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @LOG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32*, i32** @start_argv, align 8
  %21 = call i32* @add_argument(i32* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* null, i8* null)
  store i32* %21, i32** @start_argv, align 8
  %22 = call i64 (...) @get_debug_logging()
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %9
  %25 = load i32*, i32** @start_argv, align 8
  %26 = call i32* @add_argument(i32* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* null)
  store i32* %26, i32** @start_argv, align 8
  br label %27

27:                                               ; preds = %24, %9
  %28 = load i8*, i8** %3, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i32*, i32** @start_argv, align 8
  %32 = load i8*, i8** %3, align 8
  %33 = call i32* @add_argument(i32* %31, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  store i32* %33, i32** @start_argv, align 8
  br label %34

34:                                               ; preds = %30, %27
  %35 = load i32*, i32** @start_argv, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** @start_argv, align 8
  %39 = call i32 @execvp(i32 %37, i32* %38)
  ret void
}

declare dso_local i8* @store_restart_layout(...) #1

declare dso_local i32 @kill_nagbar(i32*, i32) #1

declare dso_local i32 @restore_geometry(...) #1

declare dso_local i32 @ipc_shutdown(i32, i32) #1

declare dso_local i32 @LOG(i8*, i32) #1

declare dso_local i32* @add_argument(i32*, i8*, i8*, i8*) #1

declare dso_local i64 @get_debug_logging(...) #1

declare dso_local i32 @execvp(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
