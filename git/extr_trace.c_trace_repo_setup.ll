; ModuleID = '/home/carl/AnghaBench/git/extr_trace.c_trace_repo_setup.c'
source_filename = "/home/carl/AnghaBench/git/extr_trace.c_trace_repo_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@trace_setup_key = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"setup: git_dir: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"setup: git_common_dir: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"setup: worktree: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"setup: cwd: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"setup: prefix: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @trace_repo_setup(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %5 = call i32 @trace_want(i32* @trace_setup_key)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %35

8:                                                ; preds = %1
  %9 = call i8* (...) @xgetcwd()
  store i8* %9, i8** %4, align 8
  %10 = call i8* (...) @get_git_work_tree()
  store i8* %10, i8** %3, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %13

13:                                               ; preds = %12, %8
  %14 = load i8*, i8** %2, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %17

17:                                               ; preds = %16, %13
  %18 = call i8* (...) @get_git_dir()
  %19 = call i32 @quote_crnl(i8* %18)
  %20 = call i32 @trace_printf_key(i32* @trace_setup_key, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = call i8* (...) @get_git_common_dir()
  %22 = call i32 @quote_crnl(i8* %21)
  %23 = call i32 @trace_printf_key(i32* @trace_setup_key, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %22)
  %24 = load i8*, i8** %3, align 8
  %25 = call i32 @quote_crnl(i8* %24)
  %26 = call i32 @trace_printf_key(i32* @trace_setup_key, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %25)
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @quote_crnl(i8* %27)
  %29 = call i32 @trace_printf_key(i32* @trace_setup_key, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %28)
  %30 = load i8*, i8** %2, align 8
  %31 = call i32 @quote_crnl(i8* %30)
  %32 = call i32 @trace_printf_key(i32* @trace_setup_key, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %31)
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 @free(i8* %33)
  br label %35

35:                                               ; preds = %17, %7
  ret void
}

declare dso_local i32 @trace_want(i32*) #1

declare dso_local i8* @xgetcwd(...) #1

declare dso_local i8* @get_git_work_tree(...) #1

declare dso_local i32 @trace_printf_key(i32*, i8*, i32) #1

declare dso_local i32 @quote_crnl(i8*) #1

declare dso_local i8* @get_git_dir(...) #1

declare dso_local i8* @get_git_common_dir(...) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
