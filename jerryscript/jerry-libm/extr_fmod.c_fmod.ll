; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-libm/extr_fmod.c_fmod.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-libm/extr_fmod.c_fmod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { double, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@Zero = common dso_local global double* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @fmod(double %0, double %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_4__, align 8
  store double %0, double* %4, align 8
  store double %1, double* %5, align 8
  %18 = load double, double* %4, align 8
  %19 = call i32 @__HI(double %18)
  store i32 %19, i32* %7, align 4
  %20 = load double, double* %4, align 8
  %21 = call i32 @__LO(double %20)
  store i32 %21, i32* %14, align 4
  %22 = load double, double* %5, align 8
  %23 = call i32 @__HI(double %22)
  store i32 %23, i32* %8, align 4
  %24 = load double, double* %5, align 8
  %25 = call i32 @__LO(double %24)
  store i32 %25, i32* %15, align 4
  %26 = load i32, i32* %7, align 4
  %27 = and i32 %26, -2147483648
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* %7, align 4
  %30 = xor i32 %29, %28
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = and i32 %31, 2147483647
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %15, align 4
  %35 = or i32 %33, %34
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %49, label %37

37:                                               ; preds = %2
  %38 = load i32, i32* %7, align 4
  %39 = icmp sge i32 %38, 2146435072
  br i1 %39, label %49, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %15, align 4
  %43 = load i32, i32* %15, align 4
  %44 = sub i32 0, %43
  %45 = or i32 %42, %44
  %46 = lshr i32 %45, 31
  %47 = or i32 %41, %46
  %48 = icmp ugt i32 %47, 2146435072
  br i1 %48, label %49, label %57

49:                                               ; preds = %40, %37, %2
  %50 = load double, double* %4, align 8
  %51 = load double, double* %5, align 8
  %52 = fmul double %50, %51
  %53 = load double, double* %4, align 8
  %54 = load double, double* %5, align 8
  %55 = fmul double %53, %54
  %56 = fdiv double %52, %55
  store double %56, double* %3, align 8
  br label %386

57:                                               ; preds = %40
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp sle i32 %58, %59
  br i1 %60, label %61, label %83

61:                                               ; preds = %57
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* %15, align 4
  %68 = icmp ult i32 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %65, %61
  %70 = load double, double* %4, align 8
  store double %70, double* %3, align 8
  br label %386

71:                                               ; preds = %65
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* %15, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %71
  %76 = load double*, double** @Zero, align 8
  %77 = load i32, i32* %12, align 4
  %78 = lshr i32 %77, 31
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds double, double* %76, i64 %79
  %81 = load double, double* %80, align 8
  store double %81, double* %3, align 8
  br label %386

82:                                               ; preds = %71
  br label %83

83:                                               ; preds = %82, %57
  %84 = load i32, i32* %7, align 4
  %85 = icmp slt i32 %84, 1048576
  br i1 %85, label %86, label %115

86:                                               ; preds = %83
  %87 = load i32, i32* %7, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %101

89:                                               ; preds = %86
  store i32 -1043, i32* %10, align 4
  %90 = load i32, i32* %14, align 4
  store i32 %90, i32* %13, align 4
  br label %91

91:                                               ; preds = %97, %89
  %92 = load i32, i32* %13, align 4
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %91
  %95 = load i32, i32* %10, align 4
  %96 = sub nsw i32 %95, 1
  store i32 %96, i32* %10, align 4
  br label %97

97:                                               ; preds = %94
  %98 = load i32, i32* %13, align 4
  %99 = shl i32 %98, 1
  store i32 %99, i32* %13, align 4
  br label %91

100:                                              ; preds = %91
  br label %114

101:                                              ; preds = %86
  store i32 -1022, i32* %10, align 4
  %102 = load i32, i32* %7, align 4
  %103 = shl i32 %102, 11
  store i32 %103, i32* %13, align 4
  br label %104

104:                                              ; preds = %110, %101
  %105 = load i32, i32* %13, align 4
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %104
  %108 = load i32, i32* %10, align 4
  %109 = sub nsw i32 %108, 1
  store i32 %109, i32* %10, align 4
  br label %110

110:                                              ; preds = %107
  %111 = load i32, i32* %13, align 4
  %112 = shl i32 %111, 1
  store i32 %112, i32* %13, align 4
  br label %104

113:                                              ; preds = %104
  br label %114

114:                                              ; preds = %113, %100
  br label %119

115:                                              ; preds = %83
  %116 = load i32, i32* %7, align 4
  %117 = ashr i32 %116, 20
  %118 = sub nsw i32 %117, 1023
  store i32 %118, i32* %10, align 4
  br label %119

119:                                              ; preds = %115, %114
  %120 = load i32, i32* %8, align 4
  %121 = icmp slt i32 %120, 1048576
  br i1 %121, label %122, label %151

122:                                              ; preds = %119
  %123 = load i32, i32* %8, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %137

125:                                              ; preds = %122
  store i32 -1043, i32* %11, align 4
  %126 = load i32, i32* %15, align 4
  store i32 %126, i32* %13, align 4
  br label %127

127:                                              ; preds = %133, %125
  %128 = load i32, i32* %13, align 4
  %129 = icmp sgt i32 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %127
  %131 = load i32, i32* %11, align 4
  %132 = sub nsw i32 %131, 1
  store i32 %132, i32* %11, align 4
  br label %133

133:                                              ; preds = %130
  %134 = load i32, i32* %13, align 4
  %135 = shl i32 %134, 1
  store i32 %135, i32* %13, align 4
  br label %127

136:                                              ; preds = %127
  br label %150

137:                                              ; preds = %122
  store i32 -1022, i32* %11, align 4
  %138 = load i32, i32* %8, align 4
  %139 = shl i32 %138, 11
  store i32 %139, i32* %13, align 4
  br label %140

140:                                              ; preds = %146, %137
  %141 = load i32, i32* %13, align 4
  %142 = icmp sgt i32 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %140
  %144 = load i32, i32* %11, align 4
  %145 = sub nsw i32 %144, 1
  store i32 %145, i32* %11, align 4
  br label %146

146:                                              ; preds = %143
  %147 = load i32, i32* %13, align 4
  %148 = shl i32 %147, 1
  store i32 %148, i32* %13, align 4
  br label %140

149:                                              ; preds = %140
  br label %150

150:                                              ; preds = %149, %136
  br label %155

151:                                              ; preds = %119
  %152 = load i32, i32* %8, align 4
  %153 = ashr i32 %152, 20
  %154 = sub nsw i32 %153, 1023
  store i32 %154, i32* %11, align 4
  br label %155

155:                                              ; preds = %151, %150
  %156 = load i32, i32* %10, align 4
  %157 = icmp sge i32 %156, -1022
  br i1 %157, label %158, label %162

158:                                              ; preds = %155
  %159 = load i32, i32* %7, align 4
  %160 = and i32 1048575, %159
  %161 = or i32 1048576, %160
  store i32 %161, i32* %7, align 4
  br label %185

162:                                              ; preds = %155
  %163 = load i32, i32* %10, align 4
  %164 = sub nsw i32 -1022, %163
  store i32 %164, i32* %6, align 4
  %165 = load i32, i32* %6, align 4
  %166 = icmp sle i32 %165, 31
  br i1 %166, label %167, label %179

167:                                              ; preds = %162
  %168 = load i32, i32* %7, align 4
  %169 = load i32, i32* %6, align 4
  %170 = shl i32 %168, %169
  %171 = load i32, i32* %14, align 4
  %172 = load i32, i32* %6, align 4
  %173 = sub nsw i32 32, %172
  %174 = lshr i32 %171, %173
  %175 = or i32 %170, %174
  store i32 %175, i32* %7, align 4
  %176 = load i32, i32* %6, align 4
  %177 = load i32, i32* %14, align 4
  %178 = shl i32 %177, %176
  store i32 %178, i32* %14, align 4
  br label %184

179:                                              ; preds = %162
  %180 = load i32, i32* %14, align 4
  %181 = load i32, i32* %6, align 4
  %182 = sub nsw i32 %181, 32
  %183 = shl i32 %180, %182
  store i32 %183, i32* %7, align 4
  store i32 0, i32* %14, align 4
  br label %184

184:                                              ; preds = %179, %167
  br label %185

185:                                              ; preds = %184, %158
  %186 = load i32, i32* %11, align 4
  %187 = icmp sge i32 %186, -1022
  br i1 %187, label %188, label %192

188:                                              ; preds = %185
  %189 = load i32, i32* %8, align 4
  %190 = and i32 1048575, %189
  %191 = or i32 1048576, %190
  store i32 %191, i32* %8, align 4
  br label %215

192:                                              ; preds = %185
  %193 = load i32, i32* %11, align 4
  %194 = sub nsw i32 -1022, %193
  store i32 %194, i32* %6, align 4
  %195 = load i32, i32* %6, align 4
  %196 = icmp sle i32 %195, 31
  br i1 %196, label %197, label %209

197:                                              ; preds = %192
  %198 = load i32, i32* %8, align 4
  %199 = load i32, i32* %6, align 4
  %200 = shl i32 %198, %199
  %201 = load i32, i32* %15, align 4
  %202 = load i32, i32* %6, align 4
  %203 = sub nsw i32 32, %202
  %204 = lshr i32 %201, %203
  %205 = or i32 %200, %204
  store i32 %205, i32* %8, align 4
  %206 = load i32, i32* %6, align 4
  %207 = load i32, i32* %15, align 4
  %208 = shl i32 %207, %206
  store i32 %208, i32* %15, align 4
  br label %214

209:                                              ; preds = %192
  %210 = load i32, i32* %15, align 4
  %211 = load i32, i32* %6, align 4
  %212 = sub nsw i32 %211, 32
  %213 = shl i32 %210, %212
  store i32 %213, i32* %8, align 4
  store i32 0, i32* %15, align 4
  br label %214

214:                                              ; preds = %209, %197
  br label %215

215:                                              ; preds = %214, %188
  %216 = load i32, i32* %10, align 4
  %217 = load i32, i32* %11, align 4
  %218 = sub nsw i32 %216, %217
  store i32 %218, i32* %6, align 4
  br label %219

219:                                              ; preds = %271, %215
  %220 = load i32, i32* %6, align 4
  %221 = add nsw i32 %220, -1
  store i32 %221, i32* %6, align 4
  %222 = icmp ne i32 %220, 0
  br i1 %222, label %223, label %272

223:                                              ; preds = %219
  %224 = load i32, i32* %7, align 4
  %225 = load i32, i32* %8, align 4
  %226 = sub nsw i32 %224, %225
  store i32 %226, i32* %9, align 4
  %227 = load i32, i32* %14, align 4
  %228 = load i32, i32* %15, align 4
  %229 = sub i32 %227, %228
  store i32 %229, i32* %16, align 4
  %230 = load i32, i32* %14, align 4
  %231 = load i32, i32* %15, align 4
  %232 = icmp ult i32 %230, %231
  br i1 %232, label %233, label %236

233:                                              ; preds = %223
  %234 = load i32, i32* %9, align 4
  %235 = sub nsw i32 %234, 1
  store i32 %235, i32* %9, align 4
  br label %236

236:                                              ; preds = %233, %223
  %237 = load i32, i32* %9, align 4
  %238 = icmp slt i32 %237, 0
  br i1 %238, label %239, label %249

239:                                              ; preds = %236
  %240 = load i32, i32* %7, align 4
  %241 = load i32, i32* %7, align 4
  %242 = add nsw i32 %240, %241
  %243 = load i32, i32* %14, align 4
  %244 = lshr i32 %243, 31
  %245 = add i32 %242, %244
  store i32 %245, i32* %7, align 4
  %246 = load i32, i32* %14, align 4
  %247 = load i32, i32* %14, align 4
  %248 = add i32 %246, %247
  store i32 %248, i32* %14, align 4
  br label %271

249:                                              ; preds = %236
  %250 = load i32, i32* %9, align 4
  %251 = load i32, i32* %16, align 4
  %252 = or i32 %250, %251
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %261

254:                                              ; preds = %249
  %255 = load double*, double** @Zero, align 8
  %256 = load i32, i32* %12, align 4
  %257 = lshr i32 %256, 31
  %258 = zext i32 %257 to i64
  %259 = getelementptr inbounds double, double* %255, i64 %258
  %260 = load double, double* %259, align 8
  store double %260, double* %3, align 8
  br label %386

261:                                              ; preds = %249
  %262 = load i32, i32* %9, align 4
  %263 = load i32, i32* %9, align 4
  %264 = add nsw i32 %262, %263
  %265 = load i32, i32* %16, align 4
  %266 = lshr i32 %265, 31
  %267 = add i32 %264, %266
  store i32 %267, i32* %7, align 4
  %268 = load i32, i32* %16, align 4
  %269 = load i32, i32* %16, align 4
  %270 = add i32 %268, %269
  store i32 %270, i32* %14, align 4
  br label %271

271:                                              ; preds = %261, %239
  br label %219

272:                                              ; preds = %219
  %273 = load i32, i32* %7, align 4
  %274 = load i32, i32* %8, align 4
  %275 = sub nsw i32 %273, %274
  store i32 %275, i32* %9, align 4
  %276 = load i32, i32* %14, align 4
  %277 = load i32, i32* %15, align 4
  %278 = sub i32 %276, %277
  store i32 %278, i32* %16, align 4
  %279 = load i32, i32* %14, align 4
  %280 = load i32, i32* %15, align 4
  %281 = icmp ult i32 %279, %280
  br i1 %281, label %282, label %285

282:                                              ; preds = %272
  %283 = load i32, i32* %9, align 4
  %284 = sub nsw i32 %283, 1
  store i32 %284, i32* %9, align 4
  br label %285

285:                                              ; preds = %282, %272
  %286 = load i32, i32* %9, align 4
  %287 = icmp sge i32 %286, 0
  br i1 %287, label %288, label %291

288:                                              ; preds = %285
  %289 = load i32, i32* %9, align 4
  store i32 %289, i32* %7, align 4
  %290 = load i32, i32* %16, align 4
  store i32 %290, i32* %14, align 4
  br label %291

291:                                              ; preds = %288, %285
  %292 = load i32, i32* %7, align 4
  %293 = load i32, i32* %14, align 4
  %294 = or i32 %292, %293
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %296, label %303

296:                                              ; preds = %291
  %297 = load double*, double** @Zero, align 8
  %298 = load i32, i32* %12, align 4
  %299 = lshr i32 %298, 31
  %300 = zext i32 %299 to i64
  %301 = getelementptr inbounds double, double* %297, i64 %300
  %302 = load double, double* %301, align 8
  store double %302, double* %3, align 8
  br label %386

303:                                              ; preds = %291
  br label %304

304:                                              ; preds = %307, %303
  %305 = load i32, i32* %7, align 4
  %306 = icmp slt i32 %305, 1048576
  br i1 %306, label %307, label %319

307:                                              ; preds = %304
  %308 = load i32, i32* %7, align 4
  %309 = load i32, i32* %7, align 4
  %310 = add nsw i32 %308, %309
  %311 = load i32, i32* %14, align 4
  %312 = lshr i32 %311, 31
  %313 = add i32 %310, %312
  store i32 %313, i32* %7, align 4
  %314 = load i32, i32* %14, align 4
  %315 = load i32, i32* %14, align 4
  %316 = add i32 %314, %315
  store i32 %316, i32* %14, align 4
  %317 = load i32, i32* %11, align 4
  %318 = sub nsw i32 %317, 1
  store i32 %318, i32* %11, align 4
  br label %304

319:                                              ; preds = %304
  %320 = load i32, i32* %11, align 4
  %321 = icmp sge i32 %320, -1022
  br i1 %321, label %322, label %337

322:                                              ; preds = %319
  %323 = load i32, i32* %7, align 4
  %324 = sub nsw i32 %323, 1048576
  %325 = load i32, i32* %11, align 4
  %326 = add nsw i32 %325, 1023
  %327 = shl i32 %326, 20
  %328 = or i32 %324, %327
  store i32 %328, i32* %7, align 4
  %329 = load i32, i32* %7, align 4
  %330 = load i32, i32* %12, align 4
  %331 = or i32 %329, %330
  %332 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %333 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %332, i32 0, i32 0
  store i32 %331, i32* %333, align 8
  %334 = load i32, i32* %14, align 4
  %335 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %336 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %335, i32 0, i32 1
  store i32 %334, i32* %336, align 4
  br label %383

337:                                              ; preds = %319
  %338 = load i32, i32* %11, align 4
  %339 = sub nsw i32 -1022, %338
  store i32 %339, i32* %6, align 4
  %340 = load i32, i32* %6, align 4
  %341 = icmp sle i32 %340, 20
  br i1 %341, label %342, label %354

342:                                              ; preds = %337
  %343 = load i32, i32* %14, align 4
  %344 = load i32, i32* %6, align 4
  %345 = lshr i32 %343, %344
  %346 = load i32, i32* %7, align 4
  %347 = load i32, i32* %6, align 4
  %348 = sub nsw i32 32, %347
  %349 = shl i32 %346, %348
  %350 = or i32 %345, %349
  store i32 %350, i32* %14, align 4
  %351 = load i32, i32* %6, align 4
  %352 = load i32, i32* %7, align 4
  %353 = ashr i32 %352, %351
  store i32 %353, i32* %7, align 4
  br label %374

354:                                              ; preds = %337
  %355 = load i32, i32* %6, align 4
  %356 = icmp sle i32 %355, 31
  br i1 %356, label %357, label %367

357:                                              ; preds = %354
  %358 = load i32, i32* %7, align 4
  %359 = load i32, i32* %6, align 4
  %360 = sub nsw i32 32, %359
  %361 = shl i32 %358, %360
  %362 = load i32, i32* %14, align 4
  %363 = load i32, i32* %6, align 4
  %364 = lshr i32 %362, %363
  %365 = or i32 %361, %364
  store i32 %365, i32* %14, align 4
  %366 = load i32, i32* %12, align 4
  store i32 %366, i32* %7, align 4
  br label %373

367:                                              ; preds = %354
  %368 = load i32, i32* %7, align 4
  %369 = load i32, i32* %6, align 4
  %370 = sub nsw i32 %369, 32
  %371 = ashr i32 %368, %370
  store i32 %371, i32* %14, align 4
  %372 = load i32, i32* %12, align 4
  store i32 %372, i32* %7, align 4
  br label %373

373:                                              ; preds = %367, %357
  br label %374

374:                                              ; preds = %373, %342
  %375 = load i32, i32* %7, align 4
  %376 = load i32, i32* %12, align 4
  %377 = or i32 %375, %376
  %378 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %379 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %378, i32 0, i32 0
  store i32 %377, i32* %379, align 8
  %380 = load i32, i32* %14, align 4
  %381 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %382 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %381, i32 0, i32 1
  store i32 %380, i32* %382, align 4
  br label %383

383:                                              ; preds = %374, %322
  %384 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %385 = load double, double* %384, align 8
  store double %385, double* %3, align 8
  br label %386

386:                                              ; preds = %383, %296, %254, %75, %69, %49
  %387 = load double, double* %3, align 8
  ret double %387
}

declare dso_local i32 @__HI(double) #1

declare dso_local i32 @__LO(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
