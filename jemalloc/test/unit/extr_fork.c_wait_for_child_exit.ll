; ModuleID = '/home/carl/AnghaBench/jemalloc/test/unit/extr_fork.c_wait_for_child_exit.c'
source_filename = "/home/carl/AnghaBench/jemalloc/test/unit/extr_fork.c_wait_for_child_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [30 x i8] c"Unexpected waitpid() failure.\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Unexpected child termination due to signal %d\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Unexpected child exit value %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @wait_for_child_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wait_for_child_exit(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  br label %4

4:                                                ; preds = %1, %31
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @waitpid(i32 %5, i32* %3, i32 0)
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = call i32 (i8*, ...) @test_fail(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %4
  %11 = load i32, i32* %3, align 4
  %12 = call i64 @WIFSIGNALED(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load i32, i32* %3, align 4
  %16 = call i64 @WTERMSIG(i32 %15)
  %17 = call i32 (i8*, ...) @test_fail(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i64 %16)
  br label %32

18:                                               ; preds = %10
  %19 = load i32, i32* %3, align 4
  %20 = call i64 @WIFEXITED(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %18
  %23 = load i32, i32* %3, align 4
  %24 = call i64 @WEXITSTATUS(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i32, i32* %3, align 4
  %28 = call i64 @WEXITSTATUS(i32 %27)
  %29 = call i32 (i8*, ...) @test_fail(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %28)
  br label %30

30:                                               ; preds = %26, %22
  br label %32

31:                                               ; preds = %18
  br label %4

32:                                               ; preds = %30, %14
  ret void
}

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i32 @test_fail(i8*, ...) #1

declare dso_local i64 @WIFSIGNALED(i32) #1

declare dso_local i64 @WTERMSIG(i32) #1

declare dso_local i64 @WIFEXITED(i32) #1

declare dso_local i64 @WEXITSTATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
