; ModuleID = '/home/carl/AnghaBench/h2o/lib/common/extr_http2client.c_stream_send_error.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/common/extr_http2client.c_stream_send_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_h2o_http2client_conn_t = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@H2O_HTTP2CLIENT_CONN_STATE_IS_CLOSING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_h2o_http2client_conn_t*, i32, i32)* @stream_send_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stream_send_error(%struct.st_h2o_http2client_conn_t* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.st_h2o_http2client_conn_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.st_h2o_http2client_conn_t* %0, %struct.st_h2o_http2client_conn_t** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %4, align 8
  %12 = getelementptr inbounds %struct.st_h2o_http2client_conn_t, %struct.st_h2o_http2client_conn_t* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @H2O_HTTP2CLIENT_CONN_STATE_IS_CLOSING, align 8
  %15 = icmp ne i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %4, align 8
  %19 = getelementptr inbounds %struct.st_h2o_http2client_conn_t, %struct.st_h2o_http2client_conn_t* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = sub nsw i32 0, %22
  %24 = call i32 @h2o_http2_encode_rst_stream_frame(i32* %20, i32 %21, i32 %23)
  %25 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %4, align 8
  %26 = call i32 @request_write(%struct.st_h2o_http2client_conn_t* %25)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @h2o_http2_encode_rst_stream_frame(i32*, i32, i32) #1

declare dso_local i32 @request_write(%struct.st_h2o_http2client_conn_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
