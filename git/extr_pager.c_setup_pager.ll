; ModuleID = '/home/carl/AnghaBench/git/extr_pager.c_setup_pager.c'
source_filename = "/home/carl/AnghaBench/git/extr_pager.c_setup_pager.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"COLUMNS\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"GIT_PAGER_IN_USE\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@pager_process = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@wait_for_pager_signal = common dso_local global i32 0, align 4
@wait_for_pager_atexit = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setup_pager() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca [64 x i8], align 16
  %3 = call i64 @isatty(i32 1)
  %4 = call i8* @git_pager(i64 %3)
  store i8* %4, i8** %1, align 8
  %5 = load i8*, i8** %1, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  br label %36

8:                                                ; preds = %0
  %9 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %10 = call i32 (...) @term_columns()
  %11 = call i32 @xsnprintf(i8* %9, i32 64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %13 = call i32 @setenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %12, i32 0)
  %14 = call i32 @setenv(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 1)
  %15 = load i8*, i8** %1, align 8
  %16 = call i32 @prepare_pager_args(%struct.TYPE_4__* @pager_process, i8* %15)
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pager_process, i32 0, i32 0), align 4
  %17 = call i32 @argv_array_push(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pager_process, i32 0, i32 1), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %18 = call i64 @start_command(%struct.TYPE_4__* @pager_process)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %8
  br label %36

21:                                               ; preds = %8
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pager_process, i32 0, i32 0), align 4
  %23 = call i32 @dup2(i32 %22, i32 1)
  %24 = call i64 @isatty(i32 2)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pager_process, i32 0, i32 0), align 4
  %28 = call i32 @dup2(i32 %27, i32 2)
  br label %29

29:                                               ; preds = %26, %21
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pager_process, i32 0, i32 0), align 4
  %31 = call i32 @close(i32 %30)
  %32 = load i32, i32* @wait_for_pager_signal, align 4
  %33 = call i32 @sigchain_push_common(i32 %32)
  %34 = load i32, i32* @wait_for_pager_atexit, align 4
  %35 = call i32 @atexit(i32 %34)
  br label %36

36:                                               ; preds = %29, %20, %7
  ret void
}

declare dso_local i8* @git_pager(i64) #1

declare dso_local i64 @isatty(i32) #1

declare dso_local i32 @xsnprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @term_columns(...) #1

declare dso_local i32 @setenv(i8*, i8*, i32) #1

declare dso_local i32 @prepare_pager_args(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @argv_array_push(i32*, i8*) #1

declare dso_local i64 @start_command(%struct.TYPE_4__*) #1

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @sigchain_push_common(i32) #1

declare dso_local i32 @atexit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
