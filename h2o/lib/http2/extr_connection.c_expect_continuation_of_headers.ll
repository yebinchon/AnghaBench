; ModuleID = '/home/carl/AnghaBench/h2o/lib/http2/extr_connection.c_expect_continuation_of_headers.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/http2/extr_connection.c_expect_continuation_of_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_17__*, i32 }
%struct.TYPE_17__ = type { i64, i64 }
%struct.TYPE_19__ = type { i64, i64, i32, i32, i32 }
%struct.TYPE_18__ = type { i64, i32 }

@H2O_HTTP2_SETTINGS_HOST_MAX_FRAME_SIZE = common dso_local global i32 0, align 4
@H2O_HTTP2_FRAME_TYPE_CONTINUATION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"expected CONTINUATION frame\00", align 1
@H2O_HTTP2_ERROR_PROTOCOL = common dso_local global i32 0, align 4
@H2O_HTTP2_STREAM_STATE_RECV_HEADERS = common dso_local global i64 0, align 8
@H2O_HTTP2_STREAM_STATE_RECV_BODY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"unexpected stream id in CONTINUATION frame\00", align 1
@H2O_MAX_REQLEN = common dso_local global i64 0, align 8
@H2O_HTTP2_FRAME_FLAG_END_HEADERS = common dso_local global i32 0, align 4
@expect_default = common dso_local global i32 0, align 4
@H2O_HTTP2_ERROR_REFUSED_STREAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, i32*, i64, i8**)* @expect_continuation_of_headers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @expect_continuation_of_headers(%struct.TYPE_20__* %0, i32* %1, i64 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.TYPE_19__, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8** %3, i8*** %9, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load i32, i32* @H2O_HTTP2_SETTINGS_HOST_MAX_FRAME_SIZE, align 4
  %17 = load i8**, i8*** %9, align 8
  %18 = call i32 @h2o_http2_decode_frame(%struct.TYPE_19__* %10, i32* %14, i64 %15, i32 %16, i8** %17)
  store i32 %18, i32* %11, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* %11, align 4
  store i32 %21, i32* %5, align 4
  br label %162

22:                                               ; preds = %4
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @H2O_HTTP2_FRAME_TYPE_CONTINUATION, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i8**, i8*** %9, align 8
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8** %28, align 8
  %29 = load i32, i32* @H2O_HTTP2_ERROR_PROTOCOL, align 4
  store i32 %29, i32* %5, align 4
  br label %162

30:                                               ; preds = %22
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = call %struct.TYPE_18__* @h2o_http2_conn_get_stream(%struct.TYPE_20__* %31, i32 %33)
  store %struct.TYPE_18__* %34, %struct.TYPE_18__** %12, align 8
  %35 = icmp eq %struct.TYPE_18__* %34, null
  br i1 %35, label %48, label %36

36:                                               ; preds = %30
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @H2O_HTTP2_STREAM_STATE_RECV_HEADERS, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %51, label %42

42:                                               ; preds = %36
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @H2O_HTTP2_STREAM_STATE_RECV_BODY, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %51, label %48

48:                                               ; preds = %42, %30
  %49 = load i8**, i8*** %9, align 8
  store i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8** %49, align 8
  %50 = load i32, i32* @H2O_HTTP2_ERROR_PROTOCOL, align 4
  store i32 %50, i32* %5, align 4
  br label %162

51:                                               ; preds = %42, %36
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %56, %58
  %60 = load i64, i64* @H2O_MAX_REQLEN, align 8
  %61 = icmp sle i64 %59, %60
  br i1 %61, label %62, label %150

62:                                               ; preds = %51
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @h2o_buffer_reserve(%struct.TYPE_17__** %64, i64 %66)
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %72, %77
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @memcpy(i64 %78, i32 %80, i64 %82)
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %90, %85
  store i64 %91, i64* %89, align 8
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @H2O_HTTP2_FRAME_FLAG_END_HEADERS, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %149

97:                                               ; preds = %62
  %98 = load i32, i32* @expect_default, align 4
  %99 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 8
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @H2O_HTTP2_STREAM_STATE_RECV_HEADERS, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %122

106:                                              ; preds = %97
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = inttoptr i64 %113 to i32*
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i8**, i8*** %9, align 8
  %121 = call i32 @handle_incoming_request(%struct.TYPE_20__* %107, %struct.TYPE_18__* %108, i32* %114, i64 %119, i8** %120)
  store i32 %121, i32* %13, align 4
  br label %138

122:                                              ; preds = %97
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %125 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = inttoptr i64 %129 to i32*
  %131 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i8**, i8*** %9, align 8
  %137 = call i32 @handle_trailing_headers(%struct.TYPE_20__* %123, %struct.TYPE_18__* %124, i32* %130, i64 %135, i8** %136)
  store i32 %137, i32* %13, align 4
  br label %138

138:                                              ; preds = %122, %106
  %139 = load i32, i32* %13, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %138
  %142 = load i32, i32* %13, align 4
  store i32 %142, i32* %11, align 4
  br label %143

143:                                              ; preds = %141, %138
  %144 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %144, i32 0, i32 0
  %146 = call i32 @h2o_buffer_dispose(%struct.TYPE_17__** %145)
  %147 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %147, i32 0, i32 0
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %148, align 8
  br label %149

149:                                              ; preds = %143, %62
  br label %160

150:                                              ; preds = %51
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @H2O_HTTP2_ERROR_REFUSED_STREAM, align 4
  %156 = call i32 @stream_send_error(%struct.TYPE_20__* %151, i32 %154, i32 %155)
  %157 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %158 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %159 = call i32 @h2o_http2_stream_reset(%struct.TYPE_20__* %157, %struct.TYPE_18__* %158)
  br label %160

160:                                              ; preds = %150, %149
  %161 = load i32, i32* %11, align 4
  store i32 %161, i32* %5, align 4
  br label %162

162:                                              ; preds = %160, %48, %27, %20
  %163 = load i32, i32* %5, align 4
  ret i32 %163
}

declare dso_local i32 @h2o_http2_decode_frame(%struct.TYPE_19__*, i32*, i64, i32, i8**) #1

declare dso_local %struct.TYPE_18__* @h2o_http2_conn_get_stream(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @h2o_buffer_reserve(%struct.TYPE_17__**, i64) #1

declare dso_local i32 @memcpy(i64, i32, i64) #1

declare dso_local i32 @handle_incoming_request(%struct.TYPE_20__*, %struct.TYPE_18__*, i32*, i64, i8**) #1

declare dso_local i32 @handle_trailing_headers(%struct.TYPE_20__*, %struct.TYPE_18__*, i32*, i64, i8**) #1

declare dso_local i32 @h2o_buffer_dispose(%struct.TYPE_17__**) #1

declare dso_local i32 @stream_send_error(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @h2o_http2_stream_reset(%struct.TYPE_20__*, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
