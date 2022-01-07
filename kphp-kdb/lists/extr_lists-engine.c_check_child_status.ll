; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-engine.c_check_child_status.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-engine.c_check_child_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@child_pid = common dso_local global i32 0, align 4
@WNOHANG = common dso_local global i32 0, align 4
@verbosity = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"child process %d terminated: exited = %d, signaled = %d, exit code = %d\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"waitpid (%d): %m\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"waitpid (%d) returned %d???\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @check_child_status() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @child_pid, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  br label %64

6:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  %7 = load i32, i32* @child_pid, align 4
  %8 = load i32, i32* @WNOHANG, align 4
  %9 = call i32 @waitpid(i32 %7, i32* %1, i32 %8)
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @child_pid, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %42

13:                                               ; preds = %6
  %14 = load i32, i32* %1, align 4
  %15 = call i64 @WIFEXITED(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* %1, align 4
  %19 = call i64 @WIFSIGNALED(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %41

21:                                               ; preds = %17, %13
  %22 = load i64, i64* @verbosity, align 8
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %21
  %25 = load i32, i32* @stderr, align 4
  %26 = load i32, i32* @child_pid, align 4
  %27 = load i32, i32* %1, align 4
  %28 = call i64 @WIFEXITED(i32 %27)
  %29 = icmp ne i64 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 1, i32 0
  %32 = load i32, i32* %1, align 4
  %33 = call i64 @WIFSIGNALED(i32 %32)
  %34 = icmp ne i64 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 1, i32 0
  %37 = load i32, i32* %1, align 4
  %38 = call i32 @WEXITSTATUS(i32 %37)
  %39 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %25, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %31, i32 %36, i32 %38)
  br label %40

40:                                               ; preds = %24, %21
  store i32 0, i32* @child_pid, align 4
  br label %41

41:                                               ; preds = %40, %17
  br label %64

42:                                               ; preds = %6
  %43 = load i32, i32* %2, align 4
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %54

45:                                               ; preds = %42
  %46 = load i64, i64* @errno, align 8
  %47 = load i64, i64* @EINTR, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load i32, i32* @stderr, align 4
  %51 = load i32, i32* @child_pid, align 4
  %52 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %50, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  store i32 0, i32* @child_pid, align 4
  br label %53

53:                                               ; preds = %49, %45
  br label %63

54:                                               ; preds = %42
  %55 = load i32, i32* %2, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load i32, i32* @stderr, align 4
  %59 = load i32, i32* @child_pid, align 4
  %60 = load i32, i32* %2, align 4
  %61 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %58, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %57, %54
  br label %63

63:                                               ; preds = %62, %53
  br label %64

64:                                               ; preds = %5, %63, %41
  ret void
}

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i64 @WIFEXITED(i32) #1

declare dso_local i64 @WIFSIGNALED(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, ...) #1

declare dso_local i32 @WEXITSTATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
