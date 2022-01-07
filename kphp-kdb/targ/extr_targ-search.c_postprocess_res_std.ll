; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-search.c_postprocess_res_std.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-search.c_postprocess_res_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@R_position = common dso_local global i64 0, align 8
@Q_order = common dso_local global i32 0, align 4
@R_cnt = common dso_local global i32 0, align 4
@R = common dso_local global i64* null, align 8
@R_tot = common dso_local global i32 0, align 4
@Q_limit = common dso_local global i32 0, align 4
@log_split_min = common dso_local global i64 0, align 8
@log_split_mod = common dso_local global i64 0, align 8
@UserRate = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @postprocess_res_std() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i64, i64* @R_position, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  br label %389

9:                                                ; preds = %0
  %10 = load i32, i32* @Q_order, align 4
  switch i32 %10, label %367 [
    i32 -1, label %11
    i32 2, label %97
    i32 -2, label %232
  ]

11:                                               ; preds = %9
  %12 = load i32, i32* @R_cnt, align 4
  %13 = sub nsw i32 %12, 1
  store i32 %13, i32* %3, align 4
  store i32 0, i32* %1, align 4
  br label %14

14:                                               ; preds = %46, %11
  %15 = load i32, i32* %1, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* %1, align 4
  %18 = sub nsw i32 %16, %17
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %49

20:                                               ; preds = %14
  %21 = load i64*, i64** @R, align 8
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* %1, align 4
  %24 = sub nsw i32 %22, %23
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %21, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %4, align 4
  %29 = load i64*, i64** @R, align 8
  %30 = load i32, i32* %1, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = load i64*, i64** @R, align 8
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* %1, align 4
  %37 = sub nsw i32 %35, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %34, i64 %38
  store i64 %33, i64* %39, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = load i64*, i64** @R, align 8
  %43 = load i32, i32* %1, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  store i64 %41, i64* %45, align 8
  br label %46

46:                                               ; preds = %20
  %47 = load i32, i32* %1, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %1, align 4
  br label %14

49:                                               ; preds = %14
  %50 = load i32, i32* @R_tot, align 4
  %51 = load i32, i32* @Q_limit, align 4
  %52 = icmp sge i32 %50, %51
  br i1 %52, label %53, label %96

53:                                               ; preds = %49
  %54 = load i32, i32* @R_cnt, align 4
  %55 = load i32, i32* @Q_limit, align 4
  %56 = add nsw i32 %54, %55
  %57 = sub nsw i32 %56, 1
  store i32 %57, i32* %3, align 4
  %58 = load i32, i32* @R_cnt, align 4
  store i32 %58, i32* %1, align 4
  br label %59

59:                                               ; preds = %91, %53
  %60 = load i32, i32* %1, align 4
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* %1, align 4
  %63 = sub nsw i32 %61, %62
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %94

65:                                               ; preds = %59
  %66 = load i64*, i64** @R, align 8
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* %1, align 4
  %69 = sub nsw i32 %67, %68
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %66, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %4, align 4
  %74 = load i64*, i64** @R, align 8
  %75 = load i32, i32* %1, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = load i64*, i64** @R, align 8
  %80 = load i32, i32* %3, align 4
  %81 = load i32, i32* %1, align 4
  %82 = sub nsw i32 %80, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %79, i64 %83
  store i64 %78, i64* %84, align 8
  %85 = load i32, i32* %4, align 4
  %86 = sext i32 %85 to i64
  %87 = load i64*, i64** @R, align 8
  %88 = load i32, i32* %1, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %87, i64 %89
  store i64 %86, i64* %90, align 8
  br label %91

91:                                               ; preds = %65
  %92 = load i32, i32* %1, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %1, align 4
  br label %59

94:                                               ; preds = %59
  %95 = load i32, i32* @Q_limit, align 4
  store i32 %95, i32* @R_cnt, align 4
  br label %96

96:                                               ; preds = %94, %49
  br label %367

97:                                               ; preds = %9
  %98 = load i32, i32* @R_cnt, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %97
  br label %389

101:                                              ; preds = %97
  %102 = load i32, i32* @R_cnt, align 4
  %103 = sub nsw i32 %102, 1
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %208, %101
  %105 = load i32, i32* %3, align 4
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %107, label %211

107:                                              ; preds = %104
  %108 = load i64*, i64** @R, align 8
  %109 = load i32, i32* %3, align 4
  %110 = add nsw i32 %109, 1
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i64, i64* %108, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %4, align 4
  %115 = load i64, i64* @log_split_min, align 8
  %116 = load i64, i64* @log_split_mod, align 8
  %117 = load i64*, i64** @R, align 8
  %118 = getelementptr inbounds i64, i64* %117, i64 1
  %119 = load i64, i64* %118, align 8
  %120 = mul i64 %116, %119
  %121 = add i64 %115, %120
  %122 = load i64*, i64** @R, align 8
  %123 = load i32, i32* %3, align 4
  %124 = mul nsw i32 2, %123
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i64, i64* %122, i64 %125
  store i64 %121, i64* %126, align 8
  %127 = load i32*, i32** @UserRate, align 8
  %128 = load i64*, i64** @R, align 8
  %129 = getelementptr inbounds i64, i64* %128, i64 1
  %130 = load i64, i64* %129, align 8
  %131 = getelementptr inbounds i32, i32* %127, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = sext i32 %132 to i64
  %134 = load i64*, i64** @R, align 8
  %135 = load i32, i32* %3, align 4
  %136 = mul nsw i32 2, %135
  %137 = add nsw i32 %136, 1
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i64, i64* %134, i64 %138
  store i64 %133, i64* %139, align 8
  %140 = load i32*, i32** @UserRate, align 8
  %141 = load i32, i32* %4, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  store i32 %144, i32* %5, align 4
  store i32 1, i32* %1, align 4
  br label %145

145:                                              ; preds = %107, %190
  %146 = load i32, i32* %1, align 4
  %147 = mul nsw i32 2, %146
  store i32 %147, i32* %2, align 4
  %148 = load i32, i32* %2, align 4
  %149 = load i32, i32* %3, align 4
  %150 = icmp sgt i32 %148, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %145
  br label %201

152:                                              ; preds = %145
  %153 = load i32, i32* %2, align 4
  %154 = load i32, i32* %3, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %178

156:                                              ; preds = %152
  %157 = load i32*, i32** @UserRate, align 8
  %158 = load i64*, i64** @R, align 8
  %159 = load i32, i32* %2, align 4
  %160 = add nsw i32 %159, 1
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i64, i64* %158, i64 %161
  %163 = load i64, i64* %162, align 8
  %164 = getelementptr inbounds i32, i32* %157, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = load i32*, i32** @UserRate, align 8
  %167 = load i64*, i64** @R, align 8
  %168 = load i32, i32* %2, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i64, i64* %167, i64 %169
  %171 = load i64, i64* %170, align 8
  %172 = getelementptr inbounds i32, i32* %166, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = icmp sgt i32 %165, %173
  br i1 %174, label %175, label %178

175:                                              ; preds = %156
  %176 = load i32, i32* %2, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %2, align 4
  br label %178

178:                                              ; preds = %175, %156, %152
  %179 = load i32, i32* %5, align 4
  %180 = load i32*, i32** @UserRate, align 8
  %181 = load i64*, i64** @R, align 8
  %182 = load i32, i32* %2, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i64, i64* %181, i64 %183
  %185 = load i64, i64* %184, align 8
  %186 = getelementptr inbounds i32, i32* %180, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = icmp sge i32 %179, %187
  br i1 %188, label %189, label %190

189:                                              ; preds = %178
  br label %201

190:                                              ; preds = %178
  %191 = load i64*, i64** @R, align 8
  %192 = load i32, i32* %2, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i64, i64* %191, i64 %193
  %195 = load i64, i64* %194, align 8
  %196 = load i64*, i64** @R, align 8
  %197 = load i32, i32* %1, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i64, i64* %196, i64 %198
  store i64 %195, i64* %199, align 8
  %200 = load i32, i32* %2, align 4
  store i32 %200, i32* %1, align 4
  br label %145

201:                                              ; preds = %189, %151
  %202 = load i32, i32* %4, align 4
  %203 = sext i32 %202 to i64
  %204 = load i64*, i64** @R, align 8
  %205 = load i32, i32* %1, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i64, i64* %204, i64 %206
  store i64 %203, i64* %207, align 8
  br label %208

208:                                              ; preds = %201
  %209 = load i32, i32* %3, align 4
  %210 = add nsw i32 %209, -1
  store i32 %210, i32* %3, align 4
  br label %104

211:                                              ; preds = %104
  %212 = load i64, i64* @log_split_min, align 8
  %213 = load i64, i64* @log_split_mod, align 8
  %214 = load i64*, i64** @R, align 8
  %215 = getelementptr inbounds i64, i64* %214, i64 1
  %216 = load i64, i64* %215, align 8
  %217 = mul i64 %213, %216
  %218 = add i64 %212, %217
  %219 = load i64*, i64** @R, align 8
  %220 = getelementptr inbounds i64, i64* %219, i64 0
  store i64 %218, i64* %220, align 8
  %221 = load i32*, i32** @UserRate, align 8
  %222 = load i64*, i64** @R, align 8
  %223 = getelementptr inbounds i64, i64* %222, i64 1
  %224 = load i64, i64* %223, align 8
  %225 = getelementptr inbounds i32, i32* %221, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = sext i32 %226 to i64
  %228 = load i64*, i64** @R, align 8
  %229 = getelementptr inbounds i64, i64* %228, i64 1
  store i64 %227, i64* %229, align 8
  %230 = load i32, i32* @R_cnt, align 4
  %231 = mul nsw i32 %230, 2
  store i32 %231, i32* @R_cnt, align 4
  br label %389

232:                                              ; preds = %9
  %233 = load i32, i32* @R_cnt, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %236, label %235

235:                                              ; preds = %232
  br label %389

236:                                              ; preds = %232
  %237 = load i32, i32* @R_cnt, align 4
  %238 = sub nsw i32 %237, 1
  store i32 %238, i32* %3, align 4
  br label %239

239:                                              ; preds = %343, %236
  %240 = load i32, i32* %3, align 4
  %241 = icmp sgt i32 %240, 0
  br i1 %241, label %242, label %346

242:                                              ; preds = %239
  %243 = load i64*, i64** @R, align 8
  %244 = load i32, i32* %3, align 4
  %245 = add nsw i32 %244, 1
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i64, i64* %243, i64 %246
  %248 = load i64, i64* %247, align 8
  %249 = trunc i64 %248 to i32
  store i32 %249, i32* %4, align 4
  %250 = load i64, i64* @log_split_min, align 8
  %251 = load i64, i64* @log_split_mod, align 8
  %252 = load i64*, i64** @R, align 8
  %253 = getelementptr inbounds i64, i64* %252, i64 1
  %254 = load i64, i64* %253, align 8
  %255 = mul i64 %251, %254
  %256 = add i64 %250, %255
  %257 = load i64*, i64** @R, align 8
  %258 = load i32, i32* %3, align 4
  %259 = mul nsw i32 2, %258
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i64, i64* %257, i64 %260
  store i64 %256, i64* %261, align 8
  %262 = load i32*, i32** @UserRate, align 8
  %263 = load i64*, i64** @R, align 8
  %264 = getelementptr inbounds i64, i64* %263, i64 1
  %265 = load i64, i64* %264, align 8
  %266 = getelementptr inbounds i32, i32* %262, i64 %265
  %267 = load i32, i32* %266, align 4
  %268 = sext i32 %267 to i64
  %269 = load i64*, i64** @R, align 8
  %270 = load i32, i32* %3, align 4
  %271 = mul nsw i32 2, %270
  %272 = add nsw i32 %271, 1
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i64, i64* %269, i64 %273
  store i64 %268, i64* %274, align 8
  %275 = load i32*, i32** @UserRate, align 8
  %276 = load i32, i32* %4, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %275, i64 %277
  %279 = load i32, i32* %278, align 4
  store i32 %279, i32* %5, align 4
  store i32 1, i32* %1, align 4
  br label %280

280:                                              ; preds = %242, %325
  %281 = load i32, i32* %1, align 4
  %282 = mul nsw i32 2, %281
  store i32 %282, i32* %2, align 4
  %283 = load i32, i32* %2, align 4
  %284 = load i32, i32* %3, align 4
  %285 = icmp sgt i32 %283, %284
  br i1 %285, label %286, label %287

286:                                              ; preds = %280
  br label %336

287:                                              ; preds = %280
  %288 = load i32, i32* %2, align 4
  %289 = load i32, i32* %3, align 4
  %290 = icmp slt i32 %288, %289
  br i1 %290, label %291, label %313

291:                                              ; preds = %287
  %292 = load i32*, i32** @UserRate, align 8
  %293 = load i64*, i64** @R, align 8
  %294 = load i32, i32* %2, align 4
  %295 = add nsw i32 %294, 1
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i64, i64* %293, i64 %296
  %298 = load i64, i64* %297, align 8
  %299 = getelementptr inbounds i32, i32* %292, i64 %298
  %300 = load i32, i32* %299, align 4
  %301 = load i32*, i32** @UserRate, align 8
  %302 = load i64*, i64** @R, align 8
  %303 = load i32, i32* %2, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i64, i64* %302, i64 %304
  %306 = load i64, i64* %305, align 8
  %307 = getelementptr inbounds i32, i32* %301, i64 %306
  %308 = load i32, i32* %307, align 4
  %309 = icmp slt i32 %300, %308
  br i1 %309, label %310, label %313

310:                                              ; preds = %291
  %311 = load i32, i32* %2, align 4
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* %2, align 4
  br label %313

313:                                              ; preds = %310, %291, %287
  %314 = load i32, i32* %5, align 4
  %315 = load i32*, i32** @UserRate, align 8
  %316 = load i64*, i64** @R, align 8
  %317 = load i32, i32* %2, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i64, i64* %316, i64 %318
  %320 = load i64, i64* %319, align 8
  %321 = getelementptr inbounds i32, i32* %315, i64 %320
  %322 = load i32, i32* %321, align 4
  %323 = icmp sle i32 %314, %322
  br i1 %323, label %324, label %325

324:                                              ; preds = %313
  br label %336

325:                                              ; preds = %313
  %326 = load i64*, i64** @R, align 8
  %327 = load i32, i32* %2, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds i64, i64* %326, i64 %328
  %330 = load i64, i64* %329, align 8
  %331 = load i64*, i64** @R, align 8
  %332 = load i32, i32* %1, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i64, i64* %331, i64 %333
  store i64 %330, i64* %334, align 8
  %335 = load i32, i32* %2, align 4
  store i32 %335, i32* %1, align 4
  br label %280

336:                                              ; preds = %324, %286
  %337 = load i32, i32* %4, align 4
  %338 = sext i32 %337 to i64
  %339 = load i64*, i64** @R, align 8
  %340 = load i32, i32* %1, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i64, i64* %339, i64 %341
  store i64 %338, i64* %342, align 8
  br label %343

343:                                              ; preds = %336
  %344 = load i32, i32* %3, align 4
  %345 = add nsw i32 %344, -1
  store i32 %345, i32* %3, align 4
  br label %239

346:                                              ; preds = %239
  %347 = load i64, i64* @log_split_min, align 8
  %348 = load i64, i64* @log_split_mod, align 8
  %349 = load i64*, i64** @R, align 8
  %350 = getelementptr inbounds i64, i64* %349, i64 1
  %351 = load i64, i64* %350, align 8
  %352 = mul i64 %348, %351
  %353 = add i64 %347, %352
  %354 = load i64*, i64** @R, align 8
  %355 = getelementptr inbounds i64, i64* %354, i64 0
  store i64 %353, i64* %355, align 8
  %356 = load i32*, i32** @UserRate, align 8
  %357 = load i64*, i64** @R, align 8
  %358 = getelementptr inbounds i64, i64* %357, i64 1
  %359 = load i64, i64* %358, align 8
  %360 = getelementptr inbounds i32, i32* %356, i64 %359
  %361 = load i32, i32* %360, align 4
  %362 = sext i32 %361 to i64
  %363 = load i64*, i64** @R, align 8
  %364 = getelementptr inbounds i64, i64* %363, i64 1
  store i64 %362, i64* %364, align 8
  %365 = load i32, i32* @R_cnt, align 4
  %366 = mul nsw i32 %365, 2
  store i32 %366, i32* @R_cnt, align 4
  br label %389

367:                                              ; preds = %9, %96
  store i32 0, i32* %1, align 4
  br label %368

368:                                              ; preds = %386, %367
  %369 = load i32, i32* %1, align 4
  %370 = load i32, i32* @R_cnt, align 4
  %371 = icmp slt i32 %369, %370
  br i1 %371, label %372, label %389

372:                                              ; preds = %368
  %373 = load i64, i64* @log_split_min, align 8
  %374 = load i64, i64* @log_split_mod, align 8
  %375 = load i64*, i64** @R, align 8
  %376 = load i32, i32* %1, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds i64, i64* %375, i64 %377
  %379 = load i64, i64* %378, align 8
  %380 = mul i64 %374, %379
  %381 = add i64 %373, %380
  %382 = load i64*, i64** @R, align 8
  %383 = load i32, i32* %1, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds i64, i64* %382, i64 %384
  store i64 %381, i64* %385, align 8
  br label %386

386:                                              ; preds = %372
  %387 = load i32, i32* %1, align 4
  %388 = add nsw i32 %387, 1
  store i32 %388, i32* %1, align 4
  br label %368

389:                                              ; preds = %8, %100, %211, %235, %346, %368
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
