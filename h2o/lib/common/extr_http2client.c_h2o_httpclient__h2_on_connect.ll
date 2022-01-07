; ModuleID = '/home/carl/AnghaBench/h2o/lib/common/extr_http2client.c_h2o_httpclient__h2_on_connect.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/common/extr_http2client.c_h2o_httpclient__h2_on_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.st_h2o_http2client_conn_t* }
%struct.st_h2o_http2client_conn_t = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.st_h2o_http2client_stream_t = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32 }

@on_read = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @h2o_httpclient__h2_on_connect(i32* %0, %struct.TYPE_10__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.st_h2o_http2client_stream_t*, align 8
  %8 = alloca %struct.st_h2o_http2client_conn_t*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = bitcast i32* %9 to i8*
  %11 = bitcast i8* %10 to %struct.st_h2o_http2client_stream_t*
  store %struct.st_h2o_http2client_stream_t* %11, %struct.st_h2o_http2client_stream_t** %7, align 8
  %12 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %7, align 8
  %13 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 2
  %15 = call i32 @h2o_timer_is_linked(i32* %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %21, align 8
  store %struct.st_h2o_http2client_conn_t* %22, %struct.st_h2o_http2client_conn_t** %8, align 8
  %23 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %8, align 8
  %24 = icmp eq %struct.st_h2o_http2client_conn_t* %23, null
  br i1 %24, label %25, label %52

25:                                               ; preds = %3
  %26 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %7, align 8
  %27 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %7, align 8
  %33 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.st_h2o_http2client_conn_t* @create_connection(i32 %29, %struct.TYPE_10__* %30, i32* %31, i32 %35)
  store %struct.st_h2o_http2client_conn_t* %36, %struct.st_h2o_http2client_conn_t** %8, align 8
  %37 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %8, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  store %struct.st_h2o_http2client_conn_t* %37, %struct.st_h2o_http2client_conn_t** %39, align 8
  %40 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %8, align 8
  %41 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %7, align 8
  %42 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @send_client_preface(%struct.st_h2o_http2client_conn_t* %40, i32 %44)
  %46 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %8, align 8
  %47 = getelementptr inbounds %struct.st_h2o_http2client_conn_t, %struct.st_h2o_http2client_conn_t* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @on_read, align 4
  %51 = call i32 @h2o_socket_read_start(i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %25, %3
  %53 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %7, align 8
  %54 = call i32 @setup_stream(%struct.st_h2o_http2client_stream_t* %53)
  %55 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %8, align 8
  %56 = getelementptr inbounds %struct.st_h2o_http2client_conn_t, %struct.st_h2o_http2client_conn_t* %55, i32 0, i32 0
  %57 = call i32 @h2o_timer_is_linked(i32* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %75, label %59

59:                                               ; preds = %52
  %60 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %8, align 8
  %61 = getelementptr inbounds %struct.st_h2o_http2client_conn_t, %struct.st_h2o_http2client_conn_t* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %8, align 8
  %67 = getelementptr inbounds %struct.st_h2o_http2client_conn_t, %struct.st_h2o_http2client_conn_t* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %8, align 8
  %73 = getelementptr inbounds %struct.st_h2o_http2client_conn_t, %struct.st_h2o_http2client_conn_t* %72, i32 0, i32 0
  %74 = call i32 @h2o_timer_link(i32 %65, i32 %71, i32* %73)
  br label %75

75:                                               ; preds = %59, %52
  %76 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %7, align 8
  %77 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %8, align 8
  %78 = call i32 @on_connection_ready(%struct.st_h2o_http2client_stream_t* %76, %struct.st_h2o_http2client_conn_t* %77)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @h2o_timer_is_linked(i32*) #1

declare dso_local %struct.st_h2o_http2client_conn_t* @create_connection(i32, %struct.TYPE_10__*, i32*, i32) #1

declare dso_local i32 @send_client_preface(%struct.st_h2o_http2client_conn_t*, i32) #1

declare dso_local i32 @h2o_socket_read_start(i32, i32) #1

declare dso_local i32 @setup_stream(%struct.st_h2o_http2client_stream_t*) #1

declare dso_local i32 @h2o_timer_link(i32, i32, i32*) #1

declare dso_local i32 @on_connection_ready(%struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_conn_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
