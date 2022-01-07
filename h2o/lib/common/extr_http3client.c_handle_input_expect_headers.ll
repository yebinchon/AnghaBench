; ModuleID = '/home/carl/AnghaBench/h2o/lib/common/extr_http3client.c_handle_input_expect_headers.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/common/extr_http3client.c_handle_input_expect_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_h2o_http3client_req_t = type { i32*, %struct.TYPE_19__, %struct.TYPE_15__*, %struct.TYPE_14__* }
%struct.TYPE_19__ = type { i64 (%struct.TYPE_19__*, i32, i32, i32, i32, i32)*, %struct.TYPE_16__, i32 }
%struct.TYPE_16__ = type { i32* (%struct.TYPE_19__*, i32*, i32, i32, i32, i32, i32, i32)*, i32* }
%struct.TYPE_15__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.TYPE_18__ = type { i32, i32, i32* }

@H2O_HPACK_ENCODE_INT_MAX_LENGTH = common dso_local global i32 0, align 4
@H2O_HTTP3_STREAM_TYPE_REQUEST = common dso_local global i32 0, align 4
@H2O_HTTP3_ERROR_INCOMPLETE = common dso_local global i32 0, align 4
@H2O_HTTP3_ERROR_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"unexpected close\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"reset by peer\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"response header too large\00", align 1
@H2O_HTTP3_ERROR_EXCESSIVE_LOAD = common dso_local global i32 0, align 4
@H2O_HTTP3_FRAME_TYPE_HEADERS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"received DATA frame before HEADERS\00", align 1
@H2O_HTTP3_ERROR_FRAME_UNEXPECTED = common dso_local global i32 0, align 4
@H2O_HTTP2_ERROR_INCOMPLETE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"qpack error\00", align 1
@H2O_HTTP3_ERROR_GENERAL_PROTOCOL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"unexpected 101\00", align 1
@H2O_HTTP3_ERROR_EOS = common dso_local global i32 0, align 4
@H2O_HTTP3_ERROR_INTERNAL = common dso_local global i32 0, align 4
@h2o_httpclient_error_is_eos = common dso_local global i32* null, align 8
@handle_input_expect_data_frame = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st_h2o_http3client_req_t*, i32**, i32*, i32, i8**)* @handle_input_expect_headers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_input_expect_headers(%struct.st_h2o_http3client_req_t* %0, i32** %1, i32* %2, i32 %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.st_h2o_http3client_req_t*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca %struct.TYPE_17__, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_18__, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.st_h2o_http3client_req_t* %0, %struct.st_h2o_http3client_req_t** %7, align 8
  store i32** %1, i32*** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8** %4, i8*** %11, align 8
  %21 = bitcast %struct.TYPE_18__* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %21, i8 0, i64 16, i1 false)
  %22 = load i32, i32* @H2O_HPACK_ENCODE_INT_MAX_LENGTH, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %15, align 8
  %25 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %16, align 8
  %26 = load i32, i32* @H2O_HTTP3_STREAM_TYPE_REQUEST, align 4
  %27 = load i32**, i32*** %8, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = load i8**, i8*** %11, align 8
  %30 = call i32 @h2o_http3_read_frame(%struct.TYPE_17__* %12, i32 1, i32 %26, i32** %27, i32* %28, i8** %29)
  store i32 %30, i32* %18, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %53

32:                                               ; preds = %5
  %33 = load i32, i32* %18, align 4
  %34 = load i32, i32* @H2O_HTTP3_ERROR_INCOMPLETE, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %49

36:                                               ; preds = %32
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %36
  %40 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %7, align 8
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @H2O_HTTP3_ERROR_NONE, align 4
  %43 = icmp eq i32 %41, %42
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0)
  %46 = call i32 @on_error_before_head(%struct.st_h2o_http3client_req_t* %40, i8* %45)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %216

47:                                               ; preds = %36
  %48 = load i32, i32* %18, align 4
  store i32 %48, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %216

49:                                               ; preds = %32
  %50 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %7, align 8
  %51 = call i32 @on_error_before_head(%struct.st_h2o_http3client_req_t* %50, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %52 = load i32, i32* @H2O_HTTP3_ERROR_EXCESSIVE_LOAD, align 4
  store i32 %52, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %216

53:                                               ; preds = %5
  %54 = load i32**, i32*** %8, align 8
  %55 = load i32*, i32** %54, align 8
  %56 = load i32*, i32** %9, align 8
  %57 = icmp eq i32* %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br label %61

61:                                               ; preds = %58, %53
  %62 = phi i1 [ false, %53 ], [ %60, %58 ]
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %19, align 4
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @H2O_HTTP3_FRAME_TYPE_HEADERS, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  switch i32 %70, label %74 [
    i32 128, label %71
  ]

71:                                               ; preds = %68
  %72 = load i8**, i8*** %11, align 8
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i8** %72, align 8
  %73 = load i32, i32* @H2O_HTTP3_ERROR_FRAME_UNEXPECTED, align 4
  store i32 %73, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %216

74:                                               ; preds = %68
  store i32 0, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %216

75:                                               ; preds = %61
  %76 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %7, align 8
  %77 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %7, align 8
  %81 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %80, i32 0, i32 2
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %7, align 8
  %88 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %87, i32 0, i32 3
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i8**, i8*** %11, align 8
  %97 = call i32 @h2o_qpack_parse_response(i32 %79, i32 %86, i32 %91, i32* %13, %struct.TYPE_18__* %14, i32* %25, i64* %17, i32 %93, i32 %95, i8** %96)
  store i32 %97, i32* %18, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %119

99:                                               ; preds = %75
  %100 = load i32, i32* %18, align 4
  %101 = load i32, i32* @H2O_HTTP2_ERROR_INCOMPLETE, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %99
  %104 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %7, align 8
  %105 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %104, i32 0, i32 0
  store i32* null, i32** %105, align 8
  store i32 0, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %216

106:                                              ; preds = %99
  %107 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %7, align 8
  %108 = load i8**, i8*** %11, align 8
  %109 = load i8*, i8** %108, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = load i8**, i8*** %11, align 8
  %113 = load i8*, i8** %112, align 8
  br label %115

114:                                              ; preds = %106
  br label %115

115:                                              ; preds = %114, %111
  %116 = phi i8* [ %113, %111 ], [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), %114 ]
  %117 = call i32 @on_error_before_head(%struct.st_h2o_http3client_req_t* %107, i8* %116)
  %118 = load i32, i32* @H2O_HTTP3_ERROR_GENERAL_PROTOCOL, align 4
  store i32 %118, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %216

119:                                              ; preds = %75
  %120 = load i64, i64* %17, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %119
  %123 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %7, align 8
  %124 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %123, i32 0, i32 2
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 0
  %127 = load i64, i64* %17, align 8
  %128 = call i32 @h2o_http3_send_qpack_header_ack(%struct.TYPE_12__* %126, i32* %25, i64 %127)
  br label %129

129:                                              ; preds = %122, %119
  %130 = load i32, i32* %13, align 4
  %131 = icmp sle i32 100, %130
  br i1 %131, label %132, label %177

132:                                              ; preds = %129
  %133 = load i32, i32* %13, align 4
  %134 = icmp sle i32 %133, 199
  br i1 %134, label %135, label %177

135:                                              ; preds = %132
  %136 = load i32, i32* %13, align 4
  %137 = icmp eq i32 %136, 101
  br i1 %137, label %138, label %142

138:                                              ; preds = %135
  %139 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %7, align 8
  %140 = call i32 @on_error_before_head(%struct.st_h2o_http3client_req_t* %139, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %141 = load i32, i32* @H2O_HTTP3_ERROR_GENERAL_PROTOCOL, align 4
  store i32 %141, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %216

142:                                              ; preds = %135
  %143 = load i32, i32* %19, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %153

145:                                              ; preds = %142
  %146 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %7, align 8
  %147 = load i32, i32* %10, align 4
  %148 = load i32, i32* @H2O_HTTP3_ERROR_EOS, align 4
  %149 = icmp eq i32 %147, %148
  %150 = zext i1 %149 to i64
  %151 = select i1 %149, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0)
  %152 = call i32 @on_error_before_head(%struct.st_h2o_http3client_req_t* %146, i8* %151)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %216

153:                                              ; preds = %142
  %154 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %7, align 8
  %155 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %155, i32 0, i32 0
  %157 = load i64 (%struct.TYPE_19__*, i32, i32, i32, i32, i32)*, i64 (%struct.TYPE_19__*, i32, i32, i32, i32, i32)** %156, align 8
  %158 = icmp ne i64 (%struct.TYPE_19__*, i32, i32, i32, i32, i32)* %157, null
  br i1 %158, label %159, label %176

159:                                              ; preds = %153
  %160 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %7, align 8
  %161 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %161, i32 0, i32 0
  %163 = load i64 (%struct.TYPE_19__*, i32, i32, i32, i32, i32)*, i64 (%struct.TYPE_19__*, i32, i32, i32, i32, i32)** %162, align 8
  %164 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %7, align 8
  %165 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %164, i32 0, i32 1
  %166 = load i32, i32* %13, align 4
  %167 = call i32 @h2o_iovec_init(i32* null, i32 0)
  %168 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = call i64 %163(%struct.TYPE_19__* %165, i32 0, i32 %166, i32 %167, i32 %169, i32 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %159
  %175 = load i32, i32* @H2O_HTTP3_ERROR_INTERNAL, align 4
  store i32 %175, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %216

176:                                              ; preds = %159, %153
  store i32 0, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %216

177:                                              ; preds = %132, %129
  %178 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %7, align 8
  %179 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 0
  %182 = load i32* (%struct.TYPE_19__*, i32*, i32, i32, i32, i32, i32, i32)*, i32* (%struct.TYPE_19__*, i32*, i32, i32, i32, i32, i32, i32)** %181, align 8
  %183 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %7, align 8
  %184 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %183, i32 0, i32 1
  %185 = load i32, i32* %19, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %177
  %188 = load i32*, i32** @h2o_httpclient_error_is_eos, align 8
  br label %190

189:                                              ; preds = %177
  br label %190

190:                                              ; preds = %189, %187
  %191 = phi i32* [ %188, %187 ], [ null, %189 ]
  %192 = load i32, i32* %13, align 4
  %193 = call i32 @h2o_iovec_init(i32* null, i32 0)
  %194 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = call i32* %182(%struct.TYPE_19__* %184, i32* %191, i32 768, i32 %192, i32 %193, i32 %195, i32 %197, i32 0)
  %199 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %7, align 8
  %200 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %201, i32 0, i32 1
  store i32* %198, i32** %202, align 8
  %203 = icmp eq i32* %198, null
  br i1 %203, label %204, label %212

204:                                              ; preds = %190
  %205 = load i32, i32* %19, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %204
  br label %210

208:                                              ; preds = %204
  %209 = load i32, i32* @H2O_HTTP3_ERROR_INTERNAL, align 4
  br label %210

210:                                              ; preds = %208, %207
  %211 = phi i32 [ 0, %207 ], [ %209, %208 ]
  store i32 %211, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %216

212:                                              ; preds = %190
  %213 = load i32*, i32** @handle_input_expect_data_frame, align 8
  %214 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %7, align 8
  %215 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %214, i32 0, i32 0
  store i32* %213, i32** %215, align 8
  store i32 0, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %216

216:                                              ; preds = %212, %210, %176, %174, %145, %138, %115, %103, %74, %71, %49, %47, %39
  %217 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %217)
  %218 = load i32, i32* %6, align 4
  ret i32 %218
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @h2o_http3_read_frame(%struct.TYPE_17__*, i32, i32, i32**, i32*, i8**) #3

declare dso_local i32 @on_error_before_head(%struct.st_h2o_http3client_req_t*, i8*) #3

declare dso_local i32 @h2o_qpack_parse_response(i32, i32, i32, i32*, %struct.TYPE_18__*, i32*, i64*, i32, i32, i8**) #3

declare dso_local i32 @h2o_http3_send_qpack_header_ack(%struct.TYPE_12__*, i32*, i64) #3

declare dso_local i32 @h2o_iovec_init(i32*, i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
