; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vv/extr_am-server-functions.c_check_child_status.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vv/extr_am-server-functions.c_check_child_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@child_pid = common dso_local global i32 0, align 4
@WNOHANG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"child process %d terminated: exited = %d, signaled = %d, exit code = %d\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"waitpid (%d): %m\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"waitpid (%d) returned %d???\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @check_child_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_child_status() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @child_pid, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  br label %57

6:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  %7 = load i32, i32* @child_pid, align 4
  %8 = load i32, i32* @WNOHANG, align 4
  %9 = call i32 @waitpid(i32 %7, i32* %1, i32 %8)
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @child_pid, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %37

13:                                               ; preds = %6
  %14 = load i32, i32* %1, align 4
  %15 = call i64 @WIFEXITED(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* %1, align 4
  %19 = call i64 @WIFSIGNALED(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %17, %13
  %22 = load i32, i32* @child_pid, align 4
  %23 = load i32, i32* %1, align 4
  %24 = call i64 @WIFEXITED(i32 %23)
  %25 = icmp ne i64 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 1, i32 0
  %28 = load i32, i32* %1, align 4
  %29 = call i64 @WIFSIGNALED(i32 %28)
  %30 = icmp ne i64 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 1, i32 0
  %33 = load i32, i32* %1, align 4
  %34 = call i32 @WEXITSTATUS(i32 %33)
  %35 = call i32 @vkprintf(i32 1, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %27, i32 %32, i32 %34)
  store i32 0, i32* @child_pid, align 4
  br label %36

36:                                               ; preds = %21, %17
  br label %57

37:                                               ; preds = %6
  %38 = load i32, i32* %2, align 4
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %48

40:                                               ; preds = %37
  %41 = load i64, i64* @errno, align 8
  %42 = load i64, i64* @EINTR, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i32, i32* @child_pid, align 4
  %46 = call i32 (i8*, i32, ...) @kprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  store i32 0, i32* @child_pid, align 4
  br label %47

47:                                               ; preds = %44, %40
  br label %56

48:                                               ; preds = %37
  %49 = load i32, i32* %2, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i32, i32* @child_pid, align 4
  %53 = load i32, i32* %2, align 4
  %54 = call i32 (i8*, i32, ...) @kprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %51, %48
  br label %56

56:                                               ; preds = %55, %47
  br label %57

57:                                               ; preds = %5, %56, %36
  ret void
}

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i64 @WIFEXITED(i32) #1

declare dso_local i64 @WIFSIGNALED(i32) #1

declare dso_local i32 @vkprintf(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @WEXITSTATUS(i32) #1

declare dso_local i32 @kprintf(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
