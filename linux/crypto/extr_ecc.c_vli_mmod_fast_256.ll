; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_ecc.c_vli_mmod_fast_256.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_ecc.c_vli_mmod_fast_256.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32*)* @vli_mmod_fast_256 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vli_mmod_fast_256(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 4, i32* %10, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = call i32 @vli_set(i32* %11, i32* %12, i32 4)
  %14 = load i32*, i32** %8, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  store i32 0, i32* %15, align 4
  %16 = load i32*, i32** %6, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 5
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = and i64 %19, -4294967296
  %21 = trunc i64 %20 to i32
  %22 = load i32*, i32** %8, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  store i32 %21, i32* %23, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 6
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %8, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 2
  store i32 %26, i32* %28, align 4
  %29 = load i32*, i32** %6, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 7
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %8, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 3
  store i32 %31, i32* %33, align 4
  %34 = load i32*, i32** %8, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @vli_lshift(i32* %34, i32* %35, i32 1, i32 4)
  store i32 %36, i32* %9, align 4
  %37 = load i32*, i32** %5, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = call i64 @vli_add(i32* %37, i32* %38, i32* %39, i32 4)
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %42, %40
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %9, align 4
  %45 = load i32*, i32** %6, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 6
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 %47, 32
  %49 = load i32*, i32** %8, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  store i32 %48, i32* %50, align 4
  %51 = load i32*, i32** %6, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 6
  %53 = load i32, i32* %52, align 4
  %54 = ashr i32 %53, 32
  %55 = load i32*, i32** %6, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 7
  %57 = load i32, i32* %56, align 4
  %58 = shl i32 %57, 32
  %59 = or i32 %54, %58
  %60 = load i32*, i32** %8, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 2
  store i32 %59, i32* %61, align 4
  %62 = load i32*, i32** %6, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 7
  %64 = load i32, i32* %63, align 4
  %65 = ashr i32 %64, 32
  %66 = load i32*, i32** %8, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 3
  store i32 %65, i32* %67, align 4
  %68 = load i32*, i32** %8, align 8
  %69 = load i32*, i32** %8, align 8
  %70 = call i32 @vli_lshift(i32* %68, i32* %69, i32 1, i32 4)
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, %70
  store i32 %72, i32* %9, align 4
  %73 = load i32*, i32** %5, align 8
  %74 = load i32*, i32** %5, align 8
  %75 = load i32*, i32** %8, align 8
  %76 = call i64 @vli_add(i32* %73, i32* %74, i32* %75, i32 4)
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %78, %76
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %9, align 4
  %81 = load i32*, i32** %6, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 4
  %83 = load i32, i32* %82, align 4
  %84 = load i32*, i32** %8, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  store i32 %83, i32* %85, align 4
  %86 = load i32*, i32** %6, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 5
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** %8, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  store i32 %88, i32* %90, align 4
  %91 = load i32*, i32** %8, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 2
  store i32 0, i32* %92, align 4
  %93 = load i32*, i32** %6, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 7
  %95 = load i32, i32* %94, align 4
  %96 = load i32*, i32** %8, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 3
  store i32 %95, i32* %97, align 4
  %98 = load i32*, i32** %5, align 8
  %99 = load i32*, i32** %5, align 8
  %100 = load i32*, i32** %8, align 8
  %101 = call i64 @vli_add(i32* %98, i32* %99, i32* %100, i32 4)
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = add nsw i64 %103, %101
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %9, align 4
  %106 = load i32*, i32** %6, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 4
  %108 = load i32, i32* %107, align 4
  %109 = ashr i32 %108, 32
  %110 = load i32*, i32** %6, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 5
  %112 = load i32, i32* %111, align 4
  %113 = shl i32 %112, 32
  %114 = or i32 %109, %113
  %115 = load i32*, i32** %8, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  store i32 %114, i32* %116, align 4
  %117 = load i32*, i32** %6, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 5
  %119 = load i32, i32* %118, align 4
  %120 = ashr i32 %119, 32
  %121 = sext i32 %120 to i64
  %122 = load i32*, i32** %6, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 6
  %124 = load i32, i32* %123, align 4
  %125 = sext i32 %124 to i64
  %126 = and i64 %125, -4294967296
  %127 = or i64 %121, %126
  %128 = trunc i64 %127 to i32
  %129 = load i32*, i32** %8, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 1
  store i32 %128, i32* %130, align 4
  %131 = load i32*, i32** %6, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 7
  %133 = load i32, i32* %132, align 4
  %134 = load i32*, i32** %8, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 2
  store i32 %133, i32* %135, align 4
  %136 = load i32*, i32** %6, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 6
  %138 = load i32, i32* %137, align 4
  %139 = ashr i32 %138, 32
  %140 = load i32*, i32** %6, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 4
  %142 = load i32, i32* %141, align 4
  %143 = shl i32 %142, 32
  %144 = or i32 %139, %143
  %145 = load i32*, i32** %8, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 3
  store i32 %144, i32* %146, align 4
  %147 = load i32*, i32** %5, align 8
  %148 = load i32*, i32** %5, align 8
  %149 = load i32*, i32** %8, align 8
  %150 = call i64 @vli_add(i32* %147, i32* %148, i32* %149, i32 4)
  %151 = load i32, i32* %9, align 4
  %152 = sext i32 %151 to i64
  %153 = add nsw i64 %152, %150
  %154 = trunc i64 %153 to i32
  store i32 %154, i32* %9, align 4
  %155 = load i32*, i32** %6, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 5
  %157 = load i32, i32* %156, align 4
  %158 = ashr i32 %157, 32
  %159 = load i32*, i32** %6, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 6
  %161 = load i32, i32* %160, align 4
  %162 = shl i32 %161, 32
  %163 = or i32 %158, %162
  %164 = load i32*, i32** %8, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 0
  store i32 %163, i32* %165, align 4
  %166 = load i32*, i32** %6, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 6
  %168 = load i32, i32* %167, align 4
  %169 = ashr i32 %168, 32
  %170 = load i32*, i32** %8, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 1
  store i32 %169, i32* %171, align 4
  %172 = load i32*, i32** %8, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 2
  store i32 0, i32* %173, align 4
  %174 = load i32*, i32** %6, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 4
  %176 = load i32, i32* %175, align 4
  %177 = load i32*, i32** %6, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 5
  %179 = load i32, i32* %178, align 4
  %180 = shl i32 %179, 32
  %181 = or i32 %176, %180
  %182 = load i32*, i32** %8, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 3
  store i32 %181, i32* %183, align 4
  %184 = load i32*, i32** %5, align 8
  %185 = load i32*, i32** %5, align 8
  %186 = load i32*, i32** %8, align 8
  %187 = call i64 @vli_sub(i32* %184, i32* %185, i32* %186, i32 4)
  %188 = load i32, i32* %9, align 4
  %189 = sext i32 %188 to i64
  %190 = sub nsw i64 %189, %187
  %191 = trunc i64 %190 to i32
  store i32 %191, i32* %9, align 4
  %192 = load i32*, i32** %6, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 6
  %194 = load i32, i32* %193, align 4
  %195 = load i32*, i32** %8, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 0
  store i32 %194, i32* %196, align 4
  %197 = load i32*, i32** %6, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 7
  %199 = load i32, i32* %198, align 4
  %200 = load i32*, i32** %8, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 1
  store i32 %199, i32* %201, align 4
  %202 = load i32*, i32** %8, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 2
  store i32 0, i32* %203, align 4
  %204 = load i32*, i32** %6, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 4
  %206 = load i32, i32* %205, align 4
  %207 = ashr i32 %206, 32
  %208 = sext i32 %207 to i64
  %209 = load i32*, i32** %6, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 5
  %211 = load i32, i32* %210, align 4
  %212 = sext i32 %211 to i64
  %213 = and i64 %212, -4294967296
  %214 = or i64 %208, %213
  %215 = trunc i64 %214 to i32
  %216 = load i32*, i32** %8, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 3
  store i32 %215, i32* %217, align 4
  %218 = load i32*, i32** %5, align 8
  %219 = load i32*, i32** %5, align 8
  %220 = load i32*, i32** %8, align 8
  %221 = call i64 @vli_sub(i32* %218, i32* %219, i32* %220, i32 4)
  %222 = load i32, i32* %9, align 4
  %223 = sext i32 %222 to i64
  %224 = sub nsw i64 %223, %221
  %225 = trunc i64 %224 to i32
  store i32 %225, i32* %9, align 4
  %226 = load i32*, i32** %6, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 6
  %228 = load i32, i32* %227, align 4
  %229 = ashr i32 %228, 32
  %230 = load i32*, i32** %6, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 7
  %232 = load i32, i32* %231, align 4
  %233 = shl i32 %232, 32
  %234 = or i32 %229, %233
  %235 = load i32*, i32** %8, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 0
  store i32 %234, i32* %236, align 4
  %237 = load i32*, i32** %6, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 7
  %239 = load i32, i32* %238, align 4
  %240 = ashr i32 %239, 32
  %241 = load i32*, i32** %6, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 4
  %243 = load i32, i32* %242, align 4
  %244 = shl i32 %243, 32
  %245 = or i32 %240, %244
  %246 = load i32*, i32** %8, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 1
  store i32 %245, i32* %247, align 4
  %248 = load i32*, i32** %6, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 4
  %250 = load i32, i32* %249, align 4
  %251 = ashr i32 %250, 32
  %252 = load i32*, i32** %6, align 8
  %253 = getelementptr inbounds i32, i32* %252, i64 5
  %254 = load i32, i32* %253, align 4
  %255 = shl i32 %254, 32
  %256 = or i32 %251, %255
  %257 = load i32*, i32** %8, align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 2
  store i32 %256, i32* %258, align 4
  %259 = load i32*, i32** %6, align 8
  %260 = getelementptr inbounds i32, i32* %259, i64 6
  %261 = load i32, i32* %260, align 4
  %262 = shl i32 %261, 32
  %263 = load i32*, i32** %8, align 8
  %264 = getelementptr inbounds i32, i32* %263, i64 3
  store i32 %262, i32* %264, align 4
  %265 = load i32*, i32** %5, align 8
  %266 = load i32*, i32** %5, align 8
  %267 = load i32*, i32** %8, align 8
  %268 = call i64 @vli_sub(i32* %265, i32* %266, i32* %267, i32 4)
  %269 = load i32, i32* %9, align 4
  %270 = sext i32 %269 to i64
  %271 = sub nsw i64 %270, %268
  %272 = trunc i64 %271 to i32
  store i32 %272, i32* %9, align 4
  %273 = load i32*, i32** %6, align 8
  %274 = getelementptr inbounds i32, i32* %273, i64 7
  %275 = load i32, i32* %274, align 4
  %276 = load i32*, i32** %8, align 8
  %277 = getelementptr inbounds i32, i32* %276, i64 0
  store i32 %275, i32* %277, align 4
  %278 = load i32*, i32** %6, align 8
  %279 = getelementptr inbounds i32, i32* %278, i64 4
  %280 = load i32, i32* %279, align 4
  %281 = sext i32 %280 to i64
  %282 = and i64 %281, -4294967296
  %283 = trunc i64 %282 to i32
  %284 = load i32*, i32** %8, align 8
  %285 = getelementptr inbounds i32, i32* %284, i64 1
  store i32 %283, i32* %285, align 4
  %286 = load i32*, i32** %6, align 8
  %287 = getelementptr inbounds i32, i32* %286, i64 5
  %288 = load i32, i32* %287, align 4
  %289 = load i32*, i32** %8, align 8
  %290 = getelementptr inbounds i32, i32* %289, i64 2
  store i32 %288, i32* %290, align 4
  %291 = load i32*, i32** %6, align 8
  %292 = getelementptr inbounds i32, i32* %291, i64 6
  %293 = load i32, i32* %292, align 4
  %294 = sext i32 %293 to i64
  %295 = and i64 %294, -4294967296
  %296 = trunc i64 %295 to i32
  %297 = load i32*, i32** %8, align 8
  %298 = getelementptr inbounds i32, i32* %297, i64 3
  store i32 %296, i32* %298, align 4
  %299 = load i32*, i32** %5, align 8
  %300 = load i32*, i32** %5, align 8
  %301 = load i32*, i32** %8, align 8
  %302 = call i64 @vli_sub(i32* %299, i32* %300, i32* %301, i32 4)
  %303 = load i32, i32* %9, align 4
  %304 = sext i32 %303 to i64
  %305 = sub nsw i64 %304, %302
  %306 = trunc i64 %305 to i32
  store i32 %306, i32* %9, align 4
  %307 = load i32, i32* %9, align 4
  %308 = icmp slt i32 %307, 0
  br i1 %308, label %309, label %323

309:                                              ; preds = %4
  br label %310

310:                                              ; preds = %319, %309
  %311 = load i32*, i32** %5, align 8
  %312 = load i32*, i32** %5, align 8
  %313 = load i32*, i32** %7, align 8
  %314 = call i64 @vli_add(i32* %311, i32* %312, i32* %313, i32 4)
  %315 = load i32, i32* %9, align 4
  %316 = sext i32 %315 to i64
  %317 = add nsw i64 %316, %314
  %318 = trunc i64 %317 to i32
  store i32 %318, i32* %9, align 4
  br label %319

319:                                              ; preds = %310
  %320 = load i32, i32* %9, align 4
  %321 = icmp slt i32 %320, 0
  br i1 %321, label %310, label %322

322:                                              ; preds = %319
  br label %344

323:                                              ; preds = %4
  br label %324

324:                                              ; preds = %334, %323
  %325 = load i32, i32* %9, align 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %332, label %327

327:                                              ; preds = %324
  %328 = load i32*, i32** %7, align 8
  %329 = load i32*, i32** %5, align 8
  %330 = call i32 @vli_cmp(i32* %328, i32* %329, i32 4)
  %331 = icmp ne i32 %330, 1
  br label %332

332:                                              ; preds = %327, %324
  %333 = phi i1 [ true, %324 ], [ %331, %327 ]
  br i1 %333, label %334, label %343

334:                                              ; preds = %332
  %335 = load i32*, i32** %5, align 8
  %336 = load i32*, i32** %5, align 8
  %337 = load i32*, i32** %7, align 8
  %338 = call i64 @vli_sub(i32* %335, i32* %336, i32* %337, i32 4)
  %339 = load i32, i32* %9, align 4
  %340 = sext i32 %339 to i64
  %341 = sub nsw i64 %340, %338
  %342 = trunc i64 %341 to i32
  store i32 %342, i32* %9, align 4
  br label %324

343:                                              ; preds = %332
  br label %344

344:                                              ; preds = %343, %322
  ret void
}

declare dso_local i32 @vli_set(i32*, i32*, i32) #1

declare dso_local i32 @vli_lshift(i32*, i32*, i32, i32) #1

declare dso_local i64 @vli_add(i32*, i32*, i32*, i32) #1

declare dso_local i64 @vli_sub(i32*, i32*, i32*, i32) #1

declare dso_local i32 @vli_cmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
