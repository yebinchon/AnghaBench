; ModuleID = '/home/carl/AnghaBench/h2o/lib/common/extr_http2client.c_expect_continuation_of_headers.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/common/extr_http2client.c_expect_continuation_of_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_h2o_http2client_conn_t = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_9__ = type { i64, i32, i64, i32, i32 }
%struct.st_h2o_http2client_stream_t = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

@H2O_HTTP2_SETTINGS_CLIENT_MAX_FRAME_SIZE = common dso_local global i32 0, align 4
@H2O_HTTP2_FRAME_TYPE_CONTINUATION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"expected CONTINUATION frame\00", align 1
@H2O_HTTP2_ERROR_PROTOCOL = common dso_local global i32 0, align 4
@STREAM_STATE_CLOSED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"unexpected stream id in CONTINUATION frame\00", align 1
@STREAM_STATE_BODY = common dso_local global i64 0, align 8
@H2O_HTTP2_FRAME_FLAG_END_HEADERS = common dso_local global i32 0, align 4
@H2O_HTTP2_FRAME_FLAG_END_STREAM = common dso_local global i32 0, align 4
@expect_default = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st_h2o_http2client_conn_t*, i32*, i64, i8**)* @expect_continuation_of_headers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @expect_continuation_of_headers(%struct.st_h2o_http2client_conn_t* %0, i32* %1, i64 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.st_h2o_http2client_conn_t*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.TYPE_9__, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.st_h2o_http2client_stream_t*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.st_h2o_http2client_conn_t* %0, %struct.st_h2o_http2client_conn_t** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8** %3, i8*** %9, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = load i64, i64* %8, align 8
  %17 = load i32, i32* @H2O_HTTP2_SETTINGS_CLIENT_MAX_FRAME_SIZE, align 4
  %18 = load i8**, i8*** %9, align 8
  %19 = call i32 @h2o_http2_decode_frame(%struct.TYPE_9__* %10, i32* %15, i64 %16, i32 %17, i8** %18)
  store i32 %19, i32* %11, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* %11, align 4
  store i32 %22, i32* %5, align 4
  br label %138

23:                                               ; preds = %4
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @H2O_HTTP2_FRAME_TYPE_CONTINUATION, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i8**, i8*** %9, align 8
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8** %29, align 8
  %30 = load i32, i32* @H2O_HTTP2_ERROR_PROTOCOL, align 4
  store i32 %30, i32* %5, align 4
  br label %138

31:                                               ; preds = %23
  %32 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.st_h2o_http2client_stream_t* @get_stream(%struct.st_h2o_http2client_conn_t* %32, i32 %34)
  store %struct.st_h2o_http2client_stream_t* %35, %struct.st_h2o_http2client_stream_t** %12, align 8
  %36 = icmp eq %struct.st_h2o_http2client_stream_t* %35, null
  br i1 %36, label %44, label %37

37:                                               ; preds = %31
  %38 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %12, align 8
  %39 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @STREAM_STATE_CLOSED, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %37, %31
  %45 = load i8**, i8*** %9, align 8
  store i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8** %45, align 8
  %46 = load i32, i32* @H2O_HTTP2_ERROR_PROTOCOL, align 4
  store i32 %46, i32* %5, align 4
  br label %138

47:                                               ; preds = %37
  %48 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %12, align 8
  %49 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @STREAM_STATE_BODY, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i32, i32* %11, align 4
  store i32 %55, i32* %5, align 4
  br label %138

56:                                               ; preds = %47
  %57 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %6, align 8
  %58 = getelementptr inbounds %struct.st_h2o_http2client_conn_t, %struct.st_h2o_http2client_conn_t* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @h2o_buffer_reserve(%struct.TYPE_10__** %59, i64 %61)
  %63 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %6, align 8
  %64 = getelementptr inbounds %struct.st_h2o_http2client_conn_t, %struct.st_h2o_http2client_conn_t* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %6, align 8
  %70 = getelementptr inbounds %struct.st_h2o_http2client_conn_t, %struct.st_h2o_http2client_conn_t* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %68, %74
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @memcpy(i64 %75, i32 %77, i64 %79)
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %6, align 8
  %84 = getelementptr inbounds %struct.st_h2o_http2client_conn_t, %struct.st_h2o_http2client_conn_t* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %88, %82
  store i64 %89, i64* %87, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @H2O_HTTP2_FRAME_FLAG_END_HEADERS, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %136

95:                                               ; preds = %56
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @H2O_HTTP2_FRAME_FLAG_END_STREAM, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  %101 = zext i1 %100 to i32
  store i32 %101, i32* %14, align 4
  %102 = load i32, i32* @expect_default, align 4
  %103 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %6, align 8
  %104 = getelementptr inbounds %struct.st_h2o_http2client_conn_t, %struct.st_h2o_http2client_conn_t* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 1
  store i32 %102, i32* %105, align 8
  %106 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %6, align 8
  %107 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %12, align 8
  %108 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %6, align 8
  %109 = getelementptr inbounds %struct.st_h2o_http2client_conn_t, %struct.st_h2o_http2client_conn_t* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = inttoptr i64 %113 to i32*
  %115 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %6, align 8
  %116 = getelementptr inbounds %struct.st_h2o_http2client_conn_t, %struct.st_h2o_http2client_conn_t* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i8**, i8*** %9, align 8
  %122 = load i32, i32* %14, align 4
  %123 = call i32 @on_head(%struct.st_h2o_http2client_conn_t* %106, %struct.st_h2o_http2client_stream_t* %107, i32* %114, i64 %120, i8** %121, i32 %122)
  store i32 %123, i32* %13, align 4
  %124 = load i32, i32* %13, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %95
  %127 = load i32, i32* %13, align 4
  store i32 %127, i32* %11, align 4
  br label %128

128:                                              ; preds = %126, %95
  %129 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %6, align 8
  %130 = getelementptr inbounds %struct.st_h2o_http2client_conn_t, %struct.st_h2o_http2client_conn_t* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = call i32 @h2o_buffer_dispose(%struct.TYPE_10__** %131)
  %133 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %6, align 8
  %134 = getelementptr inbounds %struct.st_h2o_http2client_conn_t, %struct.st_h2o_http2client_conn_t* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %135, align 8
  br label %136

136:                                              ; preds = %128, %56
  %137 = load i32, i32* %11, align 4
  store i32 %137, i32* %5, align 4
  br label %138

138:                                              ; preds = %136, %54, %44, %28, %21
  %139 = load i32, i32* %5, align 4
  ret i32 %139
}

declare dso_local i32 @h2o_http2_decode_frame(%struct.TYPE_9__*, i32*, i64, i32, i8**) #1

declare dso_local %struct.st_h2o_http2client_stream_t* @get_stream(%struct.st_h2o_http2client_conn_t*, i32) #1

declare dso_local i32 @h2o_buffer_reserve(%struct.TYPE_10__**, i64) #1

declare dso_local i32 @memcpy(i64, i32, i64) #1

declare dso_local i32 @on_head(%struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_stream_t*, i32*, i64, i8**, i32) #1

declare dso_local i32 @h2o_buffer_dispose(%struct.TYPE_10__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
