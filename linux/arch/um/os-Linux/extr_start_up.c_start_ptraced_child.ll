; ModuleID = '/home/carl/AnghaBench/linux/arch/um/os-Linux/extr_start_up.c_start_ptraced_child.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/os-Linux/extr_start_up.c_start_ptraced_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"start_ptraced_child : fork failed\00", align 1
@WUNTRACED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"check_ptrace : waitpid failed\00", align 1
@SIGSTOP = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [49 x i8] c"check_ptrace : expected SIGSTOP, got status = %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @start_ptraced_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_ptraced_child() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @stdout, align 4
  %5 = call i32 @fflush(i32 %4)
  %6 = call i32 (...) @fork()
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = call i32 (...) @ptrace_child()
  br label %17

11:                                               ; preds = %0
  %12 = load i32, i32* %1, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = call i32 @fatal_perror(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %11
  br label %17

17:                                               ; preds = %16, %9
  %18 = load i32, i32* %1, align 4
  %19 = load i32, i32* @WUNTRACED, align 4
  %20 = call i32 @waitpid(i32 %18, i32* %3, i32 %19)
  store i32 %20, i32* %2, align 4
  %21 = call i32 @CATCH_EINTR(i32 %20)
  %22 = load i32, i32* %2, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = call i32 @fatal_perror(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %17
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @WIFSTOPPED(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load i32, i32* %3, align 4
  %32 = call i64 @WSTOPSIG(i32 %31)
  %33 = load i64, i64* @SIGSTOP, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %30, %26
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @fatal(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %35, %30
  %39 = load i32, i32* %1, align 4
  ret i32 %39
}

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @ptrace_child(...) #1

declare dso_local i32 @fatal_perror(i8*) #1

declare dso_local i32 @CATCH_EINTR(i32) #1

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i32 @WIFSTOPPED(i32) #1

declare dso_local i64 @WSTOPSIG(i32) #1

declare dso_local i32 @fatal(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
