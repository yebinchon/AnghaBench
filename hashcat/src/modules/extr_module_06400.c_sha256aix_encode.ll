; ModuleID = '/home/carl/AnghaBench/hashcat/src/modules/extr_module_06400.c_sha256aix_encode.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/modules/extr_module_06400.c_sha256aix_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @sha256aix_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sha256aix_encode(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 2
  %8 = load i32, i32* %7, align 4
  %9 = shl i32 %8, 0
  %10 = load i32*, i32** %3, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 1
  %12 = load i32, i32* %11, align 4
  %13 = shl i32 %12, 8
  %14 = or i32 %9, %13
  %15 = load i32*, i32** %3, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = shl i32 %17, 16
  %19 = or i32 %14, %18
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %20, 63
  %22 = call i32 @int_to_itoa64(i32 %21)
  %23 = load i32*, i32** %4, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %5, align 4
  %26 = ashr i32 %25, 6
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %27, 63
  %29 = call i32 @int_to_itoa64(i32 %28)
  %30 = load i32*, i32** %4, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %5, align 4
  %33 = ashr i32 %32, 6
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = and i32 %34, 63
  %36 = call i32 @int_to_itoa64(i32 %35)
  %37 = load i32*, i32** %4, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 2
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %5, align 4
  %40 = ashr i32 %39, 6
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = and i32 %41, 63
  %43 = call i32 @int_to_itoa64(i32 %42)
  %44 = load i32*, i32** %4, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 3
  store i32 %43, i32* %45, align 4
  %46 = load i32*, i32** %3, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 5
  %48 = load i32, i32* %47, align 4
  %49 = shl i32 %48, 0
  %50 = load i32*, i32** %3, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 4
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 %52, 8
  %54 = or i32 %49, %53
  %55 = load i32*, i32** %3, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 3
  %57 = load i32, i32* %56, align 4
  %58 = shl i32 %57, 16
  %59 = or i32 %54, %58
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = and i32 %60, 63
  %62 = call i32 @int_to_itoa64(i32 %61)
  %63 = load i32*, i32** %4, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 4
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* %5, align 4
  %66 = ashr i32 %65, 6
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = and i32 %67, 63
  %69 = call i32 @int_to_itoa64(i32 %68)
  %70 = load i32*, i32** %4, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 5
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* %5, align 4
  %73 = ashr i32 %72, 6
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %5, align 4
  %75 = and i32 %74, 63
  %76 = call i32 @int_to_itoa64(i32 %75)
  %77 = load i32*, i32** %4, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 6
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* %5, align 4
  %80 = ashr i32 %79, 6
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %5, align 4
  %82 = and i32 %81, 63
  %83 = call i32 @int_to_itoa64(i32 %82)
  %84 = load i32*, i32** %4, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 7
  store i32 %83, i32* %85, align 4
  %86 = load i32*, i32** %3, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 8
  %88 = load i32, i32* %87, align 4
  %89 = shl i32 %88, 0
  %90 = load i32*, i32** %3, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 7
  %92 = load i32, i32* %91, align 4
  %93 = shl i32 %92, 8
  %94 = or i32 %89, %93
  %95 = load i32*, i32** %3, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 6
  %97 = load i32, i32* %96, align 4
  %98 = shl i32 %97, 16
  %99 = or i32 %94, %98
  store i32 %99, i32* %5, align 4
  %100 = load i32, i32* %5, align 4
  %101 = and i32 %100, 63
  %102 = call i32 @int_to_itoa64(i32 %101)
  %103 = load i32*, i32** %4, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 8
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* %5, align 4
  %106 = ashr i32 %105, 6
  store i32 %106, i32* %5, align 4
  %107 = load i32, i32* %5, align 4
  %108 = and i32 %107, 63
  %109 = call i32 @int_to_itoa64(i32 %108)
  %110 = load i32*, i32** %4, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 9
  store i32 %109, i32* %111, align 4
  %112 = load i32, i32* %5, align 4
  %113 = ashr i32 %112, 6
  store i32 %113, i32* %5, align 4
  %114 = load i32, i32* %5, align 4
  %115 = and i32 %114, 63
  %116 = call i32 @int_to_itoa64(i32 %115)
  %117 = load i32*, i32** %4, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 10
  store i32 %116, i32* %118, align 4
  %119 = load i32, i32* %5, align 4
  %120 = ashr i32 %119, 6
  store i32 %120, i32* %5, align 4
  %121 = load i32, i32* %5, align 4
  %122 = and i32 %121, 63
  %123 = call i32 @int_to_itoa64(i32 %122)
  %124 = load i32*, i32** %4, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 11
  store i32 %123, i32* %125, align 4
  %126 = load i32*, i32** %3, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 11
  %128 = load i32, i32* %127, align 4
  %129 = shl i32 %128, 0
  %130 = load i32*, i32** %3, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 10
  %132 = load i32, i32* %131, align 4
  %133 = shl i32 %132, 8
  %134 = or i32 %129, %133
  %135 = load i32*, i32** %3, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 9
  %137 = load i32, i32* %136, align 4
  %138 = shl i32 %137, 16
  %139 = or i32 %134, %138
  store i32 %139, i32* %5, align 4
  %140 = load i32, i32* %5, align 4
  %141 = and i32 %140, 63
  %142 = call i32 @int_to_itoa64(i32 %141)
  %143 = load i32*, i32** %4, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 12
  store i32 %142, i32* %144, align 4
  %145 = load i32, i32* %5, align 4
  %146 = ashr i32 %145, 6
  store i32 %146, i32* %5, align 4
  %147 = load i32, i32* %5, align 4
  %148 = and i32 %147, 63
  %149 = call i32 @int_to_itoa64(i32 %148)
  %150 = load i32*, i32** %4, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 13
  store i32 %149, i32* %151, align 4
  %152 = load i32, i32* %5, align 4
  %153 = ashr i32 %152, 6
  store i32 %153, i32* %5, align 4
  %154 = load i32, i32* %5, align 4
  %155 = and i32 %154, 63
  %156 = call i32 @int_to_itoa64(i32 %155)
  %157 = load i32*, i32** %4, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 14
  store i32 %156, i32* %158, align 4
  %159 = load i32, i32* %5, align 4
  %160 = ashr i32 %159, 6
  store i32 %160, i32* %5, align 4
  %161 = load i32, i32* %5, align 4
  %162 = and i32 %161, 63
  %163 = call i32 @int_to_itoa64(i32 %162)
  %164 = load i32*, i32** %4, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 15
  store i32 %163, i32* %165, align 4
  %166 = load i32*, i32** %3, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 14
  %168 = load i32, i32* %167, align 4
  %169 = shl i32 %168, 0
  %170 = load i32*, i32** %3, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 13
  %172 = load i32, i32* %171, align 4
  %173 = shl i32 %172, 8
  %174 = or i32 %169, %173
  %175 = load i32*, i32** %3, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 12
  %177 = load i32, i32* %176, align 4
  %178 = shl i32 %177, 16
  %179 = or i32 %174, %178
  store i32 %179, i32* %5, align 4
  %180 = load i32, i32* %5, align 4
  %181 = and i32 %180, 63
  %182 = call i32 @int_to_itoa64(i32 %181)
  %183 = load i32*, i32** %4, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 16
  store i32 %182, i32* %184, align 4
  %185 = load i32, i32* %5, align 4
  %186 = ashr i32 %185, 6
  store i32 %186, i32* %5, align 4
  %187 = load i32, i32* %5, align 4
  %188 = and i32 %187, 63
  %189 = call i32 @int_to_itoa64(i32 %188)
  %190 = load i32*, i32** %4, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 17
  store i32 %189, i32* %191, align 4
  %192 = load i32, i32* %5, align 4
  %193 = ashr i32 %192, 6
  store i32 %193, i32* %5, align 4
  %194 = load i32, i32* %5, align 4
  %195 = and i32 %194, 63
  %196 = call i32 @int_to_itoa64(i32 %195)
  %197 = load i32*, i32** %4, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 18
  store i32 %196, i32* %198, align 4
  %199 = load i32, i32* %5, align 4
  %200 = ashr i32 %199, 6
  store i32 %200, i32* %5, align 4
  %201 = load i32, i32* %5, align 4
  %202 = and i32 %201, 63
  %203 = call i32 @int_to_itoa64(i32 %202)
  %204 = load i32*, i32** %4, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 19
  store i32 %203, i32* %205, align 4
  %206 = load i32*, i32** %3, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 17
  %208 = load i32, i32* %207, align 4
  %209 = shl i32 %208, 0
  %210 = load i32*, i32** %3, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 16
  %212 = load i32, i32* %211, align 4
  %213 = shl i32 %212, 8
  %214 = or i32 %209, %213
  %215 = load i32*, i32** %3, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 15
  %217 = load i32, i32* %216, align 4
  %218 = shl i32 %217, 16
  %219 = or i32 %214, %218
  store i32 %219, i32* %5, align 4
  %220 = load i32, i32* %5, align 4
  %221 = and i32 %220, 63
  %222 = call i32 @int_to_itoa64(i32 %221)
  %223 = load i32*, i32** %4, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 20
  store i32 %222, i32* %224, align 4
  %225 = load i32, i32* %5, align 4
  %226 = ashr i32 %225, 6
  store i32 %226, i32* %5, align 4
  %227 = load i32, i32* %5, align 4
  %228 = and i32 %227, 63
  %229 = call i32 @int_to_itoa64(i32 %228)
  %230 = load i32*, i32** %4, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 21
  store i32 %229, i32* %231, align 4
  %232 = load i32, i32* %5, align 4
  %233 = ashr i32 %232, 6
  store i32 %233, i32* %5, align 4
  %234 = load i32, i32* %5, align 4
  %235 = and i32 %234, 63
  %236 = call i32 @int_to_itoa64(i32 %235)
  %237 = load i32*, i32** %4, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 22
  store i32 %236, i32* %238, align 4
  %239 = load i32, i32* %5, align 4
  %240 = ashr i32 %239, 6
  store i32 %240, i32* %5, align 4
  %241 = load i32, i32* %5, align 4
  %242 = and i32 %241, 63
  %243 = call i32 @int_to_itoa64(i32 %242)
  %244 = load i32*, i32** %4, align 8
  %245 = getelementptr inbounds i32, i32* %244, i64 23
  store i32 %243, i32* %245, align 4
  %246 = load i32*, i32** %3, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 20
  %248 = load i32, i32* %247, align 4
  %249 = shl i32 %248, 0
  %250 = load i32*, i32** %3, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 19
  %252 = load i32, i32* %251, align 4
  %253 = shl i32 %252, 8
  %254 = or i32 %249, %253
  %255 = load i32*, i32** %3, align 8
  %256 = getelementptr inbounds i32, i32* %255, i64 18
  %257 = load i32, i32* %256, align 4
  %258 = shl i32 %257, 16
  %259 = or i32 %254, %258
  store i32 %259, i32* %5, align 4
  %260 = load i32, i32* %5, align 4
  %261 = and i32 %260, 63
  %262 = call i32 @int_to_itoa64(i32 %261)
  %263 = load i32*, i32** %4, align 8
  %264 = getelementptr inbounds i32, i32* %263, i64 24
  store i32 %262, i32* %264, align 4
  %265 = load i32, i32* %5, align 4
  %266 = ashr i32 %265, 6
  store i32 %266, i32* %5, align 4
  %267 = load i32, i32* %5, align 4
  %268 = and i32 %267, 63
  %269 = call i32 @int_to_itoa64(i32 %268)
  %270 = load i32*, i32** %4, align 8
  %271 = getelementptr inbounds i32, i32* %270, i64 25
  store i32 %269, i32* %271, align 4
  %272 = load i32, i32* %5, align 4
  %273 = ashr i32 %272, 6
  store i32 %273, i32* %5, align 4
  %274 = load i32, i32* %5, align 4
  %275 = and i32 %274, 63
  %276 = call i32 @int_to_itoa64(i32 %275)
  %277 = load i32*, i32** %4, align 8
  %278 = getelementptr inbounds i32, i32* %277, i64 26
  store i32 %276, i32* %278, align 4
  %279 = load i32, i32* %5, align 4
  %280 = ashr i32 %279, 6
  store i32 %280, i32* %5, align 4
  %281 = load i32, i32* %5, align 4
  %282 = and i32 %281, 63
  %283 = call i32 @int_to_itoa64(i32 %282)
  %284 = load i32*, i32** %4, align 8
  %285 = getelementptr inbounds i32, i32* %284, i64 27
  store i32 %283, i32* %285, align 4
  %286 = load i32*, i32** %3, align 8
  %287 = getelementptr inbounds i32, i32* %286, i64 23
  %288 = load i32, i32* %287, align 4
  %289 = shl i32 %288, 0
  %290 = load i32*, i32** %3, align 8
  %291 = getelementptr inbounds i32, i32* %290, i64 22
  %292 = load i32, i32* %291, align 4
  %293 = shl i32 %292, 8
  %294 = or i32 %289, %293
  %295 = load i32*, i32** %3, align 8
  %296 = getelementptr inbounds i32, i32* %295, i64 21
  %297 = load i32, i32* %296, align 4
  %298 = shl i32 %297, 16
  %299 = or i32 %294, %298
  store i32 %299, i32* %5, align 4
  %300 = load i32, i32* %5, align 4
  %301 = and i32 %300, 63
  %302 = call i32 @int_to_itoa64(i32 %301)
  %303 = load i32*, i32** %4, align 8
  %304 = getelementptr inbounds i32, i32* %303, i64 28
  store i32 %302, i32* %304, align 4
  %305 = load i32, i32* %5, align 4
  %306 = ashr i32 %305, 6
  store i32 %306, i32* %5, align 4
  %307 = load i32, i32* %5, align 4
  %308 = and i32 %307, 63
  %309 = call i32 @int_to_itoa64(i32 %308)
  %310 = load i32*, i32** %4, align 8
  %311 = getelementptr inbounds i32, i32* %310, i64 29
  store i32 %309, i32* %311, align 4
  %312 = load i32, i32* %5, align 4
  %313 = ashr i32 %312, 6
  store i32 %313, i32* %5, align 4
  %314 = load i32, i32* %5, align 4
  %315 = and i32 %314, 63
  %316 = call i32 @int_to_itoa64(i32 %315)
  %317 = load i32*, i32** %4, align 8
  %318 = getelementptr inbounds i32, i32* %317, i64 30
  store i32 %316, i32* %318, align 4
  %319 = load i32, i32* %5, align 4
  %320 = ashr i32 %319, 6
  store i32 %320, i32* %5, align 4
  %321 = load i32, i32* %5, align 4
  %322 = and i32 %321, 63
  %323 = call i32 @int_to_itoa64(i32 %322)
  %324 = load i32*, i32** %4, align 8
  %325 = getelementptr inbounds i32, i32* %324, i64 31
  store i32 %323, i32* %325, align 4
  %326 = load i32*, i32** %3, align 8
  %327 = getelementptr inbounds i32, i32* %326, i64 26
  %328 = load i32, i32* %327, align 4
  %329 = shl i32 %328, 0
  %330 = load i32*, i32** %3, align 8
  %331 = getelementptr inbounds i32, i32* %330, i64 25
  %332 = load i32, i32* %331, align 4
  %333 = shl i32 %332, 8
  %334 = or i32 %329, %333
  %335 = load i32*, i32** %3, align 8
  %336 = getelementptr inbounds i32, i32* %335, i64 24
  %337 = load i32, i32* %336, align 4
  %338 = shl i32 %337, 16
  %339 = or i32 %334, %338
  store i32 %339, i32* %5, align 4
  %340 = load i32, i32* %5, align 4
  %341 = and i32 %340, 63
  %342 = call i32 @int_to_itoa64(i32 %341)
  %343 = load i32*, i32** %4, align 8
  %344 = getelementptr inbounds i32, i32* %343, i64 32
  store i32 %342, i32* %344, align 4
  %345 = load i32, i32* %5, align 4
  %346 = ashr i32 %345, 6
  store i32 %346, i32* %5, align 4
  %347 = load i32, i32* %5, align 4
  %348 = and i32 %347, 63
  %349 = call i32 @int_to_itoa64(i32 %348)
  %350 = load i32*, i32** %4, align 8
  %351 = getelementptr inbounds i32, i32* %350, i64 33
  store i32 %349, i32* %351, align 4
  %352 = load i32, i32* %5, align 4
  %353 = ashr i32 %352, 6
  store i32 %353, i32* %5, align 4
  %354 = load i32, i32* %5, align 4
  %355 = and i32 %354, 63
  %356 = call i32 @int_to_itoa64(i32 %355)
  %357 = load i32*, i32** %4, align 8
  %358 = getelementptr inbounds i32, i32* %357, i64 34
  store i32 %356, i32* %358, align 4
  %359 = load i32, i32* %5, align 4
  %360 = ashr i32 %359, 6
  store i32 %360, i32* %5, align 4
  %361 = load i32, i32* %5, align 4
  %362 = and i32 %361, 63
  %363 = call i32 @int_to_itoa64(i32 %362)
  %364 = load i32*, i32** %4, align 8
  %365 = getelementptr inbounds i32, i32* %364, i64 35
  store i32 %363, i32* %365, align 4
  %366 = load i32*, i32** %3, align 8
  %367 = getelementptr inbounds i32, i32* %366, i64 29
  %368 = load i32, i32* %367, align 4
  %369 = shl i32 %368, 0
  %370 = load i32*, i32** %3, align 8
  %371 = getelementptr inbounds i32, i32* %370, i64 28
  %372 = load i32, i32* %371, align 4
  %373 = shl i32 %372, 8
  %374 = or i32 %369, %373
  %375 = load i32*, i32** %3, align 8
  %376 = getelementptr inbounds i32, i32* %375, i64 27
  %377 = load i32, i32* %376, align 4
  %378 = shl i32 %377, 16
  %379 = or i32 %374, %378
  store i32 %379, i32* %5, align 4
  %380 = load i32, i32* %5, align 4
  %381 = and i32 %380, 63
  %382 = call i32 @int_to_itoa64(i32 %381)
  %383 = load i32*, i32** %4, align 8
  %384 = getelementptr inbounds i32, i32* %383, i64 36
  store i32 %382, i32* %384, align 4
  %385 = load i32, i32* %5, align 4
  %386 = ashr i32 %385, 6
  store i32 %386, i32* %5, align 4
  %387 = load i32, i32* %5, align 4
  %388 = and i32 %387, 63
  %389 = call i32 @int_to_itoa64(i32 %388)
  %390 = load i32*, i32** %4, align 8
  %391 = getelementptr inbounds i32, i32* %390, i64 37
  store i32 %389, i32* %391, align 4
  %392 = load i32, i32* %5, align 4
  %393 = ashr i32 %392, 6
  store i32 %393, i32* %5, align 4
  %394 = load i32, i32* %5, align 4
  %395 = and i32 %394, 63
  %396 = call i32 @int_to_itoa64(i32 %395)
  %397 = load i32*, i32** %4, align 8
  %398 = getelementptr inbounds i32, i32* %397, i64 38
  store i32 %396, i32* %398, align 4
  %399 = load i32, i32* %5, align 4
  %400 = ashr i32 %399, 6
  store i32 %400, i32* %5, align 4
  %401 = load i32, i32* %5, align 4
  %402 = and i32 %401, 63
  %403 = call i32 @int_to_itoa64(i32 %402)
  %404 = load i32*, i32** %4, align 8
  %405 = getelementptr inbounds i32, i32* %404, i64 39
  store i32 %403, i32* %405, align 4
  %406 = load i32*, i32** %3, align 8
  %407 = getelementptr inbounds i32, i32* %406, i64 31
  %408 = load i32, i32* %407, align 4
  %409 = shl i32 %408, 8
  %410 = or i32 0, %409
  %411 = load i32*, i32** %3, align 8
  %412 = getelementptr inbounds i32, i32* %411, i64 30
  %413 = load i32, i32* %412, align 4
  %414 = shl i32 %413, 16
  %415 = or i32 %410, %414
  store i32 %415, i32* %5, align 4
  %416 = load i32, i32* %5, align 4
  %417 = and i32 %416, 63
  %418 = call i32 @int_to_itoa64(i32 %417)
  %419 = load i32*, i32** %4, align 8
  %420 = getelementptr inbounds i32, i32* %419, i64 40
  store i32 %418, i32* %420, align 4
  %421 = load i32, i32* %5, align 4
  %422 = ashr i32 %421, 6
  store i32 %422, i32* %5, align 4
  %423 = load i32, i32* %5, align 4
  %424 = and i32 %423, 63
  %425 = call i32 @int_to_itoa64(i32 %424)
  %426 = load i32*, i32** %4, align 8
  %427 = getelementptr inbounds i32, i32* %426, i64 41
  store i32 %425, i32* %427, align 4
  %428 = load i32, i32* %5, align 4
  %429 = ashr i32 %428, 6
  store i32 %429, i32* %5, align 4
  %430 = load i32, i32* %5, align 4
  %431 = and i32 %430, 63
  %432 = call i32 @int_to_itoa64(i32 %431)
  %433 = load i32*, i32** %4, align 8
  %434 = getelementptr inbounds i32, i32* %433, i64 42
  store i32 %432, i32* %434, align 4
  ret void
}

declare dso_local i32 @int_to_itoa64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
