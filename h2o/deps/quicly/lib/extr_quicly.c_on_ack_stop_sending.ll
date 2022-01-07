; ModuleID = '/home/carl/AnghaBench/h2o/deps/quicly/lib/extr_quicly.c_on_ack_stop_sending.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/quicly/lib/extr_quicly.c_on_ack_stop_sending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }

@QUICLY_SENTMAP_EVENT_EXPIRED = common dso_local global i64 0, align 8
@QUICLY_SENTMAP_EVENT_ACKED = common dso_local global i64 0, align 8
@QUICLY_SENDER_STATE_ACKED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_15__*, i64)* @on_ack_stop_sending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on_ack_stop_sending(i32* %0, i32* %1, %struct.TYPE_15__* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i64, i64* %8, align 8
  %11 = load i64, i64* @QUICLY_SENTMAP_EVENT_EXPIRED, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %44

13:                                               ; preds = %4
  %14 = load i32*, i32** %5, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.TYPE_14__* @quicly_get_stream(i32* %14, i32 %19)
  store %struct.TYPE_14__* %20, %struct.TYPE_14__** %9, align 8
  %21 = icmp ne %struct.TYPE_14__* %20, null
  br i1 %21, label %22, label %43

22:                                               ; preds = %13
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* @QUICLY_SENTMAP_EVENT_ACKED, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @on_ack_stream_state_sender(i64* %26, i32 %30)
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @QUICLY_SENDER_STATE_ACKED, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %22
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %41 = call i32 @sched_stream_control(%struct.TYPE_14__* %40)
  br label %42

42:                                               ; preds = %39, %22
  br label %43

43:                                               ; preds = %42, %13
  br label %44

44:                                               ; preds = %43, %4
  ret i32 0
}

declare dso_local %struct.TYPE_14__* @quicly_get_stream(i32*, i32) #1

declare dso_local i32 @on_ack_stream_state_sender(i64*, i32) #1

declare dso_local i32 @sched_stream_control(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
