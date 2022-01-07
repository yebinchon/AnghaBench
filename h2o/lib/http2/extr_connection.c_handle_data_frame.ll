; ModuleID = '/home/carl/AnghaBench/h2o/lib/http2/extr_connection.c_handle_data_frame.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/http2/extr_connection.c_handle_data_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { %struct.TYPE_21__, i32 }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_24__ = type { i64, i64, i32 }
%struct.TYPE_25__ = type { i64, i32 }
%struct.TYPE_23__ = type { i64, %struct.TYPE_22__, i32 }
%struct.TYPE_22__ = type { i32 }

@H2O_HTTP2_SETTINGS_HOST_CONNECTION_WINDOW_SIZE = common dso_local global i32 0, align 4
@H2O_HTTP2_ERROR_STREAM_CLOSED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"invalid DATA frame\00", align 1
@H2O_HTTP2_ERROR_PROTOCOL = common dso_local global i32 0, align 4
@H2O_HTTP2_STREAM_STATE_RECV_BODY = common dso_local global i64 0, align 8
@H2O_HTTP2_FRAME_FLAG_END_STREAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_26__*, %struct.TYPE_24__*, i8**)* @handle_data_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_data_frame(%struct.TYPE_26__* %0, %struct.TYPE_24__* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.TYPE_25__, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %5, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %6, align 8
  store i8** %2, i8*** %7, align 8
  %11 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %12 = load i8**, i8*** %7, align 8
  %13 = call i32 @h2o_http2_decode_data_payload(%struct.TYPE_25__* %8, %struct.TYPE_24__* %11, i8** %12)
  store i32 %13, i32* %10, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %10, align 4
  store i32 %16, i32* %4, align 4
  br label %139

17:                                               ; preds = %3
  %18 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @h2o_http2_window_consume_window(i32* %19, i64 %22)
  %24 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %24, i32 0, i32 1
  %26 = call i32 @h2o_http2_window_get_avail(i32* %25)
  %27 = load i32, i32* @H2O_HTTP2_SETTINGS_HOST_CONNECTION_WINDOW_SIZE, align 4
  %28 = sdiv i32 %27, 2
  %29 = icmp sle i32 %26, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %17
  %31 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %32 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %32, i32 0, i32 1
  %34 = load i32, i32* @H2O_HTTP2_SETTINGS_HOST_CONNECTION_WINDOW_SIZE, align 4
  %35 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %35, i32 0, i32 1
  %37 = call i32 @h2o_http2_window_get_avail(i32* %36)
  %38 = sub nsw i32 %34, %37
  %39 = call i32 @send_window_update(%struct.TYPE_26__* %31, i32 0, i32* %33, i32 %38)
  br label %40

40:                                               ; preds = %30, %17
  %41 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %42 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call %struct.TYPE_23__* @h2o_http2_conn_get_stream(%struct.TYPE_26__* %41, i64 %44)
  store %struct.TYPE_23__* %45, %struct.TYPE_23__** %9, align 8
  %46 = icmp eq %struct.TYPE_23__* %45, null
  br i1 %46, label %47, label %66

47:                                               ; preds = %40
  %48 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp sle i64 %50, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %47
  %57 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %58 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* @H2O_HTTP2_ERROR_STREAM_CLOSED, align 4
  %62 = call i32 @stream_send_error(%struct.TYPE_26__* %57, i64 %60, i32 %61)
  store i32 0, i32* %4, align 4
  br label %139

63:                                               ; preds = %47
  %64 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8** %64, align 8
  %65 = load i32, i32* @H2O_HTTP2_ERROR_PROTOCOL, align 4
  store i32 %65, i32* %4, align 4
  br label %139

66:                                               ; preds = %40
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @H2O_HTTP2_STREAM_STATE_RECV_BODY, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %87

72:                                               ; preds = %66
  %73 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %87, label %77

77:                                               ; preds = %72
  %78 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %79 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i32, i32* @H2O_HTTP2_ERROR_STREAM_CLOSED, align 4
  %83 = call i32 @stream_send_error(%struct.TYPE_26__* %78, i64 %81, i32 %82)
  %84 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %85 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %86 = call i32 @h2o_http2_stream_reset(%struct.TYPE_26__* %84, %struct.TYPE_23__* %85)
  store i32 0, i32* %4, align 4
  br label %139

87:                                               ; preds = %72, %66
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @h2o_http2_window_consume_window(i32* %90, i64 %93)
  %95 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %8, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %97, %99
  br i1 %100, label %101, label %111

101:                                              ; preds = %87
  %102 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %103 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %104 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %8, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = sub nsw i64 %106, %108
  %110 = call i32 @update_stream_input_window(%struct.TYPE_26__* %102, %struct.TYPE_23__* %103, i64 %109)
  br label %111

111:                                              ; preds = %101, %87
  %112 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %8, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %122, label %115

115:                                              ; preds = %111
  %116 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @H2O_HTTP2_FRAME_FLAG_END_STREAM, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %138

122:                                              ; preds = %115, %111
  %123 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %124 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %8, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %8, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = call i32 @h2o_iovec_init(i32 %126, i64 %128)
  %130 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @H2O_HTTP2_FRAME_FLAG_END_STREAM, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  %136 = zext i1 %135 to i32
  %137 = call i32 @handle_request_body_chunk(%struct.TYPE_26__* %123, %struct.TYPE_23__* %124, i32 %129, i32 %136)
  br label %138

138:                                              ; preds = %122, %115
  store i32 0, i32* %4, align 4
  br label %139

139:                                              ; preds = %138, %77, %63, %56, %15
  %140 = load i32, i32* %4, align 4
  ret i32 %140
}

declare dso_local i32 @h2o_http2_decode_data_payload(%struct.TYPE_25__*, %struct.TYPE_24__*, i8**) #1

declare dso_local i32 @h2o_http2_window_consume_window(i32*, i64) #1

declare dso_local i32 @h2o_http2_window_get_avail(i32*) #1

declare dso_local i32 @send_window_update(%struct.TYPE_26__*, i32, i32*, i32) #1

declare dso_local %struct.TYPE_23__* @h2o_http2_conn_get_stream(%struct.TYPE_26__*, i64) #1

declare dso_local i32 @stream_send_error(%struct.TYPE_26__*, i64, i32) #1

declare dso_local i32 @h2o_http2_stream_reset(%struct.TYPE_26__*, %struct.TYPE_23__*) #1

declare dso_local i32 @update_stream_input_window(%struct.TYPE_26__*, %struct.TYPE_23__*, i64) #1

declare dso_local i32 @handle_request_body_chunk(%struct.TYPE_26__*, %struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @h2o_iovec_init(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
