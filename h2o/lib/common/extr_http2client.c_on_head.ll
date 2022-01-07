; ModuleID = '/home/carl/AnghaBench/h2o/lib/common/extr_http2client.c_on_head.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/common/extr_http2client.c_on_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_h2o_http2client_conn_t = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.st_h2o_http2client_stream_t = type { i32, %struct.TYPE_11__, %struct.TYPE_12__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i64 (%struct.TYPE_12__*, i32, i32, i32, i32, i32)*, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32*, i32* (%struct.TYPE_12__*, i32*, i32, i32, i32, i32, i32, i32)* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32 }

@h2o_hpack_decode_header = common dso_local global i32 0, align 4
@H2O_HTTP2_ERROR_INVALID_HEADER_CHAR = common dso_local global i32 0, align 4
@H2O_HTTP2_ERROR_PROTOCOL = common dso_local global i32 0, align 4
@H2O_HTTP2_ERROR_INTERNAL = common dso_local global i32 0, align 4
@h2o_httpclient_error_is_eos = common dso_local global i32* null, align 8
@H2O_HTTP2_ERROR_CANCEL = common dso_local global i32 0, align 4
@STREAM_STATE_BODY = common dso_local global i32 0, align 4
@h2o_httpclient_error_http2_protocol_violation = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_stream_t*, i32*, i64, i8**, i32)* @on_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on_head(%struct.st_h2o_http2client_conn_t* %0, %struct.st_h2o_http2client_stream_t* %1, i32* %2, i64 %3, i8** %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.st_h2o_http2client_conn_t*, align 8
  %9 = alloca %struct.st_h2o_http2client_stream_t*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.st_h2o_http2client_conn_t* %0, %struct.st_h2o_http2client_conn_t** %8, align 8
  store %struct.st_h2o_http2client_stream_t* %1, %struct.st_h2o_http2client_stream_t** %9, align 8
  store i32* %2, i32** %10, align 8
  store i64 %3, i64* %11, align 8
  store i8** %4, i8*** %12, align 8
  store i32 %5, i32* %13, align 4
  %15 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %9, align 8
  %16 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @h2o_hpack_decode_header, align 4
  %20 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %8, align 8
  %21 = getelementptr inbounds %struct.st_h2o_http2client_conn_t, %struct.st_h2o_http2client_conn_t* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %9, align 8
  %24 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %9, align 8
  %27 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %29 = load i32*, i32** %10, align 8
  %30 = load i64, i64* %11, align 8
  %31 = load i8**, i8*** %12, align 8
  %32 = call i32 @h2o_hpack_parse_response(i32 %18, i32 %19, i32* %22, i32* %25, %struct.TYPE_13__* %28, i32* %29, i64 %30, i8** %31)
  store i32 %32, i32* %14, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %6
  %35 = load i32, i32* %14, align 4
  %36 = load i32, i32* @H2O_HTTP2_ERROR_INVALID_HEADER_CHAR, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* @H2O_HTTP2_ERROR_PROTOCOL, align 4
  store i32 %39, i32* %14, align 4
  br label %149

40:                                               ; preds = %34
  %41 = load i32, i32* %14, align 4
  store i32 %41, i32* %7, align 4
  br label %167

42:                                               ; preds = %6
  %43 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %9, align 8
  %44 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp sle i32 100, %46
  br i1 %47, label %48, label %95

48:                                               ; preds = %42
  %49 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %9, align 8
  %50 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp sle i32 %52, 199
  br i1 %53, label %54, label %95

54:                                               ; preds = %48
  %55 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %9, align 8
  %56 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %58, 101
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i32, i32* @H2O_HTTP2_ERROR_PROTOCOL, align 4
  store i32 %61, i32* %14, align 4
  br label %149

62:                                               ; preds = %54
  %63 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %9, align 8
  %64 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = load i64 (%struct.TYPE_12__*, i32, i32, i32, i32, i32)*, i64 (%struct.TYPE_12__*, i32, i32, i32, i32, i32)** %65, align 8
  %67 = icmp ne i64 (%struct.TYPE_12__*, i32, i32, i32, i32, i32)* %66, null
  br i1 %67, label %68, label %94

68:                                               ; preds = %62
  %69 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %9, align 8
  %70 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i64 (%struct.TYPE_12__*, i32, i32, i32, i32, i32)*, i64 (%struct.TYPE_12__*, i32, i32, i32, i32, i32)** %71, align 8
  %73 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %9, align 8
  %74 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %73, i32 0, i32 2
  %75 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %9, align 8
  %76 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @h2o_iovec_init(i32* null, i32 0)
  %80 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %9, align 8
  %81 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %9, align 8
  %86 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i64 %72(%struct.TYPE_12__* %74, i32 0, i32 %78, i32 %79, i32 %84, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %68
  %93 = load i32, i32* @H2O_HTTP2_ERROR_INTERNAL, align 4
  store i32 %93, i32* %14, align 4
  br label %158

94:                                               ; preds = %68, %62
  store i32 0, i32* %7, align 4
  br label %167

95:                                               ; preds = %48, %42
  %96 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %9, align 8
  %97 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 1
  %100 = load i32* (%struct.TYPE_12__*, i32*, i32, i32, i32, i32, i32, i32)*, i32* (%struct.TYPE_12__*, i32*, i32, i32, i32, i32, i32, i32)** %99, align 8
  %101 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %9, align 8
  %102 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %101, i32 0, i32 2
  %103 = load i32, i32* %13, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %95
  %106 = load i32*, i32** @h2o_httpclient_error_is_eos, align 8
  br label %108

107:                                              ; preds = %95
  br label %108

108:                                              ; preds = %107, %105
  %109 = phi i32* [ %106, %105 ], [ null, %107 ]
  %110 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %9, align 8
  %111 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @h2o_iovec_init(i32* null, i32 0)
  %115 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %9, align 8
  %116 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %9, align 8
  %121 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32* %100(%struct.TYPE_12__* %102, i32* %109, i32 512, i32 %113, i32 %114, i32 %119, i32 %124, i32 0)
  %126 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %9, align 8
  %127 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  store i32* %125, i32** %129, align 8
  %130 = load i32, i32* %13, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %108
  %133 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %9, align 8
  %134 = call i32 @close_response(%struct.st_h2o_http2client_stream_t* %133)
  store i32 0, i32* %7, align 4
  br label %167

135:                                              ; preds = %108
  %136 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %9, align 8
  %137 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = icmp eq i32* %140, null
  br i1 %141, label %142, label %144

142:                                              ; preds = %135
  %143 = load i32, i32* @H2O_HTTP2_ERROR_CANCEL, align 4
  store i32 %143, i32* %14, align 4
  br label %158

144:                                              ; preds = %135
  %145 = load i32, i32* @STREAM_STATE_BODY, align 4
  %146 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %9, align 8
  %147 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 0
  store i32 %145, i32* %148, align 4
  store i32 0, i32* %7, align 4
  br label %167

149:                                              ; preds = %60, %38
  %150 = load i32, i32* %14, align 4
  %151 = load i32, i32* @H2O_HTTP2_ERROR_PROTOCOL, align 4
  %152 = icmp eq i32 %150, %151
  %153 = zext i1 %152 to i32
  %154 = call i32 @assert(i32 %153)
  %155 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %9, align 8
  %156 = load i32, i32* @h2o_httpclient_error_http2_protocol_violation, align 4
  %157 = call i32 @call_callback_with_error(%struct.st_h2o_http2client_stream_t* %155, i32 %156)
  br label %158

158:                                              ; preds = %149, %142, %92
  %159 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %8, align 8
  %160 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %9, align 8
  %161 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* %14, align 4
  %164 = call i32 @stream_send_error(%struct.st_h2o_http2client_conn_t* %159, i32 %162, i32 %163)
  %165 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %9, align 8
  %166 = call i32 @close_stream(%struct.st_h2o_http2client_stream_t* %165)
  store i32 0, i32* %7, align 4
  br label %167

167:                                              ; preds = %158, %144, %132, %94, %40
  %168 = load i32, i32* %7, align 4
  ret i32 %168
}

declare dso_local i32 @h2o_hpack_parse_response(i32, i32, i32*, i32*, %struct.TYPE_13__*, i32*, i64, i8**) #1

declare dso_local i32 @h2o_iovec_init(i32*, i32) #1

declare dso_local i32 @close_response(%struct.st_h2o_http2client_stream_t*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @call_callback_with_error(%struct.st_h2o_http2client_stream_t*, i32) #1

declare dso_local i32 @stream_send_error(%struct.st_h2o_http2client_conn_t*, i32, i32) #1

declare dso_local i32 @close_stream(%struct.st_h2o_http2client_stream_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
