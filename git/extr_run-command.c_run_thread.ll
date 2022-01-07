; ModuleID = '/home/carl/AnghaBench/git/extr_run-command.c_run_thread.c'
source_filename = "/home/carl/AnghaBench/git/extr_run-command.c_run_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.async = type { i64 (i32, i32, i32)*, i32, i32, i32, i64 }

@SIGPIPE = common dso_local global i32 0, align 4
@SIG_BLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"unable to block SIGPIPE in async thread\00", align 1
@async_key = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @run_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @run_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.async*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.async*
  store %struct.async* %8, %struct.async** %4, align 8
  %9 = load %struct.async*, %struct.async** %4, align 8
  %10 = getelementptr inbounds %struct.async, %struct.async* %9, i32 0, i32 4
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %1
  %14 = call i32 @sigemptyset(i32* %6)
  %15 = load i32, i32* @SIGPIPE, align 4
  %16 = call i32 @sigaddset(i32* %6, i32 %15)
  %17 = load i32, i32* @SIG_BLOCK, align 4
  %18 = call i64 @pthread_sigmask(i32 %17, i32* %6, i32* null)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %13
  %21 = call i64 @error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i64 %21, i64* %5, align 8
  %22 = load i64, i64* %5, align 8
  %23 = inttoptr i64 %22 to i8*
  store i8* %23, i8** %2, align 8
  br label %44

24:                                               ; preds = %13
  br label %25

25:                                               ; preds = %24, %1
  %26 = load i32, i32* @async_key, align 4
  %27 = load %struct.async*, %struct.async** %4, align 8
  %28 = call i32 @pthread_setspecific(i32 %26, %struct.async* %27)
  %29 = load %struct.async*, %struct.async** %4, align 8
  %30 = getelementptr inbounds %struct.async, %struct.async* %29, i32 0, i32 0
  %31 = load i64 (i32, i32, i32)*, i64 (i32, i32, i32)** %30, align 8
  %32 = load %struct.async*, %struct.async** %4, align 8
  %33 = getelementptr inbounds %struct.async, %struct.async* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.async*, %struct.async** %4, align 8
  %36 = getelementptr inbounds %struct.async, %struct.async* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.async*, %struct.async** %4, align 8
  %39 = getelementptr inbounds %struct.async, %struct.async* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i64 %31(i32 %34, i32 %37, i32 %40)
  store i64 %41, i64* %5, align 8
  %42 = load i64, i64* %5, align 8
  %43 = inttoptr i64 %42 to i8*
  store i8* %43, i8** %2, align 8
  br label %44

44:                                               ; preds = %25, %20
  %45 = load i8*, i8** %2, align 8
  ret i8* %45
}

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaddset(i32*, i32) #1

declare dso_local i64 @pthread_sigmask(i32, i32*, i32*) #1

declare dso_local i64 @error(i8*) #1

declare dso_local i32 @pthread_setspecific(i32, %struct.async*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
