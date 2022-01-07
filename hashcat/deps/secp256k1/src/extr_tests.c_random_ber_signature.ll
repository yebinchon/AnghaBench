; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_random_ber_signature.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_random_ber_signature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64*, i32*, i32*)* @random_ber_signature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @random_ber_signature(i8* %0, i64* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [2 x i32], align 4
  %11 = alloca [2 x i32], align 4
  %12 = alloca [2 x i32], align 4
  %13 = alloca [2 x i32], align 4
  %14 = alloca [2 x i32], align 4
  %15 = alloca [2 x i32], align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %25 = load i64*, i64** %6, align 8
  store i64 0, i64* %25, align 8
  %26 = call i32 @secp256k1_rand_bits(i32 2)
  %27 = icmp eq i32 %26, 0
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32*, i32** %7, align 8
  store i32 %29, i32* %30, align 4
  %31 = load i32*, i32** %8, align 8
  store i32 0, i32* %31, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %4
  br label %39

35:                                               ; preds = %4
  %36 = call i32 @secp256k1_rand_int(i32 10)
  %37 = icmp eq i32 %36, 0
  %38 = zext i1 %37 to i32
  br label %39

39:                                               ; preds = %35, %34
  %40 = phi i32 [ 0, %34 ], [ %38, %35 ]
  store i32 %40, i32* %19, align 4
  store i32 0, i32* %20, align 4
  br label %41

41:                                               ; preds = %285, %39
  %42 = load i32, i32* %20, align 4
  %43 = icmp slt i32 %42, 2
  br i1 %43, label %44, label %288

44:                                               ; preds = %41
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  br label %52

48:                                               ; preds = %44
  %49 = call i32 @secp256k1_rand_bits(i32 3)
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i32
  br label %52

52:                                               ; preds = %48, %47
  %53 = phi i32 [ 1, %47 ], [ %51, %48 ]
  %54 = load i32, i32* %20, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 %55
  store i32 %53, i32* %56, align 4
  %57 = load i32, i32* %20, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %52
  %63 = call i32 @secp256k1_rand_int(i32 33)
  br label %70

64:                                               ; preds = %52
  %65 = call i32 @secp256k1_rand_int(i32 200)
  %66 = call i32 @secp256k1_rand_int(i32 8)
  %67 = mul nsw i32 %65, %66
  %68 = sdiv i32 %67, 8
  %69 = add nsw i32 32, %68
  br label %70

70:                                               ; preds = %64, %62
  %71 = phi i32 [ %63, %62 ], [ %69, %64 ]
  %72 = load i32, i32* %20, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 %73
  store i32 %71, i32* %74, align 4
  %75 = load i32, i32* %20, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = icmp sle i32 %78, 232
  %80 = zext i1 %79 to i32
  %81 = call i32 @CHECK(i32 %80)
  %82 = load i32, i32* %20, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %70
  %88 = load i32, i32* %20, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = icmp eq i32 %91, 32
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  br label %105

94:                                               ; preds = %87, %70
  %95 = load i32, i32* %20, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  br label %103

101:                                              ; preds = %94
  %102 = call i32 @secp256k1_rand_bits(i32 1)
  br label %103

103:                                              ; preds = %101, %100
  %104 = phi i32 [ 0, %100 ], [ %102, %101 ]
  br label %105

105:                                              ; preds = %103, %93
  %106 = phi i32 [ 1, %93 ], [ %104, %103 ]
  %107 = load i32, i32* %20, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 %108
  store i32 %106, i32* %109, align 4
  %110 = load i32, i32* %20, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %105
  br label %130

116:                                              ; preds = %105
  %117 = load i32, i32* %20, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %116
  %123 = call i32 @secp256k1_rand_bits(i32 7)
  %124 = add nsw i32 128, %123
  br label %128

125:                                              ; preds = %116
  %126 = call i32 @secp256k1_rand_int(i32 127)
  %127 = add nsw i32 1, %126
  br label %128

128:                                              ; preds = %125, %122
  %129 = phi i32 [ %124, %122 ], [ %127, %125 ]
  br label %130

130:                                              ; preds = %128, %115
  %131 = phi i32 [ 0, %115 ], [ %129, %128 ]
  %132 = load i32, i32* %20, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 %133
  store i32 %131, i32* %134, align 4
  %135 = load i32, i32* %9, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %153

137:                                              ; preds = %130
  %138 = load i32, i32* %20, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %149, label %143

143:                                              ; preds = %137
  %144 = load i32, i32* %20, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = icmp ne i32 %147, 0
  br label %149

149:                                              ; preds = %143, %137
  %150 = phi i1 [ true, %137 ], [ %148, %143 ]
  %151 = zext i1 %150 to i64
  %152 = select i1 %150, i32 1, i32 0
  br label %173

153:                                              ; preds = %130
  %154 = load i32, i32* %20, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %153
  %160 = call i32 @secp256k1_rand_int(i32 3)
  br label %171

161:                                              ; preds = %153
  %162 = load i32, i32* %20, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = sub nsw i32 300, %165
  %167 = call i32 @secp256k1_rand_int(i32 %166)
  %168 = call i32 @secp256k1_rand_int(i32 8)
  %169 = mul nsw i32 %167, %168
  %170 = sdiv i32 %169, 8
  br label %171

171:                                              ; preds = %161, %159
  %172 = phi i32 [ %160, %159 ], [ %170, %161 ]
  br label %173

173:                                              ; preds = %171, %149
  %174 = phi i32 [ %152, %149 ], [ %172, %171 ]
  %175 = load i32, i32* %20, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 %176
  store i32 %174, i32* %177, align 4
  %178 = load i32, i32* %20, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* %20, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %193, label %187

187:                                              ; preds = %173
  %188 = load i32, i32* %20, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = icmp ne i32 %191, 0
  br label %193

193:                                              ; preds = %187, %173
  %194 = phi i1 [ true, %173 ], [ %192, %187 ]
  %195 = zext i1 %194 to i64
  %196 = select i1 %194, i32 1, i32 0
  %197 = icmp sgt i32 %181, %196
  br i1 %197, label %198, label %200

198:                                              ; preds = %193
  %199 = load i32*, i32** %8, align 8
  store i32 1, i32* %199, align 4
  br label %200

200:                                              ; preds = %198, %193
  %201 = load i32, i32* %20, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* %20, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = add nsw i32 %204, %208
  %210 = icmp sle i32 %209, 300
  %211 = zext i1 %210 to i32
  %212 = call i32 @CHECK(i32 %211)
  %213 = load i32, i32* %20, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* %20, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = add nsw i32 %216, %220
  %222 = icmp slt i32 %221, 128
  br i1 %222, label %223, label %224

223:                                              ; preds = %200
  br label %237

224:                                              ; preds = %200
  %225 = load i32, i32* %20, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* %20, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = add nsw i32 %228, %232
  %234 = icmp slt i32 %233, 256
  %235 = zext i1 %234 to i64
  %236 = select i1 %234, i32 1, i32 2
  br label %237

237:                                              ; preds = %224, %223
  %238 = phi i32 [ 0, %223 ], [ %236, %224 ]
  %239 = load i32, i32* %20, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 %240
  store i32 %238, i32* %241, align 4
  %242 = load i32, i32* %9, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %267, label %244

244:                                              ; preds = %237
  %245 = load i32, i32* %20, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 %246
  %248 = load i32, i32* %247, align 4
  %249 = sub nsw i32 127, %248
  %250 = call i32 @secp256k1_rand_int(i32 %249)
  %251 = call i32 @secp256k1_rand_int(i32 16)
  %252 = mul nsw i32 %250, %251
  %253 = call i32 @secp256k1_rand_int(i32 16)
  %254 = mul nsw i32 %252, %253
  %255 = sdiv i32 %254, 256
  store i32 %255, i32* %21, align 4
  %256 = load i32, i32* %21, align 4
  %257 = load i32, i32* %20, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 %258
  %260 = load i32, i32* %259, align 4
  %261 = add nsw i32 %260, %256
  store i32 %261, i32* %259, align 4
  %262 = load i32, i32* %21, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %266

264:                                              ; preds = %244
  %265 = load i32*, i32** %8, align 8
  store i32 1, i32* %265, align 4
  br label %266

266:                                              ; preds = %264, %244
  br label %267

267:                                              ; preds = %266, %237
  %268 = load i32, i32* %20, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 %269
  %271 = load i32, i32* %270, align 4
  %272 = load i32, i32* %20, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 %273
  %275 = load i32, i32* %274, align 4
  %276 = add nsw i32 %271, %275
  %277 = load i32, i32* %20, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 %278
  %280 = load i32, i32* %279, align 4
  %281 = add nsw i32 %276, %280
  %282 = icmp sle i32 %281, 427
  %283 = zext i1 %282 to i32
  %284 = call i32 @CHECK(i32 %283)
  br label %285

285:                                              ; preds = %267
  %286 = load i32, i32* %20, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %20, align 4
  br label %41

288:                                              ; preds = %41
  %289 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %290 = load i32, i32* %289, align 4
  %291 = add nsw i32 2, %290
  %292 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %293 = load i32, i32* %292, align 4
  %294 = add nsw i32 %291, %293
  %295 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  %296 = load i32, i32* %295, align 4
  %297 = add nsw i32 %294, %296
  %298 = add nsw i32 %297, 2
  %299 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %300 = load i32, i32* %299, align 4
  %301 = add nsw i32 %298, %300
  %302 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %303 = load i32, i32* %302, align 4
  %304 = add nsw i32 %301, %303
  %305 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 1
  %306 = load i32, i32* %305, align 4
  %307 = add nsw i32 %304, %306
  %308 = sext i32 %307 to i64
  store i64 %308, i64* %16, align 8
  %309 = load i64, i64* %16, align 8
  %310 = icmp ule i64 %309, 856
  %311 = zext i1 %310 to i32
  %312 = call i32 @CHECK(i32 %311)
  %313 = load i32, i32* %9, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %318, label %315

315:                                              ; preds = %288
  %316 = load i32, i32* %19, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %319

318:                                              ; preds = %315, %288
  br label %327

319:                                              ; preds = %315
  %320 = load i64, i64* %16, align 8
  %321 = sub i64 980, %320
  %322 = trunc i64 %321 to i32
  %323 = call i32 @secp256k1_rand_int(i32 %322)
  %324 = call i32 @secp256k1_rand_int(i32 8)
  %325 = mul nsw i32 %323, %324
  %326 = sdiv i32 %325, 8
  br label %327

327:                                              ; preds = %319, %318
  %328 = phi i32 [ 0, %318 ], [ %326, %319 ]
  %329 = sext i32 %328 to i64
  store i64 %329, i64* %17, align 8
  %330 = load i64, i64* %17, align 8
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %332, label %334

332:                                              ; preds = %327
  %333 = load i32*, i32** %8, align 8
  store i32 1, i32* %333, align 4
  br label %334

334:                                              ; preds = %332, %327
  %335 = load i64, i64* %17, align 8
  %336 = load i64, i64* %16, align 8
  %337 = add i64 %336, %335
  store i64 %337, i64* %16, align 8
  %338 = load i64, i64* %16, align 8
  %339 = icmp ule i64 %338, 980
  %340 = zext i1 %339 to i32
  %341 = call i32 @CHECK(i32 %340)
  %342 = load i32, i32* %9, align 4
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %345

344:                                              ; preds = %334
  br label %353

345:                                              ; preds = %334
  %346 = load i64, i64* %16, align 8
  %347 = sub i64 990, %346
  %348 = trunc i64 %347 to i32
  %349 = call i32 @secp256k1_rand_int(i32 %348)
  %350 = call i32 @secp256k1_rand_int(i32 8)
  %351 = mul nsw i32 %349, %350
  %352 = sdiv i32 %351, 8
  br label %353

353:                                              ; preds = %345, %344
  %354 = phi i32 [ 0, %344 ], [ %352, %345 ]
  %355 = sext i32 %354 to i64
  store i64 %355, i64* %18, align 8
  %356 = load i64, i64* %18, align 8
  %357 = icmp ne i64 %356, 0
  br i1 %357, label %358, label %360

358:                                              ; preds = %353
  %359 = load i32*, i32** %8, align 8
  store i32 1, i32* %359, align 4
  br label %360

360:                                              ; preds = %358, %353
  %361 = load i64, i64* %16, align 8
  %362 = load i64, i64* %18, align 8
  %363 = add i64 %361, %362
  %364 = icmp ule i64 %363, 990
  %365 = zext i1 %364 to i32
  %366 = call i32 @CHECK(i32 %365)
  %367 = load i8*, i8** %5, align 8
  %368 = load i64*, i64** %6, align 8
  %369 = load i64, i64* %368, align 8
  %370 = add i64 %369, 1
  store i64 %370, i64* %368, align 8
  %371 = getelementptr inbounds i8, i8* %367, i64 %369
  store i8 48, i8* %371, align 1
  %372 = load i32, i32* %19, align 4
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %381

374:                                              ; preds = %360
  %375 = load i8*, i8** %5, align 8
  %376 = load i64*, i64** %6, align 8
  %377 = load i64, i64* %376, align 8
  %378 = add i64 %377, 1
  store i64 %378, i64* %376, align 8
  %379 = getelementptr inbounds i8, i8* %375, i64 %377
  store i8 -128, i8* %379, align 1
  %380 = load i32*, i32** %8, align 8
  store i32 1, i32* %380, align 4
  br label %449

381:                                              ; preds = %360
  %382 = load i64, i64* %16, align 8
  %383 = icmp ult i64 %382, 128
  br i1 %383, label %384, label %385

384:                                              ; preds = %381
  br label %390

385:                                              ; preds = %381
  %386 = load i64, i64* %16, align 8
  %387 = icmp ult i64 %386, 256
  %388 = zext i1 %387 to i64
  %389 = select i1 %387, i32 1, i32 2
  br label %390

390:                                              ; preds = %385, %384
  %391 = phi i32 [ 0, %384 ], [ %389, %385 ]
  store i32 %391, i32* %22, align 4
  %392 = load i32, i32* %9, align 4
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %411, label %394

394:                                              ; preds = %390
  %395 = load i32, i32* %22, align 4
  %396 = sub nsw i32 127, %395
  %397 = call i32 @secp256k1_rand_int(i32 %396)
  %398 = call i32 @secp256k1_rand_int(i32 16)
  %399 = mul nsw i32 %397, %398
  %400 = call i32 @secp256k1_rand_int(i32 16)
  %401 = mul nsw i32 %399, %400
  %402 = sdiv i32 %401, 256
  store i32 %402, i32* %23, align 4
  %403 = load i32, i32* %23, align 4
  %404 = load i32, i32* %22, align 4
  %405 = add nsw i32 %404, %403
  store i32 %405, i32* %22, align 4
  %406 = load i32, i32* %23, align 4
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %408, label %410

408:                                              ; preds = %394
  %409 = load i32*, i32** %8, align 8
  store i32 1, i32* %409, align 4
  br label %410

410:                                              ; preds = %408, %394
  br label %411

411:                                              ; preds = %410, %390
  %412 = load i32, i32* %22, align 4
  %413 = icmp eq i32 %412, 0
  br i1 %413, label %414, label %422

414:                                              ; preds = %411
  %415 = load i64, i64* %16, align 8
  %416 = trunc i64 %415 to i8
  %417 = load i8*, i8** %5, align 8
  %418 = load i64*, i64** %6, align 8
  %419 = load i64, i64* %418, align 8
  %420 = add i64 %419, 1
  store i64 %420, i64* %418, align 8
  %421 = getelementptr inbounds i8, i8* %417, i64 %419
  store i8 %416, i8* %421, align 1
  br label %444

422:                                              ; preds = %411
  %423 = load i32, i32* %22, align 4
  %424 = add nsw i32 128, %423
  %425 = trunc i32 %424 to i8
  %426 = load i8*, i8** %5, align 8
  %427 = load i64*, i64** %6, align 8
  %428 = load i64, i64* %427, align 8
  %429 = add i64 %428, 1
  store i64 %429, i64* %427, align 8
  %430 = getelementptr inbounds i8, i8* %426, i64 %428
  store i8 %425, i8* %430, align 1
  %431 = load i8*, i8** %5, align 8
  %432 = load i64*, i64** %6, align 8
  %433 = load i64, i64* %432, align 8
  %434 = getelementptr inbounds i8, i8* %431, i64 %433
  %435 = load i32, i32* %22, align 4
  %436 = load i64, i64* %16, align 8
  %437 = trunc i64 %436 to i32
  %438 = call i32 @assign_big_endian(i8* %434, i32 %435, i32 %437)
  %439 = load i32, i32* %22, align 4
  %440 = sext i32 %439 to i64
  %441 = load i64*, i64** %6, align 8
  %442 = load i64, i64* %441, align 8
  %443 = add i64 %442, %440
  store i64 %443, i64* %441, align 8
  br label %444

444:                                              ; preds = %422, %414
  %445 = load i32, i32* %22, align 4
  %446 = sext i32 %445 to i64
  %447 = load i64, i64* %16, align 8
  %448 = add i64 %447, %446
  store i64 %448, i64* %16, align 8
  br label %449

449:                                              ; preds = %444, %374
  %450 = load i64, i64* %16, align 8
  %451 = add i64 %450, 2
  store i64 %451, i64* %16, align 8
  %452 = load i64, i64* %16, align 8
  %453 = load i64, i64* %18, align 8
  %454 = add i64 %452, %453
  %455 = icmp ule i64 %454, 1119
  %456 = zext i1 %455 to i32
  %457 = call i32 @CHECK(i32 %456)
  store i32 0, i32* %20, align 4
  br label %458

458:                                              ; preds = %619, %449
  %459 = load i32, i32* %20, align 4
  %460 = icmp slt i32 %459, 2
  br i1 %460, label %461, label %622

461:                                              ; preds = %458
  %462 = load i8*, i8** %5, align 8
  %463 = load i64*, i64** %6, align 8
  %464 = load i64, i64* %463, align 8
  %465 = add i64 %464, 1
  store i64 %465, i64* %463, align 8
  %466 = getelementptr inbounds i8, i8* %462, i64 %464
  store i8 2, i8* %466, align 1
  %467 = load i32, i32* %20, align 4
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 %468
  %470 = load i32, i32* %469, align 4
  %471 = icmp eq i32 %470, 0
  br i1 %471, label %472, label %488

472:                                              ; preds = %461
  %473 = load i32, i32* %20, align 4
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 %474
  %476 = load i32, i32* %475, align 4
  %477 = load i32, i32* %20, align 4
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 %478
  %480 = load i32, i32* %479, align 4
  %481 = add nsw i32 %476, %480
  %482 = trunc i32 %481 to i8
  %483 = load i8*, i8** %5, align 8
  %484 = load i64*, i64** %6, align 8
  %485 = load i64, i64* %484, align 8
  %486 = add i64 %485, 1
  store i64 %486, i64* %484, align 8
  %487 = getelementptr inbounds i8, i8* %483, i64 %485
  store i8 %482, i8* %487, align 1
  br label %526

488:                                              ; preds = %461
  %489 = load i32, i32* %20, align 4
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 %490
  %492 = load i32, i32* %491, align 4
  %493 = add nsw i32 128, %492
  %494 = trunc i32 %493 to i8
  %495 = load i8*, i8** %5, align 8
  %496 = load i64*, i64** %6, align 8
  %497 = load i64, i64* %496, align 8
  %498 = add i64 %497, 1
  store i64 %498, i64* %496, align 8
  %499 = getelementptr inbounds i8, i8* %495, i64 %497
  store i8 %494, i8* %499, align 1
  %500 = load i8*, i8** %5, align 8
  %501 = load i64*, i64** %6, align 8
  %502 = load i64, i64* %501, align 8
  %503 = getelementptr inbounds i8, i8* %500, i64 %502
  %504 = load i32, i32* %20, align 4
  %505 = sext i32 %504 to i64
  %506 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 %505
  %507 = load i32, i32* %506, align 4
  %508 = load i32, i32* %20, align 4
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 %509
  %511 = load i32, i32* %510, align 4
  %512 = load i32, i32* %20, align 4
  %513 = sext i32 %512 to i64
  %514 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 %513
  %515 = load i32, i32* %514, align 4
  %516 = add nsw i32 %511, %515
  %517 = call i32 @assign_big_endian(i8* %503, i32 %507, i32 %516)
  %518 = load i32, i32* %20, align 4
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 %519
  %521 = load i32, i32* %520, align 4
  %522 = sext i32 %521 to i64
  %523 = load i64*, i64** %6, align 8
  %524 = load i64, i64* %523, align 8
  %525 = add i64 %524, %522
  store i64 %525, i64* %523, align 8
  br label %526

526:                                              ; preds = %488, %472
  br label %527

527:                                              ; preds = %533, %526
  %528 = load i32, i32* %20, align 4
  %529 = sext i32 %528 to i64
  %530 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 %529
  %531 = load i32, i32* %530, align 4
  %532 = icmp sgt i32 %531, 0
  br i1 %532, label %533, label %544

533:                                              ; preds = %527
  %534 = load i8*, i8** %5, align 8
  %535 = load i64*, i64** %6, align 8
  %536 = load i64, i64* %535, align 8
  %537 = add i64 %536, 1
  store i64 %537, i64* %535, align 8
  %538 = getelementptr inbounds i8, i8* %534, i64 %536
  store i8 0, i8* %538, align 1
  %539 = load i32, i32* %20, align 4
  %540 = sext i32 %539 to i64
  %541 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 %540
  %542 = load i32, i32* %541, align 4
  %543 = add nsw i32 %542, -1
  store i32 %543, i32* %541, align 4
  br label %527

544:                                              ; preds = %527
  %545 = load i32, i32* %20, align 4
  %546 = sext i32 %545 to i64
  %547 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 %546
  %548 = load i32, i32* %547, align 4
  %549 = icmp eq i32 %548, 32
  br i1 %549, label %550, label %575

550:                                              ; preds = %544
  %551 = load i32, i32* %20, align 4
  %552 = sext i32 %551 to i64
  %553 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 %552
  %554 = load i32, i32* %553, align 4
  %555 = icmp ne i32 %554, 0
  br i1 %555, label %575, label %556

556:                                              ; preds = %550
  store i32 0, i32* %24, align 4
  br label %557

557:                                              ; preds = %566, %556
  %558 = load i32, i32* %24, align 4
  %559 = icmp slt i32 %558, 16
  br i1 %559, label %560, label %569

560:                                              ; preds = %557
  %561 = load i8*, i8** %5, align 8
  %562 = load i64*, i64** %6, align 8
  %563 = load i64, i64* %562, align 8
  %564 = add i64 %563, 1
  store i64 %564, i64* %562, align 8
  %565 = getelementptr inbounds i8, i8* %561, i64 %563
  store i8 -1, i8* %565, align 1
  br label %566

566:                                              ; preds = %560
  %567 = load i32, i32* %24, align 4
  %568 = add nsw i32 %567, 1
  store i32 %568, i32* %24, align 4
  br label %557

569:                                              ; preds = %557
  %570 = load i32, i32* %20, align 4
  %571 = sext i32 %570 to i64
  %572 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 %571
  %573 = load i32, i32* %572, align 4
  %574 = sub nsw i32 %573, 16
  store i32 %574, i32* %572, align 4
  br label %575

575:                                              ; preds = %569, %550, %544
  %576 = load i32, i32* %20, align 4
  %577 = sext i32 %576 to i64
  %578 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 %577
  %579 = load i32, i32* %578, align 4
  %580 = icmp sgt i32 %579, 0
  br i1 %580, label %581, label %597

581:                                              ; preds = %575
  %582 = load i32, i32* %20, align 4
  %583 = sext i32 %582 to i64
  %584 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 %583
  %585 = load i32, i32* %584, align 4
  %586 = trunc i32 %585 to i8
  %587 = load i8*, i8** %5, align 8
  %588 = load i64*, i64** %6, align 8
  %589 = load i64, i64* %588, align 8
  %590 = add i64 %589, 1
  store i64 %590, i64* %588, align 8
  %591 = getelementptr inbounds i8, i8* %587, i64 %589
  store i8 %586, i8* %591, align 1
  %592 = load i32, i32* %20, align 4
  %593 = sext i32 %592 to i64
  %594 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 %593
  %595 = load i32, i32* %594, align 4
  %596 = add nsw i32 %595, -1
  store i32 %596, i32* %594, align 4
  br label %597

597:                                              ; preds = %581, %575
  %598 = load i8*, i8** %5, align 8
  %599 = load i64*, i64** %6, align 8
  %600 = load i64, i64* %599, align 8
  %601 = getelementptr inbounds i8, i8* %598, i64 %600
  %602 = load i32, i32* %20, align 4
  %603 = sext i32 %602 to i64
  %604 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 %603
  %605 = load i32, i32* %604, align 4
  %606 = sext i32 %605 to i64
  %607 = call i32 @secp256k1_rand_bytes_test(i8* %601, i64 %606)
  %608 = load i32, i32* %20, align 4
  %609 = sext i32 %608 to i64
  %610 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 %609
  %611 = load i32, i32* %610, align 4
  %612 = sext i32 %611 to i64
  %613 = load i64*, i64** %6, align 8
  %614 = load i64, i64* %613, align 8
  %615 = add i64 %614, %612
  store i64 %615, i64* %613, align 8
  %616 = load i32, i32* %20, align 4
  %617 = sext i32 %616 to i64
  %618 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 %617
  store i32 0, i32* %618, align 4
  br label %619

619:                                              ; preds = %597
  %620 = load i32, i32* %20, align 4
  %621 = add nsw i32 %620, 1
  store i32 %621, i32* %20, align 4
  br label %458

622:                                              ; preds = %458
  %623 = load i8*, i8** %5, align 8
  %624 = load i64*, i64** %6, align 8
  %625 = load i64, i64* %624, align 8
  %626 = getelementptr inbounds i8, i8* %623, i64 %625
  %627 = load i64, i64* %17, align 8
  %628 = call i32 @secp256k1_rand_bytes_test(i8* %626, i64 %627)
  %629 = load i64, i64* %17, align 8
  %630 = load i64*, i64** %6, align 8
  %631 = load i64, i64* %630, align 8
  %632 = add i64 %631, %629
  store i64 %632, i64* %630, align 8
  %633 = load i32, i32* %19, align 4
  %634 = icmp ne i32 %633, 0
  br i1 %634, label %635, label %648

635:                                              ; preds = %622
  %636 = load i8*, i8** %5, align 8
  %637 = load i64*, i64** %6, align 8
  %638 = load i64, i64* %637, align 8
  %639 = add i64 %638, 1
  store i64 %639, i64* %637, align 8
  %640 = getelementptr inbounds i8, i8* %636, i64 %638
  store i8 0, i8* %640, align 1
  %641 = load i8*, i8** %5, align 8
  %642 = load i64*, i64** %6, align 8
  %643 = load i64, i64* %642, align 8
  %644 = add i64 %643, 1
  store i64 %644, i64* %642, align 8
  %645 = getelementptr inbounds i8, i8* %641, i64 %643
  store i8 0, i8* %645, align 1
  %646 = load i64, i64* %16, align 8
  %647 = add i64 %646, 2
  store i64 %647, i64* %16, align 8
  br label %648

648:                                              ; preds = %635, %622
  %649 = load i64, i64* %16, align 8
  %650 = load i64, i64* %18, align 8
  %651 = add i64 %649, %650
  %652 = icmp ule i64 %651, 1121
  %653 = zext i1 %652 to i32
  %654 = call i32 @CHECK(i32 %653)
  %655 = load i8*, i8** %5, align 8
  %656 = load i64*, i64** %6, align 8
  %657 = load i64, i64* %656, align 8
  %658 = getelementptr inbounds i8, i8* %655, i64 %657
  %659 = load i64, i64* %18, align 8
  %660 = call i32 @secp256k1_rand_bytes_test(i8* %658, i64 %659)
  %661 = load i64, i64* %18, align 8
  %662 = load i64*, i64** %6, align 8
  %663 = load i64, i64* %662, align 8
  %664 = add i64 %663, %661
  store i64 %664, i64* %662, align 8
  %665 = load i64, i64* %18, align 8
  %666 = load i64, i64* %16, align 8
  %667 = add i64 %666, %665
  store i64 %667, i64* %16, align 8
  %668 = load i64, i64* %16, align 8
  %669 = icmp ule i64 %668, 1121
  %670 = zext i1 %669 to i32
  %671 = call i32 @CHECK(i32 %670)
  %672 = load i64, i64* %16, align 8
  %673 = load i64*, i64** %6, align 8
  %674 = load i64, i64* %673, align 8
  %675 = icmp eq i64 %672, %674
  %676 = zext i1 %675 to i32
  %677 = call i32 @CHECK(i32 %676)
  ret void
}

declare dso_local i32 @secp256k1_rand_bits(i32) #1

declare dso_local i32 @secp256k1_rand_int(i32) #1

declare dso_local i32 @CHECK(i32) #1

declare dso_local i32 @assign_big_endian(i8*, i32, i32) #1

declare dso_local i32 @secp256k1_rand_bytes_test(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
