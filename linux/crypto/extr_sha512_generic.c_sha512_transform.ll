; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_sha512_generic.c_sha512_transform.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_sha512_generic.c_sha512_transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sha512_K = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i32*)* @sha512_transform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sha512_transform(i64* %0, i32* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca [16 x i64], align 16
  %17 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  store i32* %1, i32** %4, align 8
  %18 = load i64*, i64** %3, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %5, align 8
  %21 = load i64*, i64** %3, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 1
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %6, align 8
  %24 = load i64*, i64** %3, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 2
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %7, align 8
  %27 = load i64*, i64** %3, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 3
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %8, align 8
  %30 = load i64*, i64** %3, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 4
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %9, align 8
  %33 = load i64*, i64** %3, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 5
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %10, align 8
  %36 = load i64*, i64** %3, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 6
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %11, align 8
  %39 = load i64*, i64** %3, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 7
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %12, align 8
  store i32 0, i32* %15, align 4
  br label %42

42:                                               ; preds = %369, %2
  %43 = load i32, i32* %15, align 4
  %44 = icmp slt i32 %43, 80
  br i1 %44, label %45, label %372

45:                                               ; preds = %42
  %46 = load i32, i32* %15, align 4
  %47 = and i32 %46, 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %82, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* %15, align 4
  %51 = icmp slt i32 %50, 16
  br i1 %51, label %52, label %67

52:                                               ; preds = %49
  store i32 0, i32* %17, align 4
  br label %53

53:                                               ; preds = %63, %52
  %54 = load i32, i32* %17, align 4
  %55 = icmp slt i32 %54, 16
  br i1 %55, label %56, label %66

56:                                               ; preds = %53
  %57 = load i32, i32* %15, align 4
  %58 = load i32, i32* %17, align 4
  %59 = add nsw i32 %57, %58
  %60 = getelementptr inbounds [16 x i64], [16 x i64]* %16, i64 0, i64 0
  %61 = load i32*, i32** %4, align 8
  %62 = call i32 @LOAD_OP(i32 %59, i64* %60, i32* %61)
  br label %63

63:                                               ; preds = %56
  %64 = load i32, i32* %17, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %17, align 4
  br label %53

66:                                               ; preds = %53
  br label %81

67:                                               ; preds = %49
  store i32 0, i32* %17, align 4
  br label %68

68:                                               ; preds = %77, %67
  %69 = load i32, i32* %17, align 4
  %70 = icmp slt i32 %69, 16
  br i1 %70, label %71, label %80

71:                                               ; preds = %68
  %72 = load i32, i32* %15, align 4
  %73 = load i32, i32* %17, align 4
  %74 = add nsw i32 %72, %73
  %75 = getelementptr inbounds [16 x i64], [16 x i64]* %16, i64 0, i64 0
  %76 = call i32 @BLEND_OP(i32 %74, i64* %75)
  br label %77

77:                                               ; preds = %71
  %78 = load i32, i32* %17, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %17, align 4
  br label %68

80:                                               ; preds = %68
  br label %81

81:                                               ; preds = %80, %66
  br label %82

82:                                               ; preds = %81, %45
  %83 = load i64, i64* %12, align 8
  %84 = load i64, i64* %9, align 8
  %85 = call i64 @e1(i64 %84)
  %86 = add nsw i64 %83, %85
  %87 = load i64, i64* %9, align 8
  %88 = load i64, i64* %10, align 8
  %89 = load i64, i64* %11, align 8
  %90 = call i64 @Ch(i64 %87, i64 %88, i64 %89)
  %91 = add nsw i64 %86, %90
  %92 = load i64*, i64** @sha512_K, align 8
  %93 = load i32, i32* %15, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %92, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %91, %96
  %98 = load i32, i32* %15, align 4
  %99 = and i32 %98, 15
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [16 x i64], [16 x i64]* %16, i64 0, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = add nsw i64 %97, %102
  store i64 %103, i64* %13, align 8
  %104 = load i64, i64* %5, align 8
  %105 = call i64 @e0(i64 %104)
  %106 = load i64, i64* %5, align 8
  %107 = load i64, i64* %6, align 8
  %108 = load i64, i64* %7, align 8
  %109 = call i64 @Maj(i64 %106, i64 %107, i64 %108)
  %110 = add nsw i64 %105, %109
  store i64 %110, i64* %14, align 8
  %111 = load i64, i64* %13, align 8
  %112 = load i64, i64* %8, align 8
  %113 = add nsw i64 %112, %111
  store i64 %113, i64* %8, align 8
  %114 = load i64, i64* %13, align 8
  %115 = load i64, i64* %14, align 8
  %116 = add nsw i64 %114, %115
  store i64 %116, i64* %12, align 8
  %117 = load i64, i64* %11, align 8
  %118 = load i64, i64* %8, align 8
  %119 = call i64 @e1(i64 %118)
  %120 = add nsw i64 %117, %119
  %121 = load i64, i64* %8, align 8
  %122 = load i64, i64* %9, align 8
  %123 = load i64, i64* %10, align 8
  %124 = call i64 @Ch(i64 %121, i64 %122, i64 %123)
  %125 = add nsw i64 %120, %124
  %126 = load i64*, i64** @sha512_K, align 8
  %127 = load i32, i32* %15, align 4
  %128 = add nsw i32 %127, 1
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i64, i64* %126, i64 %129
  %131 = load i64, i64* %130, align 8
  %132 = add nsw i64 %125, %131
  %133 = load i32, i32* %15, align 4
  %134 = and i32 %133, 15
  %135 = add nsw i32 %134, 1
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [16 x i64], [16 x i64]* %16, i64 0, i64 %136
  %138 = load i64, i64* %137, align 8
  %139 = add nsw i64 %132, %138
  store i64 %139, i64* %13, align 8
  %140 = load i64, i64* %12, align 8
  %141 = call i64 @e0(i64 %140)
  %142 = load i64, i64* %12, align 8
  %143 = load i64, i64* %5, align 8
  %144 = load i64, i64* %6, align 8
  %145 = call i64 @Maj(i64 %142, i64 %143, i64 %144)
  %146 = add nsw i64 %141, %145
  store i64 %146, i64* %14, align 8
  %147 = load i64, i64* %13, align 8
  %148 = load i64, i64* %7, align 8
  %149 = add nsw i64 %148, %147
  store i64 %149, i64* %7, align 8
  %150 = load i64, i64* %13, align 8
  %151 = load i64, i64* %14, align 8
  %152 = add nsw i64 %150, %151
  store i64 %152, i64* %11, align 8
  %153 = load i64, i64* %10, align 8
  %154 = load i64, i64* %7, align 8
  %155 = call i64 @e1(i64 %154)
  %156 = add nsw i64 %153, %155
  %157 = load i64, i64* %7, align 8
  %158 = load i64, i64* %8, align 8
  %159 = load i64, i64* %9, align 8
  %160 = call i64 @Ch(i64 %157, i64 %158, i64 %159)
  %161 = add nsw i64 %156, %160
  %162 = load i64*, i64** @sha512_K, align 8
  %163 = load i32, i32* %15, align 4
  %164 = add nsw i32 %163, 2
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i64, i64* %162, i64 %165
  %167 = load i64, i64* %166, align 8
  %168 = add nsw i64 %161, %167
  %169 = load i32, i32* %15, align 4
  %170 = and i32 %169, 15
  %171 = add nsw i32 %170, 2
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [16 x i64], [16 x i64]* %16, i64 0, i64 %172
  %174 = load i64, i64* %173, align 8
  %175 = add nsw i64 %168, %174
  store i64 %175, i64* %13, align 8
  %176 = load i64, i64* %11, align 8
  %177 = call i64 @e0(i64 %176)
  %178 = load i64, i64* %11, align 8
  %179 = load i64, i64* %12, align 8
  %180 = load i64, i64* %5, align 8
  %181 = call i64 @Maj(i64 %178, i64 %179, i64 %180)
  %182 = add nsw i64 %177, %181
  store i64 %182, i64* %14, align 8
  %183 = load i64, i64* %13, align 8
  %184 = load i64, i64* %6, align 8
  %185 = add nsw i64 %184, %183
  store i64 %185, i64* %6, align 8
  %186 = load i64, i64* %13, align 8
  %187 = load i64, i64* %14, align 8
  %188 = add nsw i64 %186, %187
  store i64 %188, i64* %10, align 8
  %189 = load i64, i64* %9, align 8
  %190 = load i64, i64* %6, align 8
  %191 = call i64 @e1(i64 %190)
  %192 = add nsw i64 %189, %191
  %193 = load i64, i64* %6, align 8
  %194 = load i64, i64* %7, align 8
  %195 = load i64, i64* %8, align 8
  %196 = call i64 @Ch(i64 %193, i64 %194, i64 %195)
  %197 = add nsw i64 %192, %196
  %198 = load i64*, i64** @sha512_K, align 8
  %199 = load i32, i32* %15, align 4
  %200 = add nsw i32 %199, 3
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i64, i64* %198, i64 %201
  %203 = load i64, i64* %202, align 8
  %204 = add nsw i64 %197, %203
  %205 = load i32, i32* %15, align 4
  %206 = and i32 %205, 15
  %207 = add nsw i32 %206, 3
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds [16 x i64], [16 x i64]* %16, i64 0, i64 %208
  %210 = load i64, i64* %209, align 8
  %211 = add nsw i64 %204, %210
  store i64 %211, i64* %13, align 8
  %212 = load i64, i64* %10, align 8
  %213 = call i64 @e0(i64 %212)
  %214 = load i64, i64* %10, align 8
  %215 = load i64, i64* %11, align 8
  %216 = load i64, i64* %12, align 8
  %217 = call i64 @Maj(i64 %214, i64 %215, i64 %216)
  %218 = add nsw i64 %213, %217
  store i64 %218, i64* %14, align 8
  %219 = load i64, i64* %13, align 8
  %220 = load i64, i64* %5, align 8
  %221 = add nsw i64 %220, %219
  store i64 %221, i64* %5, align 8
  %222 = load i64, i64* %13, align 8
  %223 = load i64, i64* %14, align 8
  %224 = add nsw i64 %222, %223
  store i64 %224, i64* %9, align 8
  %225 = load i64, i64* %8, align 8
  %226 = load i64, i64* %5, align 8
  %227 = call i64 @e1(i64 %226)
  %228 = add nsw i64 %225, %227
  %229 = load i64, i64* %5, align 8
  %230 = load i64, i64* %6, align 8
  %231 = load i64, i64* %7, align 8
  %232 = call i64 @Ch(i64 %229, i64 %230, i64 %231)
  %233 = add nsw i64 %228, %232
  %234 = load i64*, i64** @sha512_K, align 8
  %235 = load i32, i32* %15, align 4
  %236 = add nsw i32 %235, 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i64, i64* %234, i64 %237
  %239 = load i64, i64* %238, align 8
  %240 = add nsw i64 %233, %239
  %241 = load i32, i32* %15, align 4
  %242 = and i32 %241, 15
  %243 = add nsw i32 %242, 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds [16 x i64], [16 x i64]* %16, i64 0, i64 %244
  %246 = load i64, i64* %245, align 8
  %247 = add nsw i64 %240, %246
  store i64 %247, i64* %13, align 8
  %248 = load i64, i64* %9, align 8
  %249 = call i64 @e0(i64 %248)
  %250 = load i64, i64* %9, align 8
  %251 = load i64, i64* %10, align 8
  %252 = load i64, i64* %11, align 8
  %253 = call i64 @Maj(i64 %250, i64 %251, i64 %252)
  %254 = add nsw i64 %249, %253
  store i64 %254, i64* %14, align 8
  %255 = load i64, i64* %13, align 8
  %256 = load i64, i64* %12, align 8
  %257 = add nsw i64 %256, %255
  store i64 %257, i64* %12, align 8
  %258 = load i64, i64* %13, align 8
  %259 = load i64, i64* %14, align 8
  %260 = add nsw i64 %258, %259
  store i64 %260, i64* %8, align 8
  %261 = load i64, i64* %7, align 8
  %262 = load i64, i64* %12, align 8
  %263 = call i64 @e1(i64 %262)
  %264 = add nsw i64 %261, %263
  %265 = load i64, i64* %12, align 8
  %266 = load i64, i64* %5, align 8
  %267 = load i64, i64* %6, align 8
  %268 = call i64 @Ch(i64 %265, i64 %266, i64 %267)
  %269 = add nsw i64 %264, %268
  %270 = load i64*, i64** @sha512_K, align 8
  %271 = load i32, i32* %15, align 4
  %272 = add nsw i32 %271, 5
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i64, i64* %270, i64 %273
  %275 = load i64, i64* %274, align 8
  %276 = add nsw i64 %269, %275
  %277 = load i32, i32* %15, align 4
  %278 = and i32 %277, 15
  %279 = add nsw i32 %278, 5
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds [16 x i64], [16 x i64]* %16, i64 0, i64 %280
  %282 = load i64, i64* %281, align 8
  %283 = add nsw i64 %276, %282
  store i64 %283, i64* %13, align 8
  %284 = load i64, i64* %8, align 8
  %285 = call i64 @e0(i64 %284)
  %286 = load i64, i64* %8, align 8
  %287 = load i64, i64* %9, align 8
  %288 = load i64, i64* %10, align 8
  %289 = call i64 @Maj(i64 %286, i64 %287, i64 %288)
  %290 = add nsw i64 %285, %289
  store i64 %290, i64* %14, align 8
  %291 = load i64, i64* %13, align 8
  %292 = load i64, i64* %11, align 8
  %293 = add nsw i64 %292, %291
  store i64 %293, i64* %11, align 8
  %294 = load i64, i64* %13, align 8
  %295 = load i64, i64* %14, align 8
  %296 = add nsw i64 %294, %295
  store i64 %296, i64* %7, align 8
  %297 = load i64, i64* %6, align 8
  %298 = load i64, i64* %11, align 8
  %299 = call i64 @e1(i64 %298)
  %300 = add nsw i64 %297, %299
  %301 = load i64, i64* %11, align 8
  %302 = load i64, i64* %12, align 8
  %303 = load i64, i64* %5, align 8
  %304 = call i64 @Ch(i64 %301, i64 %302, i64 %303)
  %305 = add nsw i64 %300, %304
  %306 = load i64*, i64** @sha512_K, align 8
  %307 = load i32, i32* %15, align 4
  %308 = add nsw i32 %307, 6
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i64, i64* %306, i64 %309
  %311 = load i64, i64* %310, align 8
  %312 = add nsw i64 %305, %311
  %313 = load i32, i32* %15, align 4
  %314 = and i32 %313, 15
  %315 = add nsw i32 %314, 6
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds [16 x i64], [16 x i64]* %16, i64 0, i64 %316
  %318 = load i64, i64* %317, align 8
  %319 = add nsw i64 %312, %318
  store i64 %319, i64* %13, align 8
  %320 = load i64, i64* %7, align 8
  %321 = call i64 @e0(i64 %320)
  %322 = load i64, i64* %7, align 8
  %323 = load i64, i64* %8, align 8
  %324 = load i64, i64* %9, align 8
  %325 = call i64 @Maj(i64 %322, i64 %323, i64 %324)
  %326 = add nsw i64 %321, %325
  store i64 %326, i64* %14, align 8
  %327 = load i64, i64* %13, align 8
  %328 = load i64, i64* %10, align 8
  %329 = add nsw i64 %328, %327
  store i64 %329, i64* %10, align 8
  %330 = load i64, i64* %13, align 8
  %331 = load i64, i64* %14, align 8
  %332 = add nsw i64 %330, %331
  store i64 %332, i64* %6, align 8
  %333 = load i64, i64* %5, align 8
  %334 = load i64, i64* %10, align 8
  %335 = call i64 @e1(i64 %334)
  %336 = add nsw i64 %333, %335
  %337 = load i64, i64* %10, align 8
  %338 = load i64, i64* %11, align 8
  %339 = load i64, i64* %12, align 8
  %340 = call i64 @Ch(i64 %337, i64 %338, i64 %339)
  %341 = add nsw i64 %336, %340
  %342 = load i64*, i64** @sha512_K, align 8
  %343 = load i32, i32* %15, align 4
  %344 = add nsw i32 %343, 7
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds i64, i64* %342, i64 %345
  %347 = load i64, i64* %346, align 8
  %348 = add nsw i64 %341, %347
  %349 = load i32, i32* %15, align 4
  %350 = and i32 %349, 15
  %351 = add nsw i32 %350, 7
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds [16 x i64], [16 x i64]* %16, i64 0, i64 %352
  %354 = load i64, i64* %353, align 8
  %355 = add nsw i64 %348, %354
  store i64 %355, i64* %13, align 8
  %356 = load i64, i64* %6, align 8
  %357 = call i64 @e0(i64 %356)
  %358 = load i64, i64* %6, align 8
  %359 = load i64, i64* %7, align 8
  %360 = load i64, i64* %8, align 8
  %361 = call i64 @Maj(i64 %358, i64 %359, i64 %360)
  %362 = add nsw i64 %357, %361
  store i64 %362, i64* %14, align 8
  %363 = load i64, i64* %13, align 8
  %364 = load i64, i64* %9, align 8
  %365 = add nsw i64 %364, %363
  store i64 %365, i64* %9, align 8
  %366 = load i64, i64* %13, align 8
  %367 = load i64, i64* %14, align 8
  %368 = add nsw i64 %366, %367
  store i64 %368, i64* %5, align 8
  br label %369

369:                                              ; preds = %82
  %370 = load i32, i32* %15, align 4
  %371 = add nsw i32 %370, 8
  store i32 %371, i32* %15, align 4
  br label %42

372:                                              ; preds = %42
  %373 = load i64, i64* %5, align 8
  %374 = load i64*, i64** %3, align 8
  %375 = getelementptr inbounds i64, i64* %374, i64 0
  %376 = load i64, i64* %375, align 8
  %377 = add nsw i64 %376, %373
  store i64 %377, i64* %375, align 8
  %378 = load i64, i64* %6, align 8
  %379 = load i64*, i64** %3, align 8
  %380 = getelementptr inbounds i64, i64* %379, i64 1
  %381 = load i64, i64* %380, align 8
  %382 = add nsw i64 %381, %378
  store i64 %382, i64* %380, align 8
  %383 = load i64, i64* %7, align 8
  %384 = load i64*, i64** %3, align 8
  %385 = getelementptr inbounds i64, i64* %384, i64 2
  %386 = load i64, i64* %385, align 8
  %387 = add nsw i64 %386, %383
  store i64 %387, i64* %385, align 8
  %388 = load i64, i64* %8, align 8
  %389 = load i64*, i64** %3, align 8
  %390 = getelementptr inbounds i64, i64* %389, i64 3
  %391 = load i64, i64* %390, align 8
  %392 = add nsw i64 %391, %388
  store i64 %392, i64* %390, align 8
  %393 = load i64, i64* %9, align 8
  %394 = load i64*, i64** %3, align 8
  %395 = getelementptr inbounds i64, i64* %394, i64 4
  %396 = load i64, i64* %395, align 8
  %397 = add nsw i64 %396, %393
  store i64 %397, i64* %395, align 8
  %398 = load i64, i64* %10, align 8
  %399 = load i64*, i64** %3, align 8
  %400 = getelementptr inbounds i64, i64* %399, i64 5
  %401 = load i64, i64* %400, align 8
  %402 = add nsw i64 %401, %398
  store i64 %402, i64* %400, align 8
  %403 = load i64, i64* %11, align 8
  %404 = load i64*, i64** %3, align 8
  %405 = getelementptr inbounds i64, i64* %404, i64 6
  %406 = load i64, i64* %405, align 8
  %407 = add nsw i64 %406, %403
  store i64 %407, i64* %405, align 8
  %408 = load i64, i64* %12, align 8
  %409 = load i64*, i64** %3, align 8
  %410 = getelementptr inbounds i64, i64* %409, i64 7
  %411 = load i64, i64* %410, align 8
  %412 = add nsw i64 %411, %408
  store i64 %412, i64* %410, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %5, align 8
  ret void
}

declare dso_local i32 @LOAD_OP(i32, i64*, i32*) #1

declare dso_local i32 @BLEND_OP(i32, i64*) #1

declare dso_local i64 @e1(i64) #1

declare dso_local i64 @Ch(i64, i64, i64) #1

declare dso_local i64 @e0(i64) #1

declare dso_local i64 @Maj(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
