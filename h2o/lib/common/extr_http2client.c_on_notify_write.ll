; ModuleID = '/home/carl/AnghaBench/h2o/lib/common/extr_http2client.c_on_notify_write.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/common/extr_http2client.c_on_notify_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.st_h2o_http2client_conn_t* }
%struct.st_h2o_http2client_conn_t = type { i32 }

@h2o_httpclient_error_io = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*)* @on_notify_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on_notify_write(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.st_h2o_http2client_conn_t*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %7, align 8
  store %struct.st_h2o_http2client_conn_t* %8, %struct.st_h2o_http2client_conn_t** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %5, align 8
  %13 = load i32, i32* @h2o_httpclient_error_io, align 4
  %14 = call i32 @call_stream_callbacks_with_error(%struct.st_h2o_http2client_conn_t* %12, i32 %13)
  %15 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %5, align 8
  %16 = call i32 @close_connection_now(%struct.st_h2o_http2client_conn_t* %15)
  br label %22

17:                                               ; preds = %2
  %18 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %5, align 8
  %19 = call i32 @do_emit_writereq(%struct.st_h2o_http2client_conn_t* %18)
  %20 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %5, align 8
  %21 = call i32 @close_connection_if_necessary(%struct.st_h2o_http2client_conn_t* %20)
  br label %22

22:                                               ; preds = %17, %11
  ret void
}

declare dso_local i32 @call_stream_callbacks_with_error(%struct.st_h2o_http2client_conn_t*, i32) #1

declare dso_local i32 @close_connection_now(%struct.st_h2o_http2client_conn_t*) #1

declare dso_local i32 @do_emit_writereq(%struct.st_h2o_http2client_conn_t*) #1

declare dso_local i32 @close_connection_if_necessary(%struct.st_h2o_http2client_conn_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
