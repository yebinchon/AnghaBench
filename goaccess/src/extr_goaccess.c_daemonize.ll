; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_goaccess.c_daemonize.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_goaccess.c_daemonize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@EXIT_FAILURE = common dso_local global i32 0, align 4
@conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [25 x i8] c"Daemonized GoAccess: %d\0A\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Unable to setsid: %s.\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Unable to set chdir: %s.\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"Unable to open /dev/null: %s.\0A\00", align 1
@STDIN_FILENO = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@STDERR_FILENO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @daemonize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @daemonize() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = call i64 (...) @fork()
  store i64 %4, i64* %1, align 8
  %5 = load i64, i64* %1, align 8
  %6 = icmp slt i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load i32, i32* @EXIT_FAILURE, align 4
  %9 = call i32 @exit(i32 %8) #3
  unreachable

10:                                               ; preds = %0
  %11 = load i64, i64* %1, align 8
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %10
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 0), align 4
  %15 = load i64, i64* %1, align 8
  %16 = call i32 @write_pid_file(i32 %14, i64 %15)
  %17 = load i64, i64* %1, align 8
  %18 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = load i32, i32* @EXIT_SUCCESS, align 4
  %20 = call i32 @exit(i32 %19) #3
  unreachable

21:                                               ; preds = %10
  %22 = call i32 @umask(i32 0)
  %23 = call i64 (...) @setsid()
  store i64 %23, i64* %2, align 8
  %24 = load i64, i64* %2, align 8
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load i32, i32* @errno, align 4
  %28 = call i32 @strerror(i32 %27)
  %29 = sext i32 %28 to i64
  %30 = inttoptr i64 %29 to i8*
  %31 = call i32 @LOG_DEBUG(i8* %30)
  %32 = load i32, i32* @EXIT_FAILURE, align 4
  %33 = call i32 @exit(i32 %32) #3
  unreachable

34:                                               ; preds = %21
  %35 = call i64 @chdir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %34
  %38 = load i32, i32* @errno, align 4
  %39 = call i32 @strerror(i32 %38)
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to i8*
  %42 = call i32 @LOG_DEBUG(i8* %41)
  %43 = load i32, i32* @EXIT_FAILURE, align 4
  %44 = call i32 @exit(i32 %43) #3
  unreachable

45:                                               ; preds = %34
  %46 = load i32, i32* @O_RDWR, align 4
  %47 = call i32 @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %46, i32 0)
  store i32 %47, i32* %3, align 4
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %49, label %57

49:                                               ; preds = %45
  %50 = load i32, i32* @errno, align 4
  %51 = call i32 @strerror(i32 %50)
  %52 = sext i32 %51 to i64
  %53 = inttoptr i64 %52 to i8*
  %54 = call i32 @LOG_DEBUG(i8* %53)
  %55 = load i32, i32* @EXIT_FAILURE, align 4
  %56 = call i32 @exit(i32 %55) #3
  unreachable

57:                                               ; preds = %45
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* @STDIN_FILENO, align 4
  %60 = call i32 @dup2(i32 %58, i32 %59)
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* @STDOUT_FILENO, align 4
  %63 = call i32 @dup2(i32 %61, i32 %62)
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* @STDERR_FILENO, align 4
  %66 = call i32 @dup2(i32 %64, i32 %65)
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* @STDERR_FILENO, align 4
  %69 = icmp sgt i32 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %57
  %71 = load i32, i32* %3, align 4
  %72 = call i32 @close(i32 %71)
  br label %73

73:                                               ; preds = %70, %57
  ret void
}

declare dso_local i64 @fork(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @write_pid_file(i32, i64) #1

declare dso_local i32 @printf(i8*, i64) #1

declare dso_local i32 @umask(i32) #1

declare dso_local i64 @setsid(...) #1

declare dso_local i32 @LOG_DEBUG(i8*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @chdir(i8*) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
