; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_websocket.c_ws_manage_payload_opcode.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_websocket.c_ws_manage_payload_opcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_9__*, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"CONTINUATION\0A\00", align 1
@WS_ERR = common dso_local global i32 0, align 4
@WS_CLOSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"TEXT\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"PONG\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"PING\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"CLOSE\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, i32*)* @ws_manage_payload_opcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ws_manage_payload_opcode(%struct.TYPE_11__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_10__**, align 8
  %6 = alloca %struct.TYPE_9__**, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 2
  store %struct.TYPE_10__** %8, %struct.TYPE_10__*** %5, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 1
  store %struct.TYPE_9__** %10, %struct.TYPE_9__*** %6, align 8
  %11 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %5, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %53 [
    i32 131, label %15
    i32 128, label %32
    i32 132, label %32
    i32 129, label %45
    i32 130, label %49
  ]

15:                                               ; preds = %2
  %16 = call i32 @LOG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %6, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %15
  %23 = load i32, i32* @WS_ERR, align 4
  %24 = load i32, i32* @WS_CLOSE, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  br label %57

28:                                               ; preds = %15
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @ws_handle_text_bin(%struct.TYPE_11__* %29, i32* %30)
  br label %57

32:                                               ; preds = %2, %2
  %33 = call i32 @LOG(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %34 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %5, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  store i32 %37, i32* %41, align 4
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @ws_handle_text_bin(%struct.TYPE_11__* %42, i32* %43)
  br label %57

45:                                               ; preds = %2
  %46 = call i32 @LOG(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %48 = call i32 @ws_handle_pong(%struct.TYPE_11__* %47)
  br label %57

49:                                               ; preds = %2
  %50 = call i32 @LOG(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %52 = call i32 @ws_handle_ping(%struct.TYPE_11__* %51)
  br label %57

53:                                               ; preds = %2
  %54 = call i32 @LOG(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %56 = call i32 @ws_handle_close(%struct.TYPE_11__* %55)
  br label %57

57:                                               ; preds = %53, %49, %45, %32, %28, %22
  ret void
}

declare dso_local i32 @LOG(i8*) #1

declare dso_local i32 @ws_handle_text_bin(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @ws_handle_pong(%struct.TYPE_11__*) #1

declare dso_local i32 @ws_handle_ping(%struct.TYPE_11__*) #1

declare dso_local i32 @ws_handle_close(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
