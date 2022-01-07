; ModuleID = '/home/carl/AnghaBench/h2o/lib/common/extr_http1client.c_on_connection_ready.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/common/extr_http1client.c_on_connection_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_h2o_http1client_t = type { %struct.TYPE_24__*, %struct.TYPE_33__, %struct.TYPE_28__, i32, i32, i32*, i32, i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_33__ = type { %struct.TYPE_30__*, %struct.TYPE_29__, %struct.TYPE_25__, %struct.TYPE_27__, %struct.TYPE_26__ }
%struct.TYPE_30__ = type { i32, i32 }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_27__ = type { i64, i64, i32 }
%struct.TYPE_26__ = type { i32*, i32* (%struct.TYPE_33__*, i32*, %struct.TYPE_31__*, i32*, i32**, i64*, %struct.TYPE_31__*, i32**, %struct.TYPE_32__*, i32)* }
%struct.TYPE_31__ = type { i64, i32* }
%struct.TYPE_32__ = type { i32*, i32*, i32*, %struct.TYPE_31__*, %struct.TYPE_31__*, %struct.TYPE_31__* }
%struct.TYPE_28__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@h2o_socket_buffer_prototype = common dso_local global i32 0, align 4
@h2o_httpclient_error_internal = common dso_local global i32 0, align 4
@on_send_timeout = common dso_local global i32 0, align 4
@STREAM_STATE_BODY = common dso_local global i32 0, align 4
@on_head = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_h2o_http1client_t*)* @on_connection_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on_connection_ready(%struct.st_h2o_http1client_t* %0) #0 {
  %2 = alloca %struct.st_h2o_http1client_t*, align 8
  %3 = alloca %struct.TYPE_31__, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_31__, align 8
  %6 = alloca %struct.TYPE_32__, align 8
  %7 = alloca %struct.TYPE_31__, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_31__, align 8
  %12 = alloca [3 x %struct.TYPE_31__], align 16
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_31__, align 8
  %15 = alloca i64, align 8
  store %struct.st_h2o_http1client_t* %0, %struct.st_h2o_http1client_t** %2, align 8
  %16 = call { i64, i32* } @h2o_iovec_init(i32* null, i32 0)
  %17 = bitcast %struct.TYPE_31__* %3 to { i64, i32* }*
  %18 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %17, i32 0, i32 0
  %19 = extractvalue { i64, i32* } %16, 0
  store i64 %19, i64* %18, align 8
  %20 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %17, i32 0, i32 1
  %21 = extractvalue { i64, i32* } %16, 1
  store i32* %21, i32** %20, align 8
  store i32 0, i32* %4, align 4
  %22 = call { i64, i32* } @h2o_iovec_init(i32* null, i32 0)
  %23 = bitcast %struct.TYPE_31__* %5 to { i64, i32* }*
  %24 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %23, i32 0, i32 0
  %25 = extractvalue { i64, i32* } %22, 0
  store i64 %25, i64* %24, align 8
  %26 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %23, i32 0, i32 1
  %27 = extractvalue { i64, i32* } %22, 1
  store i32* %27, i32** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %6, i32 0, i32 0
  %29 = bitcast %struct.TYPE_31__* %3 to i32*
  store i32* %29, i32** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %6, i32 0, i32 1
  store i32* %4, i32** %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %6, i32 0, i32 2
  %32 = bitcast %struct.TYPE_31__* %5 to i32*
  store i32* %32, i32** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %6, i32 0, i32 3
  store %struct.TYPE_31__* null, %struct.TYPE_31__** %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %6, i32 0, i32 4
  store %struct.TYPE_31__* null, %struct.TYPE_31__** %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %6, i32 0, i32 5
  store %struct.TYPE_31__* null, %struct.TYPE_31__** %35, align 8
  %36 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %2, align 8
  %37 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %38, i32 0, i32 1
  %40 = load i32* (%struct.TYPE_33__*, i32*, %struct.TYPE_31__*, i32*, i32**, i64*, %struct.TYPE_31__*, i32**, %struct.TYPE_32__*, i32)*, i32* (%struct.TYPE_33__*, i32*, %struct.TYPE_31__*, i32*, i32**, i64*, %struct.TYPE_31__*, i32**, %struct.TYPE_32__*, i32)** %39, align 8
  %41 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %2, align 8
  %42 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %41, i32 0, i32 1
  %43 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %2, align 8
  %44 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %43, i32 0, i32 5
  %45 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %2, align 8
  %46 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %45, i32 0, i32 7
  %47 = load i32, i32* %46, align 4
  %48 = call i32* %40(%struct.TYPE_33__* %42, i32* null, %struct.TYPE_31__* %7, i32* %8, i32** %9, i64* %10, %struct.TYPE_31__* %11, i32** %44, %struct.TYPE_32__* %6, i32 %47)
  %49 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %2, align 8
  %50 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %51, i32 0, i32 0
  store i32* %48, i32** %52, align 8
  %53 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %2, align 8
  %54 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %1
  %60 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %2, align 8
  %61 = call i32 @close_client(%struct.st_h2o_http1client_t* %60)
  br label %256

62:                                               ; preds = %1
  store i64 0, i64* %13, align 8
  %63 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %6, i32 0, i32 3
  %64 = load %struct.TYPE_31__*, %struct.TYPE_31__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %76

68:                                               ; preds = %62
  %69 = load i64, i64* %13, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %13, align 8
  %71 = getelementptr inbounds [3 x %struct.TYPE_31__], [3 x %struct.TYPE_31__]* %12, i64 0, i64 %69
  %72 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %6, i32 0, i32 3
  %73 = load %struct.TYPE_31__*, %struct.TYPE_31__** %72, align 8
  %74 = bitcast %struct.TYPE_31__* %71 to i8*
  %75 = bitcast %struct.TYPE_31__* %73 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %74, i8* align 8 %75, i64 16, i1 false)
  br label %76

76:                                               ; preds = %68, %62
  %77 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %2, align 8
  %78 = load i32, i32* %8, align 4
  %79 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %6, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %9, align 8
  %83 = load i64, i64* %10, align 8
  %84 = bitcast %struct.TYPE_31__* %7 to { i64, i32* }*
  %85 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %84, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = call { i64, i32* } @build_request(%struct.st_h2o_http1client_t* %77, i64 %86, i32* %88, i32 %78, i32 %81, i32* %82, i64 %83)
  %90 = bitcast %struct.TYPE_31__* %14 to { i64, i32* }*
  %91 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %90, i32 0, i32 0
  %92 = extractvalue { i64, i32* } %89, 0
  store i64 %92, i64* %91, align 8
  %93 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %90, i32 0, i32 1
  %94 = extractvalue { i64, i32* } %89, 1
  store i32* %94, i32** %93, align 8
  %95 = load i64, i64* %13, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %13, align 8
  %97 = getelementptr inbounds [3 x %struct.TYPE_31__], [3 x %struct.TYPE_31__]* %12, i64 0, i64 %95
  %98 = bitcast %struct.TYPE_31__* %97 to i8*
  %99 = bitcast %struct.TYPE_31__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %98, i8* align 8 %99, i64 16, i1 false)
  %100 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %14, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %2, align 8
  %103 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %104, i32 0, i32 0
  store i64 %101, i64* %105, align 8
  %106 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %6, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %2, align 8
  %110 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %109, i32 0, i32 3
  store i32 %108, i32* %110, align 4
  %111 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %7, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %7, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %116 = call i32 @h2o_memis(i32* %112, i64 %114, i32 %115)
  %117 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %2, align 8
  %118 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %117, i32 0, i32 6
  store i32 %116, i32* %118, align 8
  %119 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %2, align 8
  %120 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %119, i32 0, i32 5
  %121 = load i32*, i32** %120, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %123, label %153

123:                                              ; preds = %76
  %124 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %11, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = icmp ne i32* %125, null
  br i1 %126, label %127, label %146

127:                                              ; preds = %123
  %128 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %2, align 8
  %129 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %128, i32 0, i32 4
  %130 = call i32 @h2o_buffer_init(i32* %129, i32* @h2o_socket_buffer_prototype)
  %131 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %2, align 8
  %132 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %131, i32 0, i32 4
  %133 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %11, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %11, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = call i32 @h2o_buffer_try_append(i32* %132, i32* %134, i64 %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %145, label %139

139:                                              ; preds = %127
  %140 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %2, align 8
  %141 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %140, i32 0, i32 0
  %142 = load %struct.TYPE_24__*, %struct.TYPE_24__** %141, align 8
  %143 = load i32, i32* @h2o_httpclient_error_internal, align 4
  %144 = call i32 @on_whole_request_sent(%struct.TYPE_24__* %142, i32 %143)
  br label %256

145:                                              ; preds = %127
  br label %146

146:                                              ; preds = %145, %123
  %147 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %2, align 8
  %148 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %147, i32 0, i32 0
  %149 = load %struct.TYPE_24__*, %struct.TYPE_24__** %148, align 8
  %150 = getelementptr inbounds [3 x %struct.TYPE_31__], [3 x %struct.TYPE_31__]* %12, i64 0, i64 0
  %151 = load i64, i64* %13, align 8
  %152 = call i32 @h2o_socket_write(%struct.TYPE_24__* %149, %struct.TYPE_31__* %150, i64 %151, i32 (%struct.TYPE_24__*, i32)* @on_req_body_done)
  br label %205

153:                                              ; preds = %76
  %154 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %2, align 8
  %155 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %181

158:                                              ; preds = %153
  %159 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %11, i32 0, i32 1
  %160 = load i32*, i32** %159, align 8
  %161 = icmp ne i32* %160, null
  %162 = zext i1 %161 to i32
  %163 = call i32 @assert(i32 %162)
  %164 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %2, align 8
  %165 = getelementptr inbounds [3 x %struct.TYPE_31__], [3 x %struct.TYPE_31__]* %12, i64 0, i64 0
  %166 = load i64, i64* %13, align 8
  %167 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %165, i64 %166
  %168 = bitcast %struct.TYPE_31__* %11 to { i64, i32* }*
  %169 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %168, i32 0, i32 1
  %172 = load i32*, i32** %171, align 8
  %173 = call i64 @encode_chunk(%struct.st_h2o_http1client_t* %164, %struct.TYPE_31__* %167, i64 %170, i32* %172, i64* %15)
  %174 = load i64, i64* %13, align 8
  %175 = add i64 %174, %173
  store i64 %175, i64* %13, align 8
  %176 = load i64, i64* %15, align 8
  %177 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %2, align 8
  %178 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %178, i32 0, i32 3
  %180 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %179, i32 0, i32 1
  store i64 %176, i64* %180, align 8
  br label %198

181:                                              ; preds = %153
  %182 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %11, i32 0, i32 1
  %183 = load i32*, i32** %182, align 8
  %184 = icmp ne i32* %183, null
  br i1 %184, label %185, label %197

185:                                              ; preds = %181
  %186 = load i64, i64* %13, align 8
  %187 = add i64 %186, 1
  store i64 %187, i64* %13, align 8
  %188 = getelementptr inbounds [3 x %struct.TYPE_31__], [3 x %struct.TYPE_31__]* %12, i64 0, i64 %186
  %189 = bitcast %struct.TYPE_31__* %188 to i8*
  %190 = bitcast %struct.TYPE_31__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %189, i8* align 8 %190, i64 16, i1 false)
  %191 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %11, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %2, align 8
  %194 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %194, i32 0, i32 3
  %196 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %195, i32 0, i32 1
  store i64 %192, i64* %196, align 8
  br label %197

197:                                              ; preds = %185, %181
  br label %198

198:                                              ; preds = %197, %158
  %199 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %2, align 8
  %200 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %199, i32 0, i32 0
  %201 = load %struct.TYPE_24__*, %struct.TYPE_24__** %200, align 8
  %202 = getelementptr inbounds [3 x %struct.TYPE_31__], [3 x %struct.TYPE_31__]* %12, i64 0, i64 0
  %203 = load i64, i64* %13, align 8
  %204 = call i32 @h2o_socket_write(%struct.TYPE_24__* %201, %struct.TYPE_31__* %202, i64 %203, i32 (%struct.TYPE_24__*, i32)* @on_whole_request_sent)
  br label %205

205:                                              ; preds = %198, %146
  %206 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %2, align 8
  %207 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %206, i32 0, i32 0
  %208 = load %struct.TYPE_24__*, %struct.TYPE_24__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %2, align 8
  %212 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %212, i32 0, i32 3
  %214 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %213, i32 0, i32 2
  store i32 %210, i32* %214, align 8
  %215 = load i32, i32* @on_send_timeout, align 4
  %216 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %2, align 8
  %217 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %217, i32 0, i32 2
  %219 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %218, i32 0, i32 0
  store i32 %215, i32* %219, align 4
  %220 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %2, align 8
  %221 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %221, i32 0, i32 0
  %223 = load %struct.TYPE_30__*, %struct.TYPE_30__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %2, align 8
  %227 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %227, i32 0, i32 0
  %229 = load %struct.TYPE_30__*, %struct.TYPE_30__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %2, align 8
  %233 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %233, i32 0, i32 2
  %235 = call i32 @h2o_timer_link(i32 %225, i32 %231, %struct.TYPE_25__* %234)
  %236 = load i32, i32* @STREAM_STATE_BODY, align 4
  %237 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %2, align 8
  %238 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %237, i32 0, i32 2
  %239 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %238, i32 0, i32 0
  store i32 %236, i32* %239, align 8
  %240 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %2, align 8
  %241 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %241, i32 0, i32 0
  %243 = load %struct.TYPE_30__*, %struct.TYPE_30__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = call i32 @h2o_gettimeofday(i32 %245)
  %247 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %2, align 8
  %248 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %247, i32 0, i32 1
  %249 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %249, i32 0, i32 0
  store i32 %246, i32* %250, align 8
  %251 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %2, align 8
  %252 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %251, i32 0, i32 0
  %253 = load %struct.TYPE_24__*, %struct.TYPE_24__** %252, align 8
  %254 = load i32, i32* @on_head, align 4
  %255 = call i32 @h2o_socket_read_start(%struct.TYPE_24__* %253, i32 %254)
  br label %256

256:                                              ; preds = %205, %139, %59
  ret void
}

declare dso_local { i64, i32* } @h2o_iovec_init(i32*, i32) #1

declare dso_local i32 @close_client(%struct.st_h2o_http1client_t*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local { i64, i32* } @build_request(%struct.st_h2o_http1client_t*, i64, i32*, i32, i32, i32*, i64) #1

declare dso_local i32 @h2o_memis(i32*, i64, i32) #1

declare dso_local i32 @H2O_STRLIT(i8*) #1

declare dso_local i32 @h2o_buffer_init(i32*, i32*) #1

declare dso_local i32 @h2o_buffer_try_append(i32*, i32*, i64) #1

declare dso_local i32 @on_whole_request_sent(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @h2o_socket_write(%struct.TYPE_24__*, %struct.TYPE_31__*, i64, i32 (%struct.TYPE_24__*, i32)*) #1

declare dso_local i32 @on_req_body_done(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @encode_chunk(%struct.st_h2o_http1client_t*, %struct.TYPE_31__*, i64, i32*, i64*) #1

declare dso_local i32 @h2o_timer_link(i32, i32, %struct.TYPE_25__*) #1

declare dso_local i32 @h2o_gettimeofday(i32) #1

declare dso_local i32 @h2o_socket_read_start(%struct.TYPE_24__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
