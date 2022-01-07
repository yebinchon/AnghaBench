; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_image.c_R_MipMap2.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_image.c_R_MipMap2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* (i32)*, i32 (i32*)* }

@ri = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32)* @R_MipMap2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @R_MipMap2(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %17 = load i32, i32* %5, align 4
  %18 = ashr i32 %17, 1
  store i32 %18, i32* %14, align 4
  %19 = load i32, i32* %6, align 4
  %20 = ashr i32 %19, 1
  store i32 %20, i32* %15, align 4
  %21 = load i32* (i32)*, i32* (i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ri, i32 0, i32 0), align 8
  %22 = load i32, i32* %14, align 4
  %23 = load i32, i32* %15, align 4
  %24 = mul nsw i32 %22, %23
  %25 = mul nsw i32 %24, 4
  %26 = call i32* %21(i32 %25)
  store i32* %26, i32** %16, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sub nsw i32 %27, 1
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %6, align 4
  %30 = sub nsw i32 %29, 1
  store i32 %30, i32* %12, align 4
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %411, %3
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %15, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %414

35:                                               ; preds = %31
  store i32 0, i32* %8, align 4
  br label %36

36:                                               ; preds = %407, %35
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %14, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %410

40:                                               ; preds = %36
  %41 = load i32*, i32** %16, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %14, align 4
  %44 = mul nsw i32 %42, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %41, i64 %45
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  store i32* %49, i32** %10, align 8
  store i32 0, i32* %9, align 4
  br label %50

50:                                               ; preds = %403, %40
  %51 = load i32, i32* %9, align 4
  %52 = icmp slt i32 %51, 4
  br i1 %52, label %53, label %406

53:                                               ; preds = %50
  %54 = load i32*, i32** %4, align 8
  %55 = load i32, i32* %7, align 4
  %56 = mul nsw i32 %55, 2
  %57 = sub nsw i32 %56, 1
  %58 = load i32, i32* %12, align 4
  %59 = and i32 %57, %58
  %60 = load i32, i32* %5, align 4
  %61 = mul nsw i32 %59, %60
  %62 = load i32, i32* %8, align 4
  %63 = mul nsw i32 %62, 2
  %64 = sub nsw i32 %63, 1
  %65 = load i32, i32* %11, align 4
  %66 = and i32 %64, %65
  %67 = add nsw i32 %61, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %54, i64 %68
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = mul nsw i32 1, %73
  %75 = load i32*, i32** %4, align 8
  %76 = load i32, i32* %7, align 4
  %77 = mul nsw i32 %76, 2
  %78 = sub nsw i32 %77, 1
  %79 = load i32, i32* %12, align 4
  %80 = and i32 %78, %79
  %81 = load i32, i32* %5, align 4
  %82 = mul nsw i32 %80, %81
  %83 = load i32, i32* %8, align 4
  %84 = mul nsw i32 %83, 2
  %85 = load i32, i32* %11, align 4
  %86 = and i32 %84, %85
  %87 = add nsw i32 %82, %86
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %75, i64 %88
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = mul nsw i32 2, %93
  %95 = add nsw i32 %74, %94
  %96 = load i32*, i32** %4, align 8
  %97 = load i32, i32* %7, align 4
  %98 = mul nsw i32 %97, 2
  %99 = sub nsw i32 %98, 1
  %100 = load i32, i32* %12, align 4
  %101 = and i32 %99, %100
  %102 = load i32, i32* %5, align 4
  %103 = mul nsw i32 %101, %102
  %104 = load i32, i32* %8, align 4
  %105 = mul nsw i32 %104, 2
  %106 = add nsw i32 %105, 1
  %107 = load i32, i32* %11, align 4
  %108 = and i32 %106, %107
  %109 = add nsw i32 %103, %108
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %96, i64 %110
  %112 = load i32, i32* %9, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = mul nsw i32 2, %115
  %117 = add nsw i32 %95, %116
  %118 = load i32*, i32** %4, align 8
  %119 = load i32, i32* %7, align 4
  %120 = mul nsw i32 %119, 2
  %121 = sub nsw i32 %120, 1
  %122 = load i32, i32* %12, align 4
  %123 = and i32 %121, %122
  %124 = load i32, i32* %5, align 4
  %125 = mul nsw i32 %123, %124
  %126 = load i32, i32* %8, align 4
  %127 = mul nsw i32 %126, 2
  %128 = add nsw i32 %127, 2
  %129 = load i32, i32* %11, align 4
  %130 = and i32 %128, %129
  %131 = add nsw i32 %125, %130
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %118, i64 %132
  %134 = load i32, i32* %9, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = mul nsw i32 1, %137
  %139 = add nsw i32 %117, %138
  %140 = load i32*, i32** %4, align 8
  %141 = load i32, i32* %7, align 4
  %142 = mul nsw i32 %141, 2
  %143 = load i32, i32* %12, align 4
  %144 = and i32 %142, %143
  %145 = load i32, i32* %5, align 4
  %146 = mul nsw i32 %144, %145
  %147 = load i32, i32* %8, align 4
  %148 = mul nsw i32 %147, 2
  %149 = sub nsw i32 %148, 1
  %150 = load i32, i32* %11, align 4
  %151 = and i32 %149, %150
  %152 = add nsw i32 %146, %151
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %140, i64 %153
  %155 = load i32, i32* %9, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = mul nsw i32 2, %158
  %160 = add nsw i32 %139, %159
  %161 = load i32*, i32** %4, align 8
  %162 = load i32, i32* %7, align 4
  %163 = mul nsw i32 %162, 2
  %164 = load i32, i32* %12, align 4
  %165 = and i32 %163, %164
  %166 = load i32, i32* %5, align 4
  %167 = mul nsw i32 %165, %166
  %168 = load i32, i32* %8, align 4
  %169 = mul nsw i32 %168, 2
  %170 = load i32, i32* %11, align 4
  %171 = and i32 %169, %170
  %172 = add nsw i32 %167, %171
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %161, i64 %173
  %175 = load i32, i32* %9, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = mul nsw i32 4, %178
  %180 = add nsw i32 %160, %179
  %181 = load i32*, i32** %4, align 8
  %182 = load i32, i32* %7, align 4
  %183 = mul nsw i32 %182, 2
  %184 = load i32, i32* %12, align 4
  %185 = and i32 %183, %184
  %186 = load i32, i32* %5, align 4
  %187 = mul nsw i32 %185, %186
  %188 = load i32, i32* %8, align 4
  %189 = mul nsw i32 %188, 2
  %190 = add nsw i32 %189, 1
  %191 = load i32, i32* %11, align 4
  %192 = and i32 %190, %191
  %193 = add nsw i32 %187, %192
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %181, i64 %194
  %196 = load i32, i32* %9, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = mul nsw i32 4, %199
  %201 = add nsw i32 %180, %200
  %202 = load i32*, i32** %4, align 8
  %203 = load i32, i32* %7, align 4
  %204 = mul nsw i32 %203, 2
  %205 = load i32, i32* %12, align 4
  %206 = and i32 %204, %205
  %207 = load i32, i32* %5, align 4
  %208 = mul nsw i32 %206, %207
  %209 = load i32, i32* %8, align 4
  %210 = mul nsw i32 %209, 2
  %211 = add nsw i32 %210, 2
  %212 = load i32, i32* %11, align 4
  %213 = and i32 %211, %212
  %214 = add nsw i32 %208, %213
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %202, i64 %215
  %217 = load i32, i32* %9, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %216, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = mul nsw i32 2, %220
  %222 = add nsw i32 %201, %221
  %223 = load i32*, i32** %4, align 8
  %224 = load i32, i32* %7, align 4
  %225 = mul nsw i32 %224, 2
  %226 = add nsw i32 %225, 1
  %227 = load i32, i32* %12, align 4
  %228 = and i32 %226, %227
  %229 = load i32, i32* %5, align 4
  %230 = mul nsw i32 %228, %229
  %231 = load i32, i32* %8, align 4
  %232 = mul nsw i32 %231, 2
  %233 = sub nsw i32 %232, 1
  %234 = load i32, i32* %11, align 4
  %235 = and i32 %233, %234
  %236 = add nsw i32 %230, %235
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %223, i64 %237
  %239 = load i32, i32* %9, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %238, i64 %240
  %242 = load i32, i32* %241, align 4
  %243 = mul nsw i32 2, %242
  %244 = add nsw i32 %222, %243
  %245 = load i32*, i32** %4, align 8
  %246 = load i32, i32* %7, align 4
  %247 = mul nsw i32 %246, 2
  %248 = add nsw i32 %247, 1
  %249 = load i32, i32* %12, align 4
  %250 = and i32 %248, %249
  %251 = load i32, i32* %5, align 4
  %252 = mul nsw i32 %250, %251
  %253 = load i32, i32* %8, align 4
  %254 = mul nsw i32 %253, 2
  %255 = load i32, i32* %11, align 4
  %256 = and i32 %254, %255
  %257 = add nsw i32 %252, %256
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i32, i32* %245, i64 %258
  %260 = load i32, i32* %9, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32, i32* %259, i64 %261
  %263 = load i32, i32* %262, align 4
  %264 = mul nsw i32 4, %263
  %265 = add nsw i32 %244, %264
  %266 = load i32*, i32** %4, align 8
  %267 = load i32, i32* %7, align 4
  %268 = mul nsw i32 %267, 2
  %269 = add nsw i32 %268, 1
  %270 = load i32, i32* %12, align 4
  %271 = and i32 %269, %270
  %272 = load i32, i32* %5, align 4
  %273 = mul nsw i32 %271, %272
  %274 = load i32, i32* %8, align 4
  %275 = mul nsw i32 %274, 2
  %276 = add nsw i32 %275, 1
  %277 = load i32, i32* %11, align 4
  %278 = and i32 %276, %277
  %279 = add nsw i32 %273, %278
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %266, i64 %280
  %282 = load i32, i32* %9, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i32, i32* %281, i64 %283
  %285 = load i32, i32* %284, align 4
  %286 = mul nsw i32 4, %285
  %287 = add nsw i32 %265, %286
  %288 = load i32*, i32** %4, align 8
  %289 = load i32, i32* %7, align 4
  %290 = mul nsw i32 %289, 2
  %291 = add nsw i32 %290, 1
  %292 = load i32, i32* %12, align 4
  %293 = and i32 %291, %292
  %294 = load i32, i32* %5, align 4
  %295 = mul nsw i32 %293, %294
  %296 = load i32, i32* %8, align 4
  %297 = mul nsw i32 %296, 2
  %298 = add nsw i32 %297, 2
  %299 = load i32, i32* %11, align 4
  %300 = and i32 %298, %299
  %301 = add nsw i32 %295, %300
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i32, i32* %288, i64 %302
  %304 = load i32, i32* %9, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i32, i32* %303, i64 %305
  %307 = load i32, i32* %306, align 4
  %308 = mul nsw i32 2, %307
  %309 = add nsw i32 %287, %308
  %310 = load i32*, i32** %4, align 8
  %311 = load i32, i32* %7, align 4
  %312 = mul nsw i32 %311, 2
  %313 = add nsw i32 %312, 2
  %314 = load i32, i32* %12, align 4
  %315 = and i32 %313, %314
  %316 = load i32, i32* %5, align 4
  %317 = mul nsw i32 %315, %316
  %318 = load i32, i32* %8, align 4
  %319 = mul nsw i32 %318, 2
  %320 = sub nsw i32 %319, 1
  %321 = load i32, i32* %11, align 4
  %322 = and i32 %320, %321
  %323 = add nsw i32 %317, %322
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i32, i32* %310, i64 %324
  %326 = load i32, i32* %9, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i32, i32* %325, i64 %327
  %329 = load i32, i32* %328, align 4
  %330 = mul nsw i32 1, %329
  %331 = add nsw i32 %309, %330
  %332 = load i32*, i32** %4, align 8
  %333 = load i32, i32* %7, align 4
  %334 = mul nsw i32 %333, 2
  %335 = add nsw i32 %334, 2
  %336 = load i32, i32* %12, align 4
  %337 = and i32 %335, %336
  %338 = load i32, i32* %5, align 4
  %339 = mul nsw i32 %337, %338
  %340 = load i32, i32* %8, align 4
  %341 = mul nsw i32 %340, 2
  %342 = load i32, i32* %11, align 4
  %343 = and i32 %341, %342
  %344 = add nsw i32 %339, %343
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds i32, i32* %332, i64 %345
  %347 = load i32, i32* %9, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds i32, i32* %346, i64 %348
  %350 = load i32, i32* %349, align 4
  %351 = mul nsw i32 2, %350
  %352 = add nsw i32 %331, %351
  %353 = load i32*, i32** %4, align 8
  %354 = load i32, i32* %7, align 4
  %355 = mul nsw i32 %354, 2
  %356 = add nsw i32 %355, 2
  %357 = load i32, i32* %12, align 4
  %358 = and i32 %356, %357
  %359 = load i32, i32* %5, align 4
  %360 = mul nsw i32 %358, %359
  %361 = load i32, i32* %8, align 4
  %362 = mul nsw i32 %361, 2
  %363 = add nsw i32 %362, 1
  %364 = load i32, i32* %11, align 4
  %365 = and i32 %363, %364
  %366 = add nsw i32 %360, %365
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds i32, i32* %353, i64 %367
  %369 = load i32, i32* %9, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds i32, i32* %368, i64 %370
  %372 = load i32, i32* %371, align 4
  %373 = mul nsw i32 2, %372
  %374 = add nsw i32 %352, %373
  %375 = load i32*, i32** %4, align 8
  %376 = load i32, i32* %7, align 4
  %377 = mul nsw i32 %376, 2
  %378 = add nsw i32 %377, 2
  %379 = load i32, i32* %12, align 4
  %380 = and i32 %378, %379
  %381 = load i32, i32* %5, align 4
  %382 = mul nsw i32 %380, %381
  %383 = load i32, i32* %8, align 4
  %384 = mul nsw i32 %383, 2
  %385 = add nsw i32 %384, 2
  %386 = load i32, i32* %11, align 4
  %387 = and i32 %385, %386
  %388 = add nsw i32 %382, %387
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds i32, i32* %375, i64 %389
  %391 = load i32, i32* %9, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds i32, i32* %390, i64 %392
  %394 = load i32, i32* %393, align 4
  %395 = mul nsw i32 1, %394
  %396 = add nsw i32 %374, %395
  store i32 %396, i32* %13, align 4
  %397 = load i32, i32* %13, align 4
  %398 = sdiv i32 %397, 36
  %399 = load i32*, i32** %10, align 8
  %400 = load i32, i32* %9, align 4
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds i32, i32* %399, i64 %401
  store i32 %398, i32* %402, align 4
  br label %403

403:                                              ; preds = %53
  %404 = load i32, i32* %9, align 4
  %405 = add nsw i32 %404, 1
  store i32 %405, i32* %9, align 4
  br label %50

406:                                              ; preds = %50
  br label %407

407:                                              ; preds = %406
  %408 = load i32, i32* %8, align 4
  %409 = add nsw i32 %408, 1
  store i32 %409, i32* %8, align 4
  br label %36

410:                                              ; preds = %36
  br label %411

411:                                              ; preds = %410
  %412 = load i32, i32* %7, align 4
  %413 = add nsw i32 %412, 1
  store i32 %413, i32* %7, align 4
  br label %31

414:                                              ; preds = %31
  %415 = load i32*, i32** %4, align 8
  %416 = load i32*, i32** %16, align 8
  %417 = load i32, i32* %14, align 4
  %418 = load i32, i32* %15, align 4
  %419 = mul nsw i32 %417, %418
  %420 = mul nsw i32 %419, 4
  %421 = call i32 @Com_Memcpy(i32* %415, i32* %416, i32 %420)
  %422 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ri, i32 0, i32 1), align 8
  %423 = load i32*, i32** %16, align 8
  %424 = call i32 %422(i32* %423)
  ret void
}

declare dso_local i32 @Com_Memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
