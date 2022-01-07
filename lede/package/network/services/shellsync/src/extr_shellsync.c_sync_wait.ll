; ModuleID = '/home/carl/AnghaBench/lede/package/network/services/shellsync/src/extr_shellsync.c_sync_wait.c'
source_filename = "/home/carl/AnghaBench/lede/package/network/services/shellsync/src/extr_shellsync.c_sync_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32 }

@.str = private unnamed_addr constant [56 x i8] c"sync_wait: number of processes should be larger than 1\0A\00", align 1
@CLOCK_REALTIME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"clock_gettime error\0A\00", align 1
@wait_timeout = common dso_local global i64 0, align 8
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@SEM_BLOCK_NAME = common dso_local global i32 0, align 4
@SEM_COUNT_NAME = common dso_local global i32 0, align 4
@SEM_FAILED = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"sync_wait: sem_open failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"sync_wait: sem_post failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"sync_wait: sem_getvalue failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"%d processes have arrived, waiting for the left %d\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [34 x i8] c"sync_wait: sem_timewait time out\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"sync_wait: sem_timewait error\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sync_wait(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.timespec, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp sle i32 %9, 1
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %103

13:                                               ; preds = %1
  %14 = load i32, i32* @CLOCK_REALTIME, align 4
  %15 = call i32 @clock_gettime(i32 %14, %struct.timespec* %8)
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %103

19:                                               ; preds = %13
  %20 = load i64, i64* @wait_timeout, align 8
  %21 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %23, %20
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %21, align 4
  %26 = load i32, i32* @O_RDWR, align 4
  %27 = load i32, i32* @O_CREAT, align 4
  %28 = or i32 %26, %27
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* @SEM_BLOCK_NAME, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32* @sem_open(i32 %29, i32 %30, i32 420, i32 0)
  store i32* %31, i32** %6, align 8
  %32 = load i32, i32* @SEM_COUNT_NAME, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32* @sem_open(i32 %32, i32 %33, i32 420, i32 0)
  store i32* %34, i32** %7, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = load i32*, i32** @SEM_FAILED, align 8
  %37 = icmp eq i32* %35, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %19
  %39 = load i32*, i32** %7, align 8
  %40 = load i32*, i32** @SEM_FAILED, align 8
  %41 = icmp eq i32* %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38, %19
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %103

44:                                               ; preds = %38
  %45 = load i32*, i32** %7, align 8
  %46 = call i64 @sem_post(i32* %45)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %103

50:                                               ; preds = %44
  %51 = load i32*, i32** %7, align 8
  %52 = call i64 @sem_getvalue(i32* %51, i32* %5)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %103

56:                                               ; preds = %50
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* %5, align 4
  %60 = sub nsw i32 %58, %59
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i32 %57, i32 %60)
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* %3, align 4
  %64 = icmp sge i32 %62, %63
  br i1 %64, label %65, label %80

65:                                               ; preds = %56
  br label %66

66:                                               ; preds = %76, %65
  %67 = load i32, i32* %3, align 4
  %68 = sub nsw i32 %67, 1
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %66
  %71 = load i32*, i32** %6, align 8
  %72 = call i64 @sem_post(i32* %71)
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %103

76:                                               ; preds = %70
  %77 = load i32, i32* %3, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %3, align 4
  br label %66

79:                                               ; preds = %66
  br label %94

80:                                               ; preds = %56
  %81 = load i32*, i32** %6, align 8
  %82 = call i64 @sem_timedwait(i32* %81, %struct.timespec* %8)
  %83 = icmp slt i64 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %80
  %85 = load i64, i64* @errno, align 8
  %86 = load i64, i64* @ETIMEDOUT, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %84
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  br label %92

90:                                               ; preds = %84
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  br label %92

92:                                               ; preds = %90, %88
  store i32 -1, i32* %2, align 4
  br label %103

93:                                               ; preds = %80
  br label %94

94:                                               ; preds = %93, %79
  %95 = load i32*, i32** %7, align 8
  %96 = call i32 @sem_close(i32* %95)
  %97 = load i32*, i32** %6, align 8
  %98 = call i32 @sem_close(i32* %97)
  %99 = load i32, i32* @SEM_COUNT_NAME, align 4
  %100 = call i32 @sem_unlink(i32 %99)
  %101 = load i32, i32* @SEM_BLOCK_NAME, align 4
  %102 = call i32 @sem_unlink(i32 %101)
  store i32 0, i32* %2, align 4
  br label %103

103:                                              ; preds = %94, %92, %74, %54, %48, %42, %17, %11
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i32* @sem_open(i32, i32, i32, i32) #1

declare dso_local i64 @sem_post(i32*) #1

declare dso_local i64 @sem_getvalue(i32*, i32*) #1

declare dso_local i64 @sem_timedwait(i32*, %struct.timespec*) #1

declare dso_local i32 @sem_close(i32*) #1

declare dso_local i32 @sem_unlink(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
