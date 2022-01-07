; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_serpent_generic.c___serpent_encrypt.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_serpent_generic.c___serpent_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serpent_ctx = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__serpent_encrypt(%struct.serpent_ctx* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.serpent_ctx*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.serpent_ctx* %0, %struct.serpent_ctx** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %15 = load %struct.serpent_ctx*, %struct.serpent_ctx** %4, align 8
  %16 = getelementptr inbounds %struct.serpent_ctx, %struct.serpent_ctx* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %7, align 8
  %18 = load i32*, i32** %6, align 8
  store i32* %18, i32** %8, align 8
  %19 = load i32*, i32** %5, align 8
  store i32* %19, i32** %9, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @le32_to_cpu(i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32*, i32** %8, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @le32_to_cpu(i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32*, i32** %8, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @le32_to_cpu(i32 %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32*, i32** %8, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 3
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @le32_to_cpu(i32 %34)
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %13, align 4
  %40 = call i32 @K(i32 %36, i32 %37, i32 %38, i32 %39, i32 0)
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %14, align 4
  %46 = call i32 @S0(i32 %41, i32 %42, i32 %43, i32 %44, i32 %45)
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %14, align 4
  %52 = call i32 @LK(i32 %47, i32 %48, i32 %49, i32 %50, i32 %51, i32 1)
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %14, align 4
  %58 = call i32 @S1(i32 %53, i32 %54, i32 %55, i32 %56, i32 %57)
  %59 = load i32, i32* %14, align 4
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @LK(i32 %59, i32 %60, i32 %61, i32 %62, i32 %63, i32 2)
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @S2(i32 %65, i32 %66, i32 %67, i32 %68, i32 %69)
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @LK(i32 %71, i32 %72, i32 %73, i32 %74, i32 %75, i32 3)
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @S3(i32 %77, i32 %78, i32 %79, i32 %80, i32 %81)
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* %14, align 4
  %88 = call i32 @LK(i32 %83, i32 %84, i32 %85, i32 %86, i32 %87, i32 4)
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %13, align 4
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* %14, align 4
  %94 = call i32 @S4(i32 %89, i32 %90, i32 %91, i32 %92, i32 %93)
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* %14, align 4
  %99 = load i32, i32* %12, align 4
  %100 = call i32 @LK(i32 %95, i32 %96, i32 %97, i32 %98, i32 %99, i32 5)
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* %13, align 4
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* %14, align 4
  %105 = load i32, i32* %12, align 4
  %106 = call i32 @S5(i32 %101, i32 %102, i32 %103, i32 %104, i32 %105)
  %107 = load i32, i32* %12, align 4
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* %13, align 4
  %110 = load i32, i32* %14, align 4
  %111 = load i32, i32* %11, align 4
  %112 = call i32 @LK(i32 %107, i32 %108, i32 %109, i32 %110, i32 %111, i32 6)
  %113 = load i32, i32* %12, align 4
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* %14, align 4
  %117 = load i32, i32* %11, align 4
  %118 = call i32 @S6(i32 %113, i32 %114, i32 %115, i32 %116, i32 %117)
  %119 = load i32, i32* %13, align 4
  %120 = load i32, i32* %11, align 4
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* %14, align 4
  %123 = load i32, i32* %12, align 4
  %124 = call i32 @LK(i32 %119, i32 %120, i32 %121, i32 %122, i32 %123, i32 7)
  %125 = load i32, i32* %13, align 4
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* %14, align 4
  %129 = load i32, i32* %12, align 4
  %130 = call i32 @S7(i32 %125, i32 %126, i32 %127, i32 %128, i32 %129)
  %131 = load i32, i32* %12, align 4
  %132 = load i32, i32* %10, align 4
  %133 = load i32, i32* %14, align 4
  %134 = load i32, i32* %13, align 4
  %135 = load i32, i32* %11, align 4
  %136 = call i32 @LK(i32 %131, i32 %132, i32 %133, i32 %134, i32 %135, i32 8)
  %137 = load i32, i32* %12, align 4
  %138 = load i32, i32* %10, align 4
  %139 = load i32, i32* %14, align 4
  %140 = load i32, i32* %13, align 4
  %141 = load i32, i32* %11, align 4
  %142 = call i32 @S0(i32 %137, i32 %138, i32 %139, i32 %140, i32 %141)
  %143 = load i32, i32* %14, align 4
  %144 = load i32, i32* %10, align 4
  %145 = load i32, i32* %13, align 4
  %146 = load i32, i32* %12, align 4
  %147 = load i32, i32* %11, align 4
  %148 = call i32 @LK(i32 %143, i32 %144, i32 %145, i32 %146, i32 %147, i32 9)
  %149 = load i32, i32* %14, align 4
  %150 = load i32, i32* %10, align 4
  %151 = load i32, i32* %13, align 4
  %152 = load i32, i32* %12, align 4
  %153 = load i32, i32* %11, align 4
  %154 = call i32 @S1(i32 %149, i32 %150, i32 %151, i32 %152, i32 %153)
  %155 = load i32, i32* %11, align 4
  %156 = load i32, i32* %13, align 4
  %157 = load i32, i32* %12, align 4
  %158 = load i32, i32* %14, align 4
  %159 = load i32, i32* %10, align 4
  %160 = call i32 @LK(i32 %155, i32 %156, i32 %157, i32 %158, i32 %159, i32 10)
  %161 = load i32, i32* %11, align 4
  %162 = load i32, i32* %13, align 4
  %163 = load i32, i32* %12, align 4
  %164 = load i32, i32* %14, align 4
  %165 = load i32, i32* %10, align 4
  %166 = call i32 @S2(i32 %161, i32 %162, i32 %163, i32 %164, i32 %165)
  %167 = load i32, i32* %10, align 4
  %168 = load i32, i32* %13, align 4
  %169 = load i32, i32* %11, align 4
  %170 = load i32, i32* %14, align 4
  %171 = load i32, i32* %12, align 4
  %172 = call i32 @LK(i32 %167, i32 %168, i32 %169, i32 %170, i32 %171, i32 11)
  %173 = load i32, i32* %10, align 4
  %174 = load i32, i32* %13, align 4
  %175 = load i32, i32* %11, align 4
  %176 = load i32, i32* %14, align 4
  %177 = load i32, i32* %12, align 4
  %178 = call i32 @S3(i32 %173, i32 %174, i32 %175, i32 %176, i32 %177)
  %179 = load i32, i32* %14, align 4
  %180 = load i32, i32* %12, align 4
  %181 = load i32, i32* %13, align 4
  %182 = load i32, i32* %10, align 4
  %183 = load i32, i32* %11, align 4
  %184 = call i32 @LK(i32 %179, i32 %180, i32 %181, i32 %182, i32 %183, i32 12)
  %185 = load i32, i32* %14, align 4
  %186 = load i32, i32* %12, align 4
  %187 = load i32, i32* %13, align 4
  %188 = load i32, i32* %10, align 4
  %189 = load i32, i32* %11, align 4
  %190 = call i32 @S4(i32 %185, i32 %186, i32 %187, i32 %188, i32 %189)
  %191 = load i32, i32* %12, align 4
  %192 = load i32, i32* %13, align 4
  %193 = load i32, i32* %10, align 4
  %194 = load i32, i32* %11, align 4
  %195 = load i32, i32* %14, align 4
  %196 = call i32 @LK(i32 %191, i32 %192, i32 %193, i32 %194, i32 %195, i32 13)
  %197 = load i32, i32* %12, align 4
  %198 = load i32, i32* %13, align 4
  %199 = load i32, i32* %10, align 4
  %200 = load i32, i32* %11, align 4
  %201 = load i32, i32* %14, align 4
  %202 = call i32 @S5(i32 %197, i32 %198, i32 %199, i32 %200, i32 %201)
  %203 = load i32, i32* %14, align 4
  %204 = load i32, i32* %12, align 4
  %205 = load i32, i32* %13, align 4
  %206 = load i32, i32* %11, align 4
  %207 = load i32, i32* %10, align 4
  %208 = call i32 @LK(i32 %203, i32 %204, i32 %205, i32 %206, i32 %207, i32 14)
  %209 = load i32, i32* %14, align 4
  %210 = load i32, i32* %12, align 4
  %211 = load i32, i32* %13, align 4
  %212 = load i32, i32* %11, align 4
  %213 = load i32, i32* %10, align 4
  %214 = call i32 @S6(i32 %209, i32 %210, i32 %211, i32 %212, i32 %213)
  %215 = load i32, i32* %13, align 4
  %216 = load i32, i32* %10, align 4
  %217 = load i32, i32* %12, align 4
  %218 = load i32, i32* %11, align 4
  %219 = load i32, i32* %14, align 4
  %220 = call i32 @LK(i32 %215, i32 %216, i32 %217, i32 %218, i32 %219, i32 15)
  %221 = load i32, i32* %13, align 4
  %222 = load i32, i32* %10, align 4
  %223 = load i32, i32* %12, align 4
  %224 = load i32, i32* %11, align 4
  %225 = load i32, i32* %14, align 4
  %226 = call i32 @S7(i32 %221, i32 %222, i32 %223, i32 %224, i32 %225)
  %227 = load i32, i32* %14, align 4
  %228 = load i32, i32* %12, align 4
  %229 = load i32, i32* %11, align 4
  %230 = load i32, i32* %13, align 4
  %231 = load i32, i32* %10, align 4
  %232 = call i32 @LK(i32 %227, i32 %228, i32 %229, i32 %230, i32 %231, i32 16)
  %233 = load i32, i32* %14, align 4
  %234 = load i32, i32* %12, align 4
  %235 = load i32, i32* %11, align 4
  %236 = load i32, i32* %13, align 4
  %237 = load i32, i32* %10, align 4
  %238 = call i32 @S0(i32 %233, i32 %234, i32 %235, i32 %236, i32 %237)
  %239 = load i32, i32* %11, align 4
  %240 = load i32, i32* %12, align 4
  %241 = load i32, i32* %13, align 4
  %242 = load i32, i32* %14, align 4
  %243 = load i32, i32* %10, align 4
  %244 = call i32 @LK(i32 %239, i32 %240, i32 %241, i32 %242, i32 %243, i32 17)
  %245 = load i32, i32* %11, align 4
  %246 = load i32, i32* %12, align 4
  %247 = load i32, i32* %13, align 4
  %248 = load i32, i32* %14, align 4
  %249 = load i32, i32* %10, align 4
  %250 = call i32 @S1(i32 %245, i32 %246, i32 %247, i32 %248, i32 %249)
  %251 = load i32, i32* %10, align 4
  %252 = load i32, i32* %13, align 4
  %253 = load i32, i32* %14, align 4
  %254 = load i32, i32* %11, align 4
  %255 = load i32, i32* %12, align 4
  %256 = call i32 @LK(i32 %251, i32 %252, i32 %253, i32 %254, i32 %255, i32 18)
  %257 = load i32, i32* %10, align 4
  %258 = load i32, i32* %13, align 4
  %259 = load i32, i32* %14, align 4
  %260 = load i32, i32* %11, align 4
  %261 = load i32, i32* %12, align 4
  %262 = call i32 @S2(i32 %257, i32 %258, i32 %259, i32 %260, i32 %261)
  %263 = load i32, i32* %12, align 4
  %264 = load i32, i32* %13, align 4
  %265 = load i32, i32* %10, align 4
  %266 = load i32, i32* %11, align 4
  %267 = load i32, i32* %14, align 4
  %268 = call i32 @LK(i32 %263, i32 %264, i32 %265, i32 %266, i32 %267, i32 19)
  %269 = load i32, i32* %12, align 4
  %270 = load i32, i32* %13, align 4
  %271 = load i32, i32* %10, align 4
  %272 = load i32, i32* %11, align 4
  %273 = load i32, i32* %14, align 4
  %274 = call i32 @S3(i32 %269, i32 %270, i32 %271, i32 %272, i32 %273)
  %275 = load i32, i32* %11, align 4
  %276 = load i32, i32* %14, align 4
  %277 = load i32, i32* %13, align 4
  %278 = load i32, i32* %12, align 4
  %279 = load i32, i32* %10, align 4
  %280 = call i32 @LK(i32 %275, i32 %276, i32 %277, i32 %278, i32 %279, i32 20)
  %281 = load i32, i32* %11, align 4
  %282 = load i32, i32* %14, align 4
  %283 = load i32, i32* %13, align 4
  %284 = load i32, i32* %12, align 4
  %285 = load i32, i32* %10, align 4
  %286 = call i32 @S4(i32 %281, i32 %282, i32 %283, i32 %284, i32 %285)
  %287 = load i32, i32* %14, align 4
  %288 = load i32, i32* %13, align 4
  %289 = load i32, i32* %12, align 4
  %290 = load i32, i32* %10, align 4
  %291 = load i32, i32* %11, align 4
  %292 = call i32 @LK(i32 %287, i32 %288, i32 %289, i32 %290, i32 %291, i32 21)
  %293 = load i32, i32* %14, align 4
  %294 = load i32, i32* %13, align 4
  %295 = load i32, i32* %12, align 4
  %296 = load i32, i32* %10, align 4
  %297 = load i32, i32* %11, align 4
  %298 = call i32 @S5(i32 %293, i32 %294, i32 %295, i32 %296, i32 %297)
  %299 = load i32, i32* %11, align 4
  %300 = load i32, i32* %14, align 4
  %301 = load i32, i32* %13, align 4
  %302 = load i32, i32* %10, align 4
  %303 = load i32, i32* %12, align 4
  %304 = call i32 @LK(i32 %299, i32 %300, i32 %301, i32 %302, i32 %303, i32 22)
  %305 = load i32, i32* %11, align 4
  %306 = load i32, i32* %14, align 4
  %307 = load i32, i32* %13, align 4
  %308 = load i32, i32* %10, align 4
  %309 = load i32, i32* %12, align 4
  %310 = call i32 @S6(i32 %305, i32 %306, i32 %307, i32 %308, i32 %309)
  %311 = load i32, i32* %13, align 4
  %312 = load i32, i32* %12, align 4
  %313 = load i32, i32* %14, align 4
  %314 = load i32, i32* %10, align 4
  %315 = load i32, i32* %11, align 4
  %316 = call i32 @LK(i32 %311, i32 %312, i32 %313, i32 %314, i32 %315, i32 23)
  %317 = load i32, i32* %13, align 4
  %318 = load i32, i32* %12, align 4
  %319 = load i32, i32* %14, align 4
  %320 = load i32, i32* %10, align 4
  %321 = load i32, i32* %11, align 4
  %322 = call i32 @S7(i32 %317, i32 %318, i32 %319, i32 %320, i32 %321)
  %323 = load i32, i32* %11, align 4
  %324 = load i32, i32* %14, align 4
  %325 = load i32, i32* %10, align 4
  %326 = load i32, i32* %13, align 4
  %327 = load i32, i32* %12, align 4
  %328 = call i32 @LK(i32 %323, i32 %324, i32 %325, i32 %326, i32 %327, i32 24)
  %329 = load i32, i32* %11, align 4
  %330 = load i32, i32* %14, align 4
  %331 = load i32, i32* %10, align 4
  %332 = load i32, i32* %13, align 4
  %333 = load i32, i32* %12, align 4
  %334 = call i32 @S0(i32 %329, i32 %330, i32 %331, i32 %332, i32 %333)
  %335 = load i32, i32* %10, align 4
  %336 = load i32, i32* %14, align 4
  %337 = load i32, i32* %13, align 4
  %338 = load i32, i32* %11, align 4
  %339 = load i32, i32* %12, align 4
  %340 = call i32 @LK(i32 %335, i32 %336, i32 %337, i32 %338, i32 %339, i32 25)
  %341 = load i32, i32* %10, align 4
  %342 = load i32, i32* %14, align 4
  %343 = load i32, i32* %13, align 4
  %344 = load i32, i32* %11, align 4
  %345 = load i32, i32* %12, align 4
  %346 = call i32 @S1(i32 %341, i32 %342, i32 %343, i32 %344, i32 %345)
  %347 = load i32, i32* %12, align 4
  %348 = load i32, i32* %13, align 4
  %349 = load i32, i32* %11, align 4
  %350 = load i32, i32* %10, align 4
  %351 = load i32, i32* %14, align 4
  %352 = call i32 @LK(i32 %347, i32 %348, i32 %349, i32 %350, i32 %351, i32 26)
  %353 = load i32, i32* %12, align 4
  %354 = load i32, i32* %13, align 4
  %355 = load i32, i32* %11, align 4
  %356 = load i32, i32* %10, align 4
  %357 = load i32, i32* %14, align 4
  %358 = call i32 @S2(i32 %353, i32 %354, i32 %355, i32 %356, i32 %357)
  %359 = load i32, i32* %14, align 4
  %360 = load i32, i32* %13, align 4
  %361 = load i32, i32* %12, align 4
  %362 = load i32, i32* %10, align 4
  %363 = load i32, i32* %11, align 4
  %364 = call i32 @LK(i32 %359, i32 %360, i32 %361, i32 %362, i32 %363, i32 27)
  %365 = load i32, i32* %14, align 4
  %366 = load i32, i32* %13, align 4
  %367 = load i32, i32* %12, align 4
  %368 = load i32, i32* %10, align 4
  %369 = load i32, i32* %11, align 4
  %370 = call i32 @S3(i32 %365, i32 %366, i32 %367, i32 %368, i32 %369)
  %371 = load i32, i32* %10, align 4
  %372 = load i32, i32* %11, align 4
  %373 = load i32, i32* %13, align 4
  %374 = load i32, i32* %14, align 4
  %375 = load i32, i32* %12, align 4
  %376 = call i32 @LK(i32 %371, i32 %372, i32 %373, i32 %374, i32 %375, i32 28)
  %377 = load i32, i32* %10, align 4
  %378 = load i32, i32* %11, align 4
  %379 = load i32, i32* %13, align 4
  %380 = load i32, i32* %14, align 4
  %381 = load i32, i32* %12, align 4
  %382 = call i32 @S4(i32 %377, i32 %378, i32 %379, i32 %380, i32 %381)
  %383 = load i32, i32* %11, align 4
  %384 = load i32, i32* %13, align 4
  %385 = load i32, i32* %14, align 4
  %386 = load i32, i32* %12, align 4
  %387 = load i32, i32* %10, align 4
  %388 = call i32 @LK(i32 %383, i32 %384, i32 %385, i32 %386, i32 %387, i32 29)
  %389 = load i32, i32* %11, align 4
  %390 = load i32, i32* %13, align 4
  %391 = load i32, i32* %14, align 4
  %392 = load i32, i32* %12, align 4
  %393 = load i32, i32* %10, align 4
  %394 = call i32 @S5(i32 %389, i32 %390, i32 %391, i32 %392, i32 %393)
  %395 = load i32, i32* %10, align 4
  %396 = load i32, i32* %11, align 4
  %397 = load i32, i32* %13, align 4
  %398 = load i32, i32* %12, align 4
  %399 = load i32, i32* %14, align 4
  %400 = call i32 @LK(i32 %395, i32 %396, i32 %397, i32 %398, i32 %399, i32 30)
  %401 = load i32, i32* %10, align 4
  %402 = load i32, i32* %11, align 4
  %403 = load i32, i32* %13, align 4
  %404 = load i32, i32* %12, align 4
  %405 = load i32, i32* %14, align 4
  %406 = call i32 @S6(i32 %401, i32 %402, i32 %403, i32 %404, i32 %405)
  %407 = load i32, i32* %13, align 4
  %408 = load i32, i32* %14, align 4
  %409 = load i32, i32* %11, align 4
  %410 = load i32, i32* %12, align 4
  %411 = load i32, i32* %10, align 4
  %412 = call i32 @LK(i32 %407, i32 %408, i32 %409, i32 %410, i32 %411, i32 31)
  %413 = load i32, i32* %13, align 4
  %414 = load i32, i32* %14, align 4
  %415 = load i32, i32* %11, align 4
  %416 = load i32, i32* %12, align 4
  %417 = load i32, i32* %10, align 4
  %418 = call i32 @S7(i32 %413, i32 %414, i32 %415, i32 %416, i32 %417)
  %419 = load i32, i32* %10, align 4
  %420 = load i32, i32* %11, align 4
  %421 = load i32, i32* %12, align 4
  %422 = load i32, i32* %13, align 4
  %423 = call i32 @K(i32 %419, i32 %420, i32 %421, i32 %422, i32 32)
  %424 = load i32, i32* %10, align 4
  %425 = call i32 @cpu_to_le32(i32 %424)
  %426 = load i32*, i32** %9, align 8
  %427 = getelementptr inbounds i32, i32* %426, i64 0
  store i32 %425, i32* %427, align 4
  %428 = load i32, i32* %11, align 4
  %429 = call i32 @cpu_to_le32(i32 %428)
  %430 = load i32*, i32** %9, align 8
  %431 = getelementptr inbounds i32, i32* %430, i64 1
  store i32 %429, i32* %431, align 4
  %432 = load i32, i32* %12, align 4
  %433 = call i32 @cpu_to_le32(i32 %432)
  %434 = load i32*, i32** %9, align 8
  %435 = getelementptr inbounds i32, i32* %434, i64 2
  store i32 %433, i32* %435, align 4
  %436 = load i32, i32* %13, align 4
  %437 = call i32 @cpu_to_le32(i32 %436)
  %438 = load i32*, i32** %9, align 8
  %439 = getelementptr inbounds i32, i32* %438, i64 3
  store i32 %437, i32* %439, align 4
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @K(i32, i32, i32, i32, i32) #1

declare dso_local i32 @S0(i32, i32, i32, i32, i32) #1

declare dso_local i32 @LK(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @S1(i32, i32, i32, i32, i32) #1

declare dso_local i32 @S2(i32, i32, i32, i32, i32) #1

declare dso_local i32 @S3(i32, i32, i32, i32, i32) #1

declare dso_local i32 @S4(i32, i32, i32, i32, i32) #1

declare dso_local i32 @S5(i32, i32, i32, i32, i32) #1

declare dso_local i32 @S6(i32, i32, i32, i32, i32) #1

declare dso_local i32 @S7(i32, i32, i32, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
