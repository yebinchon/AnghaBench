; ModuleID = '/home/carl/AnghaBench/h2o/deps/hiredis/extr_async.c___redisAsyncHandleConnect.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/hiredis/extr_async.c___redisAsyncHandleConnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 (%struct.TYPE_9__*, i32)*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@REDIS_ERR = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@EINPROGRESS = common dso_local global i64 0, align 8
@REDIS_OK = common dso_local global i32 0, align 4
@REDIS_CONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @__redisAsyncHandleConnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__redisAsyncHandleConnect(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  store %struct.TYPE_8__* %6, %struct.TYPE_8__** %4, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %8 = call i64 @redisCheckSocketError(%struct.TYPE_8__* %7)
  %9 = load i64, i64* @REDIS_ERR, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %35

11:                                               ; preds = %1
  %12 = load i64, i64* @errno, align 8
  %13 = load i64, i64* @EINPROGRESS, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load i32, i32* @REDIS_OK, align 4
  store i32 %16, i32* %2, align 4
  br label %54

17:                                               ; preds = %11
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i32 (%struct.TYPE_9__*, i32)*, i32 (%struct.TYPE_9__*, i32)** %19, align 8
  %21 = icmp ne i32 (%struct.TYPE_9__*, i32)* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i32 (%struct.TYPE_9__*, i32)*, i32 (%struct.TYPE_9__*, i32)** %24, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %27 = load i64, i64* @REDIS_ERR, align 8
  %28 = trunc i64 %27 to i32
  %29 = call i32 %25(%struct.TYPE_9__* %26, i32 %28)
  br label %30

30:                                               ; preds = %22, %17
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %32 = call i32 @__redisAsyncDisconnect(%struct.TYPE_9__* %31)
  %33 = load i64, i64* @REDIS_ERR, align 8
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %2, align 4
  br label %54

35:                                               ; preds = %1
  %36 = load i32, i32* @REDIS_CONNECTED, align 4
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32 (%struct.TYPE_9__*, i32)*, i32 (%struct.TYPE_9__*, i32)** %42, align 8
  %44 = icmp ne i32 (%struct.TYPE_9__*, i32)* %43, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %35
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32 (%struct.TYPE_9__*, i32)*, i32 (%struct.TYPE_9__*, i32)** %47, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %50 = load i32, i32* @REDIS_OK, align 4
  %51 = call i32 %48(%struct.TYPE_9__* %49, i32 %50)
  br label %52

52:                                               ; preds = %45, %35
  %53 = load i32, i32* @REDIS_OK, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %52, %30, %15
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i64 @redisCheckSocketError(%struct.TYPE_8__*) #1

declare dso_local i32 @__redisAsyncDisconnect(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
