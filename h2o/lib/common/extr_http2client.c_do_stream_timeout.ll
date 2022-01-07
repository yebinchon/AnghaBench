; ModuleID = '/home/carl/AnghaBench/h2o/lib/common/extr_http2client.c_do_stream_timeout.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/common/extr_http2client.c_do_stream_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_h2o_http2client_stream_t = type { %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i64 }

@h2o_httpclient_error_connect_timeout = common dso_local global i32 0, align 4
@STREAM_STATE_HEAD = common dso_local global i64 0, align 8
@h2o_httpclient_error_first_byte_timeout = common dso_local global i8* null, align 8
@h2o_httpclient_error_io_timeout = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_h2o_http2client_stream_t*)* @do_stream_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_stream_timeout(%struct.st_h2o_http2client_stream_t* %0) #0 {
  %2 = alloca %struct.st_h2o_http2client_stream_t*, align 8
  %3 = alloca i8*, align 8
  store %struct.st_h2o_http2client_stream_t* %0, %struct.st_h2o_http2client_stream_t** %2, align 8
  %4 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %2, align 8
  %5 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %4, i32 0, i32 1
  %6 = load i32*, i32** %5, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %2, align 8
  %10 = load i32, i32* @h2o_httpclient_error_connect_timeout, align 4
  %11 = call i32 @on_connect_error(%struct.st_h2o_http2client_stream_t* %9, i32 %10)
  br label %30

12:                                               ; preds = %1
  %13 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %2, align 8
  %14 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @STREAM_STATE_HEAD, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = load i8*, i8** @h2o_httpclient_error_first_byte_timeout, align 8
  br label %23

21:                                               ; preds = %12
  %22 = load i8*, i8** @h2o_httpclient_error_io_timeout, align 8
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i8* [ %20, %19 ], [ %22, %21 ]
  store i8* %24, i8** %3, align 8
  %25 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %2, align 8
  %26 = load i8*, i8** %3, align 8
  %27 = call i32 @call_callback_with_error(%struct.st_h2o_http2client_stream_t* %25, i8* %26)
  %28 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %2, align 8
  %29 = call i32 @close_stream(%struct.st_h2o_http2client_stream_t* %28)
  br label %30

30:                                               ; preds = %23, %8
  ret void
}

declare dso_local i32 @on_connect_error(%struct.st_h2o_http2client_stream_t*, i32) #1

declare dso_local i32 @call_callback_with_error(%struct.st_h2o_http2client_stream_t*, i8*) #1

declare dso_local i32 @close_stream(%struct.st_h2o_http2client_stream_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
