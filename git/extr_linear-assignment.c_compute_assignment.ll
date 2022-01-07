; ModuleID = '/home/carl/AnghaBench/git/extr_linear-assignment.c_compute_assignment.c'
source_filename = "/home/carl/AnghaBench/git/extr_linear-assignment.c_compute_assignment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"negative j: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @compute_assignment(i32 %0, i32 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %14, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %41, 2
  br i1 %42, label %43, label %56

43:                                               ; preds = %5
  %44 = load i32*, i32** %9, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = mul i64 4, %46
  %48 = trunc i64 %47 to i32
  %49 = call i32 @memset(i32* %44, i32 0, i32 %48)
  %50 = load i32*, i32** %10, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = mul i64 4, %52
  %54 = trunc i64 %53 to i32
  %55 = call i32 @memset(i32* %50, i32 0, i32 %54)
  br label %707

56:                                               ; preds = %5
  %57 = load i32*, i32** %9, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = mul i64 4, %59
  %61 = trunc i64 %60 to i32
  %62 = call i32 @memset(i32* %57, i32 -1, i32 %61)
  %63 = load i32*, i32** %10, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = mul i64 4, %65
  %67 = trunc i64 %66 to i32
  %68 = call i32 @memset(i32* %63, i32 -1, i32 %67)
  %69 = load i32*, i32** %11, align 8
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @ALLOC_ARRAY(i32* %69, i32 %70)
  %72 = load i32, i32* %6, align 4
  %73 = sub nsw i32 %72, 1
  store i32 %73, i32* %19, align 4
  br label %74

74:                                               ; preds = %145, %56
  %75 = load i32, i32* %19, align 4
  %76 = icmp sge i32 %75, 0
  br i1 %76, label %77, label %148

77:                                               ; preds = %74
  store i32 0, i32* %21, align 4
  store i32 1, i32* %18, align 4
  br label %78

78:                                               ; preds = %93, %77
  %79 = load i32, i32* %18, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %96

82:                                               ; preds = %78
  %83 = load i32, i32* %19, align 4
  %84 = load i32, i32* %21, align 4
  %85 = call i32 @COST(i32 %83, i32 %84)
  %86 = load i32, i32* %19, align 4
  %87 = load i32, i32* %18, align 4
  %88 = call i32 @COST(i32 %86, i32 %87)
  %89 = icmp sgt i32 %85, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %82
  %91 = load i32, i32* %18, align 4
  store i32 %91, i32* %21, align 4
  br label %92

92:                                               ; preds = %90, %82
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %18, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %18, align 4
  br label %78

96:                                               ; preds = %78
  %97 = load i32, i32* %19, align 4
  %98 = load i32, i32* %21, align 4
  %99 = call i32 @COST(i32 %97, i32 %98)
  %100 = load i32*, i32** %11, align 8
  %101 = load i32, i32* %19, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  store i32 %99, i32* %103, align 4
  %104 = load i32*, i32** %10, align 8
  %105 = load i32, i32* %21, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = icmp eq i32 %108, -1
  br i1 %109, label %110, label %121

110:                                              ; preds = %96
  %111 = load i32, i32* %19, align 4
  %112 = load i32*, i32** %10, align 8
  %113 = load i32, i32* %21, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  store i32 %111, i32* %115, align 4
  %116 = load i32, i32* %21, align 4
  %117 = load i32*, i32** %9, align 8
  %118 = load i32, i32* %19, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  store i32 %116, i32* %120, align 4
  br label %144

121:                                              ; preds = %96
  %122 = load i32*, i32** %10, align 8
  %123 = load i32, i32* %21, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = icmp sge i32 %126, 0
  br i1 %127, label %128, label %139

128:                                              ; preds = %121
  %129 = load i32*, i32** %10, align 8
  %130 = load i32, i32* %21, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = sub nsw i32 -2, %133
  %135 = load i32*, i32** %10, align 8
  %136 = load i32, i32* %21, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  store i32 %134, i32* %138, align 4
  br label %139

139:                                              ; preds = %128, %121
  %140 = load i32*, i32** %9, align 8
  %141 = load i32, i32* %19, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  store i32 -1, i32* %143, align 4
  br label %144

144:                                              ; preds = %139, %110
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %19, align 4
  %147 = add nsw i32 %146, -1
  store i32 %147, i32* %19, align 4
  br label %74

148:                                              ; preds = %74
  %149 = load i32*, i32** %13, align 8
  %150 = load i32, i32* %7, align 4
  %151 = call i32 @ALLOC_ARRAY(i32* %149, i32 %150)
  store i32 0, i32* %18, align 4
  br label %152

152:                                              ; preds = %241, %148
  %153 = load i32, i32* %18, align 4
  %154 = load i32, i32* %7, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %244

156:                                              ; preds = %152
  %157 = load i32*, i32** %10, align 8
  %158 = load i32, i32* %18, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %160, align 4
  store i32 %161, i32* %22, align 4
  %162 = load i32, i32* %22, align 4
  %163 = icmp eq i32 %162, -1
  br i1 %163, label %164, label %171

164:                                              ; preds = %156
  %165 = load i32, i32* %18, align 4
  %166 = load i32*, i32** %13, align 8
  %167 = load i32, i32* %14, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %14, align 4
  %169 = sext i32 %167 to i64
  %170 = getelementptr inbounds i32, i32* %166, i64 %169
  store i32 %165, i32* %170, align 4
  br label %240

171:                                              ; preds = %156
  %172 = load i32, i32* %22, align 4
  %173 = icmp slt i32 %172, -1
  br i1 %173, label %174, label %181

174:                                              ; preds = %171
  %175 = load i32, i32* %22, align 4
  %176 = sub nsw i32 -2, %175
  %177 = load i32*, i32** %10, align 8
  %178 = load i32, i32* %18, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  store i32 %176, i32* %180, align 4
  br label %239

181:                                              ; preds = %171
  %182 = load i32, i32* %22, align 4
  %183 = icmp ne i32 %182, 0
  %184 = xor i1 %183, true
  %185 = zext i1 %184 to i32
  %186 = load i32, i32* %18, align 4
  %187 = call i32 @COST(i32 %185, i32 %186)
  %188 = load i32*, i32** %11, align 8
  %189 = load i32, i32* %22, align 4
  %190 = icmp ne i32 %189, 0
  %191 = xor i1 %190, true
  %192 = zext i1 %191 to i32
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %188, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = sub nsw i32 %187, %195
  store i32 %196, i32* %23, align 4
  store i32 1, i32* %19, align 4
  br label %197

197:                                              ; preds = %228, %181
  %198 = load i32, i32* %19, align 4
  %199 = load i32, i32* %6, align 4
  %200 = icmp slt i32 %198, %199
  br i1 %200, label %201, label %231

201:                                              ; preds = %197
  %202 = load i32, i32* %19, align 4
  %203 = load i32, i32* %22, align 4
  %204 = icmp ne i32 %202, %203
  br i1 %204, label %205, label %227

205:                                              ; preds = %201
  %206 = load i32, i32* %23, align 4
  %207 = load i32, i32* %19, align 4
  %208 = load i32, i32* %18, align 4
  %209 = call i32 @COST(i32 %207, i32 %208)
  %210 = load i32*, i32** %11, align 8
  %211 = load i32, i32* %19, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = sub nsw i32 %209, %214
  %216 = icmp sgt i32 %206, %215
  br i1 %216, label %217, label %227

217:                                              ; preds = %205
  %218 = load i32, i32* %19, align 4
  %219 = load i32, i32* %18, align 4
  %220 = call i32 @COST(i32 %218, i32 %219)
  %221 = load i32*, i32** %11, align 8
  %222 = load i32, i32* %19, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %221, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = sub nsw i32 %220, %225
  store i32 %226, i32* %23, align 4
  br label %227

227:                                              ; preds = %217, %205, %201
  br label %228

228:                                              ; preds = %227
  %229 = load i32, i32* %19, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %19, align 4
  br label %197

231:                                              ; preds = %197
  %232 = load i32, i32* %23, align 4
  %233 = load i32*, i32** %11, align 8
  %234 = load i32, i32* %22, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %233, i64 %235
  %237 = load i32, i32* %236, align 4
  %238 = sub nsw i32 %237, %232
  store i32 %238, i32* %236, align 4
  br label %239

239:                                              ; preds = %231, %174
  br label %240

240:                                              ; preds = %239, %164
  br label %241

241:                                              ; preds = %240
  %242 = load i32, i32* %18, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %18, align 4
  br label %152

244:                                              ; preds = %152
  %245 = load i32, i32* %14, align 4
  %246 = load i32, i32* %6, align 4
  %247 = load i32, i32* %7, align 4
  %248 = icmp slt i32 %246, %247
  br i1 %248, label %249, label %253

249:                                              ; preds = %244
  %250 = load i32, i32* %7, align 4
  %251 = load i32, i32* %6, align 4
  %252 = sub nsw i32 %250, %251
  br label %254

253:                                              ; preds = %244
  br label %254

254:                                              ; preds = %253, %249
  %255 = phi i32 [ %252, %249 ], [ 0, %253 ]
  %256 = icmp eq i32 %245, %255
  br i1 %256, label %257, label %262

257:                                              ; preds = %254
  %258 = load i32*, i32** %11, align 8
  %259 = call i32 @free(i32* %258)
  %260 = load i32*, i32** %13, align 8
  %261 = call i32 @free(i32* %260)
  br label %707

262:                                              ; preds = %254
  store i32 0, i32* %20, align 4
  br label %263

263:                                              ; preds = %393, %262
  %264 = load i32, i32* %20, align 4
  %265 = icmp slt i32 %264, 2
  br i1 %265, label %266, label %396

266:                                              ; preds = %263
  store i32 0, i32* %24, align 4
  %267 = load i32, i32* %14, align 4
  store i32 %267, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %268

268:                                              ; preds = %381, %266
  %269 = load i32, i32* %24, align 4
  %270 = load i32, i32* %15, align 4
  %271 = icmp slt i32 %269, %270
  br i1 %271, label %272, label %392

272:                                              ; preds = %268
  store i32 0, i32* %27, align 4
  %273 = load i32*, i32** %13, align 8
  %274 = load i32, i32* %24, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %24, align 4
  %276 = sext i32 %274 to i64
  %277 = getelementptr inbounds i32, i32* %273, i64 %276
  %278 = load i32, i32* %277, align 4
  store i32 %278, i32* %18, align 4
  %279 = load i32, i32* %27, align 4
  %280 = load i32, i32* %18, align 4
  %281 = call i32 @COST(i32 %279, i32 %280)
  %282 = load i32*, i32** %11, align 8
  %283 = load i32, i32* %27, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i32, i32* %282, i64 %284
  %286 = load i32, i32* %285, align 4
  %287 = sub nsw i32 %281, %286
  store i32 %287, i32* %25, align 4
  store i32 -1, i32* %28, align 4
  %288 = load i32, i32* @INT_MAX, align 4
  store i32 %288, i32* %26, align 4
  store i32 1, i32* %19, align 4
  br label %289

289:                                              ; preds = %320, %272
  %290 = load i32, i32* %19, align 4
  %291 = load i32, i32* %6, align 4
  %292 = icmp slt i32 %290, %291
  br i1 %292, label %293, label %323

293:                                              ; preds = %289
  %294 = load i32, i32* %19, align 4
  %295 = load i32, i32* %18, align 4
  %296 = call i32 @COST(i32 %294, i32 %295)
  %297 = load i32*, i32** %11, align 8
  %298 = load i32, i32* %19, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i32, i32* %297, i64 %299
  %301 = load i32, i32* %300, align 4
  %302 = sub nsw i32 %296, %301
  store i32 %302, i32* %30, align 4
  %303 = load i32, i32* %26, align 4
  %304 = load i32, i32* %30, align 4
  %305 = icmp sgt i32 %303, %304
  br i1 %305, label %306, label %319

306:                                              ; preds = %293
  %307 = load i32, i32* %25, align 4
  %308 = load i32, i32* %30, align 4
  %309 = icmp slt i32 %307, %308
  br i1 %309, label %310, label %313

310:                                              ; preds = %306
  %311 = load i32, i32* %30, align 4
  store i32 %311, i32* %26, align 4
  %312 = load i32, i32* %19, align 4
  store i32 %312, i32* %28, align 4
  br label %318

313:                                              ; preds = %306
  %314 = load i32, i32* %25, align 4
  store i32 %314, i32* %26, align 4
  %315 = load i32, i32* %30, align 4
  store i32 %315, i32* %25, align 4
  %316 = load i32, i32* %27, align 4
  store i32 %316, i32* %28, align 4
  %317 = load i32, i32* %19, align 4
  store i32 %317, i32* %27, align 4
  br label %318

318:                                              ; preds = %313, %310
  br label %319

319:                                              ; preds = %318, %293
  br label %320

320:                                              ; preds = %319
  %321 = load i32, i32* %19, align 4
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %19, align 4
  br label %289

323:                                              ; preds = %289
  %324 = load i32, i32* %28, align 4
  %325 = icmp slt i32 %324, 0
  br i1 %325, label %326, label %329

326:                                              ; preds = %323
  %327 = load i32, i32* %27, align 4
  store i32 %327, i32* %28, align 4
  %328 = load i32, i32* %25, align 4
  store i32 %328, i32* %26, align 4
  br label %329

329:                                              ; preds = %326, %323
  %330 = load i32*, i32** %9, align 8
  %331 = load i32, i32* %27, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds i32, i32* %330, i64 %332
  %334 = load i32, i32* %333, align 4
  store i32 %334, i32* %29, align 4
  %335 = load i32, i32* %25, align 4
  %336 = load i32, i32* %26, align 4
  %337 = icmp slt i32 %335, %336
  br i1 %337, label %338, label %348

338:                                              ; preds = %329
  %339 = load i32, i32* %26, align 4
  %340 = load i32, i32* %25, align 4
  %341 = sub nsw i32 %339, %340
  %342 = load i32*, i32** %11, align 8
  %343 = load i32, i32* %27, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i32, i32* %342, i64 %344
  %346 = load i32, i32* %345, align 4
  %347 = sub nsw i32 %346, %341
  store i32 %347, i32* %345, align 4
  br label %359

348:                                              ; preds = %329
  %349 = load i32, i32* %29, align 4
  %350 = icmp sge i32 %349, 0
  br i1 %350, label %351, label %358

351:                                              ; preds = %348
  %352 = load i32, i32* %28, align 4
  store i32 %352, i32* %27, align 4
  %353 = load i32*, i32** %9, align 8
  %354 = load i32, i32* %27, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds i32, i32* %353, i64 %355
  %357 = load i32, i32* %356, align 4
  store i32 %357, i32* %29, align 4
  br label %358

358:                                              ; preds = %351, %348
  br label %359

359:                                              ; preds = %358, %338
  %360 = load i32, i32* %29, align 4
  %361 = icmp sge i32 %360, 0
  br i1 %361, label %362, label %381

362:                                              ; preds = %359
  %363 = load i32, i32* %25, align 4
  %364 = load i32, i32* %26, align 4
  %365 = icmp slt i32 %363, %364
  br i1 %365, label %366, label %373

366:                                              ; preds = %362
  %367 = load i32, i32* %29, align 4
  %368 = load i32*, i32** %13, align 8
  %369 = load i32, i32* %24, align 4
  %370 = add nsw i32 %369, -1
  store i32 %370, i32* %24, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds i32, i32* %368, i64 %371
  store i32 %367, i32* %372, align 4
  br label %380

373:                                              ; preds = %362
  %374 = load i32, i32* %29, align 4
  %375 = load i32*, i32** %13, align 8
  %376 = load i32, i32* %14, align 4
  %377 = add nsw i32 %376, 1
  store i32 %377, i32* %14, align 4
  %378 = sext i32 %376 to i64
  %379 = getelementptr inbounds i32, i32* %375, i64 %378
  store i32 %374, i32* %379, align 4
  br label %380

380:                                              ; preds = %373, %366
  br label %381

381:                                              ; preds = %380, %359
  %382 = load i32, i32* %27, align 4
  %383 = load i32*, i32** %10, align 8
  %384 = load i32, i32* %18, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds i32, i32* %383, i64 %385
  store i32 %382, i32* %386, align 4
  %387 = load i32, i32* %18, align 4
  %388 = load i32*, i32** %9, align 8
  %389 = load i32, i32* %27, align 4
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds i32, i32* %388, i64 %390
  store i32 %387, i32* %391, align 4
  br label %268

392:                                              ; preds = %268
  br label %393

393:                                              ; preds = %392
  %394 = load i32, i32* %20, align 4
  %395 = add nsw i32 %394, 1
  store i32 %395, i32* %20, align 4
  br label %263

396:                                              ; preds = %263
  %397 = load i32, i32* %14, align 4
  store i32 %397, i32* %15, align 4
  %398 = load i32*, i32** %12, align 8
  %399 = load i32, i32* %6, align 4
  %400 = call i32 @ALLOC_ARRAY(i32* %398, i32 %399)
  %401 = load i32*, i32** %16, align 8
  %402 = load i32, i32* %6, align 4
  %403 = call i32 @ALLOC_ARRAY(i32* %401, i32 %402)
  %404 = load i32*, i32** %17, align 8
  %405 = load i32, i32* %6, align 4
  %406 = call i32 @ALLOC_ARRAY(i32* %404, i32 %405)
  store i32 0, i32* %14, align 4
  br label %407

407:                                              ; preds = %693, %396
  %408 = load i32, i32* %14, align 4
  %409 = load i32, i32* %15, align 4
  %410 = icmp slt i32 %408, %409
  br i1 %410, label %411, label %696

411:                                              ; preds = %407
  %412 = load i32*, i32** %13, align 8
  %413 = load i32, i32* %14, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds i32, i32* %412, i64 %414
  %416 = load i32, i32* %415, align 4
  store i32 %416, i32* %31, align 4
  store i32 0, i32* %32, align 4
  store i32 0, i32* %33, align 4
  store i32 0, i32* %19, align 4
  br label %417

417:                                              ; preds = %445, %411
  %418 = load i32, i32* %19, align 4
  %419 = load i32, i32* %6, align 4
  %420 = icmp slt i32 %418, %419
  br i1 %420, label %421, label %448

421:                                              ; preds = %417
  %422 = load i32, i32* %19, align 4
  %423 = load i32, i32* %31, align 4
  %424 = call i32 @COST(i32 %422, i32 %423)
  %425 = load i32*, i32** %11, align 8
  %426 = load i32, i32* %19, align 4
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds i32, i32* %425, i64 %427
  %429 = load i32, i32* %428, align 4
  %430 = sub nsw i32 %424, %429
  %431 = load i32*, i32** %12, align 8
  %432 = load i32, i32* %19, align 4
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds i32, i32* %431, i64 %433
  store i32 %430, i32* %434, align 4
  %435 = load i32, i32* %31, align 4
  %436 = load i32*, i32** %16, align 8
  %437 = load i32, i32* %19, align 4
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds i32, i32* %436, i64 %438
  store i32 %435, i32* %439, align 4
  %440 = load i32, i32* %19, align 4
  %441 = load i32*, i32** %17, align 8
  %442 = load i32, i32* %19, align 4
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds i32, i32* %441, i64 %443
  store i32 %440, i32* %444, align 4
  br label %445

445:                                              ; preds = %421
  %446 = load i32, i32* %19, align 4
  %447 = add nsw i32 %446, 1
  store i32 %447, i32* %19, align 4
  br label %417

448:                                              ; preds = %417
  store i32 -1, i32* %19, align 4
  br label %449

449:                                              ; preds = %631, %448
  %450 = load i32, i32* %32, align 4
  store i32 %450, i32* %34, align 4
  %451 = load i32*, i32** %12, align 8
  %452 = load i32*, i32** %17, align 8
  %453 = load i32, i32* %33, align 4
  %454 = add nsw i32 %453, 1
  store i32 %454, i32* %33, align 4
  %455 = sext i32 %453 to i64
  %456 = getelementptr inbounds i32, i32* %452, i64 %455
  %457 = load i32, i32* %456, align 4
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds i32, i32* %451, i64 %458
  %460 = load i32, i32* %459, align 4
  store i32 %460, i32* %36, align 4
  %461 = load i32, i32* %33, align 4
  store i32 %461, i32* %35, align 4
  br label %462

462:                                              ; preds = %504, %449
  %463 = load i32, i32* %35, align 4
  %464 = load i32, i32* %6, align 4
  %465 = icmp slt i32 %463, %464
  br i1 %465, label %466, label %507

466:                                              ; preds = %462
  %467 = load i32*, i32** %17, align 8
  %468 = load i32, i32* %35, align 4
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds i32, i32* %467, i64 %469
  %471 = load i32, i32* %470, align 4
  store i32 %471, i32* %19, align 4
  %472 = load i32*, i32** %12, align 8
  %473 = load i32, i32* %19, align 4
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds i32, i32* %472, i64 %474
  %476 = load i32, i32* %475, align 4
  store i32 %476, i32* %37, align 4
  %477 = load i32, i32* %37, align 4
  %478 = load i32, i32* %36, align 4
  %479 = icmp sle i32 %477, %478
  br i1 %479, label %480, label %503

480:                                              ; preds = %466
  %481 = load i32, i32* %37, align 4
  %482 = load i32, i32* %36, align 4
  %483 = icmp slt i32 %481, %482
  br i1 %483, label %484, label %487

484:                                              ; preds = %480
  %485 = load i32, i32* %32, align 4
  store i32 %485, i32* %33, align 4
  %486 = load i32, i32* %37, align 4
  store i32 %486, i32* %36, align 4
  br label %487

487:                                              ; preds = %484, %480
  %488 = load i32*, i32** %17, align 8
  %489 = load i32, i32* %33, align 4
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds i32, i32* %488, i64 %490
  %492 = load i32, i32* %491, align 4
  %493 = load i32*, i32** %17, align 8
  %494 = load i32, i32* %35, align 4
  %495 = sext i32 %494 to i64
  %496 = getelementptr inbounds i32, i32* %493, i64 %495
  store i32 %492, i32* %496, align 4
  %497 = load i32, i32* %19, align 4
  %498 = load i32*, i32** %17, align 8
  %499 = load i32, i32* %33, align 4
  %500 = add nsw i32 %499, 1
  store i32 %500, i32* %33, align 4
  %501 = sext i32 %499 to i64
  %502 = getelementptr inbounds i32, i32* %498, i64 %501
  store i32 %497, i32* %502, align 4
  br label %503

503:                                              ; preds = %487, %466
  br label %504

504:                                              ; preds = %503
  %505 = load i32, i32* %35, align 4
  %506 = add nsw i32 %505, 1
  store i32 %506, i32* %35, align 4
  br label %462

507:                                              ; preds = %462
  %508 = load i32, i32* %32, align 4
  store i32 %508, i32* %35, align 4
  br label %509

509:                                              ; preds = %526, %507
  %510 = load i32, i32* %35, align 4
  %511 = load i32, i32* %33, align 4
  %512 = icmp slt i32 %510, %511
  br i1 %512, label %513, label %529

513:                                              ; preds = %509
  %514 = load i32*, i32** %9, align 8
  %515 = load i32*, i32** %17, align 8
  %516 = load i32, i32* %35, align 4
  %517 = sext i32 %516 to i64
  %518 = getelementptr inbounds i32, i32* %515, i64 %517
  %519 = load i32, i32* %518, align 4
  %520 = sext i32 %519 to i64
  %521 = getelementptr inbounds i32, i32* %514, i64 %520
  %522 = load i32, i32* %521, align 4
  %523 = icmp eq i32 %522, -1
  br i1 %523, label %524, label %525

524:                                              ; preds = %513
  br label %636

525:                                              ; preds = %513
  br label %526

526:                                              ; preds = %525
  %527 = load i32, i32* %35, align 4
  %528 = add nsw i32 %527, 1
  store i32 %528, i32* %35, align 4
  br label %509

529:                                              ; preds = %509
  br label %530

530:                                              ; preds = %626, %529
  %531 = load i32*, i32** %17, align 8
  %532 = load i32, i32* %32, align 4
  %533 = add nsw i32 %532, 1
  store i32 %533, i32* %32, align 4
  %534 = sext i32 %532 to i64
  %535 = getelementptr inbounds i32, i32* %531, i64 %534
  %536 = load i32, i32* %535, align 4
  store i32 %536, i32* %39, align 4
  %537 = load i32*, i32** %9, align 8
  %538 = load i32, i32* %39, align 4
  %539 = sext i32 %538 to i64
  %540 = getelementptr inbounds i32, i32* %537, i64 %539
  %541 = load i32, i32* %540, align 4
  store i32 %541, i32* %18, align 4
  %542 = load i32, i32* %39, align 4
  %543 = load i32, i32* %18, align 4
  %544 = call i32 @COST(i32 %542, i32 %543)
  %545 = load i32*, i32** %11, align 8
  %546 = load i32, i32* %39, align 4
  %547 = sext i32 %546 to i64
  %548 = getelementptr inbounds i32, i32* %545, i64 %547
  %549 = load i32, i32* %548, align 4
  %550 = sub nsw i32 %544, %549
  %551 = load i32, i32* %36, align 4
  %552 = sub nsw i32 %550, %551
  store i32 %552, i32* %38, align 4
  %553 = load i32, i32* %33, align 4
  store i32 %553, i32* %35, align 4
  br label %554

554:                                              ; preds = %622, %530
  %555 = load i32, i32* %35, align 4
  %556 = load i32, i32* %6, align 4
  %557 = icmp slt i32 %555, %556
  br i1 %557, label %558, label %625

558:                                              ; preds = %554
  %559 = load i32*, i32** %17, align 8
  %560 = load i32, i32* %35, align 4
  %561 = sext i32 %560 to i64
  %562 = getelementptr inbounds i32, i32* %559, i64 %561
  %563 = load i32, i32* %562, align 4
  store i32 %563, i32* %19, align 4
  %564 = load i32, i32* %19, align 4
  %565 = load i32, i32* %18, align 4
  %566 = call i32 @COST(i32 %564, i32 %565)
  %567 = load i32*, i32** %11, align 8
  %568 = load i32, i32* %19, align 4
  %569 = sext i32 %568 to i64
  %570 = getelementptr inbounds i32, i32* %567, i64 %569
  %571 = load i32, i32* %570, align 4
  %572 = sub nsw i32 %566, %571
  %573 = load i32, i32* %38, align 4
  %574 = sub nsw i32 %572, %573
  store i32 %574, i32* %37, align 4
  %575 = load i32, i32* %37, align 4
  %576 = load i32*, i32** %12, align 8
  %577 = load i32, i32* %19, align 4
  %578 = sext i32 %577 to i64
  %579 = getelementptr inbounds i32, i32* %576, i64 %578
  %580 = load i32, i32* %579, align 4
  %581 = icmp slt i32 %575, %580
  br i1 %581, label %582, label %621

582:                                              ; preds = %558
  %583 = load i32, i32* %37, align 4
  %584 = load i32*, i32** %12, align 8
  %585 = load i32, i32* %19, align 4
  %586 = sext i32 %585 to i64
  %587 = getelementptr inbounds i32, i32* %584, i64 %586
  store i32 %583, i32* %587, align 4
  %588 = load i32, i32* %18, align 4
  %589 = load i32*, i32** %16, align 8
  %590 = load i32, i32* %19, align 4
  %591 = sext i32 %590 to i64
  %592 = getelementptr inbounds i32, i32* %589, i64 %591
  store i32 %588, i32* %592, align 4
  %593 = load i32, i32* %37, align 4
  %594 = load i32, i32* %36, align 4
  %595 = icmp eq i32 %593, %594
  br i1 %595, label %596, label %620

596:                                              ; preds = %582
  %597 = load i32*, i32** %9, align 8
  %598 = load i32, i32* %19, align 4
  %599 = sext i32 %598 to i64
  %600 = getelementptr inbounds i32, i32* %597, i64 %599
  %601 = load i32, i32* %600, align 4
  %602 = icmp eq i32 %601, -1
  br i1 %602, label %603, label %604

603:                                              ; preds = %596
  br label %636

604:                                              ; preds = %596
  %605 = load i32*, i32** %17, align 8
  %606 = load i32, i32* %33, align 4
  %607 = sext i32 %606 to i64
  %608 = getelementptr inbounds i32, i32* %605, i64 %607
  %609 = load i32, i32* %608, align 4
  %610 = load i32*, i32** %17, align 8
  %611 = load i32, i32* %35, align 4
  %612 = sext i32 %611 to i64
  %613 = getelementptr inbounds i32, i32* %610, i64 %612
  store i32 %609, i32* %613, align 4
  %614 = load i32, i32* %19, align 4
  %615 = load i32*, i32** %17, align 8
  %616 = load i32, i32* %33, align 4
  %617 = add nsw i32 %616, 1
  store i32 %617, i32* %33, align 4
  %618 = sext i32 %616 to i64
  %619 = getelementptr inbounds i32, i32* %615, i64 %618
  store i32 %614, i32* %619, align 4
  br label %620

620:                                              ; preds = %604, %582
  br label %621

621:                                              ; preds = %620, %558
  br label %622

622:                                              ; preds = %621
  %623 = load i32, i32* %35, align 4
  %624 = add nsw i32 %623, 1
  store i32 %624, i32* %35, align 4
  br label %554

625:                                              ; preds = %554
  br label %626

626:                                              ; preds = %625
  %627 = load i32, i32* %32, align 4
  %628 = load i32, i32* %33, align 4
  %629 = icmp ne i32 %627, %628
  br i1 %629, label %530, label %630

630:                                              ; preds = %626
  br label %631

631:                                              ; preds = %630
  %632 = load i32, i32* %32, align 4
  %633 = load i32, i32* %33, align 4
  %634 = icmp eq i32 %632, %633
  br i1 %634, label %449, label %635

635:                                              ; preds = %631
  br label %636

636:                                              ; preds = %635, %603, %524
  store i32 0, i32* %35, align 4
  br label %637

637:                                              ; preds = %660, %636
  %638 = load i32, i32* %35, align 4
  %639 = load i32, i32* %34, align 4
  %640 = icmp slt i32 %638, %639
  br i1 %640, label %641, label %663

641:                                              ; preds = %637
  %642 = load i32*, i32** %17, align 8
  %643 = load i32, i32* %35, align 4
  %644 = sext i32 %643 to i64
  %645 = getelementptr inbounds i32, i32* %642, i64 %644
  %646 = load i32, i32* %645, align 4
  store i32 %646, i32* %40, align 4
  %647 = load i32*, i32** %12, align 8
  %648 = load i32, i32* %40, align 4
  %649 = sext i32 %648 to i64
  %650 = getelementptr inbounds i32, i32* %647, i64 %649
  %651 = load i32, i32* %650, align 4
  %652 = load i32, i32* %36, align 4
  %653 = sub nsw i32 %651, %652
  %654 = load i32*, i32** %11, align 8
  %655 = load i32, i32* %40, align 4
  %656 = sext i32 %655 to i64
  %657 = getelementptr inbounds i32, i32* %654, i64 %656
  %658 = load i32, i32* %657, align 4
  %659 = add nsw i32 %658, %653
  store i32 %659, i32* %657, align 4
  br label %660

660:                                              ; preds = %641
  %661 = load i32, i32* %35, align 4
  %662 = add nsw i32 %661, 1
  store i32 %662, i32* %35, align 4
  br label %637

663:                                              ; preds = %637
  br label %664

664:                                              ; preds = %688, %663
  %665 = load i32, i32* %19, align 4
  %666 = icmp slt i32 %665, 0
  br i1 %666, label %667, label %670

667:                                              ; preds = %664
  %668 = load i32, i32* %19, align 4
  %669 = call i32 @BUG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %668)
  br label %670

670:                                              ; preds = %667, %664
  %671 = load i32*, i32** %16, align 8
  %672 = load i32, i32* %19, align 4
  %673 = sext i32 %672 to i64
  %674 = getelementptr inbounds i32, i32* %671, i64 %673
  %675 = load i32, i32* %674, align 4
  store i32 %675, i32* %18, align 4
  %676 = load i32, i32* %18, align 4
  %677 = load i32*, i32** %9, align 8
  %678 = load i32, i32* %19, align 4
  %679 = sext i32 %678 to i64
  %680 = getelementptr inbounds i32, i32* %677, i64 %679
  store i32 %676, i32* %680, align 4
  %681 = load i32, i32* %19, align 4
  %682 = load i32*, i32** %10, align 8
  %683 = load i32, i32* %18, align 4
  %684 = sext i32 %683 to i64
  %685 = getelementptr inbounds i32, i32* %682, i64 %684
  %686 = load i32, i32* %685, align 4
  %687 = call i32 @SWAP(i32 %681, i32 %686)
  br label %688

688:                                              ; preds = %670
  %689 = load i32, i32* %31, align 4
  %690 = load i32, i32* %18, align 4
  %691 = icmp ne i32 %689, %690
  br i1 %691, label %664, label %692

692:                                              ; preds = %688
  br label %693

693:                                              ; preds = %692
  %694 = load i32, i32* %14, align 4
  %695 = add nsw i32 %694, 1
  store i32 %695, i32* %14, align 4
  br label %407

696:                                              ; preds = %407
  %697 = load i32*, i32** %17, align 8
  %698 = call i32 @free(i32* %697)
  %699 = load i32*, i32** %16, align 8
  %700 = call i32 @free(i32* %699)
  %701 = load i32*, i32** %12, align 8
  %702 = call i32 @free(i32* %701)
  %703 = load i32*, i32** %11, align 8
  %704 = call i32 @free(i32* %703)
  %705 = load i32*, i32** %13, align 8
  %706 = call i32 @free(i32* %705)
  br label %707

707:                                              ; preds = %696, %257, %43
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ALLOC_ARRAY(i32*, i32) #1

declare dso_local i32 @COST(i32, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @BUG(i8*, i32) #1

declare dso_local i32 @SWAP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
