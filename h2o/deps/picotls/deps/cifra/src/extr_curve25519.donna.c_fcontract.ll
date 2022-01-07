; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_curve25519.donna.c_fcontract.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_curve25519.donna.c_fcontract.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i32*)* @fcontract to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fcontract(i64* %0, i32* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [10 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
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
  store i64* %0, i64** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %32, %2
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 10
  br i1 %22, label %23, label %35

23:                                               ; preds = %20
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 %30
  store i32 %28, i32* %31, align 4
  br label %32

32:                                               ; preds = %23
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %20

35:                                               ; preds = %20
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %143, %35
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %37, 2
  br i1 %38, label %39, label %146

39:                                               ; preds = %36
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %118, %39
  %41 = load i32, i32* %5, align 4
  %42 = icmp slt i32 %41, 9
  br i1 %42, label %43, label %121

43:                                               ; preds = %40
  %44 = load i32, i32* %5, align 4
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %82

47:                                               ; preds = %43
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = ashr i32 %51, 31
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %9, align 4
  %58 = and i32 %56, %57
  %59 = ashr i32 %58, 25
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %10, align 4
  %66 = shl i32 %65, 25
  %67 = add nsw i32 %64, %66
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 %69
  store i32 %67, i32* %70, align 4
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %10, align 4
  %77 = sub nsw i32 %75, %76
  %78 = load i32, i32* %5, align 4
  %79 = add nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 %80
  store i32 %77, i32* %81, align 4
  br label %117

82:                                               ; preds = %43
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = ashr i32 %86, 31
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %11, align 4
  %93 = and i32 %91, %92
  %94 = ashr i32 %93, 26
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* %5, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %12, align 4
  %101 = shl i32 %100, 26
  %102 = add nsw i32 %99, %101
  %103 = load i32, i32* %5, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 %104
  store i32 %102, i32* %105, align 4
  %106 = load i32, i32* %5, align 4
  %107 = add nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %12, align 4
  %112 = sub nsw i32 %110, %111
  %113 = load i32, i32* %5, align 4
  %114 = add nsw i32 %113, 1
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 %115
  store i32 %112, i32* %116, align 4
  br label %117

117:                                              ; preds = %82, %47
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %5, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %5, align 4
  br label %40

121:                                              ; preds = %40
  %122 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 9
  %123 = load i32, i32* %122, align 4
  %124 = ashr i32 %123, 31
  store i32 %124, i32* %13, align 4
  %125 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 9
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %13, align 4
  %128 = and i32 %126, %127
  %129 = ashr i32 %128, 25
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %14, align 4
  %131 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 9
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %14, align 4
  %134 = shl i32 %133, 25
  %135 = add nsw i32 %132, %134
  %136 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 9
  store i32 %135, i32* %136, align 4
  %137 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 0
  %138 = load i32, i32* %137, align 16
  %139 = load i32, i32* %14, align 4
  %140 = mul nsw i32 %139, 19
  %141 = sub nsw i32 %138, %140
  %142 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 0
  store i32 %141, i32* %142, align 16
  br label %143

143:                                              ; preds = %121
  %144 = load i32, i32* %6, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %6, align 4
  br label %36

146:                                              ; preds = %36
  %147 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 0
  %148 = load i32, i32* %147, align 16
  %149 = ashr i32 %148, 31
  store i32 %149, i32* %15, align 4
  %150 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 0
  %151 = load i32, i32* %150, align 16
  %152 = load i32, i32* %15, align 4
  %153 = and i32 %151, %152
  %154 = ashr i32 %153, 26
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %16, align 4
  %156 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 0
  %157 = load i32, i32* %156, align 16
  %158 = load i32, i32* %16, align 4
  %159 = shl i32 %158, 26
  %160 = add nsw i32 %157, %159
  %161 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 0
  store i32 %160, i32* %161, align 16
  %162 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 1
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* %16, align 4
  %165 = sub nsw i32 %163, %164
  %166 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 1
  store i32 %165, i32* %166, align 4
  store i32 0, i32* %6, align 4
  br label %167

167:                                              ; preds = %230, %146
  %168 = load i32, i32* %6, align 4
  %169 = icmp slt i32 %168, 2
  br i1 %169, label %170, label %233

170:                                              ; preds = %167
  store i32 0, i32* %5, align 4
  br label %171

171:                                              ; preds = %215, %170
  %172 = load i32, i32* %5, align 4
  %173 = icmp slt i32 %172, 9
  br i1 %173, label %174, label %218

174:                                              ; preds = %171
  %175 = load i32, i32* %5, align 4
  %176 = and i32 %175, 1
  %177 = icmp eq i32 %176, 1
  br i1 %177, label %178, label %196

178:                                              ; preds = %174
  %179 = load i32, i32* %5, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = ashr i32 %182, 25
  store i32 %183, i32* %17, align 4
  %184 = load i32, i32* %5, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = and i32 %187, 33554431
  store i32 %188, i32* %186, align 4
  %189 = load i32, i32* %17, align 4
  %190 = load i32, i32* %5, align 4
  %191 = add nsw i32 %190, 1
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = add nsw i32 %194, %189
  store i32 %195, i32* %193, align 4
  br label %214

196:                                              ; preds = %174
  %197 = load i32, i32* %5, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = ashr i32 %200, 26
  store i32 %201, i32* %18, align 4
  %202 = load i32, i32* %5, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = and i32 %205, 67108863
  store i32 %206, i32* %204, align 4
  %207 = load i32, i32* %18, align 4
  %208 = load i32, i32* %5, align 4
  %209 = add nsw i32 %208, 1
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = add nsw i32 %212, %207
  store i32 %213, i32* %211, align 4
  br label %214

214:                                              ; preds = %196, %178
  br label %215

215:                                              ; preds = %214
  %216 = load i32, i32* %5, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %5, align 4
  br label %171

218:                                              ; preds = %171
  %219 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 9
  %220 = load i32, i32* %219, align 4
  %221 = ashr i32 %220, 25
  store i32 %221, i32* %19, align 4
  %222 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 9
  %223 = load i32, i32* %222, align 4
  %224 = and i32 %223, 33554431
  store i32 %224, i32* %222, align 4
  %225 = load i32, i32* %19, align 4
  %226 = mul nsw i32 19, %225
  %227 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 0
  %228 = load i32, i32* %227, align 16
  %229 = add nsw i32 %228, %226
  store i32 %229, i32* %227, align 16
  br label %230

230:                                              ; preds = %218
  %231 = load i32, i32* %6, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %6, align 4
  br label %167

233:                                              ; preds = %167
  %234 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 0
  %235 = load i32, i32* %234, align 16
  %236 = call i32 @s32_gte(i32 %235, i32 67108845)
  store i32 %236, i32* %8, align 4
  store i32 1, i32* %5, align 4
  br label %237

237:                                              ; preds = %261, %233
  %238 = load i32, i32* %5, align 4
  %239 = icmp slt i32 %238, 10
  br i1 %239, label %240, label %264

240:                                              ; preds = %237
  %241 = load i32, i32* %5, align 4
  %242 = and i32 %241, 1
  %243 = icmp eq i32 %242, 1
  br i1 %243, label %244, label %252

244:                                              ; preds = %240
  %245 = load i32, i32* %5, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 %246
  %248 = load i32, i32* %247, align 4
  %249 = call i32 @s32_eq(i32 %248, i32 33554431)
  %250 = load i32, i32* %8, align 4
  %251 = and i32 %250, %249
  store i32 %251, i32* %8, align 4
  br label %260

252:                                              ; preds = %240
  %253 = load i32, i32* %5, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 %254
  %256 = load i32, i32* %255, align 4
  %257 = call i32 @s32_eq(i32 %256, i32 67108863)
  %258 = load i32, i32* %8, align 4
  %259 = and i32 %258, %257
  store i32 %259, i32* %8, align 4
  br label %260

260:                                              ; preds = %252, %244
  br label %261

261:                                              ; preds = %260
  %262 = load i32, i32* %5, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %5, align 4
  br label %237

264:                                              ; preds = %237
  %265 = load i32, i32* %8, align 4
  %266 = and i32 %265, 67108845
  %267 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 0
  %268 = load i32, i32* %267, align 16
  %269 = sub nsw i32 %268, %266
  store i32 %269, i32* %267, align 16
  store i32 1, i32* %5, align 4
  br label %270

270:                                              ; preds = %294, %264
  %271 = load i32, i32* %5, align 4
  %272 = icmp slt i32 %271, 10
  br i1 %272, label %273, label %297

273:                                              ; preds = %270
  %274 = load i32, i32* %5, align 4
  %275 = and i32 %274, 1
  %276 = icmp eq i32 %275, 1
  br i1 %276, label %277, label %285

277:                                              ; preds = %273
  %278 = load i32, i32* %8, align 4
  %279 = and i32 %278, 33554431
  %280 = load i32, i32* %5, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 %281
  %283 = load i32, i32* %282, align 4
  %284 = sub nsw i32 %283, %279
  store i32 %284, i32* %282, align 4
  br label %293

285:                                              ; preds = %273
  %286 = load i32, i32* %8, align 4
  %287 = and i32 %286, 67108863
  %288 = load i32, i32* %5, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 %289
  %291 = load i32, i32* %290, align 4
  %292 = sub nsw i32 %291, %287
  store i32 %292, i32* %290, align 4
  br label %293

293:                                              ; preds = %285, %277
  br label %294

294:                                              ; preds = %293
  %295 = load i32, i32* %5, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %5, align 4
  br label %270

297:                                              ; preds = %270
  %298 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 1
  %299 = load i32, i32* %298, align 4
  %300 = shl i32 %299, 2
  store i32 %300, i32* %298, align 4
  %301 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 2
  %302 = load i32, i32* %301, align 8
  %303 = shl i32 %302, 3
  store i32 %303, i32* %301, align 8
  %304 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 3
  %305 = load i32, i32* %304, align 4
  %306 = shl i32 %305, 5
  store i32 %306, i32* %304, align 4
  %307 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 4
  %308 = load i32, i32* %307, align 16
  %309 = shl i32 %308, 6
  store i32 %309, i32* %307, align 16
  %310 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 6
  %311 = load i32, i32* %310, align 8
  %312 = shl i32 %311, 1
  store i32 %312, i32* %310, align 8
  %313 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 7
  %314 = load i32, i32* %313, align 4
  %315 = shl i32 %314, 3
  store i32 %315, i32* %313, align 4
  %316 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 8
  %317 = load i32, i32* %316, align 16
  %318 = shl i32 %317, 4
  store i32 %318, i32* %316, align 16
  %319 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 9
  %320 = load i32, i32* %319, align 4
  %321 = shl i32 %320, 6
  store i32 %321, i32* %319, align 4
  %322 = load i64*, i64** %3, align 8
  %323 = getelementptr inbounds i64, i64* %322, i64 0
  store i64 0, i64* %323, align 8
  %324 = load i64*, i64** %3, align 8
  %325 = getelementptr inbounds i64, i64* %324, i64 16
  store i64 0, i64* %325, align 8
  %326 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 0
  %327 = load i32, i32* %326, align 16
  %328 = and i32 %327, 255
  %329 = sext i32 %328 to i64
  %330 = load i64*, i64** %3, align 8
  %331 = getelementptr inbounds i64, i64* %330, i64 0
  %332 = load i64, i64* %331, align 8
  %333 = or i64 %332, %329
  store i64 %333, i64* %331, align 8
  %334 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 0
  %335 = load i32, i32* %334, align 16
  %336 = ashr i32 %335, 8
  %337 = and i32 %336, 255
  %338 = sext i32 %337 to i64
  %339 = load i64*, i64** %3, align 8
  %340 = getelementptr inbounds i64, i64* %339, i64 1
  store i64 %338, i64* %340, align 8
  %341 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 0
  %342 = load i32, i32* %341, align 16
  %343 = ashr i32 %342, 16
  %344 = and i32 %343, 255
  %345 = sext i32 %344 to i64
  %346 = load i64*, i64** %3, align 8
  %347 = getelementptr inbounds i64, i64* %346, i64 2
  store i64 %345, i64* %347, align 8
  %348 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 0
  %349 = load i32, i32* %348, align 16
  %350 = ashr i32 %349, 24
  %351 = and i32 %350, 255
  %352 = sext i32 %351 to i64
  %353 = load i64*, i64** %3, align 8
  %354 = getelementptr inbounds i64, i64* %353, i64 3
  store i64 %352, i64* %354, align 8
  %355 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 1
  %356 = load i32, i32* %355, align 4
  %357 = and i32 %356, 255
  %358 = sext i32 %357 to i64
  %359 = load i64*, i64** %3, align 8
  %360 = getelementptr inbounds i64, i64* %359, i64 3
  %361 = load i64, i64* %360, align 8
  %362 = or i64 %361, %358
  store i64 %362, i64* %360, align 8
  %363 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 1
  %364 = load i32, i32* %363, align 4
  %365 = ashr i32 %364, 8
  %366 = and i32 %365, 255
  %367 = sext i32 %366 to i64
  %368 = load i64*, i64** %3, align 8
  %369 = getelementptr inbounds i64, i64* %368, i64 4
  store i64 %367, i64* %369, align 8
  %370 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 1
  %371 = load i32, i32* %370, align 4
  %372 = ashr i32 %371, 16
  %373 = and i32 %372, 255
  %374 = sext i32 %373 to i64
  %375 = load i64*, i64** %3, align 8
  %376 = getelementptr inbounds i64, i64* %375, i64 5
  store i64 %374, i64* %376, align 8
  %377 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 1
  %378 = load i32, i32* %377, align 4
  %379 = ashr i32 %378, 24
  %380 = and i32 %379, 255
  %381 = sext i32 %380 to i64
  %382 = load i64*, i64** %3, align 8
  %383 = getelementptr inbounds i64, i64* %382, i64 6
  store i64 %381, i64* %383, align 8
  %384 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 2
  %385 = load i32, i32* %384, align 8
  %386 = and i32 %385, 255
  %387 = sext i32 %386 to i64
  %388 = load i64*, i64** %3, align 8
  %389 = getelementptr inbounds i64, i64* %388, i64 6
  %390 = load i64, i64* %389, align 8
  %391 = or i64 %390, %387
  store i64 %391, i64* %389, align 8
  %392 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 2
  %393 = load i32, i32* %392, align 8
  %394 = ashr i32 %393, 8
  %395 = and i32 %394, 255
  %396 = sext i32 %395 to i64
  %397 = load i64*, i64** %3, align 8
  %398 = getelementptr inbounds i64, i64* %397, i64 7
  store i64 %396, i64* %398, align 8
  %399 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 2
  %400 = load i32, i32* %399, align 8
  %401 = ashr i32 %400, 16
  %402 = and i32 %401, 255
  %403 = sext i32 %402 to i64
  %404 = load i64*, i64** %3, align 8
  %405 = getelementptr inbounds i64, i64* %404, i64 8
  store i64 %403, i64* %405, align 8
  %406 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 2
  %407 = load i32, i32* %406, align 8
  %408 = ashr i32 %407, 24
  %409 = and i32 %408, 255
  %410 = sext i32 %409 to i64
  %411 = load i64*, i64** %3, align 8
  %412 = getelementptr inbounds i64, i64* %411, i64 9
  store i64 %410, i64* %412, align 8
  %413 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 3
  %414 = load i32, i32* %413, align 4
  %415 = and i32 %414, 255
  %416 = sext i32 %415 to i64
  %417 = load i64*, i64** %3, align 8
  %418 = getelementptr inbounds i64, i64* %417, i64 9
  %419 = load i64, i64* %418, align 8
  %420 = or i64 %419, %416
  store i64 %420, i64* %418, align 8
  %421 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 3
  %422 = load i32, i32* %421, align 4
  %423 = ashr i32 %422, 8
  %424 = and i32 %423, 255
  %425 = sext i32 %424 to i64
  %426 = load i64*, i64** %3, align 8
  %427 = getelementptr inbounds i64, i64* %426, i64 10
  store i64 %425, i64* %427, align 8
  %428 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 3
  %429 = load i32, i32* %428, align 4
  %430 = ashr i32 %429, 16
  %431 = and i32 %430, 255
  %432 = sext i32 %431 to i64
  %433 = load i64*, i64** %3, align 8
  %434 = getelementptr inbounds i64, i64* %433, i64 11
  store i64 %432, i64* %434, align 8
  %435 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 3
  %436 = load i32, i32* %435, align 4
  %437 = ashr i32 %436, 24
  %438 = and i32 %437, 255
  %439 = sext i32 %438 to i64
  %440 = load i64*, i64** %3, align 8
  %441 = getelementptr inbounds i64, i64* %440, i64 12
  store i64 %439, i64* %441, align 8
  %442 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 4
  %443 = load i32, i32* %442, align 16
  %444 = and i32 %443, 255
  %445 = sext i32 %444 to i64
  %446 = load i64*, i64** %3, align 8
  %447 = getelementptr inbounds i64, i64* %446, i64 12
  %448 = load i64, i64* %447, align 8
  %449 = or i64 %448, %445
  store i64 %449, i64* %447, align 8
  %450 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 4
  %451 = load i32, i32* %450, align 16
  %452 = ashr i32 %451, 8
  %453 = and i32 %452, 255
  %454 = sext i32 %453 to i64
  %455 = load i64*, i64** %3, align 8
  %456 = getelementptr inbounds i64, i64* %455, i64 13
  store i64 %454, i64* %456, align 8
  %457 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 4
  %458 = load i32, i32* %457, align 16
  %459 = ashr i32 %458, 16
  %460 = and i32 %459, 255
  %461 = sext i32 %460 to i64
  %462 = load i64*, i64** %3, align 8
  %463 = getelementptr inbounds i64, i64* %462, i64 14
  store i64 %461, i64* %463, align 8
  %464 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 4
  %465 = load i32, i32* %464, align 16
  %466 = ashr i32 %465, 24
  %467 = and i32 %466, 255
  %468 = sext i32 %467 to i64
  %469 = load i64*, i64** %3, align 8
  %470 = getelementptr inbounds i64, i64* %469, i64 15
  store i64 %468, i64* %470, align 8
  %471 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 5
  %472 = load i32, i32* %471, align 4
  %473 = and i32 %472, 255
  %474 = sext i32 %473 to i64
  %475 = load i64*, i64** %3, align 8
  %476 = getelementptr inbounds i64, i64* %475, i64 16
  %477 = load i64, i64* %476, align 8
  %478 = or i64 %477, %474
  store i64 %478, i64* %476, align 8
  %479 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 5
  %480 = load i32, i32* %479, align 4
  %481 = ashr i32 %480, 8
  %482 = and i32 %481, 255
  %483 = sext i32 %482 to i64
  %484 = load i64*, i64** %3, align 8
  %485 = getelementptr inbounds i64, i64* %484, i64 17
  store i64 %483, i64* %485, align 8
  %486 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 5
  %487 = load i32, i32* %486, align 4
  %488 = ashr i32 %487, 16
  %489 = and i32 %488, 255
  %490 = sext i32 %489 to i64
  %491 = load i64*, i64** %3, align 8
  %492 = getelementptr inbounds i64, i64* %491, i64 18
  store i64 %490, i64* %492, align 8
  %493 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 5
  %494 = load i32, i32* %493, align 4
  %495 = ashr i32 %494, 24
  %496 = and i32 %495, 255
  %497 = sext i32 %496 to i64
  %498 = load i64*, i64** %3, align 8
  %499 = getelementptr inbounds i64, i64* %498, i64 19
  store i64 %497, i64* %499, align 8
  %500 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 6
  %501 = load i32, i32* %500, align 8
  %502 = and i32 %501, 255
  %503 = sext i32 %502 to i64
  %504 = load i64*, i64** %3, align 8
  %505 = getelementptr inbounds i64, i64* %504, i64 19
  %506 = load i64, i64* %505, align 8
  %507 = or i64 %506, %503
  store i64 %507, i64* %505, align 8
  %508 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 6
  %509 = load i32, i32* %508, align 8
  %510 = ashr i32 %509, 8
  %511 = and i32 %510, 255
  %512 = sext i32 %511 to i64
  %513 = load i64*, i64** %3, align 8
  %514 = getelementptr inbounds i64, i64* %513, i64 20
  store i64 %512, i64* %514, align 8
  %515 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 6
  %516 = load i32, i32* %515, align 8
  %517 = ashr i32 %516, 16
  %518 = and i32 %517, 255
  %519 = sext i32 %518 to i64
  %520 = load i64*, i64** %3, align 8
  %521 = getelementptr inbounds i64, i64* %520, i64 21
  store i64 %519, i64* %521, align 8
  %522 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 6
  %523 = load i32, i32* %522, align 8
  %524 = ashr i32 %523, 24
  %525 = and i32 %524, 255
  %526 = sext i32 %525 to i64
  %527 = load i64*, i64** %3, align 8
  %528 = getelementptr inbounds i64, i64* %527, i64 22
  store i64 %526, i64* %528, align 8
  %529 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 7
  %530 = load i32, i32* %529, align 4
  %531 = and i32 %530, 255
  %532 = sext i32 %531 to i64
  %533 = load i64*, i64** %3, align 8
  %534 = getelementptr inbounds i64, i64* %533, i64 22
  %535 = load i64, i64* %534, align 8
  %536 = or i64 %535, %532
  store i64 %536, i64* %534, align 8
  %537 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 7
  %538 = load i32, i32* %537, align 4
  %539 = ashr i32 %538, 8
  %540 = and i32 %539, 255
  %541 = sext i32 %540 to i64
  %542 = load i64*, i64** %3, align 8
  %543 = getelementptr inbounds i64, i64* %542, i64 23
  store i64 %541, i64* %543, align 8
  %544 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 7
  %545 = load i32, i32* %544, align 4
  %546 = ashr i32 %545, 16
  %547 = and i32 %546, 255
  %548 = sext i32 %547 to i64
  %549 = load i64*, i64** %3, align 8
  %550 = getelementptr inbounds i64, i64* %549, i64 24
  store i64 %548, i64* %550, align 8
  %551 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 7
  %552 = load i32, i32* %551, align 4
  %553 = ashr i32 %552, 24
  %554 = and i32 %553, 255
  %555 = sext i32 %554 to i64
  %556 = load i64*, i64** %3, align 8
  %557 = getelementptr inbounds i64, i64* %556, i64 25
  store i64 %555, i64* %557, align 8
  %558 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 8
  %559 = load i32, i32* %558, align 16
  %560 = and i32 %559, 255
  %561 = sext i32 %560 to i64
  %562 = load i64*, i64** %3, align 8
  %563 = getelementptr inbounds i64, i64* %562, i64 25
  %564 = load i64, i64* %563, align 8
  %565 = or i64 %564, %561
  store i64 %565, i64* %563, align 8
  %566 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 8
  %567 = load i32, i32* %566, align 16
  %568 = ashr i32 %567, 8
  %569 = and i32 %568, 255
  %570 = sext i32 %569 to i64
  %571 = load i64*, i64** %3, align 8
  %572 = getelementptr inbounds i64, i64* %571, i64 26
  store i64 %570, i64* %572, align 8
  %573 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 8
  %574 = load i32, i32* %573, align 16
  %575 = ashr i32 %574, 16
  %576 = and i32 %575, 255
  %577 = sext i32 %576 to i64
  %578 = load i64*, i64** %3, align 8
  %579 = getelementptr inbounds i64, i64* %578, i64 27
  store i64 %577, i64* %579, align 8
  %580 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 8
  %581 = load i32, i32* %580, align 16
  %582 = ashr i32 %581, 24
  %583 = and i32 %582, 255
  %584 = sext i32 %583 to i64
  %585 = load i64*, i64** %3, align 8
  %586 = getelementptr inbounds i64, i64* %585, i64 28
  store i64 %584, i64* %586, align 8
  %587 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 9
  %588 = load i32, i32* %587, align 4
  %589 = and i32 %588, 255
  %590 = sext i32 %589 to i64
  %591 = load i64*, i64** %3, align 8
  %592 = getelementptr inbounds i64, i64* %591, i64 28
  %593 = load i64, i64* %592, align 8
  %594 = or i64 %593, %590
  store i64 %594, i64* %592, align 8
  %595 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 9
  %596 = load i32, i32* %595, align 4
  %597 = ashr i32 %596, 8
  %598 = and i32 %597, 255
  %599 = sext i32 %598 to i64
  %600 = load i64*, i64** %3, align 8
  %601 = getelementptr inbounds i64, i64* %600, i64 29
  store i64 %599, i64* %601, align 8
  %602 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 9
  %603 = load i32, i32* %602, align 4
  %604 = ashr i32 %603, 16
  %605 = and i32 %604, 255
  %606 = sext i32 %605 to i64
  %607 = load i64*, i64** %3, align 8
  %608 = getelementptr inbounds i64, i64* %607, i64 30
  store i64 %606, i64* %608, align 8
  %609 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 9
  %610 = load i32, i32* %609, align 4
  %611 = ashr i32 %610, 24
  %612 = and i32 %611, 255
  %613 = sext i32 %612 to i64
  %614 = load i64*, i64** %3, align 8
  %615 = getelementptr inbounds i64, i64* %614, i64 31
  store i64 %613, i64* %615, align 8
  ret void
}

declare dso_local i32 @s32_gte(i32, i32) #1

declare dso_local i32 @s32_eq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
