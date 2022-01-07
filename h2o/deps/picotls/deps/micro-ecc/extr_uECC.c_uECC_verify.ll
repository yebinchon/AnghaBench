; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/micro-ecc/extr_uECC.c_uECC_verify.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/micro-ecc/extr_uECC.c_uECC_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i64*, i32, i32, i32 (i64*, i64*, i64*, %struct.TYPE_8__*)*, i32 }

@uECC_MAX_WORDS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uECC_verify(i32* %0, i32* %1, i32 %2, i32* %3, %struct.TYPE_8__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca [4 x i64*], align 16
  %23 = alloca i64*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store %struct.TYPE_8__* %4, %struct.TYPE_8__** %11, align 8
  %33 = load i32, i32* @uECC_MAX_WORDS, align 4
  %34 = zext i32 %33 to i64
  %35 = call i8* @llvm.stacksave()
  store i8* %35, i8** %12, align 8
  %36 = alloca i64, i64 %34, align 16
  store i64 %34, i64* %13, align 8
  %37 = load i32, i32* @uECC_MAX_WORDS, align 4
  %38 = zext i32 %37 to i64
  %39 = alloca i64, i64 %38, align 16
  store i64 %38, i64* %14, align 8
  %40 = load i32, i32* @uECC_MAX_WORDS, align 4
  %41 = zext i32 %40 to i64
  %42 = alloca i64, i64 %41, align 16
  store i64 %41, i64* %15, align 8
  %43 = load i32, i32* @uECC_MAX_WORDS, align 4
  %44 = mul nsw i32 %43, 2
  %45 = zext i32 %44 to i64
  %46 = alloca i64, i64 %45, align 16
  store i64 %45, i64* %16, align 8
  %47 = load i32, i32* @uECC_MAX_WORDS, align 4
  %48 = zext i32 %47 to i64
  %49 = alloca i64, i64 %48, align 16
  store i64 %48, i64* %17, align 8
  %50 = load i32, i32* @uECC_MAX_WORDS, align 4
  %51 = zext i32 %50 to i64
  %52 = alloca i64, i64 %51, align 16
  store i64 %51, i64* %18, align 8
  %53 = load i32, i32* @uECC_MAX_WORDS, align 4
  %54 = zext i32 %53 to i64
  %55 = alloca i64, i64 %54, align 16
  store i64 %54, i64* %19, align 8
  %56 = load i32, i32* @uECC_MAX_WORDS, align 4
  %57 = zext i32 %56 to i64
  %58 = alloca i64, i64 %57, align 16
  store i64 %57, i64* %20, align 8
  %59 = load i32, i32* @uECC_MAX_WORDS, align 4
  %60 = zext i32 %59 to i64
  %61 = alloca i64, i64 %60, align 16
  store i64 %60, i64* %21, align 8
  %62 = load i32, i32* @uECC_MAX_WORDS, align 4
  %63 = mul nsw i32 %62, 2
  %64 = zext i32 %63 to i64
  %65 = alloca i64, i64 %64, align 16
  store i64 %64, i64* %26, align 8
  %66 = load i32, i32* @uECC_MAX_WORDS, align 4
  %67 = zext i32 %66 to i64
  %68 = alloca i64, i64 %67, align 16
  store i64 %67, i64* %27, align 8
  %69 = load i32, i32* @uECC_MAX_WORDS, align 4
  %70 = zext i32 %69 to i64
  %71 = alloca i64, i64 %70, align 16
  store i64 %70, i64* %28, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  store i32 %74, i32* %29, align 4
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @BITS_TO_WORDS(i32 %77)
  store i32 %78, i32* %30, align 4
  %79 = load i32, i32* %30, align 4
  %80 = sub nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %49, i64 %81
  store i64 0, i64* %82, align 8
  %83 = load i32, i32* %30, align 4
  %84 = sub nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %68, i64 %85
  store i64 0, i64* %86, align 8
  %87 = load i32, i32* %30, align 4
  %88 = sub nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %71, i64 %89
  store i64 0, i64* %90, align 8
  %91 = load i32*, i32** %7, align 8
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @uECC_vli_bytesToNative(i64* %65, i32* %91, i32 %94)
  %96 = load i32, i32* %29, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %65, i64 %97
  %99 = load i32*, i32** %7, align 8
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %99, i64 %103
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @uECC_vli_bytesToNative(i64* %98, i32* %104, i32 %107)
  %109 = load i32*, i32** %10, align 8
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @uECC_vli_bytesToNative(i64* %68, i32* %109, i32 %112)
  %114 = load i32*, i32** %10, align 8
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %114, i64 %118
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @uECC_vli_bytesToNative(i64* %71, i32* %119, i32 %122)
  %124 = load i32, i32* %29, align 4
  %125 = call i64 @uECC_vli_isZero(i64* %68, i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %131, label %127

127:                                              ; preds = %5
  %128 = load i32, i32* %29, align 4
  %129 = call i64 @uECC_vli_isZero(i64* %71, i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %127, %5
  store i32 0, i32* %6, align 4
  store i32 1, i32* %31, align 4
  br label %337

132:                                              ; preds = %127
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* %30, align 4
  %137 = call i32 @uECC_vli_cmp_unsafe(i32 %135, i64* %68, i32 %136)
  %138 = icmp ne i32 %137, 1
  br i1 %138, label %146, label %139

139:                                              ; preds = %132
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* %30, align 4
  %144 = call i32 @uECC_vli_cmp_unsafe(i32 %142, i64* %71, i32 %143)
  %145 = icmp ne i32 %144, 1
  br i1 %145, label %146, label %147

146:                                              ; preds = %139, %132
  store i32 0, i32* %6, align 4
  store i32 1, i32* %31, align 4
  br label %337

147:                                              ; preds = %139
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* %30, align 4
  %152 = call i32 @uECC_vli_modInv(i64* %42, i64* %71, i32 %150, i32 %151)
  %153 = load i32, i32* %30, align 4
  %154 = sub nsw i32 %153, 1
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i64, i64* %36, i64 %155
  store i64 0, i64* %156, align 8
  %157 = load i32*, i32** %8, align 8
  %158 = load i32, i32* %9, align 4
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %160 = call i32 @bits2int(i64* %36, i32* %157, i32 %158, %struct.TYPE_8__* %159)
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* %30, align 4
  %165 = call i32 @uECC_vli_modMult(i64* %36, i64* %36, i64* %42, i32 %163, i32 %164)
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* %30, align 4
  %170 = call i32 @uECC_vli_modMult(i64* %39, i64* %68, i64* %42, i32 %168, i32 %169)
  %171 = load i32, i32* %29, align 4
  %172 = call i32 @uECC_vli_set(i64* %46, i64* %65, i32 %171)
  %173 = load i32, i32* %29, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i64, i64* %46, i64 %174
  %176 = load i32, i32* %29, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i64, i64* %65, i64 %177
  %179 = load i32, i32* %29, align 4
  %180 = call i32 @uECC_vli_set(i64* %175, i64* %178, i32 %179)
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 2
  %183 = load i64*, i64** %182, align 8
  %184 = load i32, i32* %29, align 4
  %185 = call i32 @uECC_vli_set(i64* %55, i64* %183, i32 %184)
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 2
  %188 = load i64*, i64** %187, align 8
  %189 = load i32, i32* %29, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i64, i64* %188, i64 %190
  %192 = load i32, i32* %29, align 4
  %193 = call i32 @uECC_vli_set(i64* %58, i64* %191, i32 %192)
  %194 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 4
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* %29, align 4
  %198 = call i32 @uECC_vli_modSub(i64* %42, i64* %46, i64* %55, i32 %196, i32 %197)
  %199 = load i32, i32* %29, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i64, i64* %46, i64 %200
  %202 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %203 = call i32 @XYcZ_add(i64* %55, i64* %58, i64* %46, i64* %201, %struct.TYPE_8__* %202)
  %204 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 4
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* %29, align 4
  %208 = call i32 @uECC_vli_modInv(i64* %42, i64* %42, i32 %206, i32 %207)
  %209 = load i32, i32* %29, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i64, i64* %46, i64 %210
  %212 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %213 = call i32 @apply_z(i64* %46, i64* %211, i64* %42, %struct.TYPE_8__* %212)
  %214 = getelementptr inbounds [4 x i64*], [4 x i64*]* %22, i64 0, i64 0
  store i64* null, i64** %214, align 16
  %215 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 2
  %217 = load i64*, i64** %216, align 8
  %218 = getelementptr inbounds [4 x i64*], [4 x i64*]* %22, i64 0, i64 1
  store i64* %217, i64** %218, align 8
  %219 = getelementptr inbounds [4 x i64*], [4 x i64*]* %22, i64 0, i64 2
  store i64* %65, i64** %219, align 16
  %220 = getelementptr inbounds [4 x i64*], [4 x i64*]* %22, i64 0, i64 3
  store i64* %46, i64** %220, align 8
  %221 = load i32, i32* %30, align 4
  %222 = call i32 @uECC_vli_numBits(i64* %36, i32 %221)
  %223 = load i32, i32* %30, align 4
  %224 = call i32 @uECC_vli_numBits(i64* %39, i32 %223)
  %225 = call i64 @smax(i32 %222, i32 %224)
  store i64 %225, i64* %24, align 8
  %226 = load i64, i64* %24, align 8
  %227 = sub nsw i64 %226, 1
  %228 = call i32 @uECC_vli_testBit(i64* %36, i64 %227)
  %229 = icmp ne i32 %228, 0
  %230 = xor i1 %229, true
  %231 = xor i1 %230, true
  %232 = zext i1 %231 to i32
  %233 = load i64, i64* %24, align 8
  %234 = sub nsw i64 %233, 1
  %235 = call i32 @uECC_vli_testBit(i64* %39, i64 %234)
  %236 = icmp ne i32 %235, 0
  %237 = xor i1 %236, true
  %238 = xor i1 %237, true
  %239 = zext i1 %238 to i32
  %240 = shl i32 %239, 1
  %241 = or i32 %232, %240
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds [4 x i64*], [4 x i64*]* %22, i64 0, i64 %242
  %244 = load i64*, i64** %243, align 8
  store i64* %244, i64** %23, align 8
  %245 = load i64*, i64** %23, align 8
  %246 = load i32, i32* %29, align 4
  %247 = call i32 @uECC_vli_set(i64* %49, i64* %245, i32 %246)
  %248 = load i64*, i64** %23, align 8
  %249 = load i32, i32* %29, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i64, i64* %248, i64 %250
  %252 = load i32, i32* %29, align 4
  %253 = call i32 @uECC_vli_set(i64* %52, i64* %251, i32 %252)
  %254 = load i32, i32* %29, align 4
  %255 = call i32 @uECC_vli_clear(i64* %42, i32 %254)
  %256 = getelementptr inbounds i64, i64* %42, i64 0
  store i64 1, i64* %256, align 16
  %257 = load i64, i64* %24, align 8
  %258 = sub nsw i64 %257, 2
  store i64 %258, i64* %25, align 8
  br label %259

259:                                              ; preds = %310, %147
  %260 = load i64, i64* %25, align 8
  %261 = icmp sge i64 %260, 0
  br i1 %261, label %262, label %313

262:                                              ; preds = %259
  %263 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %264 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %263, i32 0, i32 5
  %265 = load i32 (i64*, i64*, i64*, %struct.TYPE_8__*)*, i32 (i64*, i64*, i64*, %struct.TYPE_8__*)** %264, align 8
  %266 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %267 = call i32 %265(i64* %49, i64* %52, i64* %42, %struct.TYPE_8__* %266)
  %268 = load i64, i64* %25, align 8
  %269 = call i32 @uECC_vli_testBit(i64* %36, i64 %268)
  %270 = icmp ne i32 %269, 0
  %271 = xor i1 %270, true
  %272 = xor i1 %271, true
  %273 = zext i1 %272 to i32
  %274 = load i64, i64* %25, align 8
  %275 = call i32 @uECC_vli_testBit(i64* %39, i64 %274)
  %276 = icmp ne i32 %275, 0
  %277 = xor i1 %276, true
  %278 = xor i1 %277, true
  %279 = zext i1 %278 to i32
  %280 = shl i32 %279, 1
  %281 = or i32 %273, %280
  %282 = sext i32 %281 to i64
  store i64 %282, i64* %32, align 8
  %283 = load i64, i64* %32, align 8
  %284 = getelementptr inbounds [4 x i64*], [4 x i64*]* %22, i64 0, i64 %283
  %285 = load i64*, i64** %284, align 8
  store i64* %285, i64** %23, align 8
  %286 = load i64*, i64** %23, align 8
  %287 = icmp ne i64* %286, null
  br i1 %287, label %288, label %309

288:                                              ; preds = %262
  %289 = load i64*, i64** %23, align 8
  %290 = load i32, i32* %29, align 4
  %291 = call i32 @uECC_vli_set(i64* %55, i64* %289, i32 %290)
  %292 = load i64*, i64** %23, align 8
  %293 = load i32, i32* %29, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i64, i64* %292, i64 %294
  %296 = load i32, i32* %29, align 4
  %297 = call i32 @uECC_vli_set(i64* %58, i64* %295, i32 %296)
  %298 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %299 = call i32 @apply_z(i64* %55, i64* %58, i64* %42, %struct.TYPE_8__* %298)
  %300 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %301 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %300, i32 0, i32 4
  %302 = load i32, i32* %301, align 4
  %303 = load i32, i32* %29, align 4
  %304 = call i32 @uECC_vli_modSub(i64* %61, i64* %49, i64* %55, i32 %302, i32 %303)
  %305 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %306 = call i32 @XYcZ_add(i64* %55, i64* %58, i64* %49, i64* %52, %struct.TYPE_8__* %305)
  %307 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %308 = call i32 @uECC_vli_modMult_fast(i64* %42, i64* %42, i64* %61, %struct.TYPE_8__* %307)
  br label %309

309:                                              ; preds = %288, %262
  br label %310

310:                                              ; preds = %309
  %311 = load i64, i64* %25, align 8
  %312 = add nsw i64 %311, -1
  store i64 %312, i64* %25, align 8
  br label %259

313:                                              ; preds = %259
  %314 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %315 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %314, i32 0, i32 4
  %316 = load i32, i32* %315, align 4
  %317 = load i32, i32* %29, align 4
  %318 = call i32 @uECC_vli_modInv(i64* %42, i64* %42, i32 %316, i32 %317)
  %319 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %320 = call i32 @apply_z(i64* %49, i64* %52, i64* %42, %struct.TYPE_8__* %319)
  %321 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %322 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %321, i32 0, i32 3
  %323 = load i32, i32* %322, align 8
  %324 = load i32, i32* %30, align 4
  %325 = call i32 @uECC_vli_cmp_unsafe(i32 %323, i64* %49, i32 %324)
  %326 = icmp ne i32 %325, 1
  br i1 %326, label %327, label %333

327:                                              ; preds = %313
  %328 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %329 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %328, i32 0, i32 3
  %330 = load i32, i32* %329, align 8
  %331 = load i32, i32* %30, align 4
  %332 = call i32 @uECC_vli_sub(i64* %49, i64* %49, i32 %330, i32 %331)
  br label %333

333:                                              ; preds = %327, %313
  %334 = load i32, i32* %29, align 4
  %335 = call i64 @uECC_vli_equal(i64* %49, i64* %68, i32 %334)
  %336 = trunc i64 %335 to i32
  store i32 %336, i32* %6, align 4
  store i32 1, i32* %31, align 4
  br label %337

337:                                              ; preds = %333, %146, %131
  %338 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %338)
  %339 = load i32, i32* %6, align 4
  ret i32 %339
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @BITS_TO_WORDS(i32) #2

declare dso_local i32 @uECC_vli_bytesToNative(i64*, i32*, i32) #2

declare dso_local i64 @uECC_vli_isZero(i64*, i32) #2

declare dso_local i32 @uECC_vli_cmp_unsafe(i32, i64*, i32) #2

declare dso_local i32 @uECC_vli_modInv(i64*, i64*, i32, i32) #2

declare dso_local i32 @bits2int(i64*, i32*, i32, %struct.TYPE_8__*) #2

declare dso_local i32 @uECC_vli_modMult(i64*, i64*, i64*, i32, i32) #2

declare dso_local i32 @uECC_vli_set(i64*, i64*, i32) #2

declare dso_local i32 @uECC_vli_modSub(i64*, i64*, i64*, i32, i32) #2

declare dso_local i32 @XYcZ_add(i64*, i64*, i64*, i64*, %struct.TYPE_8__*) #2

declare dso_local i32 @apply_z(i64*, i64*, i64*, %struct.TYPE_8__*) #2

declare dso_local i64 @smax(i32, i32) #2

declare dso_local i32 @uECC_vli_numBits(i64*, i32) #2

declare dso_local i32 @uECC_vli_testBit(i64*, i64) #2

declare dso_local i32 @uECC_vli_clear(i64*, i32) #2

declare dso_local i32 @uECC_vli_modMult_fast(i64*, i64*, i64*, %struct.TYPE_8__*) #2

declare dso_local i32 @uECC_vli_sub(i64*, i64*, i32, i32) #2

declare dso_local i64 @uECC_vli_equal(i64*, i64*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
