; ModuleID = '/home/carl/AnghaBench/h2o/lib/common/extr_http2client.c_stream_emit_pending_data.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/common/extr_http2client.c_stream_emit_pending_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_h2o_http2client_stream_t = type { %struct.TYPE_11__, %struct.TYPE_10__*, i32, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_8__ = type { i64, i32* }
%struct.TYPE_12__ = type { i8* }

@H2O_HTTP2_FRAME_HEADER_SIZE = common dso_local global i32 0, align 4
@H2O_HTTP2_FRAME_TYPE_DATA = common dso_local global i32 0, align 4
@H2O_HTTP2_FRAME_FLAG_END_STREAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.st_h2o_http2client_stream_t*)* @stream_emit_pending_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @stream_emit_pending_data(%struct.st_h2o_http2client_stream_t* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.st_h2o_http2client_stream_t*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_12__, align 8
  %8 = alloca i32, align 4
  store %struct.st_h2o_http2client_stream_t* %0, %struct.st_h2o_http2client_stream_t** %3, align 8
  %9 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %3, align 8
  %10 = call i64 @calc_max_payload_size(%struct.st_h2o_http2client_stream_t* %9)
  store i64 %10, i64* %4, align 8
  %11 = load i64, i64* %4, align 8
  %12 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %3, align 8
  %13 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i64 @sz_min(i64 %11, i64 %17)
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* %5, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %124

22:                                               ; preds = %1
  %23 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %3, align 8
  %24 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %23, i32 0, i32 1
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = load i32, i32* @H2O_HTTP2_FRAME_HEADER_SIZE, align 4
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* %5, align 8
  %31 = add i64 %29, %30
  %32 = trunc i64 %31 to i32
  %33 = call i8* @h2o_buffer_reserve(%struct.TYPE_13__** %27, i32 %32)
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  store i8* %33, i8** %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %6, align 8
  %37 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %3, align 8
  %38 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %48, label %42

42:                                               ; preds = %22
  %43 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %3, align 8
  %44 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %42, %22
  %49 = load i64, i64* %5, align 8
  %50 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %3, align 8
  %51 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %49, %55
  br label %57

57:                                               ; preds = %48, %42
  %58 = phi i1 [ false, %42 ], [ %56, %48 ]
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %8, align 4
  %60 = load i8*, i8** %6, align 8
  %61 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %3, align 8
  %62 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* @H2O_HTTP2_FRAME_TYPE_DATA, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %57
  %71 = load i32, i32* @H2O_HTTP2_FRAME_FLAG_END_STREAM, align 4
  br label %73

72:                                               ; preds = %57
  br label %73

73:                                               ; preds = %72, %70
  %74 = phi i32 [ %71, %70 ], [ 0, %72 ]
  %75 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %3, align 8
  %76 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @h2o_http2_encode_frame_header(i8* %60, i64 %66, i32 %67, i32 %74, i32 %77)
  %79 = load i8*, i8** %6, align 8
  %80 = load i32, i32* @H2O_HTTP2_FRAME_HEADER_SIZE, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  %83 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %3, align 8
  %84 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load i64, i64* %5, align 8
  %90 = call i32 @h2o_memcpy(i8* %82, i32 %88, i64 %89)
  %91 = load i32, i32* @H2O_HTTP2_FRAME_HEADER_SIZE, align 4
  %92 = sext i32 %91 to i64
  %93 = load i64, i64* %5, align 8
  %94 = add i64 %92, %93
  %95 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %3, align 8
  %96 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %95, i32 0, i32 1
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = sext i32 %102 to i64
  %104 = add i64 %103, %94
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %101, align 4
  %106 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %3, align 8
  %107 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 1
  %109 = load i64, i64* %5, align 8
  %110 = call i32 @h2o_buffer_consume(%struct.TYPE_14__** %108, i64 %109)
  %111 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %3, align 8
  %112 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %111, i32 0, i32 1
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = load i64, i64* %5, align 8
  %117 = call i32 @h2o_http2_window_consume_window(i32* %115, i64 %116)
  %118 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %3, align 8
  %119 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 0
  %121 = load i64, i64* %5, align 8
  %122 = call i32 @h2o_http2_window_consume_window(i32* %120, i64 %121)
  %123 = load i64, i64* %5, align 8
  store i64 %123, i64* %2, align 8
  br label %124

124:                                              ; preds = %73, %21
  %125 = load i64, i64* %2, align 8
  ret i64 %125
}

declare dso_local i64 @calc_max_payload_size(%struct.st_h2o_http2client_stream_t*) #1

declare dso_local i64 @sz_min(i64, i64) #1

declare dso_local i8* @h2o_buffer_reserve(%struct.TYPE_13__**, i32) #1

declare dso_local i32 @h2o_http2_encode_frame_header(i8*, i64, i32, i32, i32) #1

declare dso_local i32 @h2o_memcpy(i8*, i32, i64) #1

declare dso_local i32 @h2o_buffer_consume(%struct.TYPE_14__**, i64) #1

declare dso_local i32 @h2o_http2_window_consume_window(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
