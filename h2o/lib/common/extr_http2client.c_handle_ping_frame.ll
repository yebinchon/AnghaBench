; ModuleID = '/home/carl/AnghaBench/h2o/lib/common/extr_http2client.c_handle_ping_frame.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/common/extr_http2client.c_handle_ping_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_h2o_http2client_conn_t = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@H2O_HTTP2_FRAME_FLAG_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st_h2o_http2client_conn_t*, %struct.TYPE_9__*, i8**)* @handle_ping_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_ping_frame(%struct.st_h2o_http2client_conn_t* %0, %struct.TYPE_9__* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.st_h2o_http2client_conn_t*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.TYPE_8__, align 4
  %9 = alloca i32, align 4
  store %struct.st_h2o_http2client_conn_t* %0, %struct.st_h2o_http2client_conn_t** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store i8** %2, i8*** %7, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %11 = load i8**, i8*** %7, align 8
  %12 = call i32 @h2o_http2_decode_ping_payload(%struct.TYPE_8__* %8, %struct.TYPE_9__* %10, i8** %11)
  store i32 %12, i32* %9, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* %9, align 4
  store i32 %15, i32* %4, align 4
  br label %33

16:                                               ; preds = %3
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @H2O_HTTP2_FRAME_FLAG_ACK, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %16
  %24 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %5, align 8
  %25 = getelementptr inbounds %struct.st_h2o_http2client_conn_t, %struct.st_h2o_http2client_conn_t* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @h2o_http2_encode_ping_frame(i32* %26, i32 1, i32 %28)
  %30 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %5, align 8
  %31 = call i32 @request_write(%struct.st_h2o_http2client_conn_t* %30)
  br label %32

32:                                               ; preds = %23, %16
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %32, %14
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @h2o_http2_decode_ping_payload(%struct.TYPE_8__*, %struct.TYPE_9__*, i8**) #1

declare dso_local i32 @h2o_http2_encode_ping_frame(i32*, i32, i32) #1

declare dso_local i32 @request_write(%struct.st_h2o_http2client_conn_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
