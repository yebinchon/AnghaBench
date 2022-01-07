; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_........libcommonsocket.c_decode_ssl_input.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_........libcommonsocket.c_decode_ssl_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_14__*, %struct.TYPE_18__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_18__ = type { i32*, i32, %struct.TYPE_17__, i32*, %struct.TYPE_16__ }
%struct.TYPE_17__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, i8* }
%struct.TYPE_16__ = type { i32* }
%struct.TYPE_21__ = type { i64, i32* }
%struct.TYPE_19__ = type { i32, i32, i64 }

@h2o_socket_error_out_of_memory = common dso_local global i8* null, align 8
@PTLS_ERROR_IN_PROGRESS = common dso_local global i32 0, align 4
@h2o_socket_error_ssl_decode = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"ssl renegotiation not supported\00", align 1
@SSL_ERROR_WANT_READ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @decode_ssl_input(%struct.TYPE_20__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_21__, align 8
  %7 = alloca %struct.TYPE_19__, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_21__, align 8
  %10 = alloca %struct.TYPE_21__, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_21__, align 8
  %13 = alloca %struct.TYPE_21__, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_21__, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %20 = icmp ne %struct.TYPE_18__* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 3
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %204

38:                                               ; preds = %1
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %203

48:                                               ; preds = %38
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  store i8* %56, i8** %4, align 8
  %57 = load i8*, i8** %4, align 8
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds i8, i8* %57, i64 %65
  store i8* %66, i8** %5, align 8
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = trunc i64 %76 to i32
  %78 = call { i64, i32* } @h2o_buffer_try_reserve(%struct.TYPE_14__** %68, i32 %77)
  %79 = bitcast %struct.TYPE_21__* %10 to { i64, i32* }*
  %80 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %79, i32 0, i32 0
  %81 = extractvalue { i64, i32* } %78, 0
  store i64 %81, i64* %80, align 8
  %82 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %79, i32 0, i32 1
  %83 = extractvalue { i64, i32* } %78, 1
  store i32* %83, i32** %82, align 8
  %84 = bitcast %struct.TYPE_21__* %6 to i8*
  %85 = bitcast %struct.TYPE_21__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %84, i8* align 8 %85, i64 16, i1 false)
  %86 = bitcast %struct.TYPE_21__* %9 to i8*
  %87 = bitcast %struct.TYPE_21__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %86, i8* align 8 %87, i64 16, i1 false)
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = icmp eq i32* %89, null
  br i1 %90, label %91, label %93

91:                                               ; preds = %48
  %92 = load i8*, i8** @h2o_socket_error_out_of_memory, align 8
  store i8* %92, i8** %2, align 8
  br label %294

93:                                               ; preds = %48
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %6, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %6, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @ptls_buffer_init(%struct.TYPE_19__* %7, i32* %95, i64 %97)
  br label %99

99:                                               ; preds = %118, %93
  %100 = load i8*, i8** %5, align 8
  %101 = load i8*, i8** %4, align 8
  %102 = ptrtoint i8* %100 to i64
  %103 = ptrtoint i8* %101 to i64
  %104 = sub i64 %102, %103
  store i64 %104, i64* %11, align 8
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 3
  %109 = load i32*, i32** %108, align 8
  %110 = load i8*, i8** %4, align 8
  %111 = call i32 @ptls_receive(i32* %109, %struct.TYPE_19__* %7, i8* %110, i64* %11)
  store i32 %111, i32* %8, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %99
  br label %122

114:                                              ; preds = %99
  %115 = load i64, i64* %11, align 8
  %116 = load i8*, i8** %4, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 %115
  store i8* %117, i8** %4, align 8
  br label %118

118:                                              ; preds = %114
  %119 = load i8*, i8** %4, align 8
  %120 = load i8*, i8** %5, align 8
  %121 = icmp ne i8* %119, %120
  br i1 %121, label %99, label %122

122:                                              ; preds = %118, %113
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i8*, i8** %5, align 8
  %137 = load i8*, i8** %4, align 8
  %138 = ptrtoint i8* %136 to i64
  %139 = ptrtoint i8* %137 to i64
  %140 = sub i64 %138, %139
  %141 = sub nsw i64 %135, %140
  %142 = trunc i64 %141 to i32
  %143 = call i32 @h2o_buffer_consume(%struct.TYPE_15__** %127, i32 %142)
  %144 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %184

147:                                              ; preds = %122
  %148 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = call { i64, i32* } @h2o_buffer_try_reserve(%struct.TYPE_14__** %149, i32 %151)
  %153 = bitcast %struct.TYPE_21__* %13 to { i64, i32* }*
  %154 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %153, i32 0, i32 0
  %155 = extractvalue { i64, i32* } %152, 0
  store i64 %155, i64* %154, align 8
  %156 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %153, i32 0, i32 1
  %157 = extractvalue { i64, i32* } %152, 1
  store i32* %157, i32** %156, align 8
  %158 = bitcast %struct.TYPE_21__* %6 to i8*
  %159 = bitcast %struct.TYPE_21__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %158, i8* align 8 %159, i64 16, i1 false)
  %160 = bitcast %struct.TYPE_21__* %12 to i8*
  %161 = bitcast %struct.TYPE_21__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %160, i8* align 8 %161, i64 16, i1 false)
  %162 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 1
  %163 = load i32*, i32** %162, align 8
  %164 = icmp eq i32* %163, null
  br i1 %164, label %165, label %167

165:                                              ; preds = %147
  %166 = load i8*, i8** @h2o_socket_error_out_of_memory, align 8
  store i8* %166, i8** %2, align 8
  br label %294

167:                                              ; preds = %147
  %168 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %6, i32 0, i32 1
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @memcpy(i32* %169, i32 %171, i32 %173)
  %175 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %177, i32 0, i32 0
  %179 = load %struct.TYPE_14__*, %struct.TYPE_14__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = add nsw i32 %181, %176
  store i32 %182, i32* %180, align 4
  %183 = call i32 @ptls_buffer_dispose(%struct.TYPE_19__* %7)
  br label %193

184:                                              ; preds = %122
  %185 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %187, i32 0, i32 0
  %189 = load %struct.TYPE_14__*, %struct.TYPE_14__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = add nsw i32 %191, %186
  store i32 %192, i32* %190, align 4
  br label %193

193:                                              ; preds = %184, %167
  %194 = load i32, i32* %8, align 4
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %202, label %196

196:                                              ; preds = %193
  %197 = load i32, i32* %8, align 4
  %198 = load i32, i32* @PTLS_ERROR_IN_PROGRESS, align 4
  %199 = icmp eq i32 %197, %198
  br i1 %199, label %202, label %200

200:                                              ; preds = %196
  %201 = load i8*, i8** @h2o_socket_error_ssl_decode, align 8
  store i8* %201, i8** %2, align 8
  br label %294

202:                                              ; preds = %196, %193
  br label %203

203:                                              ; preds = %202, %38
  store i8* null, i8** %2, align 8
  br label %294

204:                                              ; preds = %1
  br label %205

205:                                              ; preds = %292, %204
  %206 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %207 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %206, i32 0, i32 1
  %208 = load %struct.TYPE_18__*, %struct.TYPE_18__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %208, i32 0, i32 2
  %210 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %209, i32 0, i32 0
  %211 = load %struct.TYPE_15__*, %struct.TYPE_15__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %223, label %215

215:                                              ; preds = %205
  %216 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %217 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %216, i32 0, i32 1
  %218 = load %struct.TYPE_18__*, %struct.TYPE_18__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 8
  %221 = call i64 @SSL_pending(i32 %220)
  %222 = icmp ne i64 %221, 0
  br label %223

223:                                              ; preds = %215, %205
  %224 = phi i1 [ true, %205 ], [ %222, %215 ]
  br i1 %224, label %225, label %293

225:                                              ; preds = %223
  %226 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %227 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %226, i32 0, i32 0
  %228 = call { i64, i32* } @h2o_buffer_try_reserve(%struct.TYPE_14__** %227, i32 4096)
  %229 = bitcast %struct.TYPE_21__* %15 to { i64, i32* }*
  %230 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %229, i32 0, i32 0
  %231 = extractvalue { i64, i32* } %228, 0
  store i64 %231, i64* %230, align 8
  %232 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %229, i32 0, i32 1
  %233 = extractvalue { i64, i32* } %228, 1
  store i32* %233, i32** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 1
  %235 = load i32*, i32** %234, align 8
  %236 = icmp eq i32* %235, null
  br i1 %236, label %237, label %239

237:                                              ; preds = %225
  %238 = load i8*, i8** @h2o_socket_error_out_of_memory, align 8
  store i8* %238, i8** %2, align 8
  br label %294

239:                                              ; preds = %225
  store i32 0, i32* %16, align 4
  %240 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %241 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %240, i32 0, i32 1
  %242 = load %struct.TYPE_18__*, %struct.TYPE_18__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %242, i32 0, i32 0
  store i32* %16, i32** %243, align 8
  %244 = call i32 (...) @ERR_clear_error()
  %245 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %246 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %245, i32 0, i32 1
  %247 = load %struct.TYPE_18__*, %struct.TYPE_18__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 1
  %251 = load i32*, i32** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = trunc i64 %253 to i32
  %255 = call i32 @SSL_read(i32 %249, i32* %251, i32 %254)
  store i32 %255, i32* %14, align 4
  %256 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %257 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %256, i32 0, i32 1
  %258 = load %struct.TYPE_18__*, %struct.TYPE_18__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %258, i32 0, i32 0
  store i32* null, i32** %259, align 8
  %260 = load i32, i32* %16, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %263

262:                                              ; preds = %239
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %294

263:                                              ; preds = %239
  %264 = load i32, i32* %14, align 4
  %265 = icmp eq i32 %264, -1
  br i1 %265, label %266, label %279

266:                                              ; preds = %263
  %267 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %268 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %267, i32 0, i32 1
  %269 = load %struct.TYPE_18__*, %struct.TYPE_18__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 8
  %272 = load i32, i32* %14, align 4
  %273 = call i64 @SSL_get_error(i32 %271, i32 %272)
  %274 = load i64, i64* @SSL_ERROR_WANT_READ, align 8
  %275 = icmp ne i64 %273, %274
  br i1 %275, label %276, label %278

276:                                              ; preds = %266
  %277 = load i8*, i8** @h2o_socket_error_ssl_decode, align 8
  store i8* %277, i8** %2, align 8
  br label %294

278:                                              ; preds = %266
  br label %293

279:                                              ; preds = %263
  %280 = load i32, i32* %14, align 4
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %282, label %283

282:                                              ; preds = %279
  br label %293

283:                                              ; preds = %279
  %284 = load i32, i32* %14, align 4
  %285 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %286 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %285, i32 0, i32 0
  %287 = load %struct.TYPE_14__*, %struct.TYPE_14__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = add nsw i32 %289, %284
  store i32 %290, i32* %288, align 4
  br label %291

291:                                              ; preds = %283
  br label %292

292:                                              ; preds = %291
  br label %205

293:                                              ; preds = %282, %278, %223
  store i8* null, i8** %2, align 8
  br label %294

294:                                              ; preds = %293, %276, %262, %237, %203, %200, %165, %91
  %295 = load i8*, i8** %2, align 8
  ret i8* %295
}

declare dso_local i32 @assert(i32) #1

declare dso_local { i64, i32* } @h2o_buffer_try_reserve(%struct.TYPE_14__**, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ptls_buffer_init(%struct.TYPE_19__*, i32*, i64) #1

declare dso_local i32 @ptls_receive(i32*, %struct.TYPE_19__*, i8*, i64*) #1

declare dso_local i32 @h2o_buffer_consume(%struct.TYPE_15__**, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @ptls_buffer_dispose(%struct.TYPE_19__*) #1

declare dso_local i64 @SSL_pending(i32) #1

declare dso_local i32 @ERR_clear_error(...) #1

declare dso_local i32 @SSL_read(i32, i32*, i32) #1

declare dso_local i64 @SSL_get_error(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
