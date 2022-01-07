; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_utf8_utils.c_good_string_to_utf8.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_utf8_utils.c_good_string_to_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good_string_to_utf8(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @string_to_utf8(i8* %9, i32* %10)
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %200, %2
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %203

19:                                               ; preds = %12
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 38
  br i1 %25, label %26, label %188

26:                                               ; preds = %19
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 97
  br i1 %33, label %34, label %66

34:                                               ; preds = %26
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 2
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 109
  br i1 %41, label %42, label %66

42:                                               ; preds = %34
  %43 = load i32*, i32** %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 3
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 112
  br i1 %49, label %50, label %66

50:                                               ; preds = %42
  %51 = load i32*, i32** %4, align 8
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 59
  br i1 %57, label %58, label %66

58:                                               ; preds = %50
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 4
  store i32 %60, i32* %5, align 4
  %61 = load i32*, i32** %4, align 8
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  store i32 38, i32* %65, align 4
  br label %187

66:                                               ; preds = %50, %42, %34, %26
  %67 = load i32*, i32** %4, align 8
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %67, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, 108
  br i1 %73, label %74, label %98

74:                                               ; preds = %66
  %75 = load i32*, i32** %4, align 8
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, 2
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %75, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %80, 116
  br i1 %81, label %82, label %98

82:                                               ; preds = %74
  %83 = load i32*, i32** %4, align 8
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %84, 3
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %83, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %88, 59
  br i1 %89, label %90, label %98

90:                                               ; preds = %82
  %91 = load i32, i32* %5, align 4
  %92 = add nsw i32 %91, 3
  store i32 %92, i32* %5, align 4
  %93 = load i32*, i32** %4, align 8
  %94 = load i32, i32* %6, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %6, align 4
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds i32, i32* %93, i64 %96
  store i32 60, i32* %97, align 4
  br label %186

98:                                               ; preds = %82, %74, %66
  %99 = load i32*, i32** %4, align 8
  %100 = load i32, i32* %5, align 4
  %101 = add nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %99, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = icmp eq i32 %104, 103
  br i1 %105, label %106, label %130

106:                                              ; preds = %98
  %107 = load i32*, i32** %4, align 8
  %108 = load i32, i32* %5, align 4
  %109 = add nsw i32 %108, 2
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %107, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = icmp eq i32 %112, 116
  br i1 %113, label %114, label %130

114:                                              ; preds = %106
  %115 = load i32*, i32** %4, align 8
  %116 = load i32, i32* %5, align 4
  %117 = add nsw i32 %116, 3
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %115, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = icmp eq i32 %120, 59
  br i1 %121, label %122, label %130

122:                                              ; preds = %114
  %123 = load i32, i32* %5, align 4
  %124 = add nsw i32 %123, 3
  store i32 %124, i32* %5, align 4
  %125 = load i32*, i32** %4, align 8
  %126 = load i32, i32* %6, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %6, align 4
  %128 = sext i32 %126 to i64
  %129 = getelementptr inbounds i32, i32* %125, i64 %128
  store i32 62, i32* %129, align 4
  br label %185

130:                                              ; preds = %114, %106, %98
  %131 = load i32*, i32** %4, align 8
  %132 = load i32, i32* %5, align 4
  %133 = add nsw i32 %132, 1
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %131, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = icmp eq i32 %136, 113
  br i1 %137, label %138, label %178

138:                                              ; preds = %130
  %139 = load i32*, i32** %4, align 8
  %140 = load i32, i32* %5, align 4
  %141 = add nsw i32 %140, 2
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %139, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = icmp eq i32 %144, 117
  br i1 %145, label %146, label %178

146:                                              ; preds = %138
  %147 = load i32*, i32** %4, align 8
  %148 = load i32, i32* %5, align 4
  %149 = add nsw i32 %148, 3
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %147, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = icmp eq i32 %152, 111
  br i1 %153, label %154, label %178

154:                                              ; preds = %146
  %155 = load i32*, i32** %4, align 8
  %156 = load i32, i32* %5, align 4
  %157 = add nsw i32 %156, 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %155, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = icmp eq i32 %160, 116
  br i1 %161, label %162, label %178

162:                                              ; preds = %154
  %163 = load i32*, i32** %4, align 8
  %164 = load i32, i32* %5, align 4
  %165 = add nsw i32 %164, 5
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %163, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = icmp eq i32 %168, 59
  br i1 %169, label %170, label %178

170:                                              ; preds = %162
  %171 = load i32, i32* %5, align 4
  %172 = add nsw i32 %171, 5
  store i32 %172, i32* %5, align 4
  %173 = load i32*, i32** %4, align 8
  %174 = load i32, i32* %6, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %6, align 4
  %176 = sext i32 %174 to i64
  %177 = getelementptr inbounds i32, i32* %173, i64 %176
  store i32 34, i32* %177, align 4
  br label %184

178:                                              ; preds = %162, %154, %146, %138, %130
  %179 = load i32*, i32** %4, align 8
  %180 = load i32, i32* %6, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %6, align 4
  %182 = sext i32 %180 to i64
  %183 = getelementptr inbounds i32, i32* %179, i64 %182
  store i32 38, i32* %183, align 4
  br label %184

184:                                              ; preds = %178, %170
  br label %185

185:                                              ; preds = %184, %122
  br label %186

186:                                              ; preds = %185, %90
  br label %187

187:                                              ; preds = %186, %58
  br label %199

188:                                              ; preds = %19
  %189 = load i32*, i32** %4, align 8
  %190 = load i32, i32* %5, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = load i32*, i32** %4, align 8
  %195 = load i32, i32* %6, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %6, align 4
  %197 = sext i32 %195 to i64
  %198 = getelementptr inbounds i32, i32* %194, i64 %197
  store i32 %193, i32* %198, align 4
  br label %199

199:                                              ; preds = %188, %187
  br label %200

200:                                              ; preds = %199
  %201 = load i32, i32* %5, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %5, align 4
  br label %12

203:                                              ; preds = %12
  %204 = load i32*, i32** %4, align 8
  %205 = load i32, i32* %6, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %6, align 4
  %207 = sext i32 %205 to i64
  %208 = getelementptr inbounds i32, i32* %204, i64 %207
  store i32 0, i32* %208, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %209

209:                                              ; preds = %371, %203
  %210 = load i32*, i32** %4, align 8
  %211 = load i32, i32* %5, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %374

216:                                              ; preds = %209
  %217 = load i32*, i32** %4, align 8
  %218 = load i32, i32* %5, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = icmp eq i32 %221, 38
  br i1 %222, label %223, label %359

223:                                              ; preds = %216
  %224 = load i32*, i32** %4, align 8
  %225 = load i32, i32* %5, align 4
  %226 = add nsw i32 %225, 1
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %224, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = icmp eq i32 %229, 97
  br i1 %230, label %231, label %263

231:                                              ; preds = %223
  %232 = load i32*, i32** %4, align 8
  %233 = load i32, i32* %5, align 4
  %234 = add nsw i32 %233, 2
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %232, i64 %235
  %237 = load i32, i32* %236, align 4
  %238 = icmp eq i32 %237, 109
  br i1 %238, label %239, label %263

239:                                              ; preds = %231
  %240 = load i32*, i32** %4, align 8
  %241 = load i32, i32* %5, align 4
  %242 = add nsw i32 %241, 3
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %240, i64 %243
  %245 = load i32, i32* %244, align 4
  %246 = icmp eq i32 %245, 112
  br i1 %246, label %247, label %263

247:                                              ; preds = %239
  %248 = load i32*, i32** %4, align 8
  %249 = load i32, i32* %5, align 4
  %250 = add nsw i32 %249, 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %248, i64 %251
  %253 = load i32, i32* %252, align 4
  %254 = icmp eq i32 %253, 59
  br i1 %254, label %255, label %263

255:                                              ; preds = %247
  %256 = load i32, i32* %5, align 4
  %257 = add nsw i32 %256, 4
  store i32 %257, i32* %5, align 4
  %258 = load i32*, i32** %4, align 8
  %259 = load i32, i32* %6, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %6, align 4
  %261 = sext i32 %259 to i64
  %262 = getelementptr inbounds i32, i32* %258, i64 %261
  store i32 38, i32* %262, align 4
  br label %358

263:                                              ; preds = %247, %239, %231, %223
  %264 = load i32*, i32** %4, align 8
  %265 = load i32, i32* %5, align 4
  %266 = add nsw i32 %265, 1
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i32, i32* %264, i64 %267
  %269 = load i32, i32* %268, align 4
  %270 = icmp eq i32 %269, 35
  br i1 %270, label %271, label %346

271:                                              ; preds = %263
  store i32 0, i32* %7, align 4
  %272 = load i32, i32* %5, align 4
  store i32 %272, i32* %8, align 4
  %273 = load i32, i32* %5, align 4
  %274 = add nsw i32 %273, 2
  store i32 %274, i32* %5, align 4
  br label %275

275:                                              ; preds = %317, %271
  %276 = load i32*, i32** %4, align 8
  %277 = load i32, i32* %5, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i32, i32* %276, i64 %278
  %280 = load i32, i32* %279, align 4
  %281 = icmp ne i32 %280, 59
  br i1 %281, label %282, label %289

282:                                              ; preds = %275
  %283 = load i32*, i32** %4, align 8
  %284 = load i32, i32* %5, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i32, i32* %283, i64 %285
  %287 = load i32, i32* %286, align 4
  %288 = icmp ne i32 %287, 0
  br label %289

289:                                              ; preds = %282, %275
  %290 = phi i1 [ false, %275 ], [ %288, %282 ]
  br i1 %290, label %291, label %320

291:                                              ; preds = %289
  %292 = load i32*, i32** %4, align 8
  %293 = load i32, i32* %5, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i32, i32* %292, i64 %294
  %296 = load i32, i32* %295, align 4
  %297 = icmp sle i32 48, %296
  br i1 %297, label %298, label %315

298:                                              ; preds = %291
  %299 = load i32*, i32** %4, align 8
  %300 = load i32, i32* %5, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i32, i32* %299, i64 %301
  %303 = load i32, i32* %302, align 4
  %304 = icmp sle i32 %303, 57
  br i1 %304, label %305, label %315

305:                                              ; preds = %298
  %306 = load i32, i32* %7, align 4
  %307 = mul nsw i32 %306, 10
  %308 = load i32*, i32** %4, align 8
  %309 = load i32, i32* %5, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i32, i32* %308, i64 %310
  %312 = load i32, i32* %311, align 4
  %313 = add nsw i32 %307, %312
  %314 = sub nsw i32 %313, 48
  store i32 %314, i32* %7, align 4
  br label %316

315:                                              ; preds = %298, %291
  br label %320

316:                                              ; preds = %305
  br label %317

317:                                              ; preds = %316
  %318 = load i32, i32* %5, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %5, align 4
  br label %275

320:                                              ; preds = %315, %289
  %321 = load i32*, i32** %4, align 8
  %322 = load i32, i32* %5, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i32, i32* %321, i64 %323
  %325 = load i32, i32* %324, align 4
  %326 = icmp ne i32 %325, 59
  br i1 %326, label %327, label %338

327:                                              ; preds = %320
  %328 = load i32*, i32** %4, align 8
  %329 = load i32, i32* %8, align 4
  store i32 %329, i32* %5, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds i32, i32* %328, i64 %330
  %332 = load i32, i32* %331, align 4
  %333 = load i32*, i32** %4, align 8
  %334 = load i32, i32* %6, align 4
  %335 = add nsw i32 %334, 1
  store i32 %335, i32* %6, align 4
  %336 = sext i32 %334 to i64
  %337 = getelementptr inbounds i32, i32* %333, i64 %336
  store i32 %332, i32* %337, align 4
  br label %345

338:                                              ; preds = %320
  %339 = load i32, i32* %7, align 4
  %340 = load i32*, i32** %4, align 8
  %341 = load i32, i32* %6, align 4
  %342 = add nsw i32 %341, 1
  store i32 %342, i32* %6, align 4
  %343 = sext i32 %341 to i64
  %344 = getelementptr inbounds i32, i32* %340, i64 %343
  store i32 %339, i32* %344, align 4
  br label %345

345:                                              ; preds = %338, %327
  br label %357

346:                                              ; preds = %263
  %347 = load i32*, i32** %4, align 8
  %348 = load i32, i32* %5, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i32, i32* %347, i64 %349
  %351 = load i32, i32* %350, align 4
  %352 = load i32*, i32** %4, align 8
  %353 = load i32, i32* %6, align 4
  %354 = add nsw i32 %353, 1
  store i32 %354, i32* %6, align 4
  %355 = sext i32 %353 to i64
  %356 = getelementptr inbounds i32, i32* %352, i64 %355
  store i32 %351, i32* %356, align 4
  br label %357

357:                                              ; preds = %346, %345
  br label %358

358:                                              ; preds = %357, %255
  br label %370

359:                                              ; preds = %216
  %360 = load i32*, i32** %4, align 8
  %361 = load i32, i32* %5, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds i32, i32* %360, i64 %362
  %364 = load i32, i32* %363, align 4
  %365 = load i32*, i32** %4, align 8
  %366 = load i32, i32* %6, align 4
  %367 = add nsw i32 %366, 1
  store i32 %367, i32* %6, align 4
  %368 = sext i32 %366 to i64
  %369 = getelementptr inbounds i32, i32* %365, i64 %368
  store i32 %364, i32* %369, align 4
  br label %370

370:                                              ; preds = %359, %358
  br label %371

371:                                              ; preds = %370
  %372 = load i32, i32* %5, align 4
  %373 = add nsw i32 %372, 1
  store i32 %373, i32* %5, align 4
  br label %209

374:                                              ; preds = %209
  %375 = load i32*, i32** %4, align 8
  %376 = load i32, i32* %6, align 4
  %377 = add nsw i32 %376, 1
  store i32 %377, i32* %6, align 4
  %378 = sext i32 %376 to i64
  %379 = getelementptr inbounds i32, i32* %375, i64 %378
  store i32 0, i32* %379, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %380

380:                                              ; preds = %511, %374
  %381 = load i32*, i32** %4, align 8
  %382 = load i32, i32* %5, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds i32, i32* %381, i64 %383
  %385 = load i32, i32* %384, align 4
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %387, label %514

387:                                              ; preds = %380
  %388 = load i32*, i32** %4, align 8
  %389 = load i32, i32* %5, align 4
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds i32, i32* %388, i64 %390
  %392 = load i32, i32* %391, align 4
  %393 = icmp ne i32 %392, 173
  br i1 %393, label %394, label %510

394:                                              ; preds = %387
  %395 = load i32*, i32** %4, align 8
  %396 = load i32, i32* %5, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds i32, i32* %395, i64 %397
  %399 = load i32, i32* %398, align 4
  %400 = icmp slt i32 %399, 65024
  br i1 %400, label %408, label %401

401:                                              ; preds = %394
  %402 = load i32*, i32** %4, align 8
  %403 = load i32, i32* %5, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds i32, i32* %402, i64 %404
  %406 = load i32, i32* %405, align 4
  %407 = icmp sgt i32 %406, 65062
  br i1 %407, label %408, label %510

408:                                              ; preds = %401, %394
  %409 = load i32*, i32** %4, align 8
  %410 = load i32, i32* %5, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds i32, i32* %409, i64 %411
  %413 = load i32, i32* %412, align 4
  %414 = icmp slt i32 %413, 7627
  br i1 %414, label %422, label %415

415:                                              ; preds = %408
  %416 = load i32*, i32** %4, align 8
  %417 = load i32, i32* %5, align 4
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds i32, i32* %416, i64 %418
  %420 = load i32, i32* %419, align 4
  %421 = icmp sgt i32 %420, 7654
  br i1 %421, label %422, label %510

422:                                              ; preds = %415, %408
  %423 = load i32*, i32** %4, align 8
  %424 = load i32, i32* %5, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds i32, i32* %423, i64 %425
  %427 = load i32, i32* %426, align 4
  %428 = icmp ne i32 %427, 8288
  br i1 %428, label %429, label %510

429:                                              ; preds = %422
  %430 = load i32*, i32** %4, align 8
  %431 = load i32, i32* %5, align 4
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds i32, i32* %430, i64 %432
  %434 = load i32, i32* %433, align 4
  %435 = icmp slt i32 %434, 8202
  br i1 %435, label %443, label %436

436:                                              ; preds = %429
  %437 = load i32*, i32** %4, align 8
  %438 = load i32, i32* %5, align 4
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds i32, i32* %437, i64 %439
  %441 = load i32, i32* %440, align 4
  %442 = icmp sgt i32 %441, 8207
  br i1 %442, label %443, label %510

443:                                              ; preds = %436, %429
  %444 = load i32*, i32** %4, align 8
  %445 = load i32, i32* %5, align 4
  %446 = sext i32 %445 to i64
  %447 = getelementptr inbounds i32, i32* %444, i64 %446
  %448 = load i32, i32* %447, align 4
  %449 = icmp slt i32 %448, 8400
  br i1 %449, label %457, label %450

450:                                              ; preds = %443
  %451 = load i32*, i32** %4, align 8
  %452 = load i32, i32* %5, align 4
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds i32, i32* %451, i64 %453
  %455 = load i32, i32* %454, align 4
  %456 = icmp sgt i32 %455, 8433
  br i1 %456, label %457, label %510

457:                                              ; preds = %450, %443
  %458 = load i32*, i32** %4, align 8
  %459 = load i32, i32* %5, align 4
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds i32, i32* %458, i64 %460
  %462 = load i32, i32* %461, align 4
  %463 = icmp ne i32 %462, 8228
  br i1 %463, label %464, label %510

464:                                              ; preds = %457
  %465 = load i32*, i32** %4, align 8
  %466 = load i32, i32* %5, align 4
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds i32, i32* %465, i64 %467
  %469 = load i32, i32* %468, align 4
  %470 = icmp slt i32 %469, 8298
  br i1 %470, label %478, label %471

471:                                              ; preds = %464
  %472 = load i32*, i32** %4, align 8
  %473 = load i32, i32* %5, align 4
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds i32, i32* %472, i64 %474
  %476 = load i32, i32* %475, align 4
  %477 = icmp sgt i32 %476, 8303
  br i1 %477, label %478, label %510

478:                                              ; preds = %471, %464
  %479 = load i32*, i32** %4, align 8
  %480 = load i32, i32* %5, align 4
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds i32, i32* %479, i64 %481
  %483 = load i32, i32* %482, align 4
  %484 = icmp ne i32 %483, 65279
  br i1 %484, label %485, label %510

485:                                              ; preds = %478
  %486 = load i32*, i32** %4, align 8
  %487 = load i32, i32* %5, align 4
  %488 = sext i32 %487 to i64
  %489 = getelementptr inbounds i32, i32* %486, i64 %488
  %490 = load i32, i32* %489, align 4
  %491 = icmp slt i32 %490, 768
  br i1 %491, label %499, label %492

492:                                              ; preds = %485
  %493 = load i32*, i32** %4, align 8
  %494 = load i32, i32* %5, align 4
  %495 = sext i32 %494 to i64
  %496 = getelementptr inbounds i32, i32* %493, i64 %495
  %497 = load i32, i32* %496, align 4
  %498 = icmp sgt i32 %497, 879
  br i1 %498, label %499, label %510

499:                                              ; preds = %492, %485
  %500 = load i32*, i32** %4, align 8
  %501 = load i32, i32* %5, align 4
  %502 = sext i32 %501 to i64
  %503 = getelementptr inbounds i32, i32* %500, i64 %502
  %504 = load i32, i32* %503, align 4
  %505 = load i32*, i32** %4, align 8
  %506 = load i32, i32* %6, align 4
  %507 = add nsw i32 %506, 1
  store i32 %507, i32* %6, align 4
  %508 = sext i32 %506 to i64
  %509 = getelementptr inbounds i32, i32* %505, i64 %508
  store i32 %504, i32* %509, align 4
  br label %510

510:                                              ; preds = %499, %492, %478, %471, %457, %450, %436, %422, %415, %401, %387
  br label %511

511:                                              ; preds = %510
  %512 = load i32, i32* %5, align 4
  %513 = add nsw i32 %512, 1
  store i32 %513, i32* %5, align 4
  br label %380

514:                                              ; preds = %380
  %515 = load i32*, i32** %4, align 8
  %516 = load i32, i32* %6, align 4
  %517 = add nsw i32 %516, 1
  store i32 %517, i32* %6, align 4
  %518 = sext i32 %516 to i64
  %519 = getelementptr inbounds i32, i32* %515, i64 %518
  store i32 0, i32* %519, align 4
  ret void
}

declare dso_local i32 @string_to_utf8(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
