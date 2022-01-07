; ModuleID = '/home/carl/AnghaBench/h2o/lib/common/extr_http2client.c_enqueue_goaway.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/common/extr_http2client.c_enqueue_goaway.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_h2o_http2client_conn_t = type { i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@H2O_HTTP2CLIENT_CONN_STATE_IS_CLOSING = common dso_local global i64 0, align 8
@H2O_HTTP2CLIENT_CONN_STATE_HALF_CLOSED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_h2o_http2client_conn_t*, i32, i32)* @enqueue_goaway to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enqueue_goaway(%struct.st_h2o_http2client_conn_t* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.st_h2o_http2client_conn_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.st_h2o_http2client_conn_t* %0, %struct.st_h2o_http2client_conn_t** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %4, align 8
  %8 = getelementptr inbounds %struct.st_h2o_http2client_conn_t, %struct.st_h2o_http2client_conn_t* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @H2O_HTTP2CLIENT_CONN_STATE_IS_CLOSING, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %35

13:                                               ; preds = %3
  %14 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %4, align 8
  %15 = getelementptr inbounds %struct.st_h2o_http2client_conn_t, %struct.st_h2o_http2client_conn_t* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @h2o_http2_encode_goaway_frame(i32* %16, i32 0, i32 %17, i32 %18)
  %20 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %4, align 8
  %21 = call i32 @request_write(%struct.st_h2o_http2client_conn_t* %20)
  %22 = load i64, i64* @H2O_HTTP2CLIENT_CONN_STATE_HALF_CLOSED, align 8
  %23 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %4, align 8
  %24 = getelementptr inbounds %struct.st_h2o_http2client_conn_t, %struct.st_h2o_http2client_conn_t* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %4, align 8
  %26 = getelementptr inbounds %struct.st_h2o_http2client_conn_t, %struct.st_h2o_http2client_conn_t* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = call i64 @h2o_linklist_is_linked(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %13
  %31 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %4, align 8
  %32 = getelementptr inbounds %struct.st_h2o_http2client_conn_t, %struct.st_h2o_http2client_conn_t* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = call i32 @h2o_linklist_unlink(i32* %33)
  br label %35

35:                                               ; preds = %12, %30, %13
  ret void
}

declare dso_local i32 @h2o_http2_encode_goaway_frame(i32*, i32, i32, i32) #1

declare dso_local i32 @request_write(%struct.st_h2o_http2client_conn_t*) #1

declare dso_local i64 @h2o_linklist_is_linked(i32*) #1

declare dso_local i32 @h2o_linklist_unlink(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
