; ModuleID = '/home/carl/AnghaBench/h2o/lib/http3/extr_server.c_on_receive_reset.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/http3/extr_server.c_on_receive_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.st_h2o_http3_server_stream_t* }
%struct.st_h2o_http3_server_stream_t = type { i64, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@H2O_HTTP3_SERVER_STREAM_STATE_RECV_HEADERS = common dso_local global i64 0, align 8
@H2O_HTTP3_ERROR_REQUEST_REJECTED = common dso_local global i32 0, align 4
@H2O_HTTP3_SERVER_STREAM_STATE_CLOSE_WAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32)* @on_receive_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on_receive_reset(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.st_h2o_http3_server_stream_t*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %7, align 8
  store %struct.st_h2o_http3_server_stream_t* %8, %struct.st_h2o_http3_server_stream_t** %5, align 8
  %9 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %5, align 8
  %10 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @H2O_HTTP3_SERVER_STREAM_STATE_RECV_HEADERS, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %41

14:                                               ; preds = %2
  %15 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %5, align 8
  %16 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %15, i32 0, i32 2
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = call i32 @quicly_sendstate_transfer_complete(i32* %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %5, align 8
  %25 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %24, i32 0, i32 2
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = load i32, i32* @H2O_HTTP3_ERROR_REQUEST_REJECTED, align 4
  %28 = call i32 @quicly_reset_stream(%struct.TYPE_5__* %26, i32 %27)
  %29 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %5, align 8
  %30 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %29, i32 0, i32 1
  %31 = call i64 @h2o_linklist_is_linked(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %14
  %34 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %5, align 8
  %35 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %34, i32 0, i32 1
  %36 = call i32 @h2o_linklist_unlink(i32* %35)
  br label %37

37:                                               ; preds = %33, %14
  %38 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %5, align 8
  %39 = load i32, i32* @H2O_HTTP3_SERVER_STREAM_STATE_CLOSE_WAIT, align 4
  %40 = call i32 @set_state(%struct.st_h2o_http3_server_stream_t* %38, i32 %39)
  br label %41

41:                                               ; preds = %37, %2
  ret i32 0
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @quicly_sendstate_transfer_complete(i32*) #1

declare dso_local i32 @quicly_reset_stream(%struct.TYPE_5__*, i32) #1

declare dso_local i64 @h2o_linklist_is_linked(i32*) #1

declare dso_local i32 @h2o_linklist_unlink(i32*) #1

declare dso_local i32 @set_state(%struct.st_h2o_http3_server_stream_t*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
