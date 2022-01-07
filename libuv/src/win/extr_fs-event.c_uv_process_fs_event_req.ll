; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_fs-event.c_uv_process_fs_event_req.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_fs-event.c_uv_process_fs_event_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_21__ = type { i32, i32, i32, i8*, i8*, i32 (%struct.TYPE_21__*, i8*, i32, i32)*, i64 }
%struct.TYPE_22__ = type { i8*, i32, i32, i32 }

@UV_FS_EVENT_REQ = common dso_local global i64 0, align 8
@UV_HANDLE_CLOSING = common dso_local global i32 0, align 4
@ERROR_OUTOFMEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"uv__malloc\00", align 1
@.str.1 = private unnamed_addr constant [8 x i32] [i32 37, i32 115, i32 92, i32 37, i32 46, i32 42, i32 115, i32 0], align 4
@UV_RENAME = common dso_local global i32 0, align 4
@UV_CHANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uv_process_fs_event_req(i32* %0, %struct.TYPE_20__* %1, %struct.TYPE_21__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %6, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i32 0, i32* %14, align 4
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @UV_FS_EVENT_REQ, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @assert(i32 %24)
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 0
  store i32 0, i32* %27, align 8
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %29 = call i32 @uv__is_active(%struct.TYPE_21__* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %44, label %31

31:                                               ; preds = %3
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @UV_HANDLE_CLOSING, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %31
  %39 = load i32*, i32** %4, align 8
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %41 = bitcast %struct.TYPE_21__* %40 to i32*
  %42 = call i32 @uv_want_endgame(i32* %39, i32* %41)
  br label %43

43:                                               ; preds = %38, %31
  br label %325

44:                                               ; preds = %3
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %14, align 4
  %49 = add nsw i32 %47, %48
  %50 = sext i32 %49 to i64
  %51 = inttoptr i64 %50 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %51, %struct.TYPE_22__** %7, align 8
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %53 = call i64 @REQ_SUCCESS(%struct.TYPE_20__* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %299

55:                                               ; preds = %44
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp sgt i64 %61, 0
  br i1 %62, label %63, label %291

63:                                               ; preds = %55
  br label %64

64:                                               ; preds = %288, %63
  %65 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %66 = bitcast %struct.TYPE_22__* %65 to i8*
  %67 = load i32, i32* %14, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = bitcast i8* %69 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %70, %struct.TYPE_22__** %7, align 8
  %71 = load i8*, i8** %11, align 8
  %72 = icmp ne i8* %71, null
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  %75 = call i32 @assert(i32 %74)
  %76 = load i8*, i8** %12, align 8
  %77 = icmp ne i8* %76, null
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  %80 = call i32 @assert(i32 %79)
  %81 = load i8*, i8** %13, align 8
  %82 = icmp ne i8* %81, null
  %83 = xor i1 %82, true
  %84 = zext i1 %83 to i32
  %85 = call i32 @assert(i32 %84)
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 6
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %114, label %90

90:                                               ; preds = %64
  %91 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %91, i32 0, i32 3
  %93 = load i8*, i8** %92, align 8
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i64 @file_info_cmp(i8* %93, i8* %96, i32 %99)
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %114, label %102

102:                                              ; preds = %90
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %103, i32 0, i32 4
  %105 = load i8*, i8** %104, align 8
  %106 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = call i64 @file_info_cmp(i8* %105, i8* %108, i32 %111)
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %273

114:                                              ; preds = %102, %90, %64
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 6
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %241

119:                                              ; preds = %114
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %122, 130
  br i1 %123, label %124, label %230

124:                                              ; preds = %119
  %125 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, 128
  br i1 %128, label %129, label %230

129:                                              ; preds = %124
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %130, i32 0, i32 6
  %132 = load i64, i64* %131, align 8
  %133 = call i32 @wcslen(i64 %132)
  %134 = sext i32 %133 to i64
  %135 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = sext i32 %137 to i64
  %139 = udiv i64 %138, 1
  %140 = add i64 %134, %139
  %141 = add i64 %140, 2
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %10, align 4
  %143 = load i32, i32* %10, align 4
  %144 = sext i32 %143 to i64
  %145 = mul i64 %144, 1
  %146 = trunc i64 %145 to i32
  %147 = call i64 @uv__malloc(i32 %146)
  %148 = inttoptr i64 %147 to i8*
  store i8* %148, i8** %12, align 8
  %149 = load i8*, i8** %12, align 8
  %150 = icmp ne i8* %149, null
  br i1 %150, label %154, label %151

151:                                              ; preds = %129
  %152 = load i32, i32* @ERROR_OUTOFMEMORY, align 4
  %153 = call i32 @uv_fatal_error(i32 %152, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %154

154:                                              ; preds = %151, %129
  %155 = load i8*, i8** %12, align 8
  %156 = load i32, i32* %10, align 4
  %157 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %157, i32 0, i32 6
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = sdiv i32 %162, 1
  %164 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %164, i32 0, i32 0
  %166 = load i8*, i8** %165, align 8
  %167 = call i32 @_snwprintf(i8* %155, i32 %156, i8* bitcast ([8 x i32]* @.str.1 to i8*), i64 %159, i32 %163, i8* %166)
  %168 = load i8*, i8** %12, align 8
  %169 = load i32, i32* %10, align 4
  %170 = sub nsw i32 %169, 1
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i8, i8* %168, i64 %171
  store i8 0, i8* %172, align 1
  %173 = load i8*, i8** %12, align 8
  %174 = call i32 @GetLongPathNameW(i8* %173, i8* null, i32 0)
  store i32 %174, i32* %10, align 4
  %175 = load i32, i32* %10, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %205

177:                                              ; preds = %154
  %178 = load i32, i32* %10, align 4
  %179 = sext i32 %178 to i64
  %180 = mul i64 %179, 1
  %181 = trunc i64 %180 to i32
  %182 = call i64 @uv__malloc(i32 %181)
  %183 = inttoptr i64 %182 to i8*
  store i8* %183, i8** %13, align 8
  %184 = load i8*, i8** %13, align 8
  %185 = icmp ne i8* %184, null
  br i1 %185, label %189, label %186

186:                                              ; preds = %177
  %187 = load i32, i32* @ERROR_OUTOFMEMORY, align 4
  %188 = call i32 @uv_fatal_error(i32 %187, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %189

189:                                              ; preds = %186, %177
  %190 = load i8*, i8** %12, align 8
  %191 = load i8*, i8** %13, align 8
  %192 = load i32, i32* %10, align 4
  %193 = call i32 @GetLongPathNameW(i8* %190, i8* %191, i32 %192)
  store i32 %193, i32* %10, align 4
  %194 = load i32, i32* %10, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %201

196:                                              ; preds = %189
  %197 = load i8*, i8** %13, align 8
  %198 = load i32, i32* %10, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i8, i8* %197, i64 %199
  store i8 0, i8* %200, align 1
  br label %204

201:                                              ; preds = %189
  %202 = load i8*, i8** %13, align 8
  %203 = call i32 @uv__free(i8* %202)
  store i8* null, i8** %13, align 8
  br label %204

204:                                              ; preds = %201, %196
  br label %205

205:                                              ; preds = %204, %154
  %206 = load i8*, i8** %12, align 8
  %207 = call i32 @uv__free(i8* %206)
  %208 = load i8*, i8** %13, align 8
  %209 = icmp ne i8* %208, null
  br i1 %209, label %210, label %219

210:                                              ; preds = %205
  %211 = load i8*, i8** %13, align 8
  %212 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %212, i32 0, i32 6
  %214 = load i64, i64* %213, align 8
  %215 = call i32 @uv_relative_path(i8* %211, i64 %214, i8** %12)
  %216 = load i8*, i8** %13, align 8
  %217 = call i32 @uv__free(i8* %216)
  %218 = load i8*, i8** %12, align 8
  store i8* %218, i8** %13, align 8
  store i32 -1, i32* %9, align 4
  br label %229

219:                                              ; preds = %205
  %220 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %221 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %220, i32 0, i32 0
  %222 = load i8*, i8** %221, align 8
  store i8* %222, i8** %12, align 8
  %223 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %224 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 8
  %226 = sext i32 %225 to i64
  %227 = udiv i64 %226, 1
  %228 = trunc i64 %227 to i32
  store i32 %228, i32* %9, align 4
  br label %229

229:                                              ; preds = %219, %210
  br label %240

230:                                              ; preds = %124, %119
  %231 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %232 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %231, i32 0, i32 0
  %233 = load i8*, i8** %232, align 8
  store i8* %233, i8** %12, align 8
  %234 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %235 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 8
  %237 = sext i32 %236 to i64
  %238 = udiv i64 %237, 1
  %239 = trunc i64 %238 to i32
  store i32 %239, i32* %9, align 4
  br label %240

240:                                              ; preds = %230, %229
  br label %245

241:                                              ; preds = %114
  %242 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %243 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %242, i32 0, i32 3
  %244 = load i8*, i8** %243, align 8
  store i8* %244, i8** %12, align 8
  store i32 -1, i32* %9, align 4
  br label %245

245:                                              ; preds = %241, %240
  %246 = load i8*, i8** %12, align 8
  %247 = load i32, i32* %9, align 4
  %248 = call i32 @uv__convert_utf16_to_utf8(i8* %246, i32 %247, i8** %11)
  %249 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %250 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 4
  switch i32 %251, label %268 [
    i32 132, label %252
    i32 130, label %252
    i32 128, label %252
    i32 129, label %252
    i32 131, label %260
  ]

252:                                              ; preds = %245, %245, %245, %245
  %253 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %254 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %253, i32 0, i32 5
  %255 = load i32 (%struct.TYPE_21__*, i8*, i32, i32)*, i32 (%struct.TYPE_21__*, i8*, i32, i32)** %254, align 8
  %256 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %257 = load i8*, i8** %11, align 8
  %258 = load i32, i32* @UV_RENAME, align 4
  %259 = call i32 %255(%struct.TYPE_21__* %256, i8* %257, i32 %258, i32 0)
  br label %268

260:                                              ; preds = %245
  %261 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %262 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %261, i32 0, i32 5
  %263 = load i32 (%struct.TYPE_21__*, i8*, i32, i32)*, i32 (%struct.TYPE_21__*, i8*, i32, i32)** %262, align 8
  %264 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %265 = load i8*, i8** %11, align 8
  %266 = load i32, i32* @UV_CHANGE, align 4
  %267 = call i32 %263(%struct.TYPE_21__* %264, i8* %265, i32 %266, i32 0)
  br label %268

268:                                              ; preds = %245, %260, %252
  %269 = load i8*, i8** %11, align 8
  %270 = call i32 @uv__free(i8* %269)
  store i8* null, i8** %11, align 8
  %271 = load i8*, i8** %13, align 8
  %272 = call i32 @uv__free(i8* %271)
  store i8* null, i8** %13, align 8
  store i8* null, i8** %12, align 8
  br label %273

273:                                              ; preds = %268, %102
  %274 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %275 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %274, i32 0, i32 3
  %276 = load i32, i32* %275, align 8
  store i32 %276, i32* %14, align 4
  br label %277

277:                                              ; preds = %273
  %278 = load i32, i32* %14, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %288

280:                                              ; preds = %277
  %281 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %282 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 4
  %284 = load i32, i32* @UV_HANDLE_CLOSING, align 4
  %285 = and i32 %283, %284
  %286 = icmp ne i32 %285, 0
  %287 = xor i1 %286, true
  br label %288

288:                                              ; preds = %280, %277
  %289 = phi i1 [ false, %277 ], [ %287, %280 ]
  br i1 %289, label %64, label %290

290:                                              ; preds = %288
  br label %298

291:                                              ; preds = %55
  %292 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %293 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %292, i32 0, i32 5
  %294 = load i32 (%struct.TYPE_21__*, i8*, i32, i32)*, i32 (%struct.TYPE_21__*, i8*, i32, i32)** %293, align 8
  %295 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %296 = load i32, i32* @UV_CHANGE, align 4
  %297 = call i32 %294(%struct.TYPE_21__* %295, i8* null, i32 %296, i32 0)
  br label %298

298:                                              ; preds = %291, %290
  br label %309

299:                                              ; preds = %44
  %300 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %301 = call i32 @GET_REQ_ERROR(%struct.TYPE_20__* %300)
  store i32 %301, i32* %8, align 4
  %302 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %303 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %302, i32 0, i32 5
  %304 = load i32 (%struct.TYPE_21__*, i8*, i32, i32)*, i32 (%struct.TYPE_21__*, i8*, i32, i32)** %303, align 8
  %305 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %306 = load i32, i32* %8, align 4
  %307 = call i32 @uv_translate_sys_error(i32 %306)
  %308 = call i32 %304(%struct.TYPE_21__* %305, i8* null, i32 0, i32 %307)
  br label %309

309:                                              ; preds = %299, %298
  %310 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %311 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %310, i32 0, i32 1
  %312 = load i32, i32* %311, align 4
  %313 = load i32, i32* @UV_HANDLE_CLOSING, align 4
  %314 = and i32 %312, %313
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %320, label %316

316:                                              ; preds = %309
  %317 = load i32*, i32** %4, align 8
  %318 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %319 = call i32 @uv_fs_event_queue_readdirchanges(i32* %317, %struct.TYPE_21__* %318)
  br label %325

320:                                              ; preds = %309
  %321 = load i32*, i32** %4, align 8
  %322 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %323 = bitcast %struct.TYPE_21__* %322 to i32*
  %324 = call i32 @uv_want_endgame(i32* %321, i32* %323)
  br label %325

325:                                              ; preds = %43, %320, %316
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @uv__is_active(%struct.TYPE_21__*) #1

declare dso_local i32 @uv_want_endgame(i32*, i32*) #1

declare dso_local i64 @REQ_SUCCESS(%struct.TYPE_20__*) #1

declare dso_local i64 @file_info_cmp(i8*, i8*, i32) #1

declare dso_local i32 @wcslen(i64) #1

declare dso_local i64 @uv__malloc(i32) #1

declare dso_local i32 @uv_fatal_error(i32, i8*) #1

declare dso_local i32 @_snwprintf(i8*, i32, i8*, i64, i32, i8*) #1

declare dso_local i32 @GetLongPathNameW(i8*, i8*, i32) #1

declare dso_local i32 @uv__free(i8*) #1

declare dso_local i32 @uv_relative_path(i8*, i64, i8**) #1

declare dso_local i32 @uv__convert_utf16_to_utf8(i8*, i32, i8**) #1

declare dso_local i32 @GET_REQ_ERROR(%struct.TYPE_20__*) #1

declare dso_local i32 @uv_translate_sys_error(i32) #1

declare dso_local i32 @uv_fs_event_queue_readdirchanges(i32*, %struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
