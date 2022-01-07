; ModuleID = '/home/carl/AnghaBench/h2o/lib/http2/extr_stream.c_commit_data_header.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/http2/extr_stream.c_commit_data_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__, i32, i32 }
%struct.TYPE_11__ = type { i64, i64, i32 }
%struct.TYPE_14__ = type { i64, i64 }

@H2O_SEND_STATE_FINAL = common dso_local global i64 0, align 8
@H2O_HTTP2_FRAME_TYPE_DATA = common dso_local global i32 0, align 4
@H2O_HTTP2_FRAME_FLAG_END_STREAM = common dso_local global i32 0, align 4
@H2O_HTTP2_FRAME_HEADER_SIZE = common dso_local global i64 0, align 8
@H2O_SEND_STATE_ERROR = common dso_local global i64 0, align 8
@H2O_HTTP2_ERROR_REFUSED_STREAM = common dso_local global i32 0, align 4
@H2O_HTTP2_ERROR_PROTOCOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, %struct.TYPE_12__*, %struct.TYPE_14__**, i64, i64)* @commit_data_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @commit_data_header(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1, %struct.TYPE_14__** %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_14__**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %7, align 8
  store %struct.TYPE_14__** %2, %struct.TYPE_14__*** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %11 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %8, align 8
  %12 = icmp ne %struct.TYPE_14__** %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i64, i64* %9, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %5
  %18 = load i64, i64* %10, align 8
  %19 = load i64, i64* @H2O_SEND_STATE_FINAL, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %75

21:                                               ; preds = %17, %5
  %22 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %8, align 8
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %8, align 8
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %25, %29
  %31 = inttoptr i64 %30 to i8*
  %32 = load i64, i64* %9, align 8
  %33 = load i32, i32* @H2O_HTTP2_FRAME_TYPE_DATA, align 4
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* @H2O_SEND_STATE_FINAL, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %21
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %37
  %44 = load i32, i32* @H2O_HTTP2_FRAME_FLAG_END_STREAM, align 4
  br label %46

45:                                               ; preds = %37, %21
  br label %46

46:                                               ; preds = %45, %43
  %47 = phi i32 [ %44, %43 ], [ 0, %45 ]
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @h2o_http2_encode_frame_header(i8* %31, i64 %32, i32 %33, i32 %47, i32 %50)
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i64, i64* %9, align 8
  %56 = call i32 @h2o_http2_window_consume_window(i32* %54, i64 %55)
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 2
  %59 = load i64, i64* %9, align 8
  %60 = call i32 @h2o_http2_window_consume_window(i32* %58, i64 %59)
  %61 = load i64, i64* %9, align 8
  %62 = load i64, i64* @H2O_HTTP2_FRAME_HEADER_SIZE, align 8
  %63 = add i64 %61, %62
  %64 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %8, align 8
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = add i64 %67, %63
  store i64 %68, i64* %66, align 8
  %69 = load i64, i64* %9, align 8
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = add i64 %73, %69
  store i64 %74, i64* %72, align 8
  br label %75

75:                                               ; preds = %46, %17
  %76 = load i64, i64* %10, align 8
  %77 = load i64, i64* @H2O_SEND_STATE_ERROR, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %97

79:                                               ; preds = %75
  %80 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %8, align 8
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %79
  %90 = load i32, i32* @H2O_HTTP2_ERROR_REFUSED_STREAM, align 4
  br label %93

91:                                               ; preds = %79
  %92 = load i32, i32* @H2O_HTTP2_ERROR_PROTOCOL, align 4
  br label %93

93:                                               ; preds = %91, %89
  %94 = phi i32 [ %90, %89 ], [ %92, %91 ]
  %95 = sub nsw i32 0, %94
  %96 = call i32 @h2o_http2_encode_rst_stream_frame(%struct.TYPE_14__** %80, i32 %83, i32 %95)
  br label %97

97:                                               ; preds = %93, %75
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @h2o_http2_encode_frame_header(i8*, i64, i32, i32, i32) #1

declare dso_local i32 @h2o_http2_window_consume_window(i32*, i64) #1

declare dso_local i32 @h2o_http2_encode_rst_stream_frame(%struct.TYPE_14__**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
