; ModuleID = '/home/carl/AnghaBench/h2o/deps/quicly/t/extr_..libquicly.c_handle_stream_data_blocked_frame.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/quicly/t/extr_..libquicly.c_handle_stream_data_blocked_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_quicly_handle_payload_state_t = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@STREAM_DATA_BLOCKED_RECEIVE = common dso_local global i32 0, align 4
@QUICLY_TRANSPORT_ERROR_FRAME_ENCODING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.st_quicly_handle_payload_state_t*)* @handle_stream_data_blocked_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_stream_data_blocked_frame(i32* %0, %struct.st_quicly_handle_payload_state_t* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.st_quicly_handle_payload_state_t*, align 8
  %6 = alloca %struct.TYPE_10__, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.st_quicly_handle_payload_state_t* %1, %struct.st_quicly_handle_payload_state_t** %5, align 8
  %9 = load %struct.st_quicly_handle_payload_state_t*, %struct.st_quicly_handle_payload_state_t** %5, align 8
  %10 = getelementptr inbounds %struct.st_quicly_handle_payload_state_t, %struct.st_quicly_handle_payload_state_t* %9, i32 0, i32 1
  %11 = load %struct.st_quicly_handle_payload_state_t*, %struct.st_quicly_handle_payload_state_t** %5, align 8
  %12 = getelementptr inbounds %struct.st_quicly_handle_payload_state_t, %struct.st_quicly_handle_payload_state_t* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @quicly_decode_stream_data_blocked_frame(i32* %10, i32 %13, %struct.TYPE_10__* %6)
  store i32 %14, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %3, align 4
  br label %54

18:                                               ; preds = %2
  %19 = load i32, i32* @STREAM_DATA_BLOCKED_RECEIVE, align 4
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 (...) @probe_now()
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @QUICLY_PROBE(i32 %19, i32* %20, i32 %21, i32 %23, i32 %25)
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @quicly_is_client(i32* %27)
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @quicly_stream_has_receive_side(i32 %28, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %18
  %34 = load i32, i32* @QUICLY_TRANSPORT_ERROR_FRAME_ENCODING, align 4
  store i32 %34, i32* %3, align 4
  br label %54

35:                                               ; preds = %18
  %36 = load i32*, i32** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.TYPE_9__* @quicly_get_stream(i32* %36, i32 %38)
  store %struct.TYPE_9__* %39, %struct.TYPE_9__** %7, align 8
  %40 = icmp ne %struct.TYPE_9__* %39, null
  br i1 %40, label %41, label %53

41:                                               ; preds = %35
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = call i32 @quicly_maxsender_request_transmit(i32* %44)
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %47 = call i64 @should_send_max_stream_data(%struct.TYPE_9__* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %51 = call i32 @sched_stream_control(%struct.TYPE_9__* %50)
  br label %52

52:                                               ; preds = %49, %41
  br label %53

53:                                               ; preds = %52, %35
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %33, %16
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @quicly_decode_stream_data_blocked_frame(i32*, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @QUICLY_PROBE(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @probe_now(...) #1

declare dso_local i32 @quicly_stream_has_receive_side(i32, i32) #1

declare dso_local i32 @quicly_is_client(i32*) #1

declare dso_local %struct.TYPE_9__* @quicly_get_stream(i32*, i32) #1

declare dso_local i32 @quicly_maxsender_request_transmit(i32*) #1

declare dso_local i64 @should_send_max_stream_data(%struct.TYPE_9__*) #1

declare dso_local i32 @sched_stream_control(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
