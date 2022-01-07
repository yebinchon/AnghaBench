; ModuleID = '/home/carl/AnghaBench/libsodium/src/libsodium/crypto_core/salsa/ref/extr_core_salsa_ref.c_crypto_core_salsa.c'
source_filename = "/home/carl/AnghaBench/libsodium/src/libsodium/crypto_core/salsa/ref/extr_core_salsa_ref.c_crypto_core_salsa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*, i8*, i32)* @crypto_core_salsa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crypto_core_salsa(i8* %0, i8* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
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
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 1634760805, i32* %11, align 4
  store i32 1634760805, i32* %27, align 4
  store i32 857760878, i32* %16, align 4
  store i32 857760878, i32* %32, align 4
  store i32 2036477234, i32* %21, align 4
  store i32 2036477234, i32* %37, align 4
  store i32 1797285236, i32* %26, align 4
  store i32 1797285236, i32* %42, align 4
  %44 = load i8*, i8** %9, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %59

46:                                               ; preds = %5
  %47 = load i8*, i8** %9, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  %49 = call i32 @LOAD32_LE(i8* %48)
  store i32 %49, i32* %11, align 4
  store i32 %49, i32* %27, align 4
  %50 = load i8*, i8** %9, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 4
  %52 = call i32 @LOAD32_LE(i8* %51)
  store i32 %52, i32* %16, align 4
  store i32 %52, i32* %32, align 4
  %53 = load i8*, i8** %9, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 8
  %55 = call i32 @LOAD32_LE(i8* %54)
  store i32 %55, i32* %21, align 4
  store i32 %55, i32* %37, align 4
  %56 = load i8*, i8** %9, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 12
  %58 = call i32 @LOAD32_LE(i8* %57)
  store i32 %58, i32* %26, align 4
  store i32 %58, i32* %42, align 4
  br label %59

59:                                               ; preds = %46, %5
  %60 = load i8*, i8** %8, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 0
  %62 = call i32 @LOAD32_LE(i8* %61)
  store i32 %62, i32* %12, align 4
  store i32 %62, i32* %28, align 4
  %63 = load i8*, i8** %8, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 4
  %65 = call i32 @LOAD32_LE(i8* %64)
  store i32 %65, i32* %13, align 4
  store i32 %65, i32* %29, align 4
  %66 = load i8*, i8** %8, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 8
  %68 = call i32 @LOAD32_LE(i8* %67)
  store i32 %68, i32* %14, align 4
  store i32 %68, i32* %30, align 4
  %69 = load i8*, i8** %8, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 12
  %71 = call i32 @LOAD32_LE(i8* %70)
  store i32 %71, i32* %15, align 4
  store i32 %71, i32* %31, align 4
  %72 = load i8*, i8** %8, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 16
  %74 = call i32 @LOAD32_LE(i8* %73)
  store i32 %74, i32* %22, align 4
  store i32 %74, i32* %38, align 4
  %75 = load i8*, i8** %8, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 20
  %77 = call i32 @LOAD32_LE(i8* %76)
  store i32 %77, i32* %23, align 4
  store i32 %77, i32* %39, align 4
  %78 = load i8*, i8** %8, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 24
  %80 = call i32 @LOAD32_LE(i8* %79)
  store i32 %80, i32* %24, align 4
  store i32 %80, i32* %40, align 4
  %81 = load i8*, i8** %8, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 28
  %83 = call i32 @LOAD32_LE(i8* %82)
  store i32 %83, i32* %25, align 4
  store i32 %83, i32* %41, align 4
  %84 = load i8*, i8** %7, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 0
  %86 = call i32 @LOAD32_LE(i8* %85)
  store i32 %86, i32* %17, align 4
  store i32 %86, i32* %33, align 4
  %87 = load i8*, i8** %7, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 4
  %89 = call i32 @LOAD32_LE(i8* %88)
  store i32 %89, i32* %18, align 4
  store i32 %89, i32* %34, align 4
  %90 = load i8*, i8** %7, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 8
  %92 = call i32 @LOAD32_LE(i8* %91)
  store i32 %92, i32* %19, align 4
  store i32 %92, i32* %35, align 4
  %93 = load i8*, i8** %7, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 12
  %95 = call i32 @LOAD32_LE(i8* %94)
  store i32 %95, i32* %20, align 4
  store i32 %95, i32* %36, align 4
  store i32 0, i32* %43, align 4
  br label %96

96:                                               ; preds = %293, %59
  %97 = load i32, i32* %43, align 4
  %98 = load i32, i32* %10, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %296

100:                                              ; preds = %96
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* %23, align 4
  %103 = add nsw i32 %101, %102
  %104 = call i32 @ROTL32(i32 %103, i32 7)
  %105 = load i32, i32* %15, align 4
  %106 = xor i32 %105, %104
  store i32 %106, i32* %15, align 4
  %107 = load i32, i32* %15, align 4
  %108 = load i32, i32* %11, align 4
  %109 = add nsw i32 %107, %108
  %110 = call i32 @ROTL32(i32 %109, i32 9)
  %111 = load i32, i32* %19, align 4
  %112 = xor i32 %111, %110
  store i32 %112, i32* %19, align 4
  %113 = load i32, i32* %19, align 4
  %114 = load i32, i32* %15, align 4
  %115 = add nsw i32 %113, %114
  %116 = call i32 @ROTL32(i32 %115, i32 13)
  %117 = load i32, i32* %23, align 4
  %118 = xor i32 %117, %116
  store i32 %118, i32* %23, align 4
  %119 = load i32, i32* %23, align 4
  %120 = load i32, i32* %19, align 4
  %121 = add nsw i32 %119, %120
  %122 = call i32 @ROTL32(i32 %121, i32 18)
  %123 = load i32, i32* %11, align 4
  %124 = xor i32 %123, %122
  store i32 %124, i32* %11, align 4
  %125 = load i32, i32* %16, align 4
  %126 = load i32, i32* %12, align 4
  %127 = add nsw i32 %125, %126
  %128 = call i32 @ROTL32(i32 %127, i32 7)
  %129 = load i32, i32* %20, align 4
  %130 = xor i32 %129, %128
  store i32 %130, i32* %20, align 4
  %131 = load i32, i32* %20, align 4
  %132 = load i32, i32* %16, align 4
  %133 = add nsw i32 %131, %132
  %134 = call i32 @ROTL32(i32 %133, i32 9)
  %135 = load i32, i32* %24, align 4
  %136 = xor i32 %135, %134
  store i32 %136, i32* %24, align 4
  %137 = load i32, i32* %24, align 4
  %138 = load i32, i32* %20, align 4
  %139 = add nsw i32 %137, %138
  %140 = call i32 @ROTL32(i32 %139, i32 13)
  %141 = load i32, i32* %12, align 4
  %142 = xor i32 %141, %140
  store i32 %142, i32* %12, align 4
  %143 = load i32, i32* %12, align 4
  %144 = load i32, i32* %24, align 4
  %145 = add nsw i32 %143, %144
  %146 = call i32 @ROTL32(i32 %145, i32 18)
  %147 = load i32, i32* %16, align 4
  %148 = xor i32 %147, %146
  store i32 %148, i32* %16, align 4
  %149 = load i32, i32* %21, align 4
  %150 = load i32, i32* %17, align 4
  %151 = add nsw i32 %149, %150
  %152 = call i32 @ROTL32(i32 %151, i32 7)
  %153 = load i32, i32* %25, align 4
  %154 = xor i32 %153, %152
  store i32 %154, i32* %25, align 4
  %155 = load i32, i32* %25, align 4
  %156 = load i32, i32* %21, align 4
  %157 = add nsw i32 %155, %156
  %158 = call i32 @ROTL32(i32 %157, i32 9)
  %159 = load i32, i32* %13, align 4
  %160 = xor i32 %159, %158
  store i32 %160, i32* %13, align 4
  %161 = load i32, i32* %13, align 4
  %162 = load i32, i32* %25, align 4
  %163 = add nsw i32 %161, %162
  %164 = call i32 @ROTL32(i32 %163, i32 13)
  %165 = load i32, i32* %17, align 4
  %166 = xor i32 %165, %164
  store i32 %166, i32* %17, align 4
  %167 = load i32, i32* %17, align 4
  %168 = load i32, i32* %13, align 4
  %169 = add nsw i32 %167, %168
  %170 = call i32 @ROTL32(i32 %169, i32 18)
  %171 = load i32, i32* %21, align 4
  %172 = xor i32 %171, %170
  store i32 %172, i32* %21, align 4
  %173 = load i32, i32* %26, align 4
  %174 = load i32, i32* %22, align 4
  %175 = add nsw i32 %173, %174
  %176 = call i32 @ROTL32(i32 %175, i32 7)
  %177 = load i32, i32* %14, align 4
  %178 = xor i32 %177, %176
  store i32 %178, i32* %14, align 4
  %179 = load i32, i32* %14, align 4
  %180 = load i32, i32* %26, align 4
  %181 = add nsw i32 %179, %180
  %182 = call i32 @ROTL32(i32 %181, i32 9)
  %183 = load i32, i32* %18, align 4
  %184 = xor i32 %183, %182
  store i32 %184, i32* %18, align 4
  %185 = load i32, i32* %18, align 4
  %186 = load i32, i32* %14, align 4
  %187 = add nsw i32 %185, %186
  %188 = call i32 @ROTL32(i32 %187, i32 13)
  %189 = load i32, i32* %22, align 4
  %190 = xor i32 %189, %188
  store i32 %190, i32* %22, align 4
  %191 = load i32, i32* %22, align 4
  %192 = load i32, i32* %18, align 4
  %193 = add nsw i32 %191, %192
  %194 = call i32 @ROTL32(i32 %193, i32 18)
  %195 = load i32, i32* %26, align 4
  %196 = xor i32 %195, %194
  store i32 %196, i32* %26, align 4
  %197 = load i32, i32* %11, align 4
  %198 = load i32, i32* %14, align 4
  %199 = add nsw i32 %197, %198
  %200 = call i32 @ROTL32(i32 %199, i32 7)
  %201 = load i32, i32* %12, align 4
  %202 = xor i32 %201, %200
  store i32 %202, i32* %12, align 4
  %203 = load i32, i32* %12, align 4
  %204 = load i32, i32* %11, align 4
  %205 = add nsw i32 %203, %204
  %206 = call i32 @ROTL32(i32 %205, i32 9)
  %207 = load i32, i32* %13, align 4
  %208 = xor i32 %207, %206
  store i32 %208, i32* %13, align 4
  %209 = load i32, i32* %13, align 4
  %210 = load i32, i32* %12, align 4
  %211 = add nsw i32 %209, %210
  %212 = call i32 @ROTL32(i32 %211, i32 13)
  %213 = load i32, i32* %14, align 4
  %214 = xor i32 %213, %212
  store i32 %214, i32* %14, align 4
  %215 = load i32, i32* %14, align 4
  %216 = load i32, i32* %13, align 4
  %217 = add nsw i32 %215, %216
  %218 = call i32 @ROTL32(i32 %217, i32 18)
  %219 = load i32, i32* %11, align 4
  %220 = xor i32 %219, %218
  store i32 %220, i32* %11, align 4
  %221 = load i32, i32* %16, align 4
  %222 = load i32, i32* %15, align 4
  %223 = add nsw i32 %221, %222
  %224 = call i32 @ROTL32(i32 %223, i32 7)
  %225 = load i32, i32* %17, align 4
  %226 = xor i32 %225, %224
  store i32 %226, i32* %17, align 4
  %227 = load i32, i32* %17, align 4
  %228 = load i32, i32* %16, align 4
  %229 = add nsw i32 %227, %228
  %230 = call i32 @ROTL32(i32 %229, i32 9)
  %231 = load i32, i32* %18, align 4
  %232 = xor i32 %231, %230
  store i32 %232, i32* %18, align 4
  %233 = load i32, i32* %18, align 4
  %234 = load i32, i32* %17, align 4
  %235 = add nsw i32 %233, %234
  %236 = call i32 @ROTL32(i32 %235, i32 13)
  %237 = load i32, i32* %15, align 4
  %238 = xor i32 %237, %236
  store i32 %238, i32* %15, align 4
  %239 = load i32, i32* %15, align 4
  %240 = load i32, i32* %18, align 4
  %241 = add nsw i32 %239, %240
  %242 = call i32 @ROTL32(i32 %241, i32 18)
  %243 = load i32, i32* %16, align 4
  %244 = xor i32 %243, %242
  store i32 %244, i32* %16, align 4
  %245 = load i32, i32* %21, align 4
  %246 = load i32, i32* %20, align 4
  %247 = add nsw i32 %245, %246
  %248 = call i32 @ROTL32(i32 %247, i32 7)
  %249 = load i32, i32* %22, align 4
  %250 = xor i32 %249, %248
  store i32 %250, i32* %22, align 4
  %251 = load i32, i32* %22, align 4
  %252 = load i32, i32* %21, align 4
  %253 = add nsw i32 %251, %252
  %254 = call i32 @ROTL32(i32 %253, i32 9)
  %255 = load i32, i32* %19, align 4
  %256 = xor i32 %255, %254
  store i32 %256, i32* %19, align 4
  %257 = load i32, i32* %19, align 4
  %258 = load i32, i32* %22, align 4
  %259 = add nsw i32 %257, %258
  %260 = call i32 @ROTL32(i32 %259, i32 13)
  %261 = load i32, i32* %20, align 4
  %262 = xor i32 %261, %260
  store i32 %262, i32* %20, align 4
  %263 = load i32, i32* %20, align 4
  %264 = load i32, i32* %19, align 4
  %265 = add nsw i32 %263, %264
  %266 = call i32 @ROTL32(i32 %265, i32 18)
  %267 = load i32, i32* %21, align 4
  %268 = xor i32 %267, %266
  store i32 %268, i32* %21, align 4
  %269 = load i32, i32* %26, align 4
  %270 = load i32, i32* %25, align 4
  %271 = add nsw i32 %269, %270
  %272 = call i32 @ROTL32(i32 %271, i32 7)
  %273 = load i32, i32* %23, align 4
  %274 = xor i32 %273, %272
  store i32 %274, i32* %23, align 4
  %275 = load i32, i32* %23, align 4
  %276 = load i32, i32* %26, align 4
  %277 = add nsw i32 %275, %276
  %278 = call i32 @ROTL32(i32 %277, i32 9)
  %279 = load i32, i32* %24, align 4
  %280 = xor i32 %279, %278
  store i32 %280, i32* %24, align 4
  %281 = load i32, i32* %24, align 4
  %282 = load i32, i32* %23, align 4
  %283 = add nsw i32 %281, %282
  %284 = call i32 @ROTL32(i32 %283, i32 13)
  %285 = load i32, i32* %25, align 4
  %286 = xor i32 %285, %284
  store i32 %286, i32* %25, align 4
  %287 = load i32, i32* %25, align 4
  %288 = load i32, i32* %24, align 4
  %289 = add nsw i32 %287, %288
  %290 = call i32 @ROTL32(i32 %289, i32 18)
  %291 = load i32, i32* %26, align 4
  %292 = xor i32 %291, %290
  store i32 %292, i32* %26, align 4
  br label %293

293:                                              ; preds = %100
  %294 = load i32, i32* %43, align 4
  %295 = add nsw i32 %294, 2
  store i32 %295, i32* %43, align 4
  br label %96

296:                                              ; preds = %96
  %297 = load i8*, i8** %6, align 8
  %298 = getelementptr inbounds i8, i8* %297, i64 0
  %299 = load i32, i32* %11, align 4
  %300 = load i32, i32* %27, align 4
  %301 = add nsw i32 %299, %300
  %302 = call i32 @STORE32_LE(i8* %298, i32 %301)
  %303 = load i8*, i8** %6, align 8
  %304 = getelementptr inbounds i8, i8* %303, i64 4
  %305 = load i32, i32* %12, align 4
  %306 = load i32, i32* %28, align 4
  %307 = add nsw i32 %305, %306
  %308 = call i32 @STORE32_LE(i8* %304, i32 %307)
  %309 = load i8*, i8** %6, align 8
  %310 = getelementptr inbounds i8, i8* %309, i64 8
  %311 = load i32, i32* %13, align 4
  %312 = load i32, i32* %29, align 4
  %313 = add nsw i32 %311, %312
  %314 = call i32 @STORE32_LE(i8* %310, i32 %313)
  %315 = load i8*, i8** %6, align 8
  %316 = getelementptr inbounds i8, i8* %315, i64 12
  %317 = load i32, i32* %14, align 4
  %318 = load i32, i32* %30, align 4
  %319 = add nsw i32 %317, %318
  %320 = call i32 @STORE32_LE(i8* %316, i32 %319)
  %321 = load i8*, i8** %6, align 8
  %322 = getelementptr inbounds i8, i8* %321, i64 16
  %323 = load i32, i32* %15, align 4
  %324 = load i32, i32* %31, align 4
  %325 = add nsw i32 %323, %324
  %326 = call i32 @STORE32_LE(i8* %322, i32 %325)
  %327 = load i8*, i8** %6, align 8
  %328 = getelementptr inbounds i8, i8* %327, i64 20
  %329 = load i32, i32* %16, align 4
  %330 = load i32, i32* %32, align 4
  %331 = add nsw i32 %329, %330
  %332 = call i32 @STORE32_LE(i8* %328, i32 %331)
  %333 = load i8*, i8** %6, align 8
  %334 = getelementptr inbounds i8, i8* %333, i64 24
  %335 = load i32, i32* %17, align 4
  %336 = load i32, i32* %33, align 4
  %337 = add nsw i32 %335, %336
  %338 = call i32 @STORE32_LE(i8* %334, i32 %337)
  %339 = load i8*, i8** %6, align 8
  %340 = getelementptr inbounds i8, i8* %339, i64 28
  %341 = load i32, i32* %18, align 4
  %342 = load i32, i32* %34, align 4
  %343 = add nsw i32 %341, %342
  %344 = call i32 @STORE32_LE(i8* %340, i32 %343)
  %345 = load i8*, i8** %6, align 8
  %346 = getelementptr inbounds i8, i8* %345, i64 32
  %347 = load i32, i32* %19, align 4
  %348 = load i32, i32* %35, align 4
  %349 = add nsw i32 %347, %348
  %350 = call i32 @STORE32_LE(i8* %346, i32 %349)
  %351 = load i8*, i8** %6, align 8
  %352 = getelementptr inbounds i8, i8* %351, i64 36
  %353 = load i32, i32* %20, align 4
  %354 = load i32, i32* %36, align 4
  %355 = add nsw i32 %353, %354
  %356 = call i32 @STORE32_LE(i8* %352, i32 %355)
  %357 = load i8*, i8** %6, align 8
  %358 = getelementptr inbounds i8, i8* %357, i64 40
  %359 = load i32, i32* %21, align 4
  %360 = load i32, i32* %37, align 4
  %361 = add nsw i32 %359, %360
  %362 = call i32 @STORE32_LE(i8* %358, i32 %361)
  %363 = load i8*, i8** %6, align 8
  %364 = getelementptr inbounds i8, i8* %363, i64 44
  %365 = load i32, i32* %22, align 4
  %366 = load i32, i32* %38, align 4
  %367 = add nsw i32 %365, %366
  %368 = call i32 @STORE32_LE(i8* %364, i32 %367)
  %369 = load i8*, i8** %6, align 8
  %370 = getelementptr inbounds i8, i8* %369, i64 48
  %371 = load i32, i32* %23, align 4
  %372 = load i32, i32* %39, align 4
  %373 = add nsw i32 %371, %372
  %374 = call i32 @STORE32_LE(i8* %370, i32 %373)
  %375 = load i8*, i8** %6, align 8
  %376 = getelementptr inbounds i8, i8* %375, i64 52
  %377 = load i32, i32* %24, align 4
  %378 = load i32, i32* %40, align 4
  %379 = add nsw i32 %377, %378
  %380 = call i32 @STORE32_LE(i8* %376, i32 %379)
  %381 = load i8*, i8** %6, align 8
  %382 = getelementptr inbounds i8, i8* %381, i64 56
  %383 = load i32, i32* %25, align 4
  %384 = load i32, i32* %41, align 4
  %385 = add nsw i32 %383, %384
  %386 = call i32 @STORE32_LE(i8* %382, i32 %385)
  %387 = load i8*, i8** %6, align 8
  %388 = getelementptr inbounds i8, i8* %387, i64 60
  %389 = load i32, i32* %26, align 4
  %390 = load i32, i32* %42, align 4
  %391 = add nsw i32 %389, %390
  %392 = call i32 @STORE32_LE(i8* %388, i32 %391)
  ret void
}

declare dso_local i32 @LOAD32_LE(i8*) #1

declare dso_local i32 @ROTL32(i32, i32) #1

declare dso_local i32 @STORE32_LE(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
