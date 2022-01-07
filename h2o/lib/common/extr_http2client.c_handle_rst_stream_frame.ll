; ModuleID = '/home/carl/AnghaBench/h2o/lib/common/extr_http2client.c_handle_rst_stream_frame.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/common/extr_http2client.c_handle_rst_stream_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_h2o_http2client_conn_t = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.st_h2o_http2client_stream_t = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"unexpected stream id in RST_STREAM frame\00", align 1
@H2O_HTTP2_ERROR_PROTOCOL = common dso_local global i32 0, align 4
@h2o_httpclient_error_refused_stream = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st_h2o_http2client_conn_t*, %struct.TYPE_4__*, i8**)* @handle_rst_stream_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_rst_stream_frame(%struct.st_h2o_http2client_conn_t* %0, %struct.TYPE_4__* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.st_h2o_http2client_conn_t*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.st_h2o_http2client_stream_t*, align 8
  %10 = alloca i32, align 4
  store %struct.st_h2o_http2client_conn_t* %0, %struct.st_h2o_http2client_conn_t** %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store i8** %2, i8*** %7, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %12 = load i8**, i8*** %7, align 8
  %13 = call i32 @h2o_http2_decode_rst_stream_payload(i32* %8, %struct.TYPE_4__* %11, i8** %12)
  store i32 %13, i32* %10, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %10, align 4
  store i32 %16, i32* %4, align 4
  br label %43

17:                                               ; preds = %3
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %5, align 8
  %22 = getelementptr inbounds %struct.st_h2o_http2client_conn_t, %struct.st_h2o_http2client_conn_t* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %20, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8** %26, align 8
  %27 = load i32, i32* @H2O_HTTP2_ERROR_PROTOCOL, align 4
  store i32 %27, i32* %4, align 4
  br label %43

28:                                               ; preds = %17
  %29 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %5, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call %struct.st_h2o_http2client_stream_t* @get_stream(%struct.st_h2o_http2client_conn_t* %29, i64 %32)
  store %struct.st_h2o_http2client_stream_t* %33, %struct.st_h2o_http2client_stream_t** %9, align 8
  %34 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %9, align 8
  %35 = icmp ne %struct.st_h2o_http2client_stream_t* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %28
  %37 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %9, align 8
  %38 = load i32, i32* @h2o_httpclient_error_refused_stream, align 4
  %39 = call i32 @call_callback_with_error(%struct.st_h2o_http2client_stream_t* %37, i32 %38)
  %40 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %9, align 8
  %41 = call i32 @close_stream(%struct.st_h2o_http2client_stream_t* %40)
  br label %42

42:                                               ; preds = %36, %28
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %42, %25, %15
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @h2o_http2_decode_rst_stream_payload(i32*, %struct.TYPE_4__*, i8**) #1

declare dso_local %struct.st_h2o_http2client_stream_t* @get_stream(%struct.st_h2o_http2client_conn_t*, i64) #1

declare dso_local i32 @call_callback_with_error(%struct.st_h2o_http2client_stream_t*, i32) #1

declare dso_local i32 @close_stream(%struct.st_h2o_http2client_stream_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
