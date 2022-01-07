; ModuleID = '/home/carl/AnghaBench/h2o/lib/common/extr_http2client.c_close_connection_if_necessary.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/common/extr_http2client.c_close_connection_if_necessary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_h2o_http2client_conn_t = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@H2O_HTTP2CLIENT_CONN_STATE_HALF_CLOSED = common dso_local global i64 0, align 8
@H2O_HTTP2CLIENT_CONN_STATE_IS_CLOSING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st_h2o_http2client_conn_t*)* @close_connection_if_necessary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @close_connection_if_necessary(%struct.st_h2o_http2client_conn_t* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.st_h2o_http2client_conn_t*, align 8
  store %struct.st_h2o_http2client_conn_t* %0, %struct.st_h2o_http2client_conn_t** %3, align 8
  %4 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %3, align 8
  %5 = getelementptr inbounds %struct.st_h2o_http2client_conn_t, %struct.st_h2o_http2client_conn_t* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @H2O_HTTP2CLIENT_CONN_STATE_HALF_CLOSED, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %19

9:                                                ; preds = %1
  %10 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %3, align 8
  %11 = getelementptr inbounds %struct.st_h2o_http2client_conn_t, %struct.st_h2o_http2client_conn_t* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %9
  %16 = load i64, i64* @H2O_HTTP2CLIENT_CONN_STATE_IS_CLOSING, align 8
  %17 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %3, align 8
  %18 = getelementptr inbounds %struct.st_h2o_http2client_conn_t, %struct.st_h2o_http2client_conn_t* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  br label %19

19:                                               ; preds = %15, %9, %1
  %20 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %3, align 8
  %21 = getelementptr inbounds %struct.st_h2o_http2client_conn_t, %struct.st_h2o_http2client_conn_t* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @H2O_HTTP2CLIENT_CONN_STATE_IS_CLOSING, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %3, align 8
  %27 = call i32 @close_connection_now(%struct.st_h2o_http2client_conn_t* %26)
  store i32 1, i32* %2, align 4
  br label %29

28:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %25
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @close_connection_now(%struct.st_h2o_http2client_conn_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
