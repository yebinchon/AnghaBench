; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_patch.c_ExpandMaxIterations.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_patch.c_ExpandMaxIterations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_EXPANDED_AXIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, float*, float*, float*)* @ExpandMaxIterations to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ExpandMaxIterations(i32* %0, i32 %1, float* %2, float* %3, float* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float*, align 8
  %14 = alloca float*, align 8
  %15 = alloca float*, align 8
  %16 = alloca float*, align 8
  %17 = alloca float*, align 8
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store float* %2, float** %8, align 8
  store float* %3, float** %9, align 8
  store float* %4, float** %10, align 8
  %24 = load i32, i32* @MAX_EXPANDED_AXIS, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %22, align 8
  %27 = alloca float*, i64 %25, align 16
  store i64 %25, i64* %23, align 8
  store i32 3, i32* %20, align 4
  %28 = load float*, float** %8, align 8
  %29 = getelementptr inbounds float*, float** %27, i64 0
  %30 = load float*, float** %29, align 16
  %31 = call i32 @VectorCopy(float* %28, float* %30)
  %32 = load float*, float** %9, align 8
  %33 = getelementptr inbounds float*, float** %27, i64 1
  %34 = load float*, float** %33, align 8
  %35 = call i32 @VectorCopy(float* %32, float* %34)
  %36 = load float*, float** %10, align 8
  %37 = getelementptr inbounds float*, float** %27, i64 2
  %38 = load float*, float** %37, align 16
  %39 = call i32 @VectorCopy(float* %36, float* %38)
  store i32 0, i32* %11, align 4
  br label %40

40:                                               ; preds = %273, %5
  %41 = load i32, i32* %11, align 4
  %42 = add nsw i32 %41, 2
  %43 = load i32, i32* %20, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %276

45:                                               ; preds = %40
  %46 = load i32, i32* %20, align 4
  %47 = add nsw i32 %46, 2
  %48 = load i32, i32* @MAX_EXPANDED_AXIS, align 4
  %49 = icmp sge i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %276

51:                                               ; preds = %45
  store i32 0, i32* %12, align 4
  br label %52

52:                                               ; preds = %135, %51
  %53 = load i32, i32* %12, align 4
  %54 = icmp slt i32 %53, 3
  br i1 %54, label %55, label %138

55:                                               ; preds = %52
  %56 = load i32, i32* %11, align 4
  %57 = add nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds float*, float** %27, i64 %58
  %60 = load float*, float** %59, align 8
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds float, float* %60, i64 %62
  %64 = load float, float* %63, align 4
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds float*, float** %27, i64 %66
  %68 = load float*, float** %67, align 8
  %69 = load i32, i32* %12, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds float, float* %68, i64 %70
  %72 = load float, float* %71, align 4
  %73 = fsub float %64, %72
  %74 = load float*, float** %13, align 8
  %75 = load i32, i32* %12, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds float, float* %74, i64 %76
  store float %73, float* %77, align 4
  %78 = load i32, i32* %11, align 4
  %79 = add nsw i32 %78, 2
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds float*, float** %27, i64 %80
  %82 = load float*, float** %81, align 8
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds float, float* %82, i64 %84
  %86 = load float, float* %85, align 4
  %87 = load i32, i32* %11, align 4
  %88 = add nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds float*, float** %27, i64 %89
  %91 = load float*, float** %90, align 8
  %92 = load i32, i32* %12, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds float, float* %91, i64 %93
  %95 = load float, float* %94, align 4
  %96 = fsub float %86, %95
  %97 = load float*, float** %14, align 8
  %98 = load i32, i32* %12, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds float, float* %97, i64 %99
  store float %96, float* %100, align 4
  %101 = load i32, i32* %11, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds float*, float** %27, i64 %102
  %104 = load float*, float** %103, align 8
  %105 = load i32, i32* %12, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds float, float* %104, i64 %106
  %108 = load float, float* %107, align 4
  %109 = load i32, i32* %11, align 4
  %110 = add nsw i32 %109, 1
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds float*, float** %27, i64 %111
  %113 = load float*, float** %112, align 8
  %114 = load i32, i32* %12, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds float, float* %113, i64 %115
  %117 = load float, float* %116, align 4
  %118 = fmul float %117, 2.000000e+00
  %119 = fadd float %108, %118
  %120 = load i32, i32* %11, align 4
  %121 = add nsw i32 %120, 2
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds float*, float** %27, i64 %122
  %124 = load float*, float** %123, align 8
  %125 = load i32, i32* %12, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds float, float* %124, i64 %126
  %128 = load float, float* %127, align 4
  %129 = fadd float %119, %128
  %130 = fmul float %129, 2.500000e-01
  %131 = load float*, float** %15, align 8
  %132 = load i32, i32* %12, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds float, float* %131, i64 %133
  store float %130, float* %134, align 4
  br label %135

135:                                              ; preds = %55
  %136 = load i32, i32* %12, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %12, align 4
  br label %52

138:                                              ; preds = %52
  %139 = load i32, i32* %11, align 4
  %140 = add nsw i32 %139, 1
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds float*, float** %27, i64 %141
  %143 = load float*, float** %142, align 8
  %144 = load float*, float** %15, align 8
  %145 = load float*, float** %16, align 8
  %146 = call i32 @VectorSubtract(float* %143, float* %144, float* %145)
  %147 = load float*, float** %16, align 8
  %148 = call float @VectorLength(float* %147)
  store float %148, float* %18, align 4
  %149 = load float, float* %18, align 4
  %150 = load i32, i32* %7, align 4
  %151 = sitofp i32 %150 to float
  %152 = fcmp olt float %149, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %138
  br label %273

154:                                              ; preds = %138
  %155 = load i32, i32* %20, align 4
  %156 = add nsw i32 %155, 2
  store i32 %156, i32* %20, align 4
  store i32 0, i32* %12, align 4
  br label %157

157:                                              ; preds = %224, %154
  %158 = load i32, i32* %12, align 4
  %159 = icmp slt i32 %158, 3
  br i1 %159, label %160, label %227

160:                                              ; preds = %157
  %161 = load i32, i32* %11, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds float*, float** %27, i64 %162
  %164 = load float*, float** %163, align 8
  %165 = load i32, i32* %12, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds float, float* %164, i64 %166
  %168 = load float, float* %167, align 4
  %169 = load i32, i32* %11, align 4
  %170 = add nsw i32 %169, 1
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds float*, float** %27, i64 %171
  %173 = load float*, float** %172, align 8
  %174 = load i32, i32* %12, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds float, float* %173, i64 %175
  %177 = load float, float* %176, align 4
  %178 = fadd float %168, %177
  %179 = fmul float 5.000000e-01, %178
  %180 = load float*, float** %13, align 8
  %181 = load i32, i32* %12, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds float, float* %180, i64 %182
  store float %179, float* %183, align 4
  %184 = load i32, i32* %11, align 4
  %185 = add nsw i32 %184, 1
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds float*, float** %27, i64 %186
  %188 = load float*, float** %187, align 8
  %189 = load i32, i32* %12, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds float, float* %188, i64 %190
  %192 = load float, float* %191, align 4
  %193 = load i32, i32* %11, align 4
  %194 = add nsw i32 %193, 2
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds float*, float** %27, i64 %195
  %197 = load float*, float** %196, align 8
  %198 = load i32, i32* %12, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds float, float* %197, i64 %199
  %201 = load float, float* %200, align 4
  %202 = fadd float %192, %201
  %203 = fmul float 5.000000e-01, %202
  %204 = load float*, float** %14, align 8
  %205 = load i32, i32* %12, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds float, float* %204, i64 %206
  store float %203, float* %207, align 4
  %208 = load float*, float** %13, align 8
  %209 = load i32, i32* %12, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds float, float* %208, i64 %210
  %212 = load float, float* %211, align 4
  %213 = load float*, float** %14, align 8
  %214 = load i32, i32* %12, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds float, float* %213, i64 %215
  %217 = load float, float* %216, align 4
  %218 = fadd float %212, %217
  %219 = fmul float 5.000000e-01, %218
  %220 = load float*, float** %15, align 8
  %221 = load i32, i32* %12, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds float, float* %220, i64 %222
  store float %219, float* %223, align 4
  br label %224

224:                                              ; preds = %160
  %225 = load i32, i32* %12, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %12, align 4
  br label %157

227:                                              ; preds = %157
  %228 = load i32, i32* %20, align 4
  %229 = sub nsw i32 %228, 1
  store i32 %229, i32* %12, align 4
  br label %230

230:                                              ; preds = %246, %227
  %231 = load i32, i32* %12, align 4
  %232 = load i32, i32* %11, align 4
  %233 = add nsw i32 %232, 3
  %234 = icmp sgt i32 %231, %233
  br i1 %234, label %235, label %249

235:                                              ; preds = %230
  %236 = load i32, i32* %12, align 4
  %237 = sub nsw i32 %236, 2
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds float*, float** %27, i64 %238
  %240 = load float*, float** %239, align 8
  %241 = load i32, i32* %12, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds float*, float** %27, i64 %242
  %244 = load float*, float** %243, align 8
  %245 = call i32 @VectorCopy(float* %240, float* %244)
  br label %246

246:                                              ; preds = %235
  %247 = load i32, i32* %12, align 4
  %248 = add nsw i32 %247, -1
  store i32 %248, i32* %12, align 4
  br label %230

249:                                              ; preds = %230
  %250 = load float*, float** %13, align 8
  %251 = load i32, i32* %11, align 4
  %252 = add nsw i32 %251, 1
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds float*, float** %27, i64 %253
  %255 = load float*, float** %254, align 8
  %256 = call i32 @VectorCopy(float* %250, float* %255)
  %257 = load float*, float** %15, align 8
  %258 = load i32, i32* %11, align 4
  %259 = add nsw i32 %258, 2
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds float*, float** %27, i64 %260
  %262 = load float*, float** %261, align 8
  %263 = call i32 @VectorCopy(float* %257, float* %262)
  %264 = load float*, float** %14, align 8
  %265 = load i32, i32* %11, align 4
  %266 = add nsw i32 %265, 3
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds float*, float** %27, i64 %267
  %269 = load float*, float** %268, align 8
  %270 = call i32 @VectorCopy(float* %264, float* %269)
  %271 = load i32, i32* %11, align 4
  %272 = sub nsw i32 %271, 2
  store i32 %272, i32* %11, align 4
  br label %273

273:                                              ; preds = %249, %153
  %274 = load i32, i32* %11, align 4
  %275 = add nsw i32 %274, 2
  store i32 %275, i32* %11, align 4
  br label %40

276:                                              ; preds = %50, %40
  store i32 1, i32* %11, align 4
  br label %277

277:                                              ; preds = %355, %276
  %278 = load i32, i32* %11, align 4
  %279 = load i32, i32* %20, align 4
  %280 = icmp slt i32 %278, %279
  br i1 %280, label %281, label %358

281:                                              ; preds = %277
  store i32 0, i32* %12, align 4
  br label %282

282:                                              ; preds = %351, %281
  %283 = load i32, i32* %12, align 4
  %284 = icmp slt i32 %283, 3
  br i1 %284, label %285, label %354

285:                                              ; preds = %282
  %286 = load i32, i32* %11, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds float*, float** %27, i64 %287
  %289 = load float*, float** %288, align 8
  %290 = load i32, i32* %12, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds float, float* %289, i64 %291
  %293 = load float, float* %292, align 4
  %294 = load i32, i32* %11, align 4
  %295 = add nsw i32 %294, 1
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds float*, float** %27, i64 %296
  %298 = load float*, float** %297, align 8
  %299 = load i32, i32* %12, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds float, float* %298, i64 %300
  %302 = load float, float* %301, align 4
  %303 = fadd float %293, %302
  %304 = fmul float 5.000000e-01, %303
  %305 = load float*, float** %13, align 8
  %306 = load i32, i32* %12, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds float, float* %305, i64 %307
  store float %304, float* %308, align 4
  %309 = load i32, i32* %11, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds float*, float** %27, i64 %310
  %312 = load float*, float** %311, align 8
  %313 = load i32, i32* %12, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds float, float* %312, i64 %314
  %316 = load float, float* %315, align 4
  %317 = load i32, i32* %11, align 4
  %318 = sub nsw i32 %317, 1
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds float*, float** %27, i64 %319
  %321 = load float*, float** %320, align 8
  %322 = load i32, i32* %12, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds float, float* %321, i64 %323
  %325 = load float, float* %324, align 4
  %326 = fadd float %316, %325
  %327 = fmul float 5.000000e-01, %326
  %328 = load float*, float** %14, align 8
  %329 = load i32, i32* %12, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds float, float* %328, i64 %330
  store float %327, float* %331, align 4
  %332 = load float*, float** %13, align 8
  %333 = load i32, i32* %12, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds float, float* %332, i64 %334
  %336 = load float, float* %335, align 4
  %337 = load float*, float** %14, align 8
  %338 = load i32, i32* %12, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds float, float* %337, i64 %339
  %341 = load float, float* %340, align 4
  %342 = fadd float %336, %341
  %343 = fmul float 5.000000e-01, %342
  %344 = load i32, i32* %11, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds float*, float** %27, i64 %345
  %347 = load float*, float** %346, align 8
  %348 = load i32, i32* %12, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds float, float* %347, i64 %349
  store float %343, float* %350, align 4
  br label %351

351:                                              ; preds = %285
  %352 = load i32, i32* %12, align 4
  %353 = add nsw i32 %352, 1
  store i32 %353, i32* %12, align 4
  br label %282

354:                                              ; preds = %282
  br label %355

355:                                              ; preds = %354
  %356 = load i32, i32* %11, align 4
  %357 = add nsw i32 %356, 2
  store i32 %357, i32* %11, align 4
  br label %277

358:                                              ; preds = %277
  store i32 0, i32* %11, align 4
  br label %359

359:                                              ; preds = %430, %358
  %360 = load i32, i32* %11, align 4
  %361 = add nsw i32 %360, 2
  %362 = load i32, i32* %20, align 4
  %363 = icmp slt i32 %361, %362
  br i1 %363, label %364, label %433

364:                                              ; preds = %359
  %365 = load i32, i32* %11, align 4
  %366 = add nsw i32 %365, 1
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds float*, float** %27, i64 %367
  %369 = load float*, float** %368, align 8
  %370 = load i32, i32* %11, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds float*, float** %27, i64 %371
  %373 = load float*, float** %372, align 8
  %374 = load float*, float** %16, align 8
  %375 = call i32 @VectorSubtract(float* %369, float* %373, float* %374)
  %376 = load float*, float** %16, align 8
  %377 = load float*, float** %16, align 8
  %378 = call float @VectorNormalize(float* %376, float* %377)
  store float %378, float* %18, align 4
  %379 = load i32, i32* %11, align 4
  %380 = add nsw i32 %379, 2
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds float*, float** %27, i64 %381
  %383 = load float*, float** %382, align 8
  %384 = load i32, i32* %11, align 4
  %385 = add nsw i32 %384, 1
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds float*, float** %27, i64 %386
  %388 = load float*, float** %387, align 8
  %389 = load float*, float** %17, align 8
  %390 = call i32 @VectorSubtract(float* %383, float* %388, float* %389)
  %391 = load float*, float** %17, align 8
  %392 = load float*, float** %17, align 8
  %393 = call float @VectorNormalize(float* %391, float* %392)
  store float %393, float* %19, align 4
  %394 = load float, float* %18, align 4
  %395 = fcmp olt float %394, 6.250000e-02
  br i1 %395, label %404, label %396

396:                                              ; preds = %364
  %397 = load float, float* %19, align 4
  %398 = fcmp olt float %397, 6.250000e-02
  br i1 %398, label %404, label %399

399:                                              ; preds = %396
  %400 = load float*, float** %16, align 8
  %401 = load float*, float** %17, align 8
  %402 = call float @DotProduct(float* %400, float* %401)
  %403 = fcmp oge float %402, 1.000000e+00
  br i1 %403, label %404, label %429

404:                                              ; preds = %399, %396, %364
  %405 = load i32, i32* %11, align 4
  %406 = add nsw i32 %405, 1
  store i32 %406, i32* %12, align 4
  br label %407

407:                                              ; preds = %423, %404
  %408 = load i32, i32* %12, align 4
  %409 = add nsw i32 %408, 1
  %410 = load i32, i32* %20, align 4
  %411 = icmp slt i32 %409, %410
  br i1 %411, label %412, label %426

412:                                              ; preds = %407
  %413 = load i32, i32* %12, align 4
  %414 = add nsw i32 %413, 1
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds float*, float** %27, i64 %415
  %417 = load float*, float** %416, align 8
  %418 = load i32, i32* %12, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds float*, float** %27, i64 %419
  %421 = load float*, float** %420, align 8
  %422 = call i32 @VectorCopy(float* %417, float* %421)
  br label %423

423:                                              ; preds = %412
  %424 = load i32, i32* %12, align 4
  %425 = add nsw i32 %424, 1
  store i32 %425, i32* %12, align 4
  br label %407

426:                                              ; preds = %407
  %427 = load i32, i32* %20, align 4
  %428 = add nsw i32 %427, -1
  store i32 %428, i32* %20, align 4
  br label %430

429:                                              ; preds = %399
  br label %430

430:                                              ; preds = %429, %426
  %431 = load i32, i32* %11, align 4
  %432 = add nsw i32 %431, 1
  store i32 %432, i32* %11, align 4
  br label %359

433:                                              ; preds = %359
  %434 = load i32, i32* %20, align 4
  %435 = ashr i32 %434, 1
  store i32 %435, i32* %20, align 4
  store i32 0, i32* %21, align 4
  br label %436

436:                                              ; preds = %439, %433
  %437 = load i32, i32* %20, align 4
  %438 = icmp sgt i32 %437, 1
  br i1 %438, label %439, label %444

439:                                              ; preds = %436
  %440 = load i32, i32* %20, align 4
  %441 = ashr i32 %440, 1
  store i32 %441, i32* %20, align 4
  %442 = load i32, i32* %21, align 4
  %443 = add nsw i32 %442, 1
  store i32 %443, i32* %21, align 4
  br label %436

444:                                              ; preds = %436
  %445 = load i32, i32* %21, align 4
  %446 = load i32*, i32** %6, align 8
  %447 = load i32, i32* %446, align 4
  %448 = icmp sgt i32 %445, %447
  br i1 %448, label %449, label %452

449:                                              ; preds = %444
  %450 = load i32, i32* %21, align 4
  %451 = load i32*, i32** %6, align 8
  store i32 %450, i32* %451, align 4
  br label %452

452:                                              ; preds = %449, %444
  %453 = load i8*, i8** %22, align 8
  call void @llvm.stackrestore(i8* %453)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @VectorCopy(float*, float*) #2

declare dso_local i32 @VectorSubtract(float*, float*, float*) #2

declare dso_local float @VectorLength(float*) #2

declare dso_local float @VectorNormalize(float*, float*) #2

declare dso_local float @DotProduct(float*, float*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
