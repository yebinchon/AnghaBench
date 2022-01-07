; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-libm/extr_trig.c___ieee754_rem_pio2.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-libm/extr_trig.c___ieee754_rem_pio2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { double, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@pio2_1 = common dso_local global double 0.000000e+00, align 8
@pio2_1t = common dso_local global double 0.000000e+00, align 8
@pio2_2 = common dso_local global double 0.000000e+00, align 8
@pio2_2t = common dso_local global double 0.000000e+00, align 8
@invpio2 = common dso_local global double 0.000000e+00, align 8
@half = common dso_local global i64 0, align 8
@npio2_hw = common dso_local global i32* null, align 8
@pio2_3 = common dso_local global double 0.000000e+00, align 8
@pio2_3t = common dso_local global double 0.000000e+00, align 8
@two24 = common dso_local global double 0.000000e+00, align 8
@zero = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (double, double*)* @__ieee754_rem_pio2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ieee754_rem_pio2(double %0, double* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca double*, align 8
  %6 = alloca %struct.TYPE_4__, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca [3 x double], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store double %0, double* %4, align 8
  store double* %1, double** %5, align 8
  %19 = load double, double* %4, align 8
  %20 = call i32 @__HI(double %19)
  store i32 %20, i32* %18, align 4
  %21 = load i32, i32* %18, align 4
  %22 = and i32 %21, 2147483647
  store i32 %22, i32* %17, align 4
  %23 = load i32, i32* %17, align 4
  %24 = icmp sle i32 %23, 1072243195
  br i1 %24, label %25, label %31

25:                                               ; preds = %2
  %26 = load double, double* %4, align 8
  %27 = load double*, double** %5, align 8
  %28 = getelementptr inbounds double, double* %27, i64 0
  store double %26, double* %28, align 8
  %29 = load double*, double** %5, align 8
  %30 = getelementptr inbounds double, double* %29, i64 1
  store double 0.000000e+00, double* %30, align 8
  store i32 0, i32* %3, align 4
  br label %361

31:                                               ; preds = %2
  %32 = load i32, i32* %17, align 4
  %33 = icmp slt i32 %32, 1073928572
  br i1 %33, label %34, label %129

34:                                               ; preds = %31
  %35 = load i32, i32* %18, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %83

37:                                               ; preds = %34
  %38 = load double, double* %4, align 8
  %39 = load double, double* @pio2_1, align 8
  %40 = fsub double %38, %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  store double %40, double* %41, align 8
  %42 = load i32, i32* %17, align 4
  %43 = icmp ne i32 %42, 1073291771
  br i1 %43, label %44, label %61

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %46 = load double, double* %45, align 8
  %47 = load double, double* @pio2_1t, align 8
  %48 = fsub double %46, %47
  %49 = load double*, double** %5, align 8
  %50 = getelementptr inbounds double, double* %49, i64 0
  store double %48, double* %50, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %52 = load double, double* %51, align 8
  %53 = load double*, double** %5, align 8
  %54 = getelementptr inbounds double, double* %53, i64 0
  %55 = load double, double* %54, align 8
  %56 = fsub double %52, %55
  %57 = load double, double* @pio2_1t, align 8
  %58 = fsub double %56, %57
  %59 = load double*, double** %5, align 8
  %60 = getelementptr inbounds double, double* %59, i64 1
  store double %58, double* %60, align 8
  br label %82

61:                                               ; preds = %37
  %62 = load double, double* @pio2_2, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %64 = load double, double* %63, align 8
  %65 = fsub double %64, %62
  store double %65, double* %63, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %67 = load double, double* %66, align 8
  %68 = load double, double* @pio2_2t, align 8
  %69 = fsub double %67, %68
  %70 = load double*, double** %5, align 8
  %71 = getelementptr inbounds double, double* %70, i64 0
  store double %69, double* %71, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %73 = load double, double* %72, align 8
  %74 = load double*, double** %5, align 8
  %75 = getelementptr inbounds double, double* %74, i64 0
  %76 = load double, double* %75, align 8
  %77 = fsub double %73, %76
  %78 = load double, double* @pio2_2t, align 8
  %79 = fsub double %77, %78
  %80 = load double*, double** %5, align 8
  %81 = getelementptr inbounds double, double* %80, i64 1
  store double %79, double* %81, align 8
  br label %82

82:                                               ; preds = %61, %44
  store i32 1, i32* %3, align 4
  br label %361

83:                                               ; preds = %34
  %84 = load double, double* %4, align 8
  %85 = load double, double* @pio2_1, align 8
  %86 = fadd double %84, %85
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  store double %86, double* %87, align 8
  %88 = load i32, i32* %17, align 4
  %89 = icmp ne i32 %88, 1073291771
  br i1 %89, label %90, label %107

90:                                               ; preds = %83
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %92 = load double, double* %91, align 8
  %93 = load double, double* @pio2_1t, align 8
  %94 = fadd double %92, %93
  %95 = load double*, double** %5, align 8
  %96 = getelementptr inbounds double, double* %95, i64 0
  store double %94, double* %96, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %98 = load double, double* %97, align 8
  %99 = load double*, double** %5, align 8
  %100 = getelementptr inbounds double, double* %99, i64 0
  %101 = load double, double* %100, align 8
  %102 = fsub double %98, %101
  %103 = load double, double* @pio2_1t, align 8
  %104 = fadd double %102, %103
  %105 = load double*, double** %5, align 8
  %106 = getelementptr inbounds double, double* %105, i64 1
  store double %104, double* %106, align 8
  br label %128

107:                                              ; preds = %83
  %108 = load double, double* @pio2_2, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %110 = load double, double* %109, align 8
  %111 = fadd double %110, %108
  store double %111, double* %109, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %113 = load double, double* %112, align 8
  %114 = load double, double* @pio2_2t, align 8
  %115 = fadd double %113, %114
  %116 = load double*, double** %5, align 8
  %117 = getelementptr inbounds double, double* %116, i64 0
  store double %115, double* %117, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %119 = load double, double* %118, align 8
  %120 = load double*, double** %5, align 8
  %121 = getelementptr inbounds double, double* %120, i64 0
  %122 = load double, double* %121, align 8
  %123 = fsub double %119, %122
  %124 = load double, double* @pio2_2t, align 8
  %125 = fadd double %123, %124
  %126 = load double*, double** %5, align 8
  %127 = getelementptr inbounds double, double* %126, i64 1
  store double %125, double* %127, align 8
  br label %128

128:                                              ; preds = %107, %90
  store i32 -1, i32* %3, align 4
  br label %361

129:                                              ; preds = %31
  %130 = load i32, i32* %17, align 4
  %131 = icmp sle i32 %130, 1094263291
  br i1 %131, label %132, label %272

132:                                              ; preds = %129
  %133 = load double, double* %4, align 8
  %134 = call double @llvm.fabs.f64(double %133)
  store double %134, double* %8, align 8
  %135 = load double, double* %8, align 8
  %136 = load double, double* @invpio2, align 8
  %137 = fmul double %135, %136
  %138 = load i64, i64* @half, align 8
  %139 = sitofp i64 %138 to double
  %140 = fadd double %137, %139
  %141 = fptosi double %140 to i32
  store i32 %141, i32* %16, align 4
  %142 = load i32, i32* %16, align 4
  %143 = sitofp i32 %142 to double
  store double %143, double* %10, align 8
  %144 = load double, double* %8, align 8
  %145 = load double, double* %10, align 8
  %146 = load double, double* @pio2_1, align 8
  %147 = fmul double %145, %146
  %148 = fsub double %144, %147
  store double %148, double* %9, align 8
  %149 = load double, double* %10, align 8
  %150 = load double, double* @pio2_1t, align 8
  %151 = fmul double %149, %150
  store double %151, double* %7, align 8
  %152 = load i32, i32* %16, align 4
  %153 = icmp slt i32 %152, 32
  br i1 %153, label %154, label %169

154:                                              ; preds = %132
  %155 = load i32, i32* %17, align 4
  %156 = load i32*, i32** @npio2_hw, align 8
  %157 = load i32, i32* %16, align 4
  %158 = sub nsw i32 %157, 1
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %156, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = icmp ne i32 %155, %161
  br i1 %162, label %163, label %169

163:                                              ; preds = %154
  %164 = load double, double* %9, align 8
  %165 = load double, double* %7, align 8
  %166 = fsub double %164, %165
  %167 = load double*, double** %5, align 8
  %168 = getelementptr inbounds double, double* %167, i64 0
  store double %166, double* %168, align 8
  br label %243

169:                                              ; preds = %154, %132
  %170 = load i32, i32* %17, align 4
  %171 = ashr i32 %170, 20
  store i32 %171, i32* %14, align 4
  %172 = load double, double* %9, align 8
  %173 = load double, double* %7, align 8
  %174 = fsub double %172, %173
  %175 = load double*, double** %5, align 8
  %176 = getelementptr inbounds double, double* %175, i64 0
  store double %174, double* %176, align 8
  %177 = load i32, i32* %14, align 4
  %178 = load double*, double** %5, align 8
  %179 = getelementptr inbounds double, double* %178, i64 0
  %180 = load double, double* %179, align 8
  %181 = call i32 @__HI(double %180)
  %182 = ashr i32 %181, 20
  %183 = and i32 %182, 2047
  %184 = sub nsw i32 %177, %183
  store i32 %184, i32* %13, align 4
  %185 = load i32, i32* %13, align 4
  %186 = icmp sgt i32 %185, 16
  br i1 %186, label %187, label %242

187:                                              ; preds = %169
  %188 = load double, double* %9, align 8
  store double %188, double* %8, align 8
  %189 = load double, double* %10, align 8
  %190 = load double, double* @pio2_2, align 8
  %191 = fmul double %189, %190
  store double %191, double* %7, align 8
  %192 = load double, double* %8, align 8
  %193 = load double, double* %7, align 8
  %194 = fsub double %192, %193
  store double %194, double* %9, align 8
  %195 = load double, double* %10, align 8
  %196 = load double, double* @pio2_2t, align 8
  %197 = fmul double %195, %196
  %198 = load double, double* %8, align 8
  %199 = load double, double* %9, align 8
  %200 = fsub double %198, %199
  %201 = load double, double* %7, align 8
  %202 = fsub double %200, %201
  %203 = fsub double %197, %202
  store double %203, double* %7, align 8
  %204 = load double, double* %9, align 8
  %205 = load double, double* %7, align 8
  %206 = fsub double %204, %205
  %207 = load double*, double** %5, align 8
  %208 = getelementptr inbounds double, double* %207, i64 0
  store double %206, double* %208, align 8
  %209 = load i32, i32* %14, align 4
  %210 = load double*, double** %5, align 8
  %211 = getelementptr inbounds double, double* %210, i64 0
  %212 = load double, double* %211, align 8
  %213 = call i32 @__HI(double %212)
  %214 = ashr i32 %213, 20
  %215 = and i32 %214, 2047
  %216 = sub nsw i32 %209, %215
  store i32 %216, i32* %13, align 4
  %217 = load i32, i32* %13, align 4
  %218 = icmp sgt i32 %217, 49
  br i1 %218, label %219, label %241

219:                                              ; preds = %187
  %220 = load double, double* %9, align 8
  store double %220, double* %8, align 8
  %221 = load double, double* %10, align 8
  %222 = load double, double* @pio2_3, align 8
  %223 = fmul double %221, %222
  store double %223, double* %7, align 8
  %224 = load double, double* %8, align 8
  %225 = load double, double* %7, align 8
  %226 = fsub double %224, %225
  store double %226, double* %9, align 8
  %227 = load double, double* %10, align 8
  %228 = load double, double* @pio2_3t, align 8
  %229 = fmul double %227, %228
  %230 = load double, double* %8, align 8
  %231 = load double, double* %9, align 8
  %232 = fsub double %230, %231
  %233 = load double, double* %7, align 8
  %234 = fsub double %232, %233
  %235 = fsub double %229, %234
  store double %235, double* %7, align 8
  %236 = load double, double* %9, align 8
  %237 = load double, double* %7, align 8
  %238 = fsub double %236, %237
  %239 = load double*, double** %5, align 8
  %240 = getelementptr inbounds double, double* %239, i64 0
  store double %238, double* %240, align 8
  br label %241

241:                                              ; preds = %219, %187
  br label %242

242:                                              ; preds = %241, %169
  br label %243

243:                                              ; preds = %242, %163
  %244 = load double, double* %9, align 8
  %245 = load double*, double** %5, align 8
  %246 = getelementptr inbounds double, double* %245, i64 0
  %247 = load double, double* %246, align 8
  %248 = fsub double %244, %247
  %249 = load double, double* %7, align 8
  %250 = fsub double %248, %249
  %251 = load double*, double** %5, align 8
  %252 = getelementptr inbounds double, double* %251, i64 1
  store double %250, double* %252, align 8
  %253 = load i32, i32* %18, align 4
  %254 = icmp slt i32 %253, 0
  br i1 %254, label %255, label %270

255:                                              ; preds = %243
  %256 = load double*, double** %5, align 8
  %257 = getelementptr inbounds double, double* %256, i64 0
  %258 = load double, double* %257, align 8
  %259 = fneg double %258
  %260 = load double*, double** %5, align 8
  %261 = getelementptr inbounds double, double* %260, i64 0
  store double %259, double* %261, align 8
  %262 = load double*, double** %5, align 8
  %263 = getelementptr inbounds double, double* %262, i64 1
  %264 = load double, double* %263, align 8
  %265 = fneg double %264
  %266 = load double*, double** %5, align 8
  %267 = getelementptr inbounds double, double* %266, i64 1
  store double %265, double* %267, align 8
  %268 = load i32, i32* %16, align 4
  %269 = sub nsw i32 0, %268
  store i32 %269, i32* %3, align 4
  br label %361

270:                                              ; preds = %243
  %271 = load i32, i32* %16, align 4
  store i32 %271, i32* %3, align 4
  br label %361

272:                                              ; preds = %129
  %273 = load i32, i32* %17, align 4
  %274 = icmp sge i32 %273, 2146435072
  br i1 %274, label %275, label %283

275:                                              ; preds = %272
  %276 = load double, double* %4, align 8
  %277 = load double, double* %4, align 8
  %278 = fsub double %276, %277
  %279 = load double*, double** %5, align 8
  %280 = getelementptr inbounds double, double* %279, i64 1
  store double %278, double* %280, align 8
  %281 = load double*, double** %5, align 8
  %282 = getelementptr inbounds double, double* %281, i64 0
  store double %278, double* %282, align 8
  store i32 0, i32* %3, align 4
  br label %361

283:                                              ; preds = %272
  %284 = load double, double* %4, align 8
  %285 = call i32 @__LO(double %284)
  %286 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %287 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %286, i32 0, i32 1
  store i32 %285, i32* %287, align 4
  %288 = load i32, i32* %17, align 4
  %289 = ashr i32 %288, 20
  %290 = sub nsw i32 %289, 1046
  store i32 %290, i32* %12, align 4
  %291 = load i32, i32* %17, align 4
  %292 = load i32, i32* %12, align 4
  %293 = shl i32 %292, 20
  %294 = sub nsw i32 %291, %293
  %295 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %296 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %295, i32 0, i32 0
  store i32 %294, i32* %296, align 8
  store i32 0, i32* %13, align 4
  br label %297

297:                                              ; preds = %318, %283
  %298 = load i32, i32* %13, align 4
  %299 = icmp slt i32 %298, 2
  br i1 %299, label %300, label %321

300:                                              ; preds = %297
  %301 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %302 = load double, double* %301, align 8
  %303 = fptosi double %302 to i32
  %304 = sitofp i32 %303 to double
  %305 = load i32, i32* %13, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds [3 x double], [3 x double]* %11, i64 0, i64 %306
  store double %304, double* %307, align 8
  %308 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %309 = load double, double* %308, align 8
  %310 = load i32, i32* %13, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds [3 x double], [3 x double]* %11, i64 0, i64 %311
  %313 = load double, double* %312, align 8
  %314 = fsub double %309, %313
  %315 = load double, double* @two24, align 8
  %316 = fmul double %314, %315
  %317 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  store double %316, double* %317, align 8
  br label %318

318:                                              ; preds = %300
  %319 = load i32, i32* %13, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %13, align 4
  br label %297

321:                                              ; preds = %297
  %322 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %323 = load double, double* %322, align 8
  %324 = getelementptr inbounds [3 x double], [3 x double]* %11, i64 0, i64 2
  store double %323, double* %324, align 16
  store i32 3, i32* %15, align 4
  br label %325

325:                                              ; preds = %333, %321
  %326 = load i32, i32* %15, align 4
  %327 = sub nsw i32 %326, 1
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds [3 x double], [3 x double]* %11, i64 0, i64 %328
  %330 = load double, double* %329, align 8
  %331 = load double, double* @zero, align 8
  %332 = fcmp oeq double %330, %331
  br i1 %332, label %333, label %336

333:                                              ; preds = %325
  %334 = load i32, i32* %15, align 4
  %335 = add nsw i32 %334, -1
  store i32 %335, i32* %15, align 4
  br label %325

336:                                              ; preds = %325
  %337 = getelementptr inbounds [3 x double], [3 x double]* %11, i64 0, i64 0
  %338 = load double*, double** %5, align 8
  %339 = load i32, i32* %12, align 4
  %340 = load i32, i32* %15, align 4
  %341 = call i32 @__kernel_rem_pio2(double* %337, double* %338, i32 %339, i32 %340, i32 2)
  store i32 %341, i32* %16, align 4
  %342 = load i32, i32* %18, align 4
  %343 = icmp slt i32 %342, 0
  br i1 %343, label %344, label %359

344:                                              ; preds = %336
  %345 = load double*, double** %5, align 8
  %346 = getelementptr inbounds double, double* %345, i64 0
  %347 = load double, double* %346, align 8
  %348 = fneg double %347
  %349 = load double*, double** %5, align 8
  %350 = getelementptr inbounds double, double* %349, i64 0
  store double %348, double* %350, align 8
  %351 = load double*, double** %5, align 8
  %352 = getelementptr inbounds double, double* %351, i64 1
  %353 = load double, double* %352, align 8
  %354 = fneg double %353
  %355 = load double*, double** %5, align 8
  %356 = getelementptr inbounds double, double* %355, i64 1
  store double %354, double* %356, align 8
  %357 = load i32, i32* %16, align 4
  %358 = sub nsw i32 0, %357
  store i32 %358, i32* %3, align 4
  br label %361

359:                                              ; preds = %336
  %360 = load i32, i32* %16, align 4
  store i32 %360, i32* %3, align 4
  br label %361

361:                                              ; preds = %359, %344, %275, %270, %255, %128, %82, %25
  %362 = load i32, i32* %3, align 4
  ret i32 %362
}

declare dso_local i32 @__HI(double) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #2

declare dso_local i32 @__LO(double) #1

declare dso_local i32 @__kernel_rem_pio2(double*, double*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
