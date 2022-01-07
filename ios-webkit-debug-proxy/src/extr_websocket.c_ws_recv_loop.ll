; ModuleID = '/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_websocket.c_ws_recv_loop.c'
source_filename = "/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_websocket.c_ws_recv_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_9__*, i64 }
%struct.TYPE_9__ = type { i64, i64 }

@WS_ERROR = common dso_local global i32 0, align 4
@WS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ws_recv_loop(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  store %struct.TYPE_11__* %8, %struct.TYPE_11__** %4, align 8
  br label %9

9:                                                ; preds = %1, %68
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  switch i64 %12, label %36 [
    i64 128, label %13
    i64 129, label %16
    i64 132, label %19
    i64 130, label %29
    i64 131, label %32
    i64 134, label %35
    i64 133, label %35
  ]

13:                                               ; preds = %9
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %15 = call i64 @ws_recv_request(%struct.TYPE_10__* %14)
  store i64 %15, i64* %5, align 8
  br label %38

16:                                               ; preds = %9
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %18 = call i64 @ws_recv_headers(%struct.TYPE_10__* %17)
  store i64 %18, i64* %5, align 8
  br label %38

19:                                               ; preds = %9
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  store i64 %24, i64* %28, align 8
  store i64 -1, i64* %5, align 8
  br label %38

29:                                               ; preds = %9
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %31 = call i64 @ws_recv_frame_length(%struct.TYPE_10__* %30)
  store i64 %31, i64* %5, align 8
  br label %38

32:                                               ; preds = %9
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %34 = call i64 @ws_recv_frame(%struct.TYPE_10__* %33)
  store i64 %34, i64* %5, align 8
  br label %38

35:                                               ; preds = %9, %9
  br label %36

36:                                               ; preds = %9, %35
  %37 = load i32, i32* @WS_ERROR, align 4
  store i32 %37, i32* %2, align 4
  br label %69

38:                                               ; preds = %32, %29, %19, %16, %13
  %39 = load i64, i64* %5, align 8
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i32, i32* @WS_SUCCESS, align 4
  store i32 %42, i32* %2, align 4
  br label %69

43:                                               ; preds = %38
  %44 = load i64, i64* %5, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  %47 = load i64, i64* %5, align 8
  %48 = icmp eq i64 %47, 134
  br i1 %48, label %52, label %49

49:                                               ; preds = %43
  %50 = load i64, i64* %5, align 8
  %51 = icmp eq i64 %50, 133
  br i1 %51, label %52, label %54

52:                                               ; preds = %49, %43
  %53 = load i32, i32* @WS_ERROR, align 4
  store i32 %53, i32* %2, align 4
  br label %69

54:                                               ; preds = %49
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %59, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %54
  %67 = load i32, i32* @WS_SUCCESS, align 4
  store i32 %67, i32* %2, align 4
  br label %69

68:                                               ; preds = %54
  br label %9

69:                                               ; preds = %66, %52, %41, %36
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i64 @ws_recv_request(%struct.TYPE_10__*) #1

declare dso_local i64 @ws_recv_headers(%struct.TYPE_10__*) #1

declare dso_local i64 @ws_recv_frame_length(%struct.TYPE_10__*) #1

declare dso_local i64 @ws_recv_frame(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
