; ModuleID = '/home/carl/AnghaBench/h2o/deps/quicly/lib/extr_quicly.c_on_ack_max_stream_data.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/quicly/lib/extr_quicly.c_on_ack_max_stream_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_11__, %struct.TYPE_12__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }

@QUICLY_SENTMAP_EVENT_EXPIRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_16__*, i32)* @on_ack_max_stream_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on_ack_max_stream_data(i32* %0, i32* %1, %struct.TYPE_16__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_15__*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* @QUICLY_SENTMAP_EVENT_EXPIRED, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %54

15:                                               ; preds = %4
  %16 = load i32*, i32** %6, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.TYPE_15__* @quicly_get_stream(i32* %16, i32 %21)
  store %struct.TYPE_15__* %22, %struct.TYPE_15__** %10, align 8
  %23 = icmp ne %struct.TYPE_15__* %22, null
  br i1 %23, label %24, label %53

24:                                               ; preds = %15
  %25 = load i32, i32* %9, align 4
  switch i32 %25, label %51 [
    i32 129, label %26
    i32 128, label %35
  ]

26:                                               ; preds = %24
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = call i32 @quicly_maxsender_acked(i32* %29, i32* %33)
  br label %52

35:                                               ; preds = %24
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = call i32 @quicly_maxsender_lost(i32* %38, i32* %42)
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %45 = call i32 @should_send_max_stream_data(%struct.TYPE_15__* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %35
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %49 = call i32 @sched_stream_control(%struct.TYPE_15__* %48)
  br label %50

50:                                               ; preds = %47, %35
  br label %52

51:                                               ; preds = %24
  br label %52

52:                                               ; preds = %51, %50, %26
  br label %53

53:                                               ; preds = %52, %15
  store i32 0, i32* %5, align 4
  br label %54

54:                                               ; preds = %53, %14
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local %struct.TYPE_15__* @quicly_get_stream(i32*, i32) #1

declare dso_local i32 @quicly_maxsender_acked(i32*, i32*) #1

declare dso_local i32 @quicly_maxsender_lost(i32*, i32*) #1

declare dso_local i32 @should_send_max_stream_data(%struct.TYPE_15__*) #1

declare dso_local i32 @sched_stream_control(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
