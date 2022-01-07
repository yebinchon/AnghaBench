; ModuleID = '/home/carl/AnghaBench/hashcat/src/modules/extr_module_07400.c_sha256crypt_decode.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/modules/extr_module_07400.c_sha256crypt_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @sha256crypt_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sha256crypt_decode(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @itoa64_to_int(i32 %8)
  %10 = shl i32 %9, 0
  store i32 %10, i32* %5, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @itoa64_to_int(i32 %13)
  %15 = shl i32 %14, 6
  %16 = load i32, i32* %5, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %5, align 4
  %18 = load i32*, i32** %4, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @itoa64_to_int(i32 %20)
  %22 = shl i32 %21, 12
  %23 = load i32, i32* %5, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %5, align 4
  %25 = load i32*, i32** %4, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @itoa64_to_int(i32 %27)
  %29 = shl i32 %28, 18
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = ashr i32 %32, 16
  %34 = and i32 %33, 255
  %35 = load i32*, i32** %3, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %5, align 4
  %38 = ashr i32 %37, 8
  %39 = and i32 %38, 255
  %40 = load i32*, i32** %3, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 10
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %5, align 4
  %43 = ashr i32 %42, 0
  %44 = and i32 %43, 255
  %45 = load i32*, i32** %3, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 20
  store i32 %44, i32* %46, align 4
  %47 = load i32*, i32** %4, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 4
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @itoa64_to_int(i32 %49)
  %51 = shl i32 %50, 0
  store i32 %51, i32* %5, align 4
  %52 = load i32*, i32** %4, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 5
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @itoa64_to_int(i32 %54)
  %56 = shl i32 %55, 6
  %57 = load i32, i32* %5, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %5, align 4
  %59 = load i32*, i32** %4, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 6
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @itoa64_to_int(i32 %61)
  %63 = shl i32 %62, 12
  %64 = load i32, i32* %5, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %5, align 4
  %66 = load i32*, i32** %4, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 7
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @itoa64_to_int(i32 %68)
  %70 = shl i32 %69, 18
  %71 = load i32, i32* %5, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = ashr i32 %73, 16
  %75 = and i32 %74, 255
  %76 = load i32*, i32** %3, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 21
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* %5, align 4
  %79 = ashr i32 %78, 8
  %80 = and i32 %79, 255
  %81 = load i32*, i32** %3, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* %5, align 4
  %84 = ashr i32 %83, 0
  %85 = and i32 %84, 255
  %86 = load i32*, i32** %3, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 11
  store i32 %85, i32* %87, align 4
  %88 = load i32*, i32** %4, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 8
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @itoa64_to_int(i32 %90)
  %92 = shl i32 %91, 0
  store i32 %92, i32* %5, align 4
  %93 = load i32*, i32** %4, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 9
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @itoa64_to_int(i32 %95)
  %97 = shl i32 %96, 6
  %98 = load i32, i32* %5, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %5, align 4
  %100 = load i32*, i32** %4, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 10
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @itoa64_to_int(i32 %102)
  %104 = shl i32 %103, 12
  %105 = load i32, i32* %5, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %5, align 4
  %107 = load i32*, i32** %4, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 11
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @itoa64_to_int(i32 %109)
  %111 = shl i32 %110, 18
  %112 = load i32, i32* %5, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %5, align 4
  %114 = load i32, i32* %5, align 4
  %115 = ashr i32 %114, 16
  %116 = and i32 %115, 255
  %117 = load i32*, i32** %3, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 12
  store i32 %116, i32* %118, align 4
  %119 = load i32, i32* %5, align 4
  %120 = ashr i32 %119, 8
  %121 = and i32 %120, 255
  %122 = load i32*, i32** %3, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 22
  store i32 %121, i32* %123, align 4
  %124 = load i32, i32* %5, align 4
  %125 = ashr i32 %124, 0
  %126 = and i32 %125, 255
  %127 = load i32*, i32** %3, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 2
  store i32 %126, i32* %128, align 4
  %129 = load i32*, i32** %4, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 12
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @itoa64_to_int(i32 %131)
  %133 = shl i32 %132, 0
  store i32 %133, i32* %5, align 4
  %134 = load i32*, i32** %4, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 13
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @itoa64_to_int(i32 %136)
  %138 = shl i32 %137, 6
  %139 = load i32, i32* %5, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %5, align 4
  %141 = load i32*, i32** %4, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 14
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @itoa64_to_int(i32 %143)
  %145 = shl i32 %144, 12
  %146 = load i32, i32* %5, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %5, align 4
  %148 = load i32*, i32** %4, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 15
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @itoa64_to_int(i32 %150)
  %152 = shl i32 %151, 18
  %153 = load i32, i32* %5, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %5, align 4
  %155 = load i32, i32* %5, align 4
  %156 = ashr i32 %155, 16
  %157 = and i32 %156, 255
  %158 = load i32*, i32** %3, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 3
  store i32 %157, i32* %159, align 4
  %160 = load i32, i32* %5, align 4
  %161 = ashr i32 %160, 8
  %162 = and i32 %161, 255
  %163 = load i32*, i32** %3, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 13
  store i32 %162, i32* %164, align 4
  %165 = load i32, i32* %5, align 4
  %166 = ashr i32 %165, 0
  %167 = and i32 %166, 255
  %168 = load i32*, i32** %3, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 23
  store i32 %167, i32* %169, align 4
  %170 = load i32*, i32** %4, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 16
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @itoa64_to_int(i32 %172)
  %174 = shl i32 %173, 0
  store i32 %174, i32* %5, align 4
  %175 = load i32*, i32** %4, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 17
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @itoa64_to_int(i32 %177)
  %179 = shl i32 %178, 6
  %180 = load i32, i32* %5, align 4
  %181 = or i32 %180, %179
  store i32 %181, i32* %5, align 4
  %182 = load i32*, i32** %4, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 18
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @itoa64_to_int(i32 %184)
  %186 = shl i32 %185, 12
  %187 = load i32, i32* %5, align 4
  %188 = or i32 %187, %186
  store i32 %188, i32* %5, align 4
  %189 = load i32*, i32** %4, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 19
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @itoa64_to_int(i32 %191)
  %193 = shl i32 %192, 18
  %194 = load i32, i32* %5, align 4
  %195 = or i32 %194, %193
  store i32 %195, i32* %5, align 4
  %196 = load i32, i32* %5, align 4
  %197 = ashr i32 %196, 16
  %198 = and i32 %197, 255
  %199 = load i32*, i32** %3, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 24
  store i32 %198, i32* %200, align 4
  %201 = load i32, i32* %5, align 4
  %202 = ashr i32 %201, 8
  %203 = and i32 %202, 255
  %204 = load i32*, i32** %3, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 4
  store i32 %203, i32* %205, align 4
  %206 = load i32, i32* %5, align 4
  %207 = ashr i32 %206, 0
  %208 = and i32 %207, 255
  %209 = load i32*, i32** %3, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 14
  store i32 %208, i32* %210, align 4
  %211 = load i32*, i32** %4, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 20
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @itoa64_to_int(i32 %213)
  %215 = shl i32 %214, 0
  store i32 %215, i32* %5, align 4
  %216 = load i32*, i32** %4, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 21
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @itoa64_to_int(i32 %218)
  %220 = shl i32 %219, 6
  %221 = load i32, i32* %5, align 4
  %222 = or i32 %221, %220
  store i32 %222, i32* %5, align 4
  %223 = load i32*, i32** %4, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 22
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @itoa64_to_int(i32 %225)
  %227 = shl i32 %226, 12
  %228 = load i32, i32* %5, align 4
  %229 = or i32 %228, %227
  store i32 %229, i32* %5, align 4
  %230 = load i32*, i32** %4, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 23
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @itoa64_to_int(i32 %232)
  %234 = shl i32 %233, 18
  %235 = load i32, i32* %5, align 4
  %236 = or i32 %235, %234
  store i32 %236, i32* %5, align 4
  %237 = load i32, i32* %5, align 4
  %238 = ashr i32 %237, 16
  %239 = and i32 %238, 255
  %240 = load i32*, i32** %3, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 15
  store i32 %239, i32* %241, align 4
  %242 = load i32, i32* %5, align 4
  %243 = ashr i32 %242, 8
  %244 = and i32 %243, 255
  %245 = load i32*, i32** %3, align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 25
  store i32 %244, i32* %246, align 4
  %247 = load i32, i32* %5, align 4
  %248 = ashr i32 %247, 0
  %249 = and i32 %248, 255
  %250 = load i32*, i32** %3, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 5
  store i32 %249, i32* %251, align 4
  %252 = load i32*, i32** %4, align 8
  %253 = getelementptr inbounds i32, i32* %252, i64 24
  %254 = load i32, i32* %253, align 4
  %255 = call i32 @itoa64_to_int(i32 %254)
  %256 = shl i32 %255, 0
  store i32 %256, i32* %5, align 4
  %257 = load i32*, i32** %4, align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 25
  %259 = load i32, i32* %258, align 4
  %260 = call i32 @itoa64_to_int(i32 %259)
  %261 = shl i32 %260, 6
  %262 = load i32, i32* %5, align 4
  %263 = or i32 %262, %261
  store i32 %263, i32* %5, align 4
  %264 = load i32*, i32** %4, align 8
  %265 = getelementptr inbounds i32, i32* %264, i64 26
  %266 = load i32, i32* %265, align 4
  %267 = call i32 @itoa64_to_int(i32 %266)
  %268 = shl i32 %267, 12
  %269 = load i32, i32* %5, align 4
  %270 = or i32 %269, %268
  store i32 %270, i32* %5, align 4
  %271 = load i32*, i32** %4, align 8
  %272 = getelementptr inbounds i32, i32* %271, i64 27
  %273 = load i32, i32* %272, align 4
  %274 = call i32 @itoa64_to_int(i32 %273)
  %275 = shl i32 %274, 18
  %276 = load i32, i32* %5, align 4
  %277 = or i32 %276, %275
  store i32 %277, i32* %5, align 4
  %278 = load i32, i32* %5, align 4
  %279 = ashr i32 %278, 16
  %280 = and i32 %279, 255
  %281 = load i32*, i32** %3, align 8
  %282 = getelementptr inbounds i32, i32* %281, i64 6
  store i32 %280, i32* %282, align 4
  %283 = load i32, i32* %5, align 4
  %284 = ashr i32 %283, 8
  %285 = and i32 %284, 255
  %286 = load i32*, i32** %3, align 8
  %287 = getelementptr inbounds i32, i32* %286, i64 16
  store i32 %285, i32* %287, align 4
  %288 = load i32, i32* %5, align 4
  %289 = ashr i32 %288, 0
  %290 = and i32 %289, 255
  %291 = load i32*, i32** %3, align 8
  %292 = getelementptr inbounds i32, i32* %291, i64 26
  store i32 %290, i32* %292, align 4
  %293 = load i32*, i32** %4, align 8
  %294 = getelementptr inbounds i32, i32* %293, i64 28
  %295 = load i32, i32* %294, align 4
  %296 = call i32 @itoa64_to_int(i32 %295)
  %297 = shl i32 %296, 0
  store i32 %297, i32* %5, align 4
  %298 = load i32*, i32** %4, align 8
  %299 = getelementptr inbounds i32, i32* %298, i64 29
  %300 = load i32, i32* %299, align 4
  %301 = call i32 @itoa64_to_int(i32 %300)
  %302 = shl i32 %301, 6
  %303 = load i32, i32* %5, align 4
  %304 = or i32 %303, %302
  store i32 %304, i32* %5, align 4
  %305 = load i32*, i32** %4, align 8
  %306 = getelementptr inbounds i32, i32* %305, i64 30
  %307 = load i32, i32* %306, align 4
  %308 = call i32 @itoa64_to_int(i32 %307)
  %309 = shl i32 %308, 12
  %310 = load i32, i32* %5, align 4
  %311 = or i32 %310, %309
  store i32 %311, i32* %5, align 4
  %312 = load i32*, i32** %4, align 8
  %313 = getelementptr inbounds i32, i32* %312, i64 31
  %314 = load i32, i32* %313, align 4
  %315 = call i32 @itoa64_to_int(i32 %314)
  %316 = shl i32 %315, 18
  %317 = load i32, i32* %5, align 4
  %318 = or i32 %317, %316
  store i32 %318, i32* %5, align 4
  %319 = load i32, i32* %5, align 4
  %320 = ashr i32 %319, 16
  %321 = and i32 %320, 255
  %322 = load i32*, i32** %3, align 8
  %323 = getelementptr inbounds i32, i32* %322, i64 27
  store i32 %321, i32* %323, align 4
  %324 = load i32, i32* %5, align 4
  %325 = ashr i32 %324, 8
  %326 = and i32 %325, 255
  %327 = load i32*, i32** %3, align 8
  %328 = getelementptr inbounds i32, i32* %327, i64 7
  store i32 %326, i32* %328, align 4
  %329 = load i32, i32* %5, align 4
  %330 = ashr i32 %329, 0
  %331 = and i32 %330, 255
  %332 = load i32*, i32** %3, align 8
  %333 = getelementptr inbounds i32, i32* %332, i64 17
  store i32 %331, i32* %333, align 4
  %334 = load i32*, i32** %4, align 8
  %335 = getelementptr inbounds i32, i32* %334, i64 32
  %336 = load i32, i32* %335, align 4
  %337 = call i32 @itoa64_to_int(i32 %336)
  %338 = shl i32 %337, 0
  store i32 %338, i32* %5, align 4
  %339 = load i32*, i32** %4, align 8
  %340 = getelementptr inbounds i32, i32* %339, i64 33
  %341 = load i32, i32* %340, align 4
  %342 = call i32 @itoa64_to_int(i32 %341)
  %343 = shl i32 %342, 6
  %344 = load i32, i32* %5, align 4
  %345 = or i32 %344, %343
  store i32 %345, i32* %5, align 4
  %346 = load i32*, i32** %4, align 8
  %347 = getelementptr inbounds i32, i32* %346, i64 34
  %348 = load i32, i32* %347, align 4
  %349 = call i32 @itoa64_to_int(i32 %348)
  %350 = shl i32 %349, 12
  %351 = load i32, i32* %5, align 4
  %352 = or i32 %351, %350
  store i32 %352, i32* %5, align 4
  %353 = load i32*, i32** %4, align 8
  %354 = getelementptr inbounds i32, i32* %353, i64 35
  %355 = load i32, i32* %354, align 4
  %356 = call i32 @itoa64_to_int(i32 %355)
  %357 = shl i32 %356, 18
  %358 = load i32, i32* %5, align 4
  %359 = or i32 %358, %357
  store i32 %359, i32* %5, align 4
  %360 = load i32, i32* %5, align 4
  %361 = ashr i32 %360, 16
  %362 = and i32 %361, 255
  %363 = load i32*, i32** %3, align 8
  %364 = getelementptr inbounds i32, i32* %363, i64 18
  store i32 %362, i32* %364, align 4
  %365 = load i32, i32* %5, align 4
  %366 = ashr i32 %365, 8
  %367 = and i32 %366, 255
  %368 = load i32*, i32** %3, align 8
  %369 = getelementptr inbounds i32, i32* %368, i64 28
  store i32 %367, i32* %369, align 4
  %370 = load i32, i32* %5, align 4
  %371 = ashr i32 %370, 0
  %372 = and i32 %371, 255
  %373 = load i32*, i32** %3, align 8
  %374 = getelementptr inbounds i32, i32* %373, i64 8
  store i32 %372, i32* %374, align 4
  %375 = load i32*, i32** %4, align 8
  %376 = getelementptr inbounds i32, i32* %375, i64 36
  %377 = load i32, i32* %376, align 4
  %378 = call i32 @itoa64_to_int(i32 %377)
  %379 = shl i32 %378, 0
  store i32 %379, i32* %5, align 4
  %380 = load i32*, i32** %4, align 8
  %381 = getelementptr inbounds i32, i32* %380, i64 37
  %382 = load i32, i32* %381, align 4
  %383 = call i32 @itoa64_to_int(i32 %382)
  %384 = shl i32 %383, 6
  %385 = load i32, i32* %5, align 4
  %386 = or i32 %385, %384
  store i32 %386, i32* %5, align 4
  %387 = load i32*, i32** %4, align 8
  %388 = getelementptr inbounds i32, i32* %387, i64 38
  %389 = load i32, i32* %388, align 4
  %390 = call i32 @itoa64_to_int(i32 %389)
  %391 = shl i32 %390, 12
  %392 = load i32, i32* %5, align 4
  %393 = or i32 %392, %391
  store i32 %393, i32* %5, align 4
  %394 = load i32*, i32** %4, align 8
  %395 = getelementptr inbounds i32, i32* %394, i64 39
  %396 = load i32, i32* %395, align 4
  %397 = call i32 @itoa64_to_int(i32 %396)
  %398 = shl i32 %397, 18
  %399 = load i32, i32* %5, align 4
  %400 = or i32 %399, %398
  store i32 %400, i32* %5, align 4
  %401 = load i32, i32* %5, align 4
  %402 = ashr i32 %401, 16
  %403 = and i32 %402, 255
  %404 = load i32*, i32** %3, align 8
  %405 = getelementptr inbounds i32, i32* %404, i64 9
  store i32 %403, i32* %405, align 4
  %406 = load i32, i32* %5, align 4
  %407 = ashr i32 %406, 8
  %408 = and i32 %407, 255
  %409 = load i32*, i32** %3, align 8
  %410 = getelementptr inbounds i32, i32* %409, i64 19
  store i32 %408, i32* %410, align 4
  %411 = load i32, i32* %5, align 4
  %412 = ashr i32 %411, 0
  %413 = and i32 %412, 255
  %414 = load i32*, i32** %3, align 8
  %415 = getelementptr inbounds i32, i32* %414, i64 29
  store i32 %413, i32* %415, align 4
  %416 = load i32*, i32** %4, align 8
  %417 = getelementptr inbounds i32, i32* %416, i64 40
  %418 = load i32, i32* %417, align 4
  %419 = call i32 @itoa64_to_int(i32 %418)
  %420 = shl i32 %419, 0
  store i32 %420, i32* %5, align 4
  %421 = load i32*, i32** %4, align 8
  %422 = getelementptr inbounds i32, i32* %421, i64 41
  %423 = load i32, i32* %422, align 4
  %424 = call i32 @itoa64_to_int(i32 %423)
  %425 = shl i32 %424, 6
  %426 = load i32, i32* %5, align 4
  %427 = or i32 %426, %425
  store i32 %427, i32* %5, align 4
  %428 = load i32*, i32** %4, align 8
  %429 = getelementptr inbounds i32, i32* %428, i64 42
  %430 = load i32, i32* %429, align 4
  %431 = call i32 @itoa64_to_int(i32 %430)
  %432 = shl i32 %431, 12
  %433 = load i32, i32* %5, align 4
  %434 = or i32 %433, %432
  store i32 %434, i32* %5, align 4
  %435 = load i32, i32* %5, align 4
  %436 = ashr i32 %435, 8
  %437 = and i32 %436, 255
  %438 = load i32*, i32** %3, align 8
  %439 = getelementptr inbounds i32, i32* %438, i64 31
  store i32 %437, i32* %439, align 4
  %440 = load i32, i32* %5, align 4
  %441 = ashr i32 %440, 0
  %442 = and i32 %441, 255
  %443 = load i32*, i32** %3, align 8
  %444 = getelementptr inbounds i32, i32* %443, i64 30
  store i32 %442, i32* %444, align 4
  ret void
}

declare dso_local i32 @itoa64_to_int(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
