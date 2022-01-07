; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/micro-ecc/extr_curve-specific.inc_vli_mmod_fast_secp256r1.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/micro-ecc/extr_curve-specific.inc_vli_mmod_fast_secp256r1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@num_words_secp256r1 = common dso_local global i32 0, align 4
@curve_secp256r1 = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @vli_mmod_fast_secp256r1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vli_mmod_fast_secp256r1(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32, i32* @num_words_secp256r1, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %5, align 8
  %11 = alloca i32, i64 %9, align 16
  store i64 %9, i64* %6, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* @num_words_secp256r1, align 4
  %15 = call i32 @uECC_vli_set(i32* %12, i32* %13, i32 %14)
  %16 = getelementptr inbounds i32, i32* %11, i64 0
  store i32 0, i32* %16, align 16
  %17 = load i32*, i32** %4, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 5
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = and i64 %20, -4294967296
  %22 = trunc i64 %21 to i32
  %23 = getelementptr inbounds i32, i32* %11, i64 1
  store i32 %22, i32* %23, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 6
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds i32, i32* %11, i64 2
  store i32 %26, i32* %27, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 7
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds i32, i32* %11, i64 3
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* @num_words_secp256r1, align 4
  %33 = call i64 @uECC_vli_add(i32* %11, i32* %11, i32* %11, i32 %32)
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %7, align 4
  %35 = load i32*, i32** %3, align 8
  %36 = load i32*, i32** %3, align 8
  %37 = load i32, i32* @num_words_secp256r1, align 4
  %38 = call i64 @uECC_vli_add(i32* %35, i32* %36, i32* %11, i32 %37)
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %40, %38
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %7, align 4
  %43 = load i32*, i32** %4, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 6
  %45 = load i32, i32* %44, align 4
  %46 = shl i32 %45, 32
  %47 = getelementptr inbounds i32, i32* %11, i64 1
  store i32 %46, i32* %47, align 4
  %48 = load i32*, i32** %4, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 6
  %50 = load i32, i32* %49, align 4
  %51 = ashr i32 %50, 32
  %52 = load i32*, i32** %4, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 7
  %54 = load i32, i32* %53, align 4
  %55 = shl i32 %54, 32
  %56 = or i32 %51, %55
  %57 = getelementptr inbounds i32, i32* %11, i64 2
  store i32 %56, i32* %57, align 8
  %58 = load i32*, i32** %4, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 7
  %60 = load i32, i32* %59, align 4
  %61 = ashr i32 %60, 32
  %62 = getelementptr inbounds i32, i32* %11, i64 3
  store i32 %61, i32* %62, align 4
  %63 = load i32, i32* @num_words_secp256r1, align 4
  %64 = call i64 @uECC_vli_add(i32* %11, i32* %11, i32* %11, i32 %63)
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %66, %64
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %7, align 4
  %69 = load i32*, i32** %3, align 8
  %70 = load i32*, i32** %3, align 8
  %71 = load i32, i32* @num_words_secp256r1, align 4
  %72 = call i64 @uECC_vli_add(i32* %69, i32* %70, i32* %11, i32 %71)
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %74, %72
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %7, align 4
  %77 = load i32*, i32** %4, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 4
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds i32, i32* %11, i64 0
  store i32 %79, i32* %80, align 16
  %81 = load i32*, i32** %4, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 5
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds i32, i32* %11, i64 1
  store i32 %83, i32* %84, align 4
  %85 = getelementptr inbounds i32, i32* %11, i64 2
  store i32 0, i32* %85, align 8
  %86 = load i32*, i32** %4, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 7
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds i32, i32* %11, i64 3
  store i32 %88, i32* %89, align 4
  %90 = load i32*, i32** %3, align 8
  %91 = load i32*, i32** %3, align 8
  %92 = load i32, i32* @num_words_secp256r1, align 4
  %93 = call i64 @uECC_vli_add(i32* %90, i32* %91, i32* %11, i32 %92)
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = add nsw i64 %95, %93
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %7, align 4
  %98 = load i32*, i32** %4, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 4
  %100 = load i32, i32* %99, align 4
  %101 = ashr i32 %100, 32
  %102 = load i32*, i32** %4, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 5
  %104 = load i32, i32* %103, align 4
  %105 = shl i32 %104, 32
  %106 = or i32 %101, %105
  %107 = getelementptr inbounds i32, i32* %11, i64 0
  store i32 %106, i32* %107, align 16
  %108 = load i32*, i32** %4, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 5
  %110 = load i32, i32* %109, align 4
  %111 = ashr i32 %110, 32
  %112 = sext i32 %111 to i64
  %113 = load i32*, i32** %4, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 6
  %115 = load i32, i32* %114, align 4
  %116 = sext i32 %115 to i64
  %117 = and i64 %116, -4294967296
  %118 = or i64 %112, %117
  %119 = trunc i64 %118 to i32
  %120 = getelementptr inbounds i32, i32* %11, i64 1
  store i32 %119, i32* %120, align 4
  %121 = load i32*, i32** %4, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 7
  %123 = load i32, i32* %122, align 4
  %124 = getelementptr inbounds i32, i32* %11, i64 2
  store i32 %123, i32* %124, align 8
  %125 = load i32*, i32** %4, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 6
  %127 = load i32, i32* %126, align 4
  %128 = ashr i32 %127, 32
  %129 = load i32*, i32** %4, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 4
  %131 = load i32, i32* %130, align 4
  %132 = shl i32 %131, 32
  %133 = or i32 %128, %132
  %134 = getelementptr inbounds i32, i32* %11, i64 3
  store i32 %133, i32* %134, align 4
  %135 = load i32*, i32** %3, align 8
  %136 = load i32*, i32** %3, align 8
  %137 = load i32, i32* @num_words_secp256r1, align 4
  %138 = call i64 @uECC_vli_add(i32* %135, i32* %136, i32* %11, i32 %137)
  %139 = load i32, i32* %7, align 4
  %140 = sext i32 %139 to i64
  %141 = add nsw i64 %140, %138
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %7, align 4
  %143 = load i32*, i32** %4, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 5
  %145 = load i32, i32* %144, align 4
  %146 = ashr i32 %145, 32
  %147 = load i32*, i32** %4, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 6
  %149 = load i32, i32* %148, align 4
  %150 = shl i32 %149, 32
  %151 = or i32 %146, %150
  %152 = getelementptr inbounds i32, i32* %11, i64 0
  store i32 %151, i32* %152, align 16
  %153 = load i32*, i32** %4, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 6
  %155 = load i32, i32* %154, align 4
  %156 = ashr i32 %155, 32
  %157 = getelementptr inbounds i32, i32* %11, i64 1
  store i32 %156, i32* %157, align 4
  %158 = getelementptr inbounds i32, i32* %11, i64 2
  store i32 0, i32* %158, align 8
  %159 = load i32*, i32** %4, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 4
  %161 = load i32, i32* %160, align 4
  %162 = load i32*, i32** %4, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 5
  %164 = load i32, i32* %163, align 4
  %165 = shl i32 %164, 32
  %166 = or i32 %161, %165
  %167 = getelementptr inbounds i32, i32* %11, i64 3
  store i32 %166, i32* %167, align 4
  %168 = load i32*, i32** %3, align 8
  %169 = load i32*, i32** %3, align 8
  %170 = load i32, i32* @num_words_secp256r1, align 4
  %171 = call i64 @uECC_vli_sub(i32* %168, i32* %169, i32* %11, i32 %170)
  %172 = load i32, i32* %7, align 4
  %173 = sext i32 %172 to i64
  %174 = sub nsw i64 %173, %171
  %175 = trunc i64 %174 to i32
  store i32 %175, i32* %7, align 4
  %176 = load i32*, i32** %4, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 6
  %178 = load i32, i32* %177, align 4
  %179 = getelementptr inbounds i32, i32* %11, i64 0
  store i32 %178, i32* %179, align 16
  %180 = load i32*, i32** %4, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 7
  %182 = load i32, i32* %181, align 4
  %183 = getelementptr inbounds i32, i32* %11, i64 1
  store i32 %182, i32* %183, align 4
  %184 = getelementptr inbounds i32, i32* %11, i64 2
  store i32 0, i32* %184, align 8
  %185 = load i32*, i32** %4, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 4
  %187 = load i32, i32* %186, align 4
  %188 = ashr i32 %187, 32
  %189 = sext i32 %188 to i64
  %190 = load i32*, i32** %4, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 5
  %192 = load i32, i32* %191, align 4
  %193 = sext i32 %192 to i64
  %194 = and i64 %193, -4294967296
  %195 = or i64 %189, %194
  %196 = trunc i64 %195 to i32
  %197 = getelementptr inbounds i32, i32* %11, i64 3
  store i32 %196, i32* %197, align 4
  %198 = load i32*, i32** %3, align 8
  %199 = load i32*, i32** %3, align 8
  %200 = load i32, i32* @num_words_secp256r1, align 4
  %201 = call i64 @uECC_vli_sub(i32* %198, i32* %199, i32* %11, i32 %200)
  %202 = load i32, i32* %7, align 4
  %203 = sext i32 %202 to i64
  %204 = sub nsw i64 %203, %201
  %205 = trunc i64 %204 to i32
  store i32 %205, i32* %7, align 4
  %206 = load i32*, i32** %4, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 6
  %208 = load i32, i32* %207, align 4
  %209 = ashr i32 %208, 32
  %210 = load i32*, i32** %4, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 7
  %212 = load i32, i32* %211, align 4
  %213 = shl i32 %212, 32
  %214 = or i32 %209, %213
  %215 = getelementptr inbounds i32, i32* %11, i64 0
  store i32 %214, i32* %215, align 16
  %216 = load i32*, i32** %4, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 7
  %218 = load i32, i32* %217, align 4
  %219 = ashr i32 %218, 32
  %220 = load i32*, i32** %4, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 4
  %222 = load i32, i32* %221, align 4
  %223 = shl i32 %222, 32
  %224 = or i32 %219, %223
  %225 = getelementptr inbounds i32, i32* %11, i64 1
  store i32 %224, i32* %225, align 4
  %226 = load i32*, i32** %4, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 4
  %228 = load i32, i32* %227, align 4
  %229 = ashr i32 %228, 32
  %230 = load i32*, i32** %4, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 5
  %232 = load i32, i32* %231, align 4
  %233 = shl i32 %232, 32
  %234 = or i32 %229, %233
  %235 = getelementptr inbounds i32, i32* %11, i64 2
  store i32 %234, i32* %235, align 8
  %236 = load i32*, i32** %4, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 6
  %238 = load i32, i32* %237, align 4
  %239 = shl i32 %238, 32
  %240 = getelementptr inbounds i32, i32* %11, i64 3
  store i32 %239, i32* %240, align 4
  %241 = load i32*, i32** %3, align 8
  %242 = load i32*, i32** %3, align 8
  %243 = load i32, i32* @num_words_secp256r1, align 4
  %244 = call i64 @uECC_vli_sub(i32* %241, i32* %242, i32* %11, i32 %243)
  %245 = load i32, i32* %7, align 4
  %246 = sext i32 %245 to i64
  %247 = sub nsw i64 %246, %244
  %248 = trunc i64 %247 to i32
  store i32 %248, i32* %7, align 4
  %249 = load i32*, i32** %4, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 7
  %251 = load i32, i32* %250, align 4
  %252 = getelementptr inbounds i32, i32* %11, i64 0
  store i32 %251, i32* %252, align 16
  %253 = load i32*, i32** %4, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 4
  %255 = load i32, i32* %254, align 4
  %256 = sext i32 %255 to i64
  %257 = and i64 %256, -4294967296
  %258 = trunc i64 %257 to i32
  %259 = getelementptr inbounds i32, i32* %11, i64 1
  store i32 %258, i32* %259, align 4
  %260 = load i32*, i32** %4, align 8
  %261 = getelementptr inbounds i32, i32* %260, i64 5
  %262 = load i32, i32* %261, align 4
  %263 = getelementptr inbounds i32, i32* %11, i64 2
  store i32 %262, i32* %263, align 8
  %264 = load i32*, i32** %4, align 8
  %265 = getelementptr inbounds i32, i32* %264, i64 6
  %266 = load i32, i32* %265, align 4
  %267 = sext i32 %266 to i64
  %268 = and i64 %267, -4294967296
  %269 = trunc i64 %268 to i32
  %270 = getelementptr inbounds i32, i32* %11, i64 3
  store i32 %269, i32* %270, align 4
  %271 = load i32*, i32** %3, align 8
  %272 = load i32*, i32** %3, align 8
  %273 = load i32, i32* @num_words_secp256r1, align 4
  %274 = call i64 @uECC_vli_sub(i32* %271, i32* %272, i32* %11, i32 %273)
  %275 = load i32, i32* %7, align 4
  %276 = sext i32 %275 to i64
  %277 = sub nsw i64 %276, %274
  %278 = trunc i64 %277 to i32
  store i32 %278, i32* %7, align 4
  %279 = load i32, i32* %7, align 4
  %280 = icmp slt i32 %279, 0
  br i1 %280, label %281, label %296

281:                                              ; preds = %2
  br label %282

282:                                              ; preds = %292, %281
  %283 = load i32*, i32** %3, align 8
  %284 = load i32*, i32** %3, align 8
  %285 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @curve_secp256r1, i32 0, i32 0), align 8
  %286 = load i32, i32* @num_words_secp256r1, align 4
  %287 = call i64 @uECC_vli_add(i32* %283, i32* %284, i32* %285, i32 %286)
  %288 = load i32, i32* %7, align 4
  %289 = sext i32 %288 to i64
  %290 = add nsw i64 %289, %287
  %291 = trunc i64 %290 to i32
  store i32 %291, i32* %7, align 4
  br label %292

292:                                              ; preds = %282
  %293 = load i32, i32* %7, align 4
  %294 = icmp slt i32 %293, 0
  br i1 %294, label %282, label %295

295:                                              ; preds = %292
  br label %319

296:                                              ; preds = %2
  br label %297

297:                                              ; preds = %308, %296
  %298 = load i32, i32* %7, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %306, label %300

300:                                              ; preds = %297
  %301 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @curve_secp256r1, i32 0, i32 0), align 8
  %302 = load i32*, i32** %3, align 8
  %303 = load i32, i32* @num_words_secp256r1, align 4
  %304 = call i32 @uECC_vli_cmp_unsafe(i32* %301, i32* %302, i32 %303)
  %305 = icmp ne i32 %304, 1
  br label %306

306:                                              ; preds = %300, %297
  %307 = phi i1 [ true, %297 ], [ %305, %300 ]
  br i1 %307, label %308, label %318

308:                                              ; preds = %306
  %309 = load i32*, i32** %3, align 8
  %310 = load i32*, i32** %3, align 8
  %311 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @curve_secp256r1, i32 0, i32 0), align 8
  %312 = load i32, i32* @num_words_secp256r1, align 4
  %313 = call i64 @uECC_vli_sub(i32* %309, i32* %310, i32* %311, i32 %312)
  %314 = load i32, i32* %7, align 4
  %315 = sext i32 %314 to i64
  %316 = sub nsw i64 %315, %313
  %317 = trunc i64 %316 to i32
  store i32 %317, i32* %7, align 4
  br label %297

318:                                              ; preds = %306
  br label %319

319:                                              ; preds = %318, %295
  %320 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %320)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @uECC_vli_set(i32*, i32*, i32) #2

declare dso_local i64 @uECC_vli_add(i32*, i32*, i32*, i32) #2

declare dso_local i64 @uECC_vli_sub(i32*, i32*, i32*, i32) #2

declare dso_local i32 @uECC_vli_cmp_unsafe(i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
