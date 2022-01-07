; ModuleID = '/home/carl/AnghaBench/h2o/lib/http2/extr_connection.c_handle_headers_frame.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/http2/extr_connection.c_handle_headers_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_36__ = type { %struct.TYPE_30__*, i32, %struct.TYPE_29__ }
%struct.TYPE_30__ = type { i32, i32 }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_35__ = type { i32, i32 }
%struct.TYPE_34__ = type { i32, i32, %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i64 }
%struct.TYPE_33__ = type { i64, %struct.TYPE_30__*, %struct.TYPE_32__, %struct.TYPE_28__, i32 }
%struct.TYPE_32__ = type { %struct.TYPE_31__ }
%struct.TYPE_31__ = type { %struct.TYPE_32__*, i32 }

@.str = private unnamed_addr constant [35 x i8] c"invalid stream id in HEADERS frame\00", align 1
@H2O_HTTP2_ERROR_PROTOCOL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"closed stream id in HEADERS frame\00", align 1
@H2O_HTTP2_ERROR_STREAM_CLOSED = common dso_local global i32 0, align 4
@H2O_HTTP2_STREAM_STATE_RECV_BODY = common dso_local global i64 0, align 8
@H2O_HTTP2_FRAME_FLAG_END_STREAM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"trailing HEADERS frame MUST have END_STREAM flag set\00", align 1
@H2O_HTTP2_FRAME_FLAG_END_HEADERS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"stream cannot depend on itself\00", align 1
@H2O_HTTP2_FRAME_FLAG_PRIORITY = common dso_local global i32 0, align 4
@write_req_first = common dso_local global i32 0, align 4
@h2o_socket_buffer_prototype = common dso_local global i32 0, align 4
@expect_continuation_of_headers = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_36__*, %struct.TYPE_35__*, i8**)* @handle_headers_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_headers_frame(%struct.TYPE_36__* %0, %struct.TYPE_35__* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_36__*, align 8
  %6 = alloca %struct.TYPE_35__*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.TYPE_34__, align 8
  %9 = alloca %struct.TYPE_33__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_36__* %0, %struct.TYPE_36__** %5, align 8
  store %struct.TYPE_35__* %1, %struct.TYPE_35__** %6, align 8
  store i8** %2, i8*** %7, align 8
  %11 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %12 = load i8**, i8*** %7, align 8
  %13 = call i32 @h2o_http2_decode_headers_payload(%struct.TYPE_34__* %8, %struct.TYPE_35__* %11, i8** %12)
  store i32 %13, i32* %10, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %10, align 4
  store i32 %16, i32* %4, align 4
  br label %210

17:                                               ; preds = %3
  %18 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8** %24, align 8
  %25 = load i32, i32* @H2O_HTTP2_ERROR_PROTOCOL, align 4
  store i32 %25, i32* %4, align 4
  br label %210

26:                                               ; preds = %17
  %27 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp sle i32 %29, %33
  br i1 %34, label %35, label %92

35:                                               ; preds = %26
  %36 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %37 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.TYPE_33__* @h2o_http2_conn_get_stream(%struct.TYPE_36__* %36, i32 %39)
  store %struct.TYPE_33__* %40, %struct.TYPE_33__** %9, align 8
  %41 = icmp eq %struct.TYPE_33__* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8** %43, align 8
  %44 = load i32, i32* @H2O_HTTP2_ERROR_STREAM_CLOSED, align 4
  store i32 %44, i32* %4, align 4
  br label %210

45:                                               ; preds = %35
  %46 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @H2O_HTTP2_STREAM_STATE_RECV_BODY, align 8
  %50 = icmp slt i64 %48, %49
  br i1 %50, label %62, label %51

51:                                               ; preds = %45
  %52 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @H2O_HTTP2_STREAM_STATE_RECV_BODY, align 8
  %56 = icmp sgt i64 %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %51
  %58 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %57, %45
  %63 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8** %63, align 8
  %64 = load i32, i32* @H2O_HTTP2_ERROR_PROTOCOL, align 4
  store i32 %64, i32* %4, align 4
  br label %210

65:                                               ; preds = %57, %51
  %66 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @H2O_HTTP2_FRAME_FLAG_END_STREAM, align 4
  %70 = and i32 %68, %69
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %65
  %73 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i8** %73, align 8
  %74 = load i32, i32* @H2O_HTTP2_ERROR_PROTOCOL, align 4
  store i32 %74, i32* %4, align 4
  br label %210

75:                                               ; preds = %65
  %76 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @H2O_HTTP2_FRAME_FLAG_END_HEADERS, align 4
  %80 = and i32 %78, %79
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  br label %182

83:                                               ; preds = %75
  %84 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %85 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %8, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %8, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i8**, i8*** %7, align 8
  %91 = call i32 @handle_trailing_headers(%struct.TYPE_36__* %84, %struct.TYPE_33__* %85, i32 %87, i32 %89, i8** %90)
  store i32 %91, i32* %4, align 4
  br label %210

92:                                               ; preds = %26
  %93 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %8, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp eq i64 %96, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %92
  %102 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8** %102, align 8
  %103 = load i32, i32* @H2O_HTTP2_ERROR_PROTOCOL, align 4
  store i32 %103, i32* %4, align 4
  br label %210

104:                                              ; preds = %92
  %105 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %106 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call %struct.TYPE_33__* @h2o_http2_conn_get_stream(%struct.TYPE_36__* %105, i32 %108)
  store %struct.TYPE_33__* %109, %struct.TYPE_33__** %9, align 8
  %110 = icmp ne %struct.TYPE_33__* %109, null
  br i1 %110, label %111, label %129

111:                                              ; preds = %104
  %112 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @H2O_HTTP2_FRAME_FLAG_PRIORITY, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %128

118:                                              ; preds = %111
  %119 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %120 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %8, i32 0, i32 2
  %122 = call i32 @set_priority(%struct.TYPE_36__* %119, %struct.TYPE_33__* %120, %struct.TYPE_28__* %121, i32 1)
  %123 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %8, i32 0, i32 2
  %126 = bitcast %struct.TYPE_28__* %124 to i8*
  %127 = bitcast %struct.TYPE_28__* %125 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %126, i8* align 8 %127, i64 8, i1 false)
  br label %128

128:                                              ; preds = %118, %111
  br label %140

129:                                              ; preds = %104
  %130 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %131 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %8, i32 0, i32 2
  %135 = call %struct.TYPE_33__* @h2o_http2_stream_open(%struct.TYPE_36__* %130, i32 %133, i32* null, %struct.TYPE_28__* %134)
  store %struct.TYPE_33__* %135, %struct.TYPE_33__** %9, align 8
  %136 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %137 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %8, i32 0, i32 2
  %139 = call i32 @set_priority(%struct.TYPE_36__* %136, %struct.TYPE_33__* %137, %struct.TYPE_28__* %138, i32 0)
  br label %140

140:                                              ; preds = %129, %128
  %141 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %142 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %143 = call i32 @h2o_http2_stream_prepare_for_request(%struct.TYPE_36__* %141, %struct.TYPE_33__* %142)
  %144 = load i32, i32* @write_req_first, align 4
  %145 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %147, i32 0, i32 1
  store i32 %144, i32* %148, align 8
  %149 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %150 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %149, i32 0, i32 2
  %151 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %152 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %153, i32 0, i32 0
  store %struct.TYPE_32__* %150, %struct.TYPE_32__** %154, align 8
  %155 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @H2O_HTTP2_FRAME_FLAG_END_STREAM, align 4
  %159 = and i32 %157, %158
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %140
  %162 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %162, i32 0, i32 1
  %164 = call i32 @h2o_buffer_init(%struct.TYPE_30__** %163, i32* @h2o_socket_buffer_prototype)
  br label %165

165:                                              ; preds = %161, %140
  %166 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @H2O_HTTP2_FRAME_FLAG_END_HEADERS, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %181

172:                                              ; preds = %165
  %173 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %174 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %175 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %8, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %8, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load i8**, i8*** %7, align 8
  %180 = call i32 @handle_incoming_request(%struct.TYPE_36__* %173, %struct.TYPE_33__* %174, i32 %176, i32 %178, i8** %179)
  store i32 %180, i32* %4, align 4
  br label %210

181:                                              ; preds = %165
  br label %182

182:                                              ; preds = %181, %82
  %183 = load i32, i32* @expect_continuation_of_headers, align 4
  %184 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %184, i32 0, i32 1
  store i32 %183, i32* %185, align 8
  %186 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %186, i32 0, i32 0
  %188 = call i32 @h2o_buffer_init(%struct.TYPE_30__** %187, i32* @h2o_socket_buffer_prototype)
  %189 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %8, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @h2o_buffer_reserve(%struct.TYPE_30__** %190, i32 %192)
  %194 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %194, i32 0, i32 0
  %196 = load %struct.TYPE_30__*, %struct.TYPE_30__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %8, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %8, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = call i32 @memcpy(i32 %198, i32 %200, i32 %202)
  %204 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %8, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %206, i32 0, i32 0
  %208 = load %struct.TYPE_30__*, %struct.TYPE_30__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %208, i32 0, i32 0
  store i32 %205, i32* %209, align 4
  store i32 0, i32* %4, align 4
  br label %210

210:                                              ; preds = %182, %172, %101, %83, %72, %62, %42, %23, %15
  %211 = load i32, i32* %4, align 4
  ret i32 %211
}

declare dso_local i32 @h2o_http2_decode_headers_payload(%struct.TYPE_34__*, %struct.TYPE_35__*, i8**) #1

declare dso_local %struct.TYPE_33__* @h2o_http2_conn_get_stream(%struct.TYPE_36__*, i32) #1

declare dso_local i32 @handle_trailing_headers(%struct.TYPE_36__*, %struct.TYPE_33__*, i32, i32, i8**) #1

declare dso_local i32 @set_priority(%struct.TYPE_36__*, %struct.TYPE_33__*, %struct.TYPE_28__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.TYPE_33__* @h2o_http2_stream_open(%struct.TYPE_36__*, i32, i32*, %struct.TYPE_28__*) #1

declare dso_local i32 @h2o_http2_stream_prepare_for_request(%struct.TYPE_36__*, %struct.TYPE_33__*) #1

declare dso_local i32 @h2o_buffer_init(%struct.TYPE_30__**, i32*) #1

declare dso_local i32 @handle_incoming_request(%struct.TYPE_36__*, %struct.TYPE_33__*, i32, i32, i8**) #1

declare dso_local i32 @h2o_buffer_reserve(%struct.TYPE_30__**, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
