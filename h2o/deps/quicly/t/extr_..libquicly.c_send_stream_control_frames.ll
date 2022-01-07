; ModuleID = '/home/carl/AnghaBench/h2o/deps/quicly/t/extr_..libquicly.c_send_stream_control_frames.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/quicly/t/extr_..libquicly.c_send_stream_control_frames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { %struct.TYPE_29__, %struct.TYPE_28__, i32, i32, %struct.TYPE_24__, %struct.TYPE_23__ }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_28__ = type { %struct.TYPE_27__, i32, %struct.TYPE_22__ }
%struct.TYPE_27__ = type { i64, i32 }
%struct.TYPE_22__ = type { i64, i32 }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32, i32 }

@QUICLY_SENDER_STATE_SEND = common dso_local global i64 0, align 8
@QUICLY_STOP_SENDING_FRAME_CAPACITY = common dso_local global i32 0, align 4
@on_ack_stop_sending = common dso_local global i32 0, align 4
@QUICLY_MAX_STREAM_DATA_FRAME_CAPACITY = common dso_local global i32 0, align 4
@on_ack_max_stream_data = common dso_local global i32 0, align 4
@MAX_STREAM_DATA_SEND = common dso_local global i32 0, align 4
@QUICLY_RST_FRAME_CAPACITY = common dso_local global i32 0, align 4
@on_ack_rst_stream = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_30__*, %struct.TYPE_21__*)* @send_stream_control_frames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_stream_control_frames(%struct.TYPE_30__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_30__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  %9 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @QUICLY_SENDER_STATE_SEND, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %44

16:                                               ; preds = %2
  %17 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %18 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %23 = load i32, i32* @QUICLY_STOP_SENDING_FRAME_CAPACITY, align 4
  %24 = load i32, i32* @on_ack_stop_sending, align 4
  %25 = call i32 @prepare_stream_state_sender(%struct.TYPE_30__* %17, i64* %21, %struct.TYPE_21__* %22, i32 %23, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %16
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %3, align 4
  br label %144

29:                                               ; preds = %16
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @quicly_encode_stop_sending_frame(i32 %32, i32 %35, i32 %40)
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %29, %2
  %45 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %46 = call i64 @should_send_max_stream_data(%struct.TYPE_30__* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %103

48:                                               ; preds = %44
  %49 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %49, i32 0, i32 5
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %52, %56
  store i64 %57, i64* %7, align 8
  %58 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %62 = load i32, i32* @QUICLY_MAX_STREAM_DATA_FRAME_CAPACITY, align 4
  %63 = load i32, i32* @on_ack_max_stream_data, align 4
  %64 = call i32 @allocate_ack_eliciting_frame(i32 %60, %struct.TYPE_21__* %61, i32 %62, %struct.TYPE_20__** %8, i32 %63)
  store i32 %64, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %48
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %3, align 4
  br label %144

68:                                               ; preds = %48
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load i64, i64* %7, align 8
  %76 = call i32 @quicly_encode_max_stream_data_frame(i32 %71, i32 %74, i64 %75)
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 4
  %79 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %84, i32 0, i32 1
  store i32 %81, i32* %85, align 4
  %86 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %87, i32 0, i32 1
  %89 = load i64, i64* %7, align 8
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %92, i32 0, i32 0
  %94 = call i32 @quicly_maxsender_record(i32* %88, i64 %89, i32* %93)
  %95 = load i32, i32* @MAX_STREAM_DATA_SEND, align 4
  %96 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = call i32 (...) @probe_now()
  %100 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %101 = load i64, i64* %7, align 8
  %102 = call i32 @QUICLY_PROBE(i32 %95, i32 %98, i32 %99, %struct.TYPE_30__* %100, i64 %101)
  br label %103

103:                                              ; preds = %68, %44
  %104 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @QUICLY_SENDER_STATE_SEND, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %143

111:                                              ; preds = %103
  %112 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %113 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %118 = load i32, i32* @QUICLY_RST_FRAME_CAPACITY, align 4
  %119 = load i32, i32* @on_ack_rst_stream, align 4
  %120 = call i32 @prepare_stream_state_sender(%struct.TYPE_30__* %112, i64* %116, %struct.TYPE_21__* %117, i32 %118, i32 %119)
  store i32 %120, i32* %6, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %111
  %123 = load i32, i32* %6, align 4
  store i32 %123, i32* %3, align 4
  br label %144

124:                                              ; preds = %111
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @quicly_encode_rst_stream_frame(i32 %127, i32 %130, i32 %135, i32 %139)
  %141 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 4
  br label %143

143:                                              ; preds = %124, %103
  store i32 0, i32* %3, align 4
  br label %144

144:                                              ; preds = %143, %122, %66, %27
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local i32 @prepare_stream_state_sender(%struct.TYPE_30__*, i64*, %struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @quicly_encode_stop_sending_frame(i32, i32, i32) #1

declare dso_local i64 @should_send_max_stream_data(%struct.TYPE_30__*) #1

declare dso_local i32 @allocate_ack_eliciting_frame(i32, %struct.TYPE_21__*, i32, %struct.TYPE_20__**, i32) #1

declare dso_local i32 @quicly_encode_max_stream_data_frame(i32, i32, i64) #1

declare dso_local i32 @quicly_maxsender_record(i32*, i64, i32*) #1

declare dso_local i32 @QUICLY_PROBE(i32, i32, i32, %struct.TYPE_30__*, i64) #1

declare dso_local i32 @probe_now(...) #1

declare dso_local i32 @quicly_encode_rst_stream_frame(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
