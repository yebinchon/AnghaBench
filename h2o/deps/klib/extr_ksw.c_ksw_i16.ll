; ModuleID = '/home/carl/AnghaBench/h2o/deps/klib/extr_ksw.c_ksw_i16.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/klib/extr_ksw.c_ksw_i16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32*, i32*, i32*, i32*, i32* }

@g_defr = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@KSW_XSUBO = common dso_local global i32 0, align 4
@KSW_XSTOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ksw_i16(%struct.TYPE_6__* noalias sret %0, %struct.TYPE_7__* %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32*, align 8
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32*, align 8
  %43 = alloca i32, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 %6, i32* %13, align 4
  store i32 -1, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %44 = bitcast %struct.TYPE_6__* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %44, i8* align 4 bitcast (%struct.TYPE_6__* @g_defr to i8*), i64 20, i1 false)
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* @KSW_XSUBO, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %7
  %50 = load i32, i32* %13, align 4
  %51 = and i32 %50, 65535
  br label %53

52:                                               ; preds = %7
  br label %53

53:                                               ; preds = %52, %49
  %54 = phi i32 [ %51, %49 ], [ 65536, %52 ]
  store i32 %54, i32* %20, align 4
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* @KSW_XSTOP, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load i32, i32* %13, align 4
  %61 = and i32 %60, 65535
  br label %63

62:                                               ; preds = %53
  br label %63

63:                                               ; preds = %62, %59
  %64 = phi i32 [ %61, %59 ], [ 65536, %62 ]
  store i32 %64, i32* %21, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  store i32* null, i32** %22, align 8
  %65 = call i32 @_mm_set1_epi32(i32 0)
  store i32 %65, i32* %23, align 4
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %12, align 4
  %68 = add nsw i32 %66, %67
  %69 = call i32 @_mm_set1_epi16(i32 %68)
  store i32 %69, i32* %24, align 4
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @_mm_set1_epi16(i32 %70)
  store i32 %71, i32* %25, align 4
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 6
  %74 = load i32*, i32** %73, align 8
  store i32* %74, i32** %26, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 5
  %77 = load i32*, i32** %76, align 8
  store i32* %77, i32** %27, align 8
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 4
  %80 = load i32*, i32** %79, align 8
  store i32* %80, i32** %28, align 8
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 3
  %83 = load i32*, i32** %82, align 8
  store i32* %83, i32** %29, align 8
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  store i32 %86, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %87

87:                                               ; preds = %110, %63
  %88 = load i32, i32* %15, align 4
  %89 = load i32, i32* %14, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %113

91:                                               ; preds = %87
  %92 = load i32*, i32** %28, align 8
  %93 = load i32, i32* %15, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %23, align 4
  %97 = call i32 @_mm_store_si128(i32* %95, i32 %96)
  %98 = load i32*, i32** %26, align 8
  %99 = load i32, i32* %15, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %23, align 4
  %103 = call i32 @_mm_store_si128(i32* %101, i32 %102)
  %104 = load i32*, i32** %29, align 8
  %105 = load i32, i32* %15, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %23, align 4
  %109 = call i32 @_mm_store_si128(i32* %107, i32 %108)
  br label %110

110:                                              ; preds = %91
  %111 = load i32, i32* %15, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %15, align 4
  br label %87

113:                                              ; preds = %87
  store i32 0, i32* %15, align 4
  br label %114

114:                                              ; preds = %381, %113
  %115 = load i32, i32* %15, align 4
  %116 = load i32, i32* %9, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %384

118:                                              ; preds = %114
  %119 = load i32, i32* %23, align 4
  store i32 %119, i32* %35, align 4
  %120 = load i32, i32* %23, align 4
  store i32 %120, i32* %36, align 4
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 2
  %123 = load i32*, i32** %122, align 8
  %124 = load i32*, i32** %10, align 8
  %125 = load i32, i32* %15, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %14, align 4
  %130 = mul nsw i32 %128, %129
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %123, i64 %131
  store i32* %132, i32** %37, align 8
  %133 = load i32*, i32** %26, align 8
  %134 = load i32, i32* %14, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = getelementptr inbounds i32, i32* %136, i64 -1
  %138 = call i32 @_mm_load_si128(i32* %137)
  store i32 %138, i32* %34, align 4
  %139 = load i32, i32* %34, align 4
  %140 = call i32 @_mm_slli_si128(i32 %139, i32 2)
  store i32 %140, i32* %34, align 4
  store i32 0, i32* %30, align 4
  br label %141

141:                                              ; preds = %200, %118
  %142 = load i32, i32* %30, align 4
  %143 = load i32, i32* %14, align 4
  %144 = icmp slt i32 %142, %143
  %145 = zext i1 %144 to i32
  %146 = call i64 @LIKELY(i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %203

148:                                              ; preds = %141
  %149 = load i32, i32* %34, align 4
  %150 = load i32*, i32** %37, align 8
  %151 = getelementptr inbounds i32, i32* %150, i32 1
  store i32* %151, i32** %37, align 8
  %152 = load i32, i32* %150, align 4
  %153 = call i32 @_mm_adds_epi16(i32 %149, i32 %152)
  store i32 %153, i32* %34, align 4
  %154 = load i32*, i32** %28, align 8
  %155 = load i32, i32* %30, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = call i32 @_mm_load_si128(i32* %157)
  store i32 %158, i32* %33, align 4
  %159 = load i32, i32* %34, align 4
  %160 = load i32, i32* %33, align 4
  %161 = call i32 @_mm_max_epi16(i32 %159, i32 %160)
  store i32 %161, i32* %34, align 4
  %162 = load i32, i32* %34, align 4
  %163 = load i32, i32* %35, align 4
  %164 = call i32 @_mm_max_epi16(i32 %162, i32 %163)
  store i32 %164, i32* %34, align 4
  %165 = load i32, i32* %36, align 4
  %166 = load i32, i32* %34, align 4
  %167 = call i32 @_mm_max_epi16(i32 %165, i32 %166)
  store i32 %167, i32* %36, align 4
  %168 = load i32*, i32** %27, align 8
  %169 = load i32, i32* %30, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i32, i32* %34, align 4
  %173 = call i32 @_mm_store_si128(i32* %171, i32 %172)
  %174 = load i32, i32* %34, align 4
  %175 = load i32, i32* %24, align 4
  %176 = call i32 @_mm_subs_epu16(i32 %174, i32 %175)
  store i32 %176, i32* %34, align 4
  %177 = load i32, i32* %33, align 4
  %178 = load i32, i32* %25, align 4
  %179 = call i32 @_mm_subs_epu16(i32 %177, i32 %178)
  store i32 %179, i32* %33, align 4
  %180 = load i32, i32* %33, align 4
  %181 = load i32, i32* %34, align 4
  %182 = call i32 @_mm_max_epi16(i32 %180, i32 %181)
  store i32 %182, i32* %33, align 4
  %183 = load i32*, i32** %28, align 8
  %184 = load i32, i32* %30, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  %187 = load i32, i32* %33, align 4
  %188 = call i32 @_mm_store_si128(i32* %186, i32 %187)
  %189 = load i32, i32* %35, align 4
  %190 = load i32, i32* %25, align 4
  %191 = call i32 @_mm_subs_epu16(i32 %189, i32 %190)
  store i32 %191, i32* %35, align 4
  %192 = load i32, i32* %35, align 4
  %193 = load i32, i32* %34, align 4
  %194 = call i32 @_mm_max_epi16(i32 %192, i32 %193)
  store i32 %194, i32* %35, align 4
  %195 = load i32*, i32** %26, align 8
  %196 = load i32, i32* %30, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  %199 = call i32 @_mm_load_si128(i32* %198)
  store i32 %199, i32* %34, align 4
  br label %200

200:                                              ; preds = %148
  %201 = load i32, i32* %30, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %30, align 4
  br label %141

203:                                              ; preds = %141
  store i32 0, i32* %31, align 4
  br label %204

204:                                              ; preds = %256, %203
  %205 = load i32, i32* %31, align 4
  %206 = icmp slt i32 %205, 16
  %207 = zext i1 %206 to i32
  %208 = call i64 @LIKELY(i32 %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %259

210:                                              ; preds = %204
  %211 = load i32, i32* %35, align 4
  %212 = call i32 @_mm_slli_si128(i32 %211, i32 2)
  store i32 %212, i32* %35, align 4
  store i32 0, i32* %30, align 4
  br label %213

213:                                              ; preds = %252, %210
  %214 = load i32, i32* %30, align 4
  %215 = load i32, i32* %14, align 4
  %216 = icmp slt i32 %214, %215
  %217 = zext i1 %216 to i32
  %218 = call i64 @LIKELY(i32 %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %255

220:                                              ; preds = %213
  %221 = load i32*, i32** %27, align 8
  %222 = load i32, i32* %30, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %221, i64 %223
  %225 = call i32 @_mm_load_si128(i32* %224)
  store i32 %225, i32* %34, align 4
  %226 = load i32, i32* %34, align 4
  %227 = load i32, i32* %35, align 4
  %228 = call i32 @_mm_max_epi16(i32 %226, i32 %227)
  store i32 %228, i32* %34, align 4
  %229 = load i32*, i32** %27, align 8
  %230 = load i32, i32* %30, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %229, i64 %231
  %233 = load i32, i32* %34, align 4
  %234 = call i32 @_mm_store_si128(i32* %232, i32 %233)
  %235 = load i32, i32* %34, align 4
  %236 = load i32, i32* %24, align 4
  %237 = call i32 @_mm_subs_epu16(i32 %235, i32 %236)
  store i32 %237, i32* %34, align 4
  %238 = load i32, i32* %35, align 4
  %239 = load i32, i32* %25, align 4
  %240 = call i32 @_mm_subs_epu16(i32 %238, i32 %239)
  store i32 %240, i32* %35, align 4
  %241 = load i32, i32* %35, align 4
  %242 = load i32, i32* %34, align 4
  %243 = call i32 @_mm_cmpgt_epi16(i32 %241, i32 %242)
  %244 = call i32 @_mm_movemask_epi8(i32 %243)
  %245 = icmp ne i32 %244, 0
  %246 = xor i1 %245, true
  %247 = zext i1 %246 to i32
  %248 = call i64 @UNLIKELY(i32 %247)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %220
  br label %260

251:                                              ; preds = %220
  br label %252

252:                                              ; preds = %251
  %253 = load i32, i32* %30, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %30, align 4
  br label %213

255:                                              ; preds = %213
  br label %256

256:                                              ; preds = %255
  %257 = load i32, i32* %31, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %31, align 4
  br label %204

259:                                              ; preds = %204
  br label %260

260:                                              ; preds = %259, %250
  br label %261

261:                                              ; preds = %260
  %262 = load i32, i32* %36, align 4
  %263 = load i32, i32* %36, align 4
  %264 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_srli_si128 to i32 (i32, i32, ...)*)(i32 %263, i32 8)
  %265 = call i32 @_mm_max_epi16(i32 %262, i32 %264)
  store i32 %265, i32* %36, align 4
  %266 = load i32, i32* %36, align 4
  %267 = load i32, i32* %36, align 4
  %268 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_srli_si128 to i32 (i32, i32, ...)*)(i32 %267, i32 4)
  %269 = call i32 @_mm_max_epi16(i32 %266, i32 %268)
  store i32 %269, i32* %36, align 4
  %270 = load i32, i32* %36, align 4
  %271 = load i32, i32* %36, align 4
  %272 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_srli_si128 to i32 (i32, i32, ...)*)(i32 %271, i32 2)
  %273 = call i32 @_mm_max_epi16(i32 %270, i32 %272)
  store i32 %273, i32* %36, align 4
  %274 = load i32, i32* %36, align 4
  %275 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_extract_epi16 to i32 (i32, i32, ...)*)(i32 %274, i32 0)
  store i32 %275, i32* %32, align 4
  br label %276

276:                                              ; preds = %261
  %277 = load i32, i32* %32, align 4
  %278 = load i32, i32* %20, align 4
  %279 = icmp sge i32 %277, %278
  br i1 %279, label %280, label %343

280:                                              ; preds = %276
  %281 = load i32, i32* %17, align 4
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %293, label %283

283:                                              ; preds = %280
  %284 = load i32*, i32** %22, align 8
  %285 = load i32, i32* %17, align 4
  %286 = sub nsw i32 %285, 1
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32, i32* %284, i64 %287
  %289 = load i32, i32* %288, align 4
  %290 = add nsw i32 %289, 1
  %291 = load i32, i32* %15, align 4
  %292 = icmp ne i32 %290, %291
  br i1 %292, label %293, label %321

293:                                              ; preds = %283, %280
  %294 = load i32, i32* %17, align 4
  %295 = load i32, i32* %16, align 4
  %296 = icmp eq i32 %294, %295
  br i1 %296, label %297, label %311

297:                                              ; preds = %293
  %298 = load i32, i32* %16, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %303

300:                                              ; preds = %297
  %301 = load i32, i32* %16, align 4
  %302 = shl i32 %301, 1
  br label %304

303:                                              ; preds = %297
  br label %304

304:                                              ; preds = %303, %300
  %305 = phi i32 [ %302, %300 ], [ 8, %303 ]
  store i32 %305, i32* %16, align 4
  %306 = load i32*, i32** %22, align 8
  %307 = load i32, i32* %16, align 4
  %308 = mul nsw i32 8, %307
  %309 = call i64 @realloc(i32* %306, i32 %308)
  %310 = inttoptr i64 %309 to i32*
  store i32* %310, i32** %22, align 8
  br label %311

311:                                              ; preds = %304, %293
  %312 = load i32, i32* %32, align 4
  %313 = shl i32 %312, 32
  %314 = load i32, i32* %15, align 4
  %315 = or i32 %313, %314
  %316 = load i32*, i32** %22, align 8
  %317 = load i32, i32* %17, align 4
  %318 = add nsw i32 %317, 1
  store i32 %318, i32* %17, align 4
  %319 = sext i32 %317 to i64
  %320 = getelementptr inbounds i32, i32* %316, i64 %319
  store i32 %315, i32* %320, align 4
  br label %342

321:                                              ; preds = %283
  %322 = load i32*, i32** %22, align 8
  %323 = load i32, i32* %17, align 4
  %324 = sub nsw i32 %323, 1
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i32, i32* %322, i64 %325
  %327 = load i32, i32* %326, align 4
  %328 = ashr i32 %327, 32
  %329 = load i32, i32* %32, align 4
  %330 = icmp slt i32 %328, %329
  br i1 %330, label %331, label %341

331:                                              ; preds = %321
  %332 = load i32, i32* %32, align 4
  %333 = shl i32 %332, 32
  %334 = load i32, i32* %15, align 4
  %335 = or i32 %333, %334
  %336 = load i32*, i32** %22, align 8
  %337 = load i32, i32* %17, align 4
  %338 = sub nsw i32 %337, 1
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i32, i32* %336, i64 %339
  store i32 %335, i32* %340, align 4
  br label %341

341:                                              ; preds = %331, %321
  br label %342

342:                                              ; preds = %341, %311
  br label %343

343:                                              ; preds = %342, %276
  %344 = load i32, i32* %32, align 4
  %345 = load i32, i32* %19, align 4
  %346 = icmp sgt i32 %344, %345
  br i1 %346, label %347, label %377

347:                                              ; preds = %343
  %348 = load i32, i32* %32, align 4
  store i32 %348, i32* %19, align 4
  %349 = load i32, i32* %15, align 4
  store i32 %349, i32* %18, align 4
  store i32 0, i32* %30, align 4
  br label %350

350:                                              ; preds = %368, %347
  %351 = load i32, i32* %30, align 4
  %352 = load i32, i32* %14, align 4
  %353 = icmp slt i32 %351, %352
  %354 = zext i1 %353 to i32
  %355 = call i64 @LIKELY(i32 %354)
  %356 = icmp ne i64 %355, 0
  br i1 %356, label %357, label %371

357:                                              ; preds = %350
  %358 = load i32*, i32** %29, align 8
  %359 = load i32, i32* %30, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds i32, i32* %358, i64 %360
  %362 = load i32*, i32** %27, align 8
  %363 = load i32, i32* %30, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds i32, i32* %362, i64 %364
  %366 = call i32 @_mm_load_si128(i32* %365)
  %367 = call i32 @_mm_store_si128(i32* %361, i32 %366)
  br label %368

368:                                              ; preds = %357
  %369 = load i32, i32* %30, align 4
  %370 = add nsw i32 %369, 1
  store i32 %370, i32* %30, align 4
  br label %350

371:                                              ; preds = %350
  %372 = load i32, i32* %19, align 4
  %373 = load i32, i32* %21, align 4
  %374 = icmp sge i32 %372, %373
  br i1 %374, label %375, label %376

375:                                              ; preds = %371
  br label %384

376:                                              ; preds = %371
  br label %377

377:                                              ; preds = %376, %343
  %378 = load i32*, i32** %27, align 8
  store i32* %378, i32** %37, align 8
  %379 = load i32*, i32** %26, align 8
  store i32* %379, i32** %27, align 8
  %380 = load i32*, i32** %37, align 8
  store i32* %380, i32** %26, align 8
  br label %381

381:                                              ; preds = %377
  %382 = load i32, i32* %15, align 4
  %383 = add nsw i32 %382, 1
  store i32 %383, i32* %15, align 4
  br label %114

384:                                              ; preds = %375, %114
  %385 = load i32, i32* %19, align 4
  %386 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  store i32 %385, i32* %386, align 4
  %387 = load i32, i32* %18, align 4
  %388 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  store i32 %387, i32* %388, align 4
  store i32 -1, i32* %38, align 4
  %389 = load i32, i32* %14, align 4
  %390 = mul nsw i32 %389, 8
  store i32 %390, i32* %41, align 4
  %391 = load i32*, i32** %29, align 8
  store i32* %391, i32** %42, align 8
  store i32 0, i32* %15, align 4
  %392 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  store i32 -1, i32* %392, align 4
  br label %393

393:                                              ; preds = %414, %384
  %394 = load i32, i32* %15, align 4
  %395 = load i32, i32* %41, align 4
  %396 = icmp slt i32 %394, %395
  br i1 %396, label %397, label %419

397:                                              ; preds = %393
  %398 = load i32*, i32** %42, align 8
  %399 = load i32, i32* %398, align 4
  %400 = load i32, i32* %38, align 4
  %401 = icmp sgt i32 %399, %400
  br i1 %401, label %402, label %413

402:                                              ; preds = %397
  %403 = load i32*, i32** %42, align 8
  %404 = load i32, i32* %403, align 4
  store i32 %404, i32* %38, align 4
  %405 = load i32, i32* %15, align 4
  %406 = sdiv i32 %405, 8
  %407 = load i32, i32* %15, align 4
  %408 = srem i32 %407, 8
  %409 = load i32, i32* %14, align 4
  %410 = mul nsw i32 %408, %409
  %411 = add nsw i32 %406, %410
  %412 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  store i32 %411, i32* %412, align 4
  br label %413

413:                                              ; preds = %402, %397
  br label %414

414:                                              ; preds = %413
  %415 = load i32, i32* %15, align 4
  %416 = add nsw i32 %415, 1
  store i32 %416, i32* %15, align 4
  %417 = load i32*, i32** %42, align 8
  %418 = getelementptr inbounds i32, i32* %417, i32 1
  store i32* %418, i32** %42, align 8
  br label %393

419:                                              ; preds = %393
  %420 = load i32*, i32** %22, align 8
  %421 = icmp ne i32* %420, null
  br i1 %421, label %422, label %482

422:                                              ; preds = %419
  %423 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  %424 = load i32, i32* %423, align 4
  %425 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %426 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %425, i32 0, i32 1
  %427 = load i32, i32* %426, align 4
  %428 = add nsw i32 %424, %427
  %429 = sub nsw i32 %428, 1
  %430 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %431 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %430, i32 0, i32 1
  %432 = load i32, i32* %431, align 4
  %433 = sdiv i32 %429, %432
  store i32 %433, i32* %15, align 4
  %434 = load i32, i32* %18, align 4
  %435 = load i32, i32* %15, align 4
  %436 = sub nsw i32 %434, %435
  store i32 %436, i32* %39, align 4
  %437 = load i32, i32* %18, align 4
  %438 = load i32, i32* %15, align 4
  %439 = add nsw i32 %437, %438
  store i32 %439, i32* %40, align 4
  store i32 0, i32* %15, align 4
  br label %440

440:                                              ; preds = %478, %422
  %441 = load i32, i32* %15, align 4
  %442 = load i32, i32* %17, align 4
  %443 = icmp slt i32 %441, %442
  br i1 %443, label %444, label %481

444:                                              ; preds = %440
  %445 = load i32*, i32** %22, align 8
  %446 = load i32, i32* %15, align 4
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds i32, i32* %445, i64 %447
  %449 = load i32, i32* %448, align 4
  store i32 %449, i32* %43, align 4
  %450 = load i32, i32* %43, align 4
  %451 = load i32, i32* %39, align 4
  %452 = icmp slt i32 %450, %451
  br i1 %452, label %457, label %453

453:                                              ; preds = %444
  %454 = load i32, i32* %43, align 4
  %455 = load i32, i32* %40, align 4
  %456 = icmp sgt i32 %454, %455
  br i1 %456, label %457, label %477

457:                                              ; preds = %453, %444
  %458 = load i32*, i32** %22, align 8
  %459 = load i32, i32* %15, align 4
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds i32, i32* %458, i64 %460
  %462 = load i32, i32* %461, align 4
  %463 = ashr i32 %462, 32
  %464 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 3
  %465 = load i32, i32* %464, align 4
  %466 = icmp sgt i32 %463, %465
  br i1 %466, label %467, label %477

467:                                              ; preds = %457
  %468 = load i32*, i32** %22, align 8
  %469 = load i32, i32* %15, align 4
  %470 = sext i32 %469 to i64
  %471 = getelementptr inbounds i32, i32* %468, i64 %470
  %472 = load i32, i32* %471, align 4
  %473 = ashr i32 %472, 32
  %474 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 3
  store i32 %473, i32* %474, align 4
  %475 = load i32, i32* %43, align 4
  %476 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 4
  store i32 %475, i32* %476, align 4
  br label %477

477:                                              ; preds = %467, %457, %453
  br label %478

478:                                              ; preds = %477
  %479 = load i32, i32* %15, align 4
  %480 = add nsw i32 %479, 1
  store i32 %480, i32* %15, align 4
  br label %440

481:                                              ; preds = %440
  br label %482

482:                                              ; preds = %481, %419
  %483 = load i32*, i32** %22, align 8
  %484 = call i32 @free(i32* %483)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @_mm_set1_epi32(i32) #2

declare dso_local i32 @_mm_set1_epi16(i32) #2

declare dso_local i32 @_mm_store_si128(i32*, i32) #2

declare dso_local i32 @_mm_load_si128(i32*) #2

declare dso_local i32 @_mm_slli_si128(i32, i32) #2

declare dso_local i64 @LIKELY(i32) #2

declare dso_local i32 @_mm_adds_epi16(i32, i32) #2

declare dso_local i32 @_mm_max_epi16(i32, i32) #2

declare dso_local i32 @_mm_subs_epu16(i32, i32) #2

declare dso_local i64 @UNLIKELY(i32) #2

declare dso_local i32 @_mm_movemask_epi8(i32) #2

declare dso_local i32 @_mm_cmpgt_epi16(i32, i32) #2

declare dso_local i32 @_mm_srli_si128(...) #2

declare dso_local i32 @_mm_extract_epi16(...) #2

declare dso_local i64 @realloc(i32*, i32) #2

declare dso_local i32 @free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
