; ModuleID = '/home/carl/AnghaBench/h2o/lib/common/extr_http2client.c_handle_window_update_frame.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/common/extr_http2client.c_handle_window_update_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_h2o_http2client_conn_t = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32 }
%struct.st_h2o_http2client_stream_t = type { i32 }

@h2o_httpclient_error_http2_protocol_violation = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"flow control window overflow\00", align 1
@H2O_HTTP2_ERROR_FLOW_CONTROL = common dso_local global i32 0, align 4
@h2o_httpclient_error_flow_control = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"invalid stream id in WINDOW_UPDATE frame\00", align 1
@H2O_HTTP2_ERROR_PROTOCOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st_h2o_http2client_conn_t*, %struct.TYPE_9__*, i8**)* @handle_window_update_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_window_update_frame(%struct.st_h2o_http2client_conn_t* %0, %struct.TYPE_9__* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.st_h2o_http2client_conn_t*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.TYPE_8__, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.st_h2o_http2client_stream_t*, align 8
  %12 = alloca %struct.st_h2o_http2client_stream_t*, align 8
  store %struct.st_h2o_http2client_conn_t* %0, %struct.st_h2o_http2client_conn_t** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store i8** %2, i8*** %7, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %14 = load i8**, i8*** %7, align 8
  %15 = call i32 @h2o_http2_decode_window_update_payload(%struct.TYPE_8__* %8, %struct.TYPE_9__* %13, i8** %14, i32* %10)
  store i32 %15, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %43

17:                                               ; preds = %3
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %41

20:                                               ; preds = %17
  %21 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %5, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @stream_send_error(%struct.st_h2o_http2client_conn_t* %21, i64 %24, i32 %25)
  %27 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %5, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call %struct.st_h2o_http2client_stream_t* @get_stream(%struct.st_h2o_http2client_conn_t* %27, i64 %30)
  store %struct.st_h2o_http2client_stream_t* %31, %struct.st_h2o_http2client_stream_t** %11, align 8
  %32 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %11, align 8
  %33 = icmp ne %struct.st_h2o_http2client_stream_t* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %20
  %35 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %11, align 8
  %36 = load i32, i32* @h2o_httpclient_error_http2_protocol_violation, align 4
  %37 = call i32 @call_callback_with_error(%struct.st_h2o_http2client_stream_t* %35, i32 %36)
  %38 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %11, align 8
  %39 = call i32 @close_stream(%struct.st_h2o_http2client_stream_t* %38)
  br label %40

40:                                               ; preds = %34, %20
  store i32 0, i32* %4, align 4
  br label %108

41:                                               ; preds = %17
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %4, align 4
  br label %108

43:                                               ; preds = %3
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %43
  %49 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %5, align 8
  %50 = getelementptr inbounds %struct.st_h2o_http2client_conn_t, %struct.st_h2o_http2client_conn_t* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @h2o_http2_window_update(i32* %51, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %48
  %57 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8** %57, align 8
  %58 = load i32, i32* @H2O_HTTP2_ERROR_FLOW_CONTROL, align 4
  store i32 %58, i32* %4, align 4
  br label %108

59:                                               ; preds = %48
  br label %100

60:                                               ; preds = %43
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %5, align 8
  %65 = getelementptr inbounds %struct.st_h2o_http2client_conn_t, %struct.st_h2o_http2client_conn_t* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp sle i64 %63, %66
  br i1 %67, label %68, label %96

68:                                               ; preds = %60
  %69 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %5, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call %struct.st_h2o_http2client_stream_t* @get_stream(%struct.st_h2o_http2client_conn_t* %69, i64 %72)
  store %struct.st_h2o_http2client_stream_t* %73, %struct.st_h2o_http2client_stream_t** %12, align 8
  %74 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %12, align 8
  %75 = icmp ne %struct.st_h2o_http2client_stream_t* %74, null
  br i1 %75, label %76, label %95

76:                                               ; preds = %68
  %77 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @update_stream_output_window(%struct.st_h2o_http2client_stream_t* %77, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %94

82:                                               ; preds = %76
  %83 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %5, align 8
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i32, i32* @H2O_HTTP2_ERROR_FLOW_CONTROL, align 4
  %88 = call i32 @stream_send_error(%struct.st_h2o_http2client_conn_t* %83, i64 %86, i32 %87)
  %89 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %12, align 8
  %90 = load i32, i32* @h2o_httpclient_error_flow_control, align 4
  %91 = call i32 @call_callback_with_error(%struct.st_h2o_http2client_stream_t* %89, i32 %90)
  %92 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %12, align 8
  %93 = call i32 @close_stream(%struct.st_h2o_http2client_stream_t* %92)
  store i32 0, i32* %4, align 4
  br label %108

94:                                               ; preds = %76
  br label %95

95:                                               ; preds = %94, %68
  br label %99

96:                                               ; preds = %60
  %97 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8** %97, align 8
  %98 = load i32, i32* @H2O_HTTP2_ERROR_PROTOCOL, align 4
  store i32 %98, i32* %4, align 4
  br label %108

99:                                               ; preds = %95
  br label %100

100:                                              ; preds = %99, %59
  %101 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %5, align 8
  %102 = call i64 @conn_get_buffer_window(%struct.st_h2o_http2client_conn_t* %101)
  %103 = icmp sgt i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %100
  %105 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %5, align 8
  %106 = call i32 @request_write(%struct.st_h2o_http2client_conn_t* %105)
  br label %107

107:                                              ; preds = %104, %100
  store i32 0, i32* %4, align 4
  br label %108

108:                                              ; preds = %107, %96, %82, %56, %41, %40
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local i32 @h2o_http2_decode_window_update_payload(%struct.TYPE_8__*, %struct.TYPE_9__*, i8**, i32*) #1

declare dso_local i32 @stream_send_error(%struct.st_h2o_http2client_conn_t*, i64, i32) #1

declare dso_local %struct.st_h2o_http2client_stream_t* @get_stream(%struct.st_h2o_http2client_conn_t*, i64) #1

declare dso_local i32 @call_callback_with_error(%struct.st_h2o_http2client_stream_t*, i32) #1

declare dso_local i32 @close_stream(%struct.st_h2o_http2client_stream_t*) #1

declare dso_local i64 @h2o_http2_window_update(i32*, i32) #1

declare dso_local i64 @update_stream_output_window(%struct.st_h2o_http2client_stream_t*, i32) #1

declare dso_local i64 @conn_get_buffer_window(%struct.st_h2o_http2client_conn_t*) #1

declare dso_local i32 @request_write(%struct.st_h2o_http2client_conn_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
