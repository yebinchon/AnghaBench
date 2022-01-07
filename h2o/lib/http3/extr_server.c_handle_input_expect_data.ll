; ModuleID = '/home/carl/AnghaBench/h2o/lib/http3/extr_server.c_handle_input_expect_data.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/http3/extr_server.c_handle_input_expect_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_h2o_http3_server_stream_t = type { %struct.TYPE_8__, %struct.TYPE_10__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_9__ = type { i32, i64 }

@H2O_HTTP3_STREAM_TYPE_REQUEST = common dso_local global i32 0, align 4
@H2O_HTTP3_ERROR_FRAME_UNEXPECTED = common dso_local global i32 0, align 4
@handle_input_post_trailers = common dso_local global i32 0, align 4
@SIZE_MAX = common dso_local global i64 0, align 8
@H2O_HTTP3_ERROR_EARLY_RESPONSE = common dso_local global i32 0, align 4
@H2O_HTTP3_ERROR_GENERAL_PROTOCOL = common dso_local global i32 0, align 4
@H2O_HTTP3_SERVER_STREAM_STATE_CLOSE_WAIT = common dso_local global i32 0, align 4
@handle_input_expect_data_payload = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @handle_input_expect_data(%struct.st_h2o_http3_server_stream_t* %0, i32** %1, i32* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.st_h2o_http3_server_stream_t*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.TYPE_9__, align 8
  %11 = alloca i32, align 4
  store %struct.st_h2o_http3_server_stream_t* %0, %struct.st_h2o_http3_server_stream_t** %6, align 8
  store i32** %1, i32*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8** %3, i8*** %9, align 8
  %12 = load i32, i32* @H2O_HTTP3_STREAM_TYPE_REQUEST, align 4
  %13 = load i32**, i32*** %7, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = load i8**, i8*** %9, align 8
  %16 = call i32 @h2o_http3_read_frame(%struct.TYPE_9__* %10, i32 0, i32 %12, i32** %13, i32* %14, i8** %15)
  store i32 %16, i32* %11, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* %11, align 4
  store i32 %19, i32* %5, align 4
  br label %97

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %81 [
    i32 128, label %23
    i32 129, label %25
    i32 130, label %30
  ]

23:                                               ; preds = %20
  %24 = load i32, i32* @H2O_HTTP3_ERROR_FRAME_UNEXPECTED, align 4
  store i32 %24, i32* %5, align 4
  br label %97

25:                                               ; preds = %20
  %26 = load i32, i32* @handle_input_post_trailers, align 4
  %27 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %6, align 8
  %28 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  store i32 %26, i32* %29, align 8
  store i32 0, i32* %5, align 4
  br label %97

30:                                               ; preds = %20
  %31 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %6, align 8
  %32 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @SIZE_MAX, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %80

37:                                               ; preds = %30
  %38 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %6, align 8
  %39 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %6, align 8
  %43 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = sub nsw i64 %41, %45
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp slt i64 %46, %48
  br i1 %49, label %50, label %80

50:                                               ; preds = %37
  %51 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %6, align 8
  %52 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %51, i32 0, i32 1
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  %55 = call i32 @quicly_recvstate_transfer_complete(i32* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %50
  %58 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %6, align 8
  %59 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %58, i32 0, i32 1
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = load i32, i32* @H2O_HTTP3_ERROR_EARLY_RESPONSE, align 4
  %62 = call i32 @quicly_request_stop(%struct.TYPE_10__* %60, i32 %61)
  br label %63

63:                                               ; preds = %57, %50
  %64 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %6, align 8
  %65 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %64, i32 0, i32 1
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = call i32 @quicly_sendstate_is_open(i32* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %63
  %71 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %6, align 8
  %72 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %71, i32 0, i32 1
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %72, align 8
  %74 = load i32, i32* @H2O_HTTP3_ERROR_GENERAL_PROTOCOL, align 4
  %75 = call i32 @quicly_reset_stream(%struct.TYPE_10__* %73, i32 %74)
  br label %76

76:                                               ; preds = %70, %63
  %77 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %6, align 8
  %78 = load i32, i32* @H2O_HTTP3_SERVER_STREAM_STATE_CLOSE_WAIT, align 4
  %79 = call i32 @set_state(%struct.st_h2o_http3_server_stream_t* %77, i32 %78)
  store i32 0, i32* %5, align 4
  br label %97

80:                                               ; preds = %37, %30
  br label %82

81:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  br label %97

82:                                               ; preds = %80
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %82
  %87 = load i32, i32* @handle_input_expect_data_payload, align 4
  %88 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %6, align 8
  %89 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  store i32 %87, i32* %90, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %6, align 8
  %94 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  store i64 %92, i64* %95, align 8
  br label %96

96:                                               ; preds = %86, %82
  store i32 0, i32* %5, align 4
  br label %97

97:                                               ; preds = %96, %81, %76, %25, %23, %18
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local i32 @h2o_http3_read_frame(%struct.TYPE_9__*, i32, i32, i32**, i32*, i8**) #1

declare dso_local i32 @quicly_recvstate_transfer_complete(i32*) #1

declare dso_local i32 @quicly_request_stop(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @quicly_sendstate_is_open(i32*) #1

declare dso_local i32 @quicly_reset_stream(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @set_state(%struct.st_h2o_http3_server_stream_t*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
