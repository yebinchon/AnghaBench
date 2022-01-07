; ModuleID = '/home/carl/AnghaBench/h2o/lib/http3/extr_server.c_handle_input_post_trailers.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/http3/extr_server.c_handle_input_post_trailers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_h2o_http3_server_stream_t = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

@H2O_HTTP3_STREAM_TYPE_REQUEST = common dso_local global i32 0, align 4
@H2O_HTTP3_ERROR_FRAME_UNEXPECTED = common dso_local global i32 0, align 4
@H2O_HTTP3_SERVER_STREAM_STATE_CLOSE_WAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @handle_input_post_trailers(%struct.st_h2o_http3_server_stream_t* %0, i32** %1, i32* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.st_h2o_http3_server_stream_t*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.TYPE_5__, align 4
  %11 = alloca i32, align 4
  store %struct.st_h2o_http3_server_stream_t* %0, %struct.st_h2o_http3_server_stream_t** %6, align 8
  store i32** %1, i32*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8** %3, i8*** %9, align 8
  %12 = load i32, i32* @H2O_HTTP3_STREAM_TYPE_REQUEST, align 4
  %13 = load i32**, i32*** %7, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = load i8**, i8*** %9, align 8
  %16 = call i32 @h2o_http3_read_frame(%struct.TYPE_5__* %10, i32 0, i32 %12, i32** %13, i32* %14, i8** %15)
  store i32 %16, i32* %11, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* %11, align 4
  store i32 %19, i32* %5, align 4
  br label %55

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %53 [
    i32 128, label %23
    i32 129, label %23
    i32 130, label %23
  ]

23:                                               ; preds = %20, %20, %20
  %24 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %6, align 8
  %25 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = call i32 @quicly_recvstate_transfer_complete(i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %23
  %31 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %6, align 8
  %32 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = load i32, i32* @H2O_HTTP3_ERROR_FRAME_UNEXPECTED, align 4
  %35 = call i32 @quicly_request_stop(%struct.TYPE_6__* %33, i32 %34)
  br label %36

36:                                               ; preds = %30, %23
  %37 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %6, align 8
  %38 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = call i32 @quicly_sendstate_is_open(i32* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %36
  %44 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %6, align 8
  %45 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = load i32, i32* @H2O_HTTP3_ERROR_FRAME_UNEXPECTED, align 4
  %48 = call i32 @quicly_reset_stream(%struct.TYPE_6__* %46, i32 %47)
  br label %49

49:                                               ; preds = %43, %36
  %50 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %6, align 8
  %51 = load i32, i32* @H2O_HTTP3_SERVER_STREAM_STATE_CLOSE_WAIT, align 4
  %52 = call i32 @set_state(%struct.st_h2o_http3_server_stream_t* %50, i32 %51)
  store i32 0, i32* %5, align 4
  br label %55

53:                                               ; preds = %20
  br label %54

54:                                               ; preds = %53
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %54, %49, %18
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @h2o_http3_read_frame(%struct.TYPE_5__*, i32, i32, i32**, i32*, i8**) #1

declare dso_local i32 @quicly_recvstate_transfer_complete(i32*) #1

declare dso_local i32 @quicly_request_stop(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @quicly_sendstate_is_open(i32*) #1

declare dso_local i32 @quicly_reset_stream(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @set_state(%struct.st_h2o_http3_server_stream_t*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
