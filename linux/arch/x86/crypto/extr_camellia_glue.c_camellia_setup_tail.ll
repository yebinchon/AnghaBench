; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/crypto/extr_camellia_glue.c_camellia_setup_tail.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/crypto/extr_camellia_glue.c_camellia_setup_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @camellia_setup_tail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @camellia_setup_tail(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 3
  %17 = load i32, i32* %16, align 4
  %18 = xor i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load i32*, i32** %5, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 5
  %24 = load i32, i32* %23, align 4
  %25 = xor i32 %24, %21
  store i32 %25, i32* %23, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %5, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 7
  %31 = load i32, i32* %30, align 4
  %32 = xor i32 %31, %28
  store i32 %32, i32* %30, align 4
  %33 = load i32*, i32** %5, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %5, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 9
  %38 = load i32, i32* %37, align 4
  %39 = xor i32 %38, -1
  %40 = and i32 %35, %39
  %41 = shl i32 %40, 32
  %42 = load i32*, i32** %5, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = xor i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load i32*, i32** %5, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %5, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 9
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %48, %51
  %53 = ashr i32 %52, 32
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @rol32(i32 %54, i32 1)
  %56 = load i32*, i32** %5, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = xor i32 %58, %55
  store i32 %59, i32* %57, align 4
  %60 = load i32*, i32** %5, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %5, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 11
  %65 = load i32, i32* %64, align 4
  %66 = xor i32 %65, %62
  store i32 %66, i32* %64, align 4
  %67 = load i32*, i32** %5, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %5, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 13
  %72 = load i32, i32* %71, align 4
  %73 = xor i32 %72, %69
  store i32 %73, i32* %71, align 4
  %74 = load i32*, i32** %5, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** %5, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 15
  %79 = load i32, i32* %78, align 4
  %80 = xor i32 %79, %76
  store i32 %80, i32* %78, align 4
  %81 = load i32*, i32** %5, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32*, i32** %5, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 17
  %86 = load i32, i32* %85, align 4
  %87 = xor i32 %86, -1
  %88 = and i32 %83, %87
  %89 = shl i32 %88, 32
  %90 = load i32*, i32** %5, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  %92 = load i32, i32* %91, align 4
  %93 = xor i32 %92, %89
  store i32 %93, i32* %91, align 4
  %94 = load i32*, i32** %5, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32*, i32** %5, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 17
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %96, %99
  %101 = ashr i32 %100, 32
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @rol32(i32 %102, i32 1)
  %104 = load i32*, i32** %5, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 1
  %106 = load i32, i32* %105, align 4
  %107 = xor i32 %106, %103
  store i32 %107, i32* %105, align 4
  %108 = load i32*, i32** %5, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32*, i32** %5, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 19
  %113 = load i32, i32* %112, align 4
  %114 = xor i32 %113, %110
  store i32 %114, i32* %112, align 4
  %115 = load i32*, i32** %5, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32*, i32** %5, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 21
  %120 = load i32, i32* %119, align 4
  %121 = xor i32 %120, %117
  store i32 %121, i32* %119, align 4
  %122 = load i32*, i32** %5, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32*, i32** %5, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 23
  %127 = load i32, i32* %126, align 4
  %128 = xor i32 %127, %124
  store i32 %128, i32* %126, align 4
  %129 = load i32, i32* %6, align 4
  %130 = icmp eq i32 %129, 24
  br i1 %130, label %131, label %142

131:                                              ; preds = %3
  %132 = load i32*, i32** %5, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32*, i32** %5, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 24
  %137 = load i32, i32* %136, align 4
  %138 = xor i32 %137, %134
  store i32 %138, i32* %136, align 4
  %139 = load i32*, i32** %5, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 25
  %141 = load i32, i32* %140, align 4
  store i32 %141, i32* %7, align 4
  br label %235

142:                                              ; preds = %3
  %143 = load i32*, i32** %5, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 1
  %145 = load i32, i32* %144, align 4
  %146 = load i32*, i32** %5, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 25
  %148 = load i32, i32* %147, align 4
  %149 = xor i32 %148, -1
  %150 = and i32 %145, %149
  %151 = shl i32 %150, 32
  %152 = load i32*, i32** %5, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 1
  %154 = load i32, i32* %153, align 4
  %155 = xor i32 %154, %151
  store i32 %155, i32* %153, align 4
  %156 = load i32*, i32** %5, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 1
  %158 = load i32, i32* %157, align 4
  %159 = load i32*, i32** %5, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 25
  %161 = load i32, i32* %160, align 4
  %162 = and i32 %158, %161
  %163 = ashr i32 %162, 32
  store i32 %163, i32* %9, align 4
  %164 = load i32, i32* %9, align 4
  %165 = call i32 @rol32(i32 %164, i32 1)
  %166 = load i32*, i32** %5, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 1
  %168 = load i32, i32* %167, align 4
  %169 = xor i32 %168, %165
  store i32 %169, i32* %167, align 4
  %170 = load i32*, i32** %5, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 1
  %172 = load i32, i32* %171, align 4
  %173 = load i32*, i32** %5, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 27
  %175 = load i32, i32* %174, align 4
  %176 = xor i32 %175, %172
  store i32 %176, i32* %174, align 4
  %177 = load i32*, i32** %5, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 1
  %179 = load i32, i32* %178, align 4
  %180 = load i32*, i32** %5, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 29
  %182 = load i32, i32* %181, align 4
  %183 = xor i32 %182, %179
  store i32 %183, i32* %181, align 4
  %184 = load i32*, i32** %5, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 1
  %186 = load i32, i32* %185, align 4
  %187 = load i32*, i32** %5, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 31
  %189 = load i32, i32* %188, align 4
  %190 = xor i32 %189, %186
  store i32 %190, i32* %188, align 4
  %191 = load i32*, i32** %5, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 1
  %193 = load i32, i32* %192, align 4
  %194 = load i32*, i32** %5, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 32
  %196 = load i32, i32* %195, align 4
  %197 = xor i32 %196, %193
  store i32 %197, i32* %195, align 4
  %198 = load i32*, i32** %5, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 33
  %200 = load i32, i32* %199, align 4
  store i32 %200, i32* %7, align 4
  %201 = load i32, i32* %7, align 4
  %202 = load i32*, i32** %5, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 30
  %204 = load i32, i32* %203, align 4
  %205 = xor i32 %204, %201
  store i32 %205, i32* %203, align 4
  %206 = load i32, i32* %7, align 4
  %207 = load i32*, i32** %5, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 28
  %209 = load i32, i32* %208, align 4
  %210 = xor i32 %209, %206
  store i32 %210, i32* %208, align 4
  %211 = load i32, i32* %7, align 4
  %212 = load i32*, i32** %5, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 26
  %214 = load i32, i32* %213, align 4
  %215 = xor i32 %214, %211
  store i32 %215, i32* %213, align 4
  %216 = load i32, i32* %7, align 4
  %217 = load i32*, i32** %5, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 24
  %219 = load i32, i32* %218, align 4
  %220 = xor i32 %219, -1
  %221 = and i32 %216, %220
  %222 = shl i32 %221, 32
  %223 = load i32, i32* %7, align 4
  %224 = xor i32 %223, %222
  store i32 %224, i32* %7, align 4
  %225 = load i32, i32* %7, align 4
  %226 = load i32*, i32** %5, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 24
  %228 = load i32, i32* %227, align 4
  %229 = and i32 %225, %228
  %230 = ashr i32 %229, 32
  store i32 %230, i32* %9, align 4
  %231 = load i32, i32* %9, align 4
  %232 = call i32 @rol32(i32 %231, i32 1)
  %233 = load i32, i32* %7, align 4
  %234 = xor i32 %233, %232
  store i32 %234, i32* %7, align 4
  br label %235

235:                                              ; preds = %142, %131
  %236 = load i32, i32* %7, align 4
  %237 = load i32*, i32** %5, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 22
  %239 = load i32, i32* %238, align 4
  %240 = xor i32 %239, %236
  store i32 %240, i32* %238, align 4
  %241 = load i32, i32* %7, align 4
  %242 = load i32*, i32** %5, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 20
  %244 = load i32, i32* %243, align 4
  %245 = xor i32 %244, %241
  store i32 %245, i32* %243, align 4
  %246 = load i32, i32* %7, align 4
  %247 = load i32*, i32** %5, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 18
  %249 = load i32, i32* %248, align 4
  %250 = xor i32 %249, %246
  store i32 %250, i32* %248, align 4
  %251 = load i32, i32* %7, align 4
  %252 = load i32*, i32** %5, align 8
  %253 = getelementptr inbounds i32, i32* %252, i64 16
  %254 = load i32, i32* %253, align 4
  %255 = xor i32 %254, -1
  %256 = and i32 %251, %255
  %257 = shl i32 %256, 32
  %258 = load i32, i32* %7, align 4
  %259 = xor i32 %258, %257
  store i32 %259, i32* %7, align 4
  %260 = load i32, i32* %7, align 4
  %261 = load i32*, i32** %5, align 8
  %262 = getelementptr inbounds i32, i32* %261, i64 16
  %263 = load i32, i32* %262, align 4
  %264 = and i32 %260, %263
  %265 = ashr i32 %264, 32
  store i32 %265, i32* %9, align 4
  %266 = load i32, i32* %9, align 4
  %267 = call i32 @rol32(i32 %266, i32 1)
  %268 = load i32, i32* %7, align 4
  %269 = xor i32 %268, %267
  store i32 %269, i32* %7, align 4
  %270 = load i32, i32* %7, align 4
  %271 = load i32*, i32** %5, align 8
  %272 = getelementptr inbounds i32, i32* %271, i64 14
  %273 = load i32, i32* %272, align 4
  %274 = xor i32 %273, %270
  store i32 %274, i32* %272, align 4
  %275 = load i32, i32* %7, align 4
  %276 = load i32*, i32** %5, align 8
  %277 = getelementptr inbounds i32, i32* %276, i64 12
  %278 = load i32, i32* %277, align 4
  %279 = xor i32 %278, %275
  store i32 %279, i32* %277, align 4
  %280 = load i32, i32* %7, align 4
  %281 = load i32*, i32** %5, align 8
  %282 = getelementptr inbounds i32, i32* %281, i64 10
  %283 = load i32, i32* %282, align 4
  %284 = xor i32 %283, %280
  store i32 %284, i32* %282, align 4
  %285 = load i32, i32* %7, align 4
  %286 = load i32*, i32** %5, align 8
  %287 = getelementptr inbounds i32, i32* %286, i64 8
  %288 = load i32, i32* %287, align 4
  %289 = xor i32 %288, -1
  %290 = and i32 %285, %289
  %291 = shl i32 %290, 32
  %292 = load i32, i32* %7, align 4
  %293 = xor i32 %292, %291
  store i32 %293, i32* %7, align 4
  %294 = load i32, i32* %7, align 4
  %295 = load i32*, i32** %5, align 8
  %296 = getelementptr inbounds i32, i32* %295, i64 8
  %297 = load i32, i32* %296, align 4
  %298 = and i32 %294, %297
  %299 = ashr i32 %298, 32
  store i32 %299, i32* %9, align 4
  %300 = load i32, i32* %9, align 4
  %301 = call i32 @rol32(i32 %300, i32 1)
  %302 = load i32, i32* %7, align 4
  %303 = xor i32 %302, %301
  store i32 %303, i32* %7, align 4
  %304 = load i32, i32* %7, align 4
  %305 = load i32*, i32** %5, align 8
  %306 = getelementptr inbounds i32, i32* %305, i64 6
  %307 = load i32, i32* %306, align 4
  %308 = xor i32 %307, %304
  store i32 %308, i32* %306, align 4
  %309 = load i32, i32* %7, align 4
  %310 = load i32*, i32** %5, align 8
  %311 = getelementptr inbounds i32, i32* %310, i64 4
  %312 = load i32, i32* %311, align 4
  %313 = xor i32 %312, %309
  store i32 %313, i32* %311, align 4
  %314 = load i32, i32* %7, align 4
  %315 = load i32*, i32** %5, align 8
  %316 = getelementptr inbounds i32, i32* %315, i64 2
  %317 = load i32, i32* %316, align 4
  %318 = xor i32 %317, %314
  store i32 %318, i32* %316, align 4
  %319 = load i32, i32* %7, align 4
  %320 = load i32*, i32** %5, align 8
  %321 = getelementptr inbounds i32, i32* %320, i64 0
  %322 = load i32, i32* %321, align 4
  %323 = xor i32 %322, %319
  store i32 %323, i32* %321, align 4
  %324 = load i32*, i32** %5, align 8
  %325 = getelementptr inbounds i32, i32* %324, i64 0
  %326 = load i32, i32* %325, align 4
  %327 = load i32*, i32** %5, align 8
  %328 = getelementptr inbounds i32, i32* %327, i64 2
  %329 = load i32, i32* %328, align 4
  %330 = xor i32 %326, %329
  %331 = call i32 @SET_SUBKEY_LR(i32 0, i32 %330)
  %332 = load i32*, i32** %5, align 8
  %333 = getelementptr inbounds i32, i32* %332, i64 3
  %334 = load i32, i32* %333, align 4
  %335 = call i32 @SET_SUBKEY_LR(i32 2, i32 %334)
  %336 = load i32*, i32** %5, align 8
  %337 = getelementptr inbounds i32, i32* %336, i64 2
  %338 = load i32, i32* %337, align 4
  %339 = load i32*, i32** %5, align 8
  %340 = getelementptr inbounds i32, i32* %339, i64 4
  %341 = load i32, i32* %340, align 4
  %342 = xor i32 %338, %341
  %343 = call i32 @SET_SUBKEY_LR(i32 3, i32 %342)
  %344 = load i32*, i32** %5, align 8
  %345 = getelementptr inbounds i32, i32* %344, i64 3
  %346 = load i32, i32* %345, align 4
  %347 = load i32*, i32** %5, align 8
  %348 = getelementptr inbounds i32, i32* %347, i64 5
  %349 = load i32, i32* %348, align 4
  %350 = xor i32 %346, %349
  %351 = call i32 @SET_SUBKEY_LR(i32 4, i32 %350)
  %352 = load i32*, i32** %5, align 8
  %353 = getelementptr inbounds i32, i32* %352, i64 4
  %354 = load i32, i32* %353, align 4
  %355 = load i32*, i32** %5, align 8
  %356 = getelementptr inbounds i32, i32* %355, i64 6
  %357 = load i32, i32* %356, align 4
  %358 = xor i32 %354, %357
  %359 = call i32 @SET_SUBKEY_LR(i32 5, i32 %358)
  %360 = load i32*, i32** %5, align 8
  %361 = getelementptr inbounds i32, i32* %360, i64 5
  %362 = load i32, i32* %361, align 4
  %363 = load i32*, i32** %5, align 8
  %364 = getelementptr inbounds i32, i32* %363, i64 7
  %365 = load i32, i32* %364, align 4
  %366 = xor i32 %362, %365
  %367 = call i32 @SET_SUBKEY_LR(i32 6, i32 %366)
  %368 = load i32*, i32** %5, align 8
  %369 = getelementptr inbounds i32, i32* %368, i64 10
  %370 = load i32, i32* %369, align 4
  %371 = ashr i32 %370, 32
  %372 = load i32*, i32** %5, align 8
  %373 = getelementptr inbounds i32, i32* %372, i64 10
  %374 = load i32, i32* %373, align 4
  %375 = load i32*, i32** %5, align 8
  %376 = getelementptr inbounds i32, i32* %375, i64 8
  %377 = load i32, i32* %376, align 4
  %378 = xor i32 %377, -1
  %379 = and i32 %374, %378
  %380 = xor i32 %371, %379
  store i32 %380, i32* %10, align 4
  %381 = load i32, i32* %10, align 4
  %382 = load i32*, i32** %5, align 8
  %383 = getelementptr inbounds i32, i32* %382, i64 8
  %384 = load i32, i32* %383, align 4
  %385 = ashr i32 %384, 32
  %386 = and i32 %381, %385
  store i32 %386, i32* %9, align 4
  %387 = load i32*, i32** %5, align 8
  %388 = getelementptr inbounds i32, i32* %387, i64 10
  %389 = load i32, i32* %388, align 4
  %390 = load i32, i32* %9, align 4
  %391 = call i32 @rol32(i32 %390, i32 1)
  %392 = xor i32 %389, %391
  store i32 %392, i32* %11, align 4
  %393 = load i32, i32* %11, align 4
  %394 = load i32, i32* %10, align 4
  %395 = shl i32 %394, 32
  %396 = or i32 %393, %395
  store i32 %396, i32* %8, align 4
  %397 = load i32*, i32** %5, align 8
  %398 = getelementptr inbounds i32, i32* %397, i64 6
  %399 = load i32, i32* %398, align 4
  %400 = load i32, i32* %8, align 4
  %401 = xor i32 %399, %400
  %402 = call i32 @SET_SUBKEY_LR(i32 7, i32 %401)
  %403 = load i32*, i32** %5, align 8
  %404 = getelementptr inbounds i32, i32* %403, i64 8
  %405 = load i32, i32* %404, align 4
  %406 = call i32 @SET_SUBKEY_LR(i32 8, i32 %405)
  %407 = load i32*, i32** %5, align 8
  %408 = getelementptr inbounds i32, i32* %407, i64 9
  %409 = load i32, i32* %408, align 4
  %410 = call i32 @SET_SUBKEY_LR(i32 9, i32 %409)
  %411 = load i32*, i32** %5, align 8
  %412 = getelementptr inbounds i32, i32* %411, i64 7
  %413 = load i32, i32* %412, align 4
  %414 = ashr i32 %413, 32
  %415 = load i32*, i32** %5, align 8
  %416 = getelementptr inbounds i32, i32* %415, i64 7
  %417 = load i32, i32* %416, align 4
  %418 = load i32*, i32** %5, align 8
  %419 = getelementptr inbounds i32, i32* %418, i64 9
  %420 = load i32, i32* %419, align 4
  %421 = xor i32 %420, -1
  %422 = and i32 %417, %421
  %423 = xor i32 %414, %422
  store i32 %423, i32* %10, align 4
  %424 = load i32, i32* %10, align 4
  %425 = load i32*, i32** %5, align 8
  %426 = getelementptr inbounds i32, i32* %425, i64 9
  %427 = load i32, i32* %426, align 4
  %428 = ashr i32 %427, 32
  %429 = and i32 %424, %428
  store i32 %429, i32* %9, align 4
  %430 = load i32*, i32** %5, align 8
  %431 = getelementptr inbounds i32, i32* %430, i64 7
  %432 = load i32, i32* %431, align 4
  %433 = load i32, i32* %9, align 4
  %434 = call i32 @rol32(i32 %433, i32 1)
  %435 = xor i32 %432, %434
  store i32 %435, i32* %11, align 4
  %436 = load i32, i32* %11, align 4
  %437 = load i32, i32* %10, align 4
  %438 = shl i32 %437, 32
  %439 = or i32 %436, %438
  store i32 %439, i32* %8, align 4
  %440 = load i32*, i32** %5, align 8
  %441 = getelementptr inbounds i32, i32* %440, i64 11
  %442 = load i32, i32* %441, align 4
  %443 = load i32, i32* %8, align 4
  %444 = xor i32 %442, %443
  %445 = call i32 @SET_SUBKEY_LR(i32 10, i32 %444)
  %446 = load i32*, i32** %5, align 8
  %447 = getelementptr inbounds i32, i32* %446, i64 10
  %448 = load i32, i32* %447, align 4
  %449 = load i32*, i32** %5, align 8
  %450 = getelementptr inbounds i32, i32* %449, i64 12
  %451 = load i32, i32* %450, align 4
  %452 = xor i32 %448, %451
  %453 = call i32 @SET_SUBKEY_LR(i32 11, i32 %452)
  %454 = load i32*, i32** %5, align 8
  %455 = getelementptr inbounds i32, i32* %454, i64 11
  %456 = load i32, i32* %455, align 4
  %457 = load i32*, i32** %5, align 8
  %458 = getelementptr inbounds i32, i32* %457, i64 13
  %459 = load i32, i32* %458, align 4
  %460 = xor i32 %456, %459
  %461 = call i32 @SET_SUBKEY_LR(i32 12, i32 %460)
  %462 = load i32*, i32** %5, align 8
  %463 = getelementptr inbounds i32, i32* %462, i64 12
  %464 = load i32, i32* %463, align 4
  %465 = load i32*, i32** %5, align 8
  %466 = getelementptr inbounds i32, i32* %465, i64 14
  %467 = load i32, i32* %466, align 4
  %468 = xor i32 %464, %467
  %469 = call i32 @SET_SUBKEY_LR(i32 13, i32 %468)
  %470 = load i32*, i32** %5, align 8
  %471 = getelementptr inbounds i32, i32* %470, i64 13
  %472 = load i32, i32* %471, align 4
  %473 = load i32*, i32** %5, align 8
  %474 = getelementptr inbounds i32, i32* %473, i64 15
  %475 = load i32, i32* %474, align 4
  %476 = xor i32 %472, %475
  %477 = call i32 @SET_SUBKEY_LR(i32 14, i32 %476)
  %478 = load i32*, i32** %5, align 8
  %479 = getelementptr inbounds i32, i32* %478, i64 18
  %480 = load i32, i32* %479, align 4
  %481 = ashr i32 %480, 32
  %482 = load i32*, i32** %5, align 8
  %483 = getelementptr inbounds i32, i32* %482, i64 18
  %484 = load i32, i32* %483, align 4
  %485 = load i32*, i32** %5, align 8
  %486 = getelementptr inbounds i32, i32* %485, i64 16
  %487 = load i32, i32* %486, align 4
  %488 = xor i32 %487, -1
  %489 = and i32 %484, %488
  %490 = xor i32 %481, %489
  store i32 %490, i32* %10, align 4
  %491 = load i32, i32* %10, align 4
  %492 = load i32*, i32** %5, align 8
  %493 = getelementptr inbounds i32, i32* %492, i64 16
  %494 = load i32, i32* %493, align 4
  %495 = ashr i32 %494, 32
  %496 = and i32 %491, %495
  store i32 %496, i32* %9, align 4
  %497 = load i32*, i32** %5, align 8
  %498 = getelementptr inbounds i32, i32* %497, i64 18
  %499 = load i32, i32* %498, align 4
  %500 = load i32, i32* %9, align 4
  %501 = call i32 @rol32(i32 %500, i32 1)
  %502 = xor i32 %499, %501
  store i32 %502, i32* %11, align 4
  %503 = load i32, i32* %11, align 4
  %504 = load i32, i32* %10, align 4
  %505 = shl i32 %504, 32
  %506 = or i32 %503, %505
  store i32 %506, i32* %8, align 4
  %507 = load i32*, i32** %5, align 8
  %508 = getelementptr inbounds i32, i32* %507, i64 14
  %509 = load i32, i32* %508, align 4
  %510 = load i32, i32* %8, align 4
  %511 = xor i32 %509, %510
  %512 = call i32 @SET_SUBKEY_LR(i32 15, i32 %511)
  %513 = load i32*, i32** %5, align 8
  %514 = getelementptr inbounds i32, i32* %513, i64 16
  %515 = load i32, i32* %514, align 4
  %516 = call i32 @SET_SUBKEY_LR(i32 16, i32 %515)
  %517 = load i32*, i32** %5, align 8
  %518 = getelementptr inbounds i32, i32* %517, i64 17
  %519 = load i32, i32* %518, align 4
  %520 = call i32 @SET_SUBKEY_LR(i32 17, i32 %519)
  %521 = load i32*, i32** %5, align 8
  %522 = getelementptr inbounds i32, i32* %521, i64 15
  %523 = load i32, i32* %522, align 4
  %524 = ashr i32 %523, 32
  %525 = load i32*, i32** %5, align 8
  %526 = getelementptr inbounds i32, i32* %525, i64 15
  %527 = load i32, i32* %526, align 4
  %528 = load i32*, i32** %5, align 8
  %529 = getelementptr inbounds i32, i32* %528, i64 17
  %530 = load i32, i32* %529, align 4
  %531 = xor i32 %530, -1
  %532 = and i32 %527, %531
  %533 = xor i32 %524, %532
  store i32 %533, i32* %10, align 4
  %534 = load i32, i32* %10, align 4
  %535 = load i32*, i32** %5, align 8
  %536 = getelementptr inbounds i32, i32* %535, i64 17
  %537 = load i32, i32* %536, align 4
  %538 = ashr i32 %537, 32
  %539 = and i32 %534, %538
  store i32 %539, i32* %9, align 4
  %540 = load i32*, i32** %5, align 8
  %541 = getelementptr inbounds i32, i32* %540, i64 15
  %542 = load i32, i32* %541, align 4
  %543 = load i32, i32* %9, align 4
  %544 = call i32 @rol32(i32 %543, i32 1)
  %545 = xor i32 %542, %544
  store i32 %545, i32* %11, align 4
  %546 = load i32, i32* %11, align 4
  %547 = load i32, i32* %10, align 4
  %548 = shl i32 %547, 32
  %549 = or i32 %546, %548
  store i32 %549, i32* %8, align 4
  %550 = load i32*, i32** %5, align 8
  %551 = getelementptr inbounds i32, i32* %550, i64 19
  %552 = load i32, i32* %551, align 4
  %553 = load i32, i32* %8, align 4
  %554 = xor i32 %552, %553
  %555 = call i32 @SET_SUBKEY_LR(i32 18, i32 %554)
  %556 = load i32*, i32** %5, align 8
  %557 = getelementptr inbounds i32, i32* %556, i64 18
  %558 = load i32, i32* %557, align 4
  %559 = load i32*, i32** %5, align 8
  %560 = getelementptr inbounds i32, i32* %559, i64 20
  %561 = load i32, i32* %560, align 4
  %562 = xor i32 %558, %561
  %563 = call i32 @SET_SUBKEY_LR(i32 19, i32 %562)
  %564 = load i32*, i32** %5, align 8
  %565 = getelementptr inbounds i32, i32* %564, i64 19
  %566 = load i32, i32* %565, align 4
  %567 = load i32*, i32** %5, align 8
  %568 = getelementptr inbounds i32, i32* %567, i64 21
  %569 = load i32, i32* %568, align 4
  %570 = xor i32 %566, %569
  %571 = call i32 @SET_SUBKEY_LR(i32 20, i32 %570)
  %572 = load i32*, i32** %5, align 8
  %573 = getelementptr inbounds i32, i32* %572, i64 20
  %574 = load i32, i32* %573, align 4
  %575 = load i32*, i32** %5, align 8
  %576 = getelementptr inbounds i32, i32* %575, i64 22
  %577 = load i32, i32* %576, align 4
  %578 = xor i32 %574, %577
  %579 = call i32 @SET_SUBKEY_LR(i32 21, i32 %578)
  %580 = load i32*, i32** %5, align 8
  %581 = getelementptr inbounds i32, i32* %580, i64 21
  %582 = load i32, i32* %581, align 4
  %583 = load i32*, i32** %5, align 8
  %584 = getelementptr inbounds i32, i32* %583, i64 23
  %585 = load i32, i32* %584, align 4
  %586 = xor i32 %582, %585
  %587 = call i32 @SET_SUBKEY_LR(i32 22, i32 %586)
  %588 = load i32, i32* %6, align 4
  %589 = icmp eq i32 %588, 24
  br i1 %589, label %590, label %603

590:                                              ; preds = %235
  %591 = load i32*, i32** %5, align 8
  %592 = getelementptr inbounds i32, i32* %591, i64 22
  %593 = load i32, i32* %592, align 4
  %594 = call i32 @SET_SUBKEY_LR(i32 23, i32 %593)
  %595 = load i32*, i32** %5, align 8
  %596 = getelementptr inbounds i32, i32* %595, i64 24
  %597 = load i32, i32* %596, align 4
  %598 = load i32*, i32** %5, align 8
  %599 = getelementptr inbounds i32, i32* %598, i64 23
  %600 = load i32, i32* %599, align 4
  %601 = xor i32 %597, %600
  %602 = call i32 @SET_SUBKEY_LR(i32 24, i32 %601)
  br label %726

603:                                              ; preds = %235
  %604 = load i32*, i32** %5, align 8
  %605 = getelementptr inbounds i32, i32* %604, i64 26
  %606 = load i32, i32* %605, align 4
  %607 = ashr i32 %606, 32
  %608 = load i32*, i32** %5, align 8
  %609 = getelementptr inbounds i32, i32* %608, i64 26
  %610 = load i32, i32* %609, align 4
  %611 = load i32*, i32** %5, align 8
  %612 = getelementptr inbounds i32, i32* %611, i64 24
  %613 = load i32, i32* %612, align 4
  %614 = xor i32 %613, -1
  %615 = and i32 %610, %614
  %616 = xor i32 %607, %615
  store i32 %616, i32* %10, align 4
  %617 = load i32, i32* %10, align 4
  %618 = load i32*, i32** %5, align 8
  %619 = getelementptr inbounds i32, i32* %618, i64 24
  %620 = load i32, i32* %619, align 4
  %621 = ashr i32 %620, 32
  %622 = and i32 %617, %621
  store i32 %622, i32* %9, align 4
  %623 = load i32*, i32** %5, align 8
  %624 = getelementptr inbounds i32, i32* %623, i64 26
  %625 = load i32, i32* %624, align 4
  %626 = load i32, i32* %9, align 4
  %627 = call i32 @rol32(i32 %626, i32 1)
  %628 = xor i32 %625, %627
  store i32 %628, i32* %11, align 4
  %629 = load i32, i32* %11, align 4
  %630 = load i32, i32* %10, align 4
  %631 = shl i32 %630, 32
  %632 = or i32 %629, %631
  store i32 %632, i32* %8, align 4
  %633 = load i32*, i32** %5, align 8
  %634 = getelementptr inbounds i32, i32* %633, i64 22
  %635 = load i32, i32* %634, align 4
  %636 = load i32, i32* %8, align 4
  %637 = xor i32 %635, %636
  %638 = call i32 @SET_SUBKEY_LR(i32 23, i32 %637)
  %639 = load i32*, i32** %5, align 8
  %640 = getelementptr inbounds i32, i32* %639, i64 24
  %641 = load i32, i32* %640, align 4
  %642 = call i32 @SET_SUBKEY_LR(i32 24, i32 %641)
  %643 = load i32*, i32** %5, align 8
  %644 = getelementptr inbounds i32, i32* %643, i64 25
  %645 = load i32, i32* %644, align 4
  %646 = call i32 @SET_SUBKEY_LR(i32 25, i32 %645)
  %647 = load i32*, i32** %5, align 8
  %648 = getelementptr inbounds i32, i32* %647, i64 23
  %649 = load i32, i32* %648, align 4
  %650 = ashr i32 %649, 32
  %651 = load i32*, i32** %5, align 8
  %652 = getelementptr inbounds i32, i32* %651, i64 23
  %653 = load i32, i32* %652, align 4
  %654 = load i32*, i32** %5, align 8
  %655 = getelementptr inbounds i32, i32* %654, i64 25
  %656 = load i32, i32* %655, align 4
  %657 = xor i32 %656, -1
  %658 = and i32 %653, %657
  %659 = xor i32 %650, %658
  store i32 %659, i32* %10, align 4
  %660 = load i32, i32* %10, align 4
  %661 = load i32*, i32** %5, align 8
  %662 = getelementptr inbounds i32, i32* %661, i64 25
  %663 = load i32, i32* %662, align 4
  %664 = ashr i32 %663, 32
  %665 = and i32 %660, %664
  store i32 %665, i32* %9, align 4
  %666 = load i32*, i32** %5, align 8
  %667 = getelementptr inbounds i32, i32* %666, i64 23
  %668 = load i32, i32* %667, align 4
  %669 = load i32, i32* %9, align 4
  %670 = call i32 @rol32(i32 %669, i32 1)
  %671 = xor i32 %668, %670
  store i32 %671, i32* %11, align 4
  %672 = load i32, i32* %11, align 4
  %673 = load i32, i32* %10, align 4
  %674 = shl i32 %673, 32
  %675 = or i32 %672, %674
  store i32 %675, i32* %8, align 4
  %676 = load i32*, i32** %5, align 8
  %677 = getelementptr inbounds i32, i32* %676, i64 27
  %678 = load i32, i32* %677, align 4
  %679 = load i32, i32* %8, align 4
  %680 = xor i32 %678, %679
  %681 = call i32 @SET_SUBKEY_LR(i32 26, i32 %680)
  %682 = load i32*, i32** %5, align 8
  %683 = getelementptr inbounds i32, i32* %682, i64 26
  %684 = load i32, i32* %683, align 4
  %685 = load i32*, i32** %5, align 8
  %686 = getelementptr inbounds i32, i32* %685, i64 28
  %687 = load i32, i32* %686, align 4
  %688 = xor i32 %684, %687
  %689 = call i32 @SET_SUBKEY_LR(i32 27, i32 %688)
  %690 = load i32*, i32** %5, align 8
  %691 = getelementptr inbounds i32, i32* %690, i64 27
  %692 = load i32, i32* %691, align 4
  %693 = load i32*, i32** %5, align 8
  %694 = getelementptr inbounds i32, i32* %693, i64 29
  %695 = load i32, i32* %694, align 4
  %696 = xor i32 %692, %695
  %697 = call i32 @SET_SUBKEY_LR(i32 28, i32 %696)
  %698 = load i32*, i32** %5, align 8
  %699 = getelementptr inbounds i32, i32* %698, i64 28
  %700 = load i32, i32* %699, align 4
  %701 = load i32*, i32** %5, align 8
  %702 = getelementptr inbounds i32, i32* %701, i64 30
  %703 = load i32, i32* %702, align 4
  %704 = xor i32 %700, %703
  %705 = call i32 @SET_SUBKEY_LR(i32 29, i32 %704)
  %706 = load i32*, i32** %5, align 8
  %707 = getelementptr inbounds i32, i32* %706, i64 29
  %708 = load i32, i32* %707, align 4
  %709 = load i32*, i32** %5, align 8
  %710 = getelementptr inbounds i32, i32* %709, i64 31
  %711 = load i32, i32* %710, align 4
  %712 = xor i32 %708, %711
  %713 = call i32 @SET_SUBKEY_LR(i32 30, i32 %712)
  %714 = load i32*, i32** %5, align 8
  %715 = getelementptr inbounds i32, i32* %714, i64 30
  %716 = load i32, i32* %715, align 4
  %717 = call i32 @SET_SUBKEY_LR(i32 31, i32 %716)
  %718 = load i32*, i32** %5, align 8
  %719 = getelementptr inbounds i32, i32* %718, i64 32
  %720 = load i32, i32* %719, align 4
  %721 = load i32*, i32** %5, align 8
  %722 = getelementptr inbounds i32, i32* %721, i64 31
  %723 = load i32, i32* %722, align 4
  %724 = xor i32 %720, %723
  %725 = call i32 @SET_SUBKEY_LR(i32 32, i32 %724)
  br label %726

726:                                              ; preds = %603, %590
  ret void
}

declare dso_local i32 @rol32(i32, i32) #1

declare dso_local i32 @SET_SUBKEY_LR(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
