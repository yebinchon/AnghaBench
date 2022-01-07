; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_websocket.c_ws_init.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_websocket.c_ws_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i8*, i64, i64, i32*, i32*, i32*, i32*, i32*, i32, i32* }
%struct.TYPE_6__ = type { i32, i32, i32 }

@wsconfig = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@WS_MAX_FRM_SZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @ws_init(i8* %0, i8* %1, void ()* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca void ()*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store void ()* %2, void ()** %6, align 8
  %8 = call %struct.TYPE_6__* (...) @new_wsserver()
  store %struct.TYPE_6__* %8, %struct.TYPE_6__** %7, align 8
  %9 = call i32 (...) @new_wspipein()
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  store i32 %9, i32* %11, align 4
  %12 = call i32 (...) @new_wspipeout()
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @memset(i32 %17, i32 0, i32 4)
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @wsconfig, i32 0, i32 10), align 8
  %19 = load i8*, i8** %4, align 8
  store i8* %19, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @wsconfig, i32 0, i32 0), align 8
  %20 = load i32, i32* @WS_MAX_FRM_SZ, align 4
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @wsconfig, i32 0, i32 9), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @wsconfig, i32 0, i32 8), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @wsconfig, i32 0, i32 7), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @wsconfig, i32 0, i32 6), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @wsconfig, i32 0, i32 5), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @wsconfig, i32 0, i32 4), align 8
  %21 = load i8*, i8** %5, align 8
  store i8* %21, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @wsconfig, i32 0, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @wsconfig, i32 0, i32 3), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @wsconfig, i32 0, i32 2), align 8
  %22 = load void ()*, void ()** %6, align 8
  call void %22()
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %24 = call i32 @ws_fifo(%struct.TYPE_6__* %23)
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  ret %struct.TYPE_6__* %25
}

declare dso_local %struct.TYPE_6__* @new_wsserver(...) #1

declare dso_local i32 @new_wspipein(...) #1

declare dso_local i32 @new_wspipeout(...) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @ws_fifo(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
