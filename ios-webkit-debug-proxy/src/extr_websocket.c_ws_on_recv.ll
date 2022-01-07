; ModuleID = '/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_websocket.c_ws_on_recv.c'
source_filename = "/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_websocket.c_ws_on_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 (%struct.TYPE_8__*, i8*)*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@WS_ERROR = common dso_local global i32 0, align 4
@WS_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"ws.recv\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"begin_input buffer error\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"end_input buffer error\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ws_on_recv(%struct.TYPE_8__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %8, align 8
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @WS_ERROR, align 4
  store i32 %16, i32* %4, align 4
  br label %57

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load i32, i32* @WS_SUCCESS, align 4
  store i32 %21, i32* %4, align 4
  br label %57

22:                                               ; preds = %17
  br label %23

23:                                               ; preds = %22
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @ws_on_debug(%struct.TYPE_8__* %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %25, i32 %26)
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i8*, i8** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i64 @cb_begin_input(i32 %30, i8* %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %23
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32 (%struct.TYPE_8__*, i8*)*, i32 (%struct.TYPE_8__*, i8*)** %37, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %40 = call i32 %38(%struct.TYPE_8__* %39, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i32 %40, i32* %4, align 4
  br label %57

41:                                               ; preds = %23
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %43 = call i32 @ws_recv_loop(%struct.TYPE_8__* %42)
  store i32 %43, i32* %9, align 4
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @cb_end_input(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %41
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32 (%struct.TYPE_8__*, i8*)*, i32 (%struct.TYPE_8__*, i8*)** %51, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %54 = call i32 %52(%struct.TYPE_8__* %53, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  store i32 %54, i32* %4, align 4
  br label %57

55:                                               ; preds = %41
  %56 = load i32, i32* %9, align 4
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %55, %49, %35, %20, %15
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @ws_on_debug(%struct.TYPE_8__*, i8*, i8*, i32) #1

declare dso_local i64 @cb_begin_input(i32, i8*, i32) #1

declare dso_local i32 @ws_recv_loop(%struct.TYPE_8__*) #1

declare dso_local i64 @cb_end_input(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
