; ModuleID = '/home/carl/AnghaBench/h2o/deps/hiredis/extr_async.c_redisAsyncHandleWrite.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/hiredis/extr_async.c_redisAsyncHandleWrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@REDIS_CONNECTED = common dso_local global i32 0, align 4
@REDIS_OK = common dso_local global i64 0, align 8
@REDIS_ERR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @redisAsyncHandleWrite(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %5 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  store %struct.TYPE_10__* %6, %struct.TYPE_10__** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @REDIS_CONNECTED, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %28, label %13

13:                                               ; preds = %1
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %15 = call i64 @__redisAsyncHandleConnect(%struct.TYPE_11__* %14)
  %16 = load i64, i64* @REDIS_OK, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %48

19:                                               ; preds = %13
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @REDIS_CONNECTED, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  br label %48

27:                                               ; preds = %19
  br label %28

28:                                               ; preds = %27, %1
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %30 = call i64 @redisBufferWrite(%struct.TYPE_10__* %29, i32* %4)
  %31 = load i64, i64* @REDIS_ERR, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %35 = call i32 @__redisAsyncDisconnect(%struct.TYPE_11__* %34)
  br label %48

36:                                               ; preds = %28
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %41 = call i32 @_EL_ADD_WRITE(%struct.TYPE_11__* %40)
  br label %45

42:                                               ; preds = %36
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %44 = call i32 @_EL_DEL_WRITE(%struct.TYPE_11__* %43)
  br label %45

45:                                               ; preds = %42, %39
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %47 = call i32 @_EL_ADD_READ(%struct.TYPE_11__* %46)
  br label %48

48:                                               ; preds = %18, %26, %45, %33
  ret void
}

declare dso_local i64 @__redisAsyncHandleConnect(%struct.TYPE_11__*) #1

declare dso_local i64 @redisBufferWrite(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @__redisAsyncDisconnect(%struct.TYPE_11__*) #1

declare dso_local i32 @_EL_ADD_WRITE(%struct.TYPE_11__*) #1

declare dso_local i32 @_EL_DEL_WRITE(%struct.TYPE_11__*) #1

declare dso_local i32 @_EL_ADD_READ(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
