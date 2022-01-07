; ModuleID = '/home/carl/AnghaBench/h2o/deps/quicly/t/extr_..libquicly.c_handle_max_stream_data_frame.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/quicly/t/extr_..libquicly.c_handle_max_stream_data_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_quicly_handle_payload_state_t = type { i32, i32 }
%struct.TYPE_11__ = type { i64, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }

@MAX_STREAM_DATA_RECEIVE = common dso_local global i32 0, align 4
@QUICLY_TRANSPORT_ERROR_FRAME_ENCODING = common dso_local global i32 0, align 4
@QUICLY_SENDER_STATE_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.st_quicly_handle_payload_state_t*)* @handle_max_stream_data_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_max_stream_data_frame(i32* %0, %struct.st_quicly_handle_payload_state_t* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.st_quicly_handle_payload_state_t*, align 8
  %6 = alloca %struct.TYPE_11__, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.st_quicly_handle_payload_state_t* %1, %struct.st_quicly_handle_payload_state_t** %5, align 8
  %9 = load %struct.st_quicly_handle_payload_state_t*, %struct.st_quicly_handle_payload_state_t** %5, align 8
  %10 = getelementptr inbounds %struct.st_quicly_handle_payload_state_t, %struct.st_quicly_handle_payload_state_t* %9, i32 0, i32 1
  %11 = load %struct.st_quicly_handle_payload_state_t*, %struct.st_quicly_handle_payload_state_t** %5, align 8
  %12 = getelementptr inbounds %struct.st_quicly_handle_payload_state_t, %struct.st_quicly_handle_payload_state_t* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @quicly_decode_max_stream_data_frame(i32* %10, i32 %13, %struct.TYPE_11__* %6)
  store i32 %14, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %3, align 4
  br label %68

18:                                               ; preds = %2
  %19 = load i32, i32* @MAX_STREAM_DATA_RECEIVE, align 4
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 (...) @probe_now()
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @QUICLY_PROBE(i32 %19, i32* %20, i32 %21, i32 %23, i64 %25)
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @quicly_is_client(i32* %27)
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @quicly_stream_has_send_side(i32 %28, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %18
  %34 = load i32, i32* @QUICLY_TRANSPORT_ERROR_FRAME_ENCODING, align 4
  store i32 %34, i32* %3, align 4
  br label %68

35:                                               ; preds = %18
  %36 = load i32*, i32** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call %struct.TYPE_10__* @quicly_get_stream(i32* %36, i32 %38)
  store %struct.TYPE_10__* %39, %struct.TYPE_10__** %7, align 8
  %40 = icmp eq %struct.TYPE_10__* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %68

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp slt i64 %44, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %68

51:                                               ; preds = %42
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  store i64 %53, i64* %56, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @QUICLY_SENDER_STATE_NONE, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %51
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %66 = call i32 @resched_stream_data(%struct.TYPE_10__* %65)
  br label %67

67:                                               ; preds = %64, %51
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %50, %41, %33, %16
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @quicly_decode_max_stream_data_frame(i32*, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @QUICLY_PROBE(i32, i32*, i32, i32, i64) #1

declare dso_local i32 @probe_now(...) #1

declare dso_local i32 @quicly_stream_has_send_side(i32, i32) #1

declare dso_local i32 @quicly_is_client(i32*) #1

declare dso_local %struct.TYPE_10__* @quicly_get_stream(i32*, i32) #1

declare dso_local i32 @resched_stream_data(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
