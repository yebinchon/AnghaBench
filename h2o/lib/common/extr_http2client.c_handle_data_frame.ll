; ModuleID = '/home/carl/AnghaBench/h2o/lib/common/extr_http2client.c_handle_data_frame.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/common/extr_http2client.c_handle_data_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_h2o_http2client_conn_t = type { i64, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_19__ = type { i64, i32 }
%struct.TYPE_20__ = type { i64, i64 }
%struct.st_h2o_http2client_stream_t = type { i64, %struct.TYPE_21__, %struct.st_h2o_http2client_conn_t*, %struct.TYPE_16__, %struct.TYPE_15__ }
%struct.TYPE_21__ = type { %struct.TYPE_17__, i32 }
%struct.TYPE_17__ = type { i64 (%struct.TYPE_21__*, i32*)* }
%struct.TYPE_16__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_15__ = type { i64 }

@H2O_HTTP2_ERROR_STREAM_CLOSED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"invalid DATA frame\00", align 1
@H2O_HTTP2_ERROR_PROTOCOL = common dso_local global i32 0, align 4
@STREAM_STATE_BODY = common dso_local global i64 0, align 8
@h2o_httpclient_error_http2_protocol_violation = common dso_local global i32 0, align 4
@h2o_httpclient_error_flow_control = common dso_local global i32* null, align 8
@H2O_HTTP2_ERROR_FLOW_CONTROL = common dso_local global i32 0, align 4
@H2O_HTTP2_FRAME_FLAG_END_STREAM = common dso_local global i32 0, align 4
@h2o_httpclient_error_is_eos = common dso_local global i32* null, align 8
@H2O_HTTP2_ERROR_INTERNAL = common dso_local global i32 0, align 4
@H2O_HTTP2_SETTINGS_CLIENT_CONNECTION_WINDOW_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st_h2o_http2client_conn_t*, %struct.TYPE_19__*, i8**)* @handle_data_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_data_frame(%struct.st_h2o_http2client_conn_t* %0, %struct.TYPE_19__* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.st_h2o_http2client_conn_t*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.TYPE_20__, align 8
  %9 = alloca %struct.st_h2o_http2client_stream_t*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.st_h2o_http2client_conn_t* %0, %struct.st_h2o_http2client_conn_t** %5, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %6, align 8
  store i8** %2, i8*** %7, align 8
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %14 = load i8**, i8*** %7, align 8
  %15 = call i32 @h2o_http2_decode_data_payload(%struct.TYPE_20__* %8, %struct.TYPE_19__* %13, i8** %14)
  store i32 %15, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %4, align 4
  br label %175

19:                                               ; preds = %3
  %20 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %5, align 8
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call %struct.st_h2o_http2client_stream_t* @get_stream(%struct.st_h2o_http2client_conn_t* %20, i64 %23)
  store %struct.st_h2o_http2client_stream_t* %24, %struct.st_h2o_http2client_stream_t** %9, align 8
  %25 = icmp eq %struct.st_h2o_http2client_stream_t* %24, null
  br i1 %25, label %26, label %44

26:                                               ; preds = %19
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %5, align 8
  %31 = getelementptr inbounds %struct.st_h2o_http2client_conn_t, %struct.st_h2o_http2client_conn_t* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sle i64 %29, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %26
  %35 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %5, align 8
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* @H2O_HTTP2_ERROR_STREAM_CLOSED, align 4
  %40 = call i32 @stream_send_error(%struct.st_h2o_http2client_conn_t* %35, i64 %38, i32 %39)
  store i32 0, i32* %4, align 4
  br label %175

41:                                               ; preds = %26
  %42 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8** %42, align 8
  %43 = load i32, i32* @H2O_HTTP2_ERROR_PROTOCOL, align 4
  store i32 %43, i32* %4, align 4
  br label %175

44:                                               ; preds = %19
  %45 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %9, align 8
  %46 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @STREAM_STATE_BODY, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %63

51:                                               ; preds = %44
  %52 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %5, align 8
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* @H2O_HTTP2_ERROR_PROTOCOL, align 4
  %57 = call i32 @stream_send_error(%struct.st_h2o_http2client_conn_t* %52, i64 %55, i32 %56)
  %58 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %9, align 8
  %59 = load i32, i32* @h2o_httpclient_error_http2_protocol_violation, align 4
  %60 = call i32 @call_callback_with_error(%struct.st_h2o_http2client_stream_t* %58, i32 %59)
  %61 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %9, align 8
  %62 = call i32 @close_stream(%struct.st_h2o_http2client_stream_t* %61)
  store i32 0, i32* %4, align 4
  br label %175

63:                                               ; preds = %44
  %64 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %9, align 8
  %65 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @get_max_buffer_size(i32 %67)
  store i64 %68, i64* %11, align 8
  %69 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %9, align 8
  %70 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = add i64 %74, %76
  %78 = load i64, i64* %11, align 8
  %79 = icmp ugt i64 %77, %78
  br i1 %79, label %80, label %100

80:                                               ; preds = %63
  %81 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %9, align 8
  %82 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 0
  %85 = load i64 (%struct.TYPE_21__*, i32*)*, i64 (%struct.TYPE_21__*, i32*)** %84, align 8
  %86 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %9, align 8
  %87 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %86, i32 0, i32 1
  %88 = load i32*, i32** @h2o_httpclient_error_flow_control, align 8
  %89 = call i64 %85(%struct.TYPE_21__* %87, i32* %88)
  %90 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %9, align 8
  %91 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %90, i32 0, i32 2
  %92 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %91, align 8
  %93 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %9, align 8
  %94 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i32, i32* @H2O_HTTP2_ERROR_FLOW_CONTROL, align 4
  %97 = call i32 @stream_send_error(%struct.st_h2o_http2client_conn_t* %92, i64 %95, i32 %96)
  %98 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %9, align 8
  %99 = call i32 @close_stream(%struct.st_h2o_http2client_stream_t* %98)
  store i32 0, i32* %4, align 4
  br label %175

100:                                              ; preds = %63
  %101 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %9, align 8
  %102 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = inttoptr i64 %105 to i8*
  %107 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @h2o_buffer_append(%struct.TYPE_14__** %103, i8* %106, i64 %108)
  %110 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %5, align 8
  %111 = getelementptr inbounds %struct.st_h2o_http2client_conn_t, %struct.st_h2o_http2client_conn_t* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @h2o_http2_window_consume_window(i32* %112, i64 %114)
  %116 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %9, align 8
  %117 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %116, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @h2o_http2_window_consume_window(i32* %118, i64 %120)
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @H2O_HTTP2_FRAME_FLAG_END_STREAM, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  %128 = zext i1 %127 to i32
  store i32 %128, i32* %12, align 4
  %129 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %9, align 8
  %130 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 0
  %133 = load i64 (%struct.TYPE_21__*, i32*)*, i64 (%struct.TYPE_21__*, i32*)** %132, align 8
  %134 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %9, align 8
  %135 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %134, i32 0, i32 1
  %136 = load i32, i32* %12, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %100
  %139 = load i32*, i32** @h2o_httpclient_error_is_eos, align 8
  br label %141

140:                                              ; preds = %100
  br label %141

141:                                              ; preds = %140, %138
  %142 = phi i32* [ %139, %138 ], [ null, %140 ]
  %143 = call i64 %133(%struct.TYPE_21__* %135, i32* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %154

145:                                              ; preds = %141
  %146 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %5, align 8
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i32, i32* @H2O_HTTP2_ERROR_INTERNAL, align 4
  %151 = call i32 @stream_send_error(%struct.st_h2o_http2client_conn_t* %146, i64 %149, i32 %150)
  %152 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %9, align 8
  %153 = call i32 @close_stream(%struct.st_h2o_http2client_stream_t* %152)
  store i32 0, i32* %4, align 4
  br label %175

154:                                              ; preds = %141
  %155 = load i32, i32* %12, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %154
  %158 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %9, align 8
  %159 = call i32 @close_response(%struct.st_h2o_http2client_stream_t* %158)
  br label %174

160:                                              ; preds = %154
  %161 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %9, align 8
  %162 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %161, i32 0, i32 2
  %163 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %162, align 8
  %164 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %9, align 8
  %165 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %164, i32 0, i32 2
  %166 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %165, align 8
  %167 = getelementptr inbounds %struct.st_h2o_http2client_conn_t, %struct.st_h2o_http2client_conn_t* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %167, i32 0, i32 0
  %169 = load i32, i32* @H2O_HTTP2_SETTINGS_CLIENT_CONNECTION_WINDOW_SIZE, align 4
  %170 = call i32 @enqueue_window_update(%struct.st_h2o_http2client_conn_t* %163, i32 0, i32* %168, i32 %169)
  %171 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %9, align 8
  %172 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %171, i32 0, i32 1
  %173 = call i32 @do_update_window(%struct.TYPE_21__* %172)
  br label %174

174:                                              ; preds = %160, %157
  store i32 0, i32* %4, align 4
  br label %175

175:                                              ; preds = %174, %145, %80, %51, %41, %34, %17
  %176 = load i32, i32* %4, align 4
  ret i32 %176
}

declare dso_local i32 @h2o_http2_decode_data_payload(%struct.TYPE_20__*, %struct.TYPE_19__*, i8**) #1

declare dso_local %struct.st_h2o_http2client_stream_t* @get_stream(%struct.st_h2o_http2client_conn_t*, i64) #1

declare dso_local i32 @stream_send_error(%struct.st_h2o_http2client_conn_t*, i64, i32) #1

declare dso_local i32 @call_callback_with_error(%struct.st_h2o_http2client_stream_t*, i32) #1

declare dso_local i32 @close_stream(%struct.st_h2o_http2client_stream_t*) #1

declare dso_local i64 @get_max_buffer_size(i32) #1

declare dso_local i32 @h2o_buffer_append(%struct.TYPE_14__**, i8*, i64) #1

declare dso_local i32 @h2o_http2_window_consume_window(i32*, i64) #1

declare dso_local i32 @close_response(%struct.st_h2o_http2client_stream_t*) #1

declare dso_local i32 @enqueue_window_update(%struct.st_h2o_http2client_conn_t*, i32, i32*, i32) #1

declare dso_local i32 @do_update_window(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
