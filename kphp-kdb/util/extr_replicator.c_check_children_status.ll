; ModuleID = '/home/carl/AnghaBench/kphp-kdb/util/extr_replicator.c_check_children_status.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/util/extr_replicator.c_check_children_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@workers = common dso_local global i32 0, align 4
@pids = common dso_local global i32* null, align 8
@WNOHANG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Child %d terminated, aborting\0A\00", align 1
@SIGTERM = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [57 x i8] c"Child %d: unknown result during wait (%d, %m), aborting\0A\00", align 1
@slave_mode = common dso_local global i64 0, align 8
@parent_pid = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Parent %d is changed to %d, aborting\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @check_children_status() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @workers, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %86

6:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %7

7:                                                ; preds = %82, %6
  %8 = load i32, i32* %1, align 4
  %9 = load i32, i32* @workers, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %85

11:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  %12 = load i32*, i32** @pids, align 8
  %13 = load i32, i32* %1, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @WNOHANG, align 4
  %18 = call i32 @waitpid(i32 %16, i32* %2, i32 %17)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load i32*, i32** @pids, align 8
  %21 = load i32, i32* %1, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %19, %24
  br i1 %25, label %26, label %51

26:                                               ; preds = %11
  %27 = load i32, i32* %2, align 4
  %28 = call i64 @WIFEXITED(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %2, align 4
  %32 = call i64 @WIFSIGNALED(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %30, %26
  %35 = load i32*, i32** @pids, align 8
  %36 = load i32, i32* %1, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i8*, i32, ...) @kprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32*, i32** @pids, align 8
  %42 = load i32, i32* %1, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  store i32 0, i32* %44, align 4
  %45 = load i32, i32* @SIGTERM, align 4
  %46 = call i32 @kill_children(i32 %45)
  %47 = call i32 (...) @check_children_dead()
  %48 = load i32, i32* @EXIT_FAILURE, align 4
  %49 = call i32 @exit(i32 %48) #3
  unreachable

50:                                               ; preds = %30
  br label %81

51:                                               ; preds = %11
  %52 = load i32, i32* %3, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  br label %80

55:                                               ; preds = %51
  %56 = load i32, i32* %3, align 4
  %57 = icmp ne i32 %56, -1
  br i1 %57, label %62, label %58

58:                                               ; preds = %55
  %59 = load i64, i64* @errno, align 8
  %60 = load i64, i64* @EINTR, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %79

62:                                               ; preds = %58, %55
  %63 = load i32*, i32** @pids, align 8
  %64 = load i32, i32* %1, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %3, align 4
  %69 = call i32 (i8*, i32, ...) @kprintf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %67, i32 %68)
  %70 = load i32*, i32** @pids, align 8
  %71 = load i32, i32* %1, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32 0, i32* %73, align 4
  %74 = load i32, i32* @SIGTERM, align 4
  %75 = call i32 @kill_children(i32 %74)
  %76 = call i32 (...) @check_children_dead()
  %77 = load i32, i32* @EXIT_FAILURE, align 4
  %78 = call i32 @exit(i32 %77) #3
  unreachable

79:                                               ; preds = %58
  br label %80

80:                                               ; preds = %79, %54
  br label %81

81:                                               ; preds = %80, %50
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %1, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %1, align 4
  br label %7

85:                                               ; preds = %7
  br label %101

86:                                               ; preds = %0
  %87 = load i64, i64* @slave_mode, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %100

89:                                               ; preds = %86
  %90 = call i32 (...) @getppid()
  %91 = load i32, i32* @parent_pid, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %89
  %94 = load i32, i32* @parent_pid, align 4
  %95 = call i32 (...) @getppid()
  %96 = call i32 (i8*, i32, ...) @kprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %94, i32 %95)
  %97 = load i32, i32* @EXIT_FAILURE, align 4
  %98 = call i32 @exit(i32 %97) #3
  unreachable

99:                                               ; preds = %89
  br label %100

100:                                              ; preds = %99, %86
  br label %101

101:                                              ; preds = %100, %85
  ret void
}

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i64 @WIFEXITED(i32) #1

declare dso_local i64 @WIFSIGNALED(i32) #1

declare dso_local i32 @kprintf(i8*, i32, ...) #1

declare dso_local i32 @kill_children(i32) #1

declare dso_local i32 @check_children_dead(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @getppid(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
