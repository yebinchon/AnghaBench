; ModuleID = '/home/carl/AnghaBench/h2o/lib/common/extr_http2client.c_handle_headers_frame.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/common/extr_http2client.c_handle_headers_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_h2o_http2client_conn_t = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_12__*, i8* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }
%struct.st_h2o_http2client_stream_t = type { %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"invalid stream id in HEADERS frame\00", align 1
@H2O_HTTP2_ERROR_PROTOCOL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"stream cannot depend on itself\00", align 1
@H2O_HTTP2_ERROR_STREAM_CLOSED = common dso_local global i32 0, align 4
@STREAM_STATE_BODY = common dso_local global i64 0, align 8
@H2O_HTTP2_FRAME_FLAG_END_STREAM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"trailing HEADERS frame MUST have END_STREAM flag set\00", align 1
@H2O_HTTP2_FRAME_FLAG_END_HEADERS = common dso_local global i32 0, align 4
@expect_continuation_of_headers = common dso_local global i8* null, align 8
@h2o_socket_buffer_prototype = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st_h2o_http2client_conn_t*, %struct.TYPE_18__*, i8**)* @handle_headers_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_headers_frame(%struct.st_h2o_http2client_conn_t* %0, %struct.TYPE_18__* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.st_h2o_http2client_conn_t*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.TYPE_17__, align 8
  %9 = alloca %struct.st_h2o_http2client_stream_t*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.st_h2o_http2client_conn_t* %0, %struct.st_h2o_http2client_conn_t** %5, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %6, align 8
  store i8** %2, i8*** %7, align 8
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %13 = load i8**, i8*** %7, align 8
  %14 = call i32 @h2o_http2_decode_headers_payload(%struct.TYPE_17__* %8, %struct.TYPE_18__* %12, i8** %13)
  store i32 %14, i32* %10, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %10, align 4
  store i32 %17, i32* %4, align 4
  br label %141

18:                                               ; preds = %3
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8** %25, align 8
  %26 = load i32, i32* @H2O_HTTP2_ERROR_PROTOCOL, align 4
  store i32 %26, i32* %4, align 4
  br label %141

27:                                               ; preds = %18
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %31, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8** %37, align 8
  %38 = load i32, i32* @H2O_HTTP2_ERROR_PROTOCOL, align 4
  store i32 %38, i32* %4, align 4
  br label %141

39:                                               ; preds = %27
  %40 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %5, align 8
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = call %struct.st_h2o_http2client_stream_t* @get_stream(%struct.st_h2o_http2client_conn_t* %40, i64 %44)
  store %struct.st_h2o_http2client_stream_t* %45, %struct.st_h2o_http2client_stream_t** %9, align 8
  %46 = icmp eq %struct.st_h2o_http2client_stream_t* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8** %48, align 8
  %49 = load i32, i32* @H2O_HTTP2_ERROR_STREAM_CLOSED, align 4
  store i32 %49, i32* %4, align 4
  br label %141

50:                                               ; preds = %39
  %51 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %9, align 8
  %52 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = call i32 @h2o_timer_unlink(i32* %53)
  %55 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %9, align 8
  %56 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @STREAM_STATE_BODY, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %84

61:                                               ; preds = %50
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @H2O_HTTP2_FRAME_FLAG_END_STREAM, align 4
  %66 = and i32 %64, %65
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %61
  %69 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i8** %69, align 8
  %70 = load i32, i32* @H2O_HTTP2_ERROR_PROTOCOL, align 4
  store i32 %70, i32* %4, align 4
  br label %141

71:                                               ; preds = %61
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @H2O_HTTP2_FRAME_FLAG_END_HEADERS, align 4
  %76 = and i32 %74, %75
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %71
  %79 = load i8*, i8** @expect_continuation_of_headers, align 8
  %80 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %5, align 8
  %81 = getelementptr inbounds %struct.st_h2o_http2client_conn_t, %struct.st_h2o_http2client_conn_t* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 1
  store i8* %79, i8** %82, align 8
  br label %83

83:                                               ; preds = %78, %71
  store i32 0, i32* %4, align 4
  br label %141

84:                                               ; preds = %50
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @H2O_HTTP2_FRAME_FLAG_END_HEADERS, align 4
  %89 = and i32 %87, %88
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %124

91:                                               ; preds = %84
  %92 = load i8*, i8** @expect_continuation_of_headers, align 8
  %93 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %5, align 8
  %94 = getelementptr inbounds %struct.st_h2o_http2client_conn_t, %struct.st_h2o_http2client_conn_t* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 1
  store i8* %92, i8** %95, align 8
  %96 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %5, align 8
  %97 = getelementptr inbounds %struct.st_h2o_http2client_conn_t, %struct.st_h2o_http2client_conn_t* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 0
  %99 = call i32 @h2o_buffer_init(%struct.TYPE_12__** %98, i32* @h2o_socket_buffer_prototype)
  %100 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %5, align 8
  %101 = getelementptr inbounds %struct.st_h2o_http2client_conn_t, %struct.st_h2o_http2client_conn_t* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @h2o_buffer_reserve(%struct.TYPE_12__** %102, i32 %104)
  %106 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %5, align 8
  %107 = getelementptr inbounds %struct.st_h2o_http2client_conn_t, %struct.st_h2o_http2client_conn_t* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @memcpy(i32 %111, i32 %113, i32 %115)
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %5, align 8
  %120 = getelementptr inbounds %struct.st_h2o_http2client_conn_t, %struct.st_h2o_http2client_conn_t* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 0
  store i32 %118, i32* %123, align 4
  store i32 0, i32* %4, align 4
  br label %141

124:                                              ; preds = %84
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @H2O_HTTP2_FRAME_FLAG_END_STREAM, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  %131 = zext i1 %130 to i32
  store i32 %131, i32* %11, align 4
  %132 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %5, align 8
  %133 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i8**, i8*** %7, align 8
  %139 = load i32, i32* %11, align 4
  %140 = call i32 @on_head(%struct.st_h2o_http2client_conn_t* %132, %struct.st_h2o_http2client_stream_t* %133, i32 %135, i32 %137, i8** %138, i32 %139)
  store i32 %140, i32* %4, align 4
  br label %141

141:                                              ; preds = %124, %91, %83, %68, %47, %36, %24, %16
  %142 = load i32, i32* %4, align 4
  ret i32 %142
}

declare dso_local i32 @h2o_http2_decode_headers_payload(%struct.TYPE_17__*, %struct.TYPE_18__*, i8**) #1

declare dso_local %struct.st_h2o_http2client_stream_t* @get_stream(%struct.st_h2o_http2client_conn_t*, i64) #1

declare dso_local i32 @h2o_timer_unlink(i32*) #1

declare dso_local i32 @h2o_buffer_init(%struct.TYPE_12__**, i32*) #1

declare dso_local i32 @h2o_buffer_reserve(%struct.TYPE_12__**, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @on_head(%struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_stream_t*, i32, i32, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
