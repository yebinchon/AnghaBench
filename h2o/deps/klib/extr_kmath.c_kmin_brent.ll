; ModuleID = '/home/carl/AnghaBench/h2o/deps/klib/extr_kmath.c_kmin_brent.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/klib/extr_kmath.c_kmin_brent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @kmin_brent(double (double, i8*)* %0, double %1, double %2, i8* %3, double %4, double* %5) #0 {
  %7 = alloca double, align 8
  %8 = alloca double (double, i8*)*, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca i8*, align 8
  %12 = alloca double, align 8
  %13 = alloca double*, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca i32, align 4
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  %31 = alloca double, align 8
  %32 = alloca double, align 8
  %33 = alloca double, align 8
  %34 = alloca double, align 8
  %35 = alloca double, align 8
  %36 = alloca double, align 8
  %37 = alloca double, align 8
  %38 = alloca double, align 8
  %39 = alloca i32, align 4
  store double (double, i8*)* %0, double (double, i8*)** %8, align 8
  store double %1, double* %9, align 8
  store double %2, double* %10, align 8
  store i8* %3, i8** %11, align 8
  store double %4, double* %12, align 8
  store double* %5, double** %13, align 8
  store double 0x3FF9E3779B9486E5, double* %24, align 8
  store double 0x3FD8722191ADE46B, double* %25, align 8
  store double 0x3BC79CA10C924223, double* %26, align 8
  store i32 100, i32* %27, align 4
  %40 = load double (double, i8*)*, double (double, i8*)** %8, align 8
  %41 = load double, double* %9, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = call double %40(double %41, i8* %42)
  store double %43, double* %20, align 8
  %44 = load double (double, i8*)*, double (double, i8*)** %8, align 8
  %45 = load double, double* %10, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = call double %44(double %45, i8* %46)
  store double %47, double* %21, align 8
  %48 = load double, double* %21, align 8
  %49 = load double, double* %20, align 8
  %50 = fcmp ogt double %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %6
  %52 = load double, double* %9, align 8
  store double %52, double* %19, align 8
  %53 = load double, double* %10, align 8
  store double %53, double* %9, align 8
  %54 = load double, double* %19, align 8
  store double %54, double* %10, align 8
  %55 = load double, double* %20, align 8
  store double %55, double* %19, align 8
  %56 = load double, double* %21, align 8
  store double %56, double* %20, align 8
  %57 = load double, double* %19, align 8
  store double %57, double* %21, align 8
  br label %58

58:                                               ; preds = %51, %6
  %59 = load double, double* %10, align 8
  %60 = load double, double* %10, align 8
  %61 = load double, double* %9, align 8
  %62 = fsub double %60, %61
  %63 = fmul double 0x3FF9E3779B9486E5, %62
  %64 = fadd double %59, %63
  store double %64, double* %23, align 8
  %65 = load double (double, i8*)*, double (double, i8*)** %8, align 8
  %66 = load double, double* %23, align 8
  %67 = load i8*, i8** %11, align 8
  %68 = call double %65(double %66, i8* %67)
  store double %68, double* %22, align 8
  br label %69

69:                                               ; preds = %255, %58
  %70 = load double, double* %21, align 8
  %71 = load double, double* %22, align 8
  %72 = fcmp ogt double %70, %71
  br i1 %72, label %73, label %262

73:                                               ; preds = %69
  %74 = load double, double* %10, align 8
  %75 = load double, double* %23, align 8
  %76 = load double, double* %10, align 8
  %77 = fsub double %75, %76
  %78 = fmul double 1.000000e+02, %77
  %79 = fadd double %74, %78
  store double %79, double* %14, align 8
  %80 = load double, double* %10, align 8
  %81 = load double, double* %9, align 8
  %82 = fsub double %80, %81
  %83 = load double, double* %21, align 8
  %84 = load double, double* %22, align 8
  %85 = fsub double %83, %84
  %86 = fmul double %82, %85
  store double %86, double* %16, align 8
  %87 = load double, double* %10, align 8
  %88 = load double, double* %23, align 8
  %89 = fsub double %87, %88
  %90 = load double, double* %21, align 8
  %91 = load double, double* %20, align 8
  %92 = fsub double %90, %91
  %93 = fmul double %89, %92
  store double %93, double* %17, align 8
  %94 = load double, double* %17, align 8
  %95 = load double, double* %16, align 8
  %96 = fsub double %94, %95
  %97 = call double @llvm.fabs.f64(double %96)
  %98 = fcmp olt double %97, 0x3BC79CA10C924223
  br i1 %98, label %99, label %105

99:                                               ; preds = %73
  %100 = load double, double* %17, align 8
  %101 = load double, double* %16, align 8
  %102 = fcmp ogt double %100, %101
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, double 0x3BC79CA10C924223, double 0xBBC79CA10C924223
  store double %104, double* %19, align 8
  br label %109

105:                                              ; preds = %73
  %106 = load double, double* %17, align 8
  %107 = load double, double* %16, align 8
  %108 = fsub double %106, %107
  store double %108, double* %19, align 8
  br label %109

109:                                              ; preds = %105, %99
  %110 = load double, double* %10, align 8
  %111 = load double, double* %10, align 8
  %112 = load double, double* %23, align 8
  %113 = fsub double %111, %112
  %114 = load double, double* %17, align 8
  %115 = fmul double %113, %114
  %116 = load double, double* %10, align 8
  %117 = load double, double* %9, align 8
  %118 = fsub double %116, %117
  %119 = load double, double* %16, align 8
  %120 = fmul double %118, %119
  %121 = fsub double %115, %120
  %122 = load double, double* %19, align 8
  %123 = fmul double 2.000000e+00, %122
  %124 = fdiv double %121, %123
  %125 = fsub double %110, %124
  store double %125, double* %15, align 8
  %126 = load double, double* %10, align 8
  %127 = load double, double* %15, align 8
  %128 = fcmp ogt double %126, %127
  br i1 %128, label %129, label %133

129:                                              ; preds = %109
  %130 = load double, double* %15, align 8
  %131 = load double, double* %23, align 8
  %132 = fcmp ogt double %130, %131
  br i1 %132, label %141, label %133

133:                                              ; preds = %129, %109
  %134 = load double, double* %10, align 8
  %135 = load double, double* %15, align 8
  %136 = fcmp olt double %134, %135
  br i1 %136, label %137, label %173

137:                                              ; preds = %133
  %138 = load double, double* %15, align 8
  %139 = load double, double* %23, align 8
  %140 = fcmp olt double %138, %139
  br i1 %140, label %141, label %173

141:                                              ; preds = %137, %129
  %142 = load double (double, i8*)*, double (double, i8*)** %8, align 8
  %143 = load double, double* %15, align 8
  %144 = load i8*, i8** %11, align 8
  %145 = call double %142(double %143, i8* %144)
  store double %145, double* %18, align 8
  %146 = load double, double* %18, align 8
  %147 = load double, double* %22, align 8
  %148 = fcmp olt double %146, %147
  br i1 %148, label %149, label %154

149:                                              ; preds = %141
  %150 = load double, double* %10, align 8
  store double %150, double* %9, align 8
  %151 = load double, double* %15, align 8
  store double %151, double* %10, align 8
  %152 = load double, double* %21, align 8
  store double %152, double* %20, align 8
  %153 = load double, double* %18, align 8
  store double %153, double* %21, align 8
  br label %262

154:                                              ; preds = %141
  %155 = load double, double* %18, align 8
  %156 = load double, double* %21, align 8
  %157 = fcmp ogt double %155, %156
  br i1 %157, label %158, label %161

158:                                              ; preds = %154
  %159 = load double, double* %15, align 8
  store double %159, double* %23, align 8
  %160 = load double, double* %18, align 8
  store double %160, double* %22, align 8
  br label %262

161:                                              ; preds = %154
  br label %162

162:                                              ; preds = %161
  %163 = load double, double* %23, align 8
  %164 = load double, double* %23, align 8
  %165 = load double, double* %10, align 8
  %166 = fsub double %164, %165
  %167 = fmul double 0x3FF9E3779B9486E5, %166
  %168 = fadd double %163, %167
  store double %168, double* %15, align 8
  %169 = load double (double, i8*)*, double (double, i8*)** %8, align 8
  %170 = load double, double* %15, align 8
  %171 = load i8*, i8** %11, align 8
  %172 = call double %169(double %170, i8* %171)
  store double %172, double* %18, align 8
  br label %255

173:                                              ; preds = %137, %133
  %174 = load double, double* %23, align 8
  %175 = load double, double* %15, align 8
  %176 = fcmp ogt double %174, %175
  br i1 %176, label %177, label %181

177:                                              ; preds = %173
  %178 = load double, double* %15, align 8
  %179 = load double, double* %14, align 8
  %180 = fcmp ogt double %178, %179
  br i1 %180, label %189, label %181

181:                                              ; preds = %177, %173
  %182 = load double, double* %23, align 8
  %183 = load double, double* %15, align 8
  %184 = fcmp olt double %182, %183
  br i1 %184, label %185, label %220

185:                                              ; preds = %181
  %186 = load double, double* %15, align 8
  %187 = load double, double* %14, align 8
  %188 = fcmp olt double %186, %187
  br i1 %188, label %189, label %220

189:                                              ; preds = %185, %177
  %190 = load double (double, i8*)*, double (double, i8*)** %8, align 8
  %191 = load double, double* %15, align 8
  %192 = load i8*, i8** %11, align 8
  %193 = call double %190(double %191, i8* %192)
  store double %193, double* %18, align 8
  %194 = load double, double* %18, align 8
  %195 = load double, double* %22, align 8
  %196 = fcmp olt double %194, %195
  br i1 %196, label %197, label %212

197:                                              ; preds = %189
  %198 = load double, double* %23, align 8
  store double %198, double* %10, align 8
  %199 = load double, double* %15, align 8
  store double %199, double* %23, align 8
  %200 = load double, double* %23, align 8
  %201 = load double, double* %23, align 8
  %202 = load double, double* %10, align 8
  %203 = fsub double %201, %202
  %204 = fmul double 0x3FF9E3779B9486E5, %203
  %205 = fadd double %200, %204
  store double %205, double* %15, align 8
  %206 = load double, double* %22, align 8
  store double %206, double* %21, align 8
  %207 = load double, double* %18, align 8
  store double %207, double* %22, align 8
  %208 = load double (double, i8*)*, double (double, i8*)** %8, align 8
  %209 = load double, double* %15, align 8
  %210 = load i8*, i8** %11, align 8
  %211 = call double %208(double %209, i8* %210)
  store double %211, double* %18, align 8
  br label %219

212:                                              ; preds = %189
  %213 = load double, double* %10, align 8
  store double %213, double* %9, align 8
  %214 = load double, double* %23, align 8
  store double %214, double* %10, align 8
  %215 = load double, double* %15, align 8
  store double %215, double* %23, align 8
  %216 = load double, double* %21, align 8
  store double %216, double* %20, align 8
  %217 = load double, double* %22, align 8
  store double %217, double* %21, align 8
  %218 = load double, double* %18, align 8
  store double %218, double* %22, align 8
  br label %262

219:                                              ; preds = %197
  br label %254

220:                                              ; preds = %185, %181
  %221 = load double, double* %15, align 8
  %222 = load double, double* %14, align 8
  %223 = fcmp ogt double %221, %222
  br i1 %223, label %224, label %228

224:                                              ; preds = %220
  %225 = load double, double* %14, align 8
  %226 = load double, double* %23, align 8
  %227 = fcmp ogt double %225, %226
  br i1 %227, label %236, label %228

228:                                              ; preds = %224, %220
  %229 = load double, double* %15, align 8
  %230 = load double, double* %14, align 8
  %231 = fcmp olt double %229, %230
  br i1 %231, label %232, label %242

232:                                              ; preds = %228
  %233 = load double, double* %14, align 8
  %234 = load double, double* %23, align 8
  %235 = fcmp olt double %233, %234
  br i1 %235, label %236, label %242

236:                                              ; preds = %232, %224
  %237 = load double, double* %14, align 8
  store double %237, double* %15, align 8
  %238 = load double (double, i8*)*, double (double, i8*)** %8, align 8
  %239 = load double, double* %15, align 8
  %240 = load i8*, i8** %11, align 8
  %241 = call double %238(double %239, i8* %240)
  store double %241, double* %18, align 8
  br label %253

242:                                              ; preds = %232, %228
  %243 = load double, double* %23, align 8
  %244 = load double, double* %23, align 8
  %245 = load double, double* %10, align 8
  %246 = fsub double %244, %245
  %247 = fmul double 0x3FF9E3779B9486E5, %246
  %248 = fadd double %243, %247
  store double %248, double* %15, align 8
  %249 = load double (double, i8*)*, double (double, i8*)** %8, align 8
  %250 = load double, double* %15, align 8
  %251 = load i8*, i8** %11, align 8
  %252 = call double %249(double %250, i8* %251)
  store double %252, double* %18, align 8
  br label %253

253:                                              ; preds = %242, %236
  br label %254

254:                                              ; preds = %253, %219
  br label %255

255:                                              ; preds = %254, %162
  %256 = load double, double* %10, align 8
  store double %256, double* %9, align 8
  %257 = load double, double* %23, align 8
  store double %257, double* %10, align 8
  %258 = load double, double* %15, align 8
  store double %258, double* %23, align 8
  %259 = load double, double* %21, align 8
  store double %259, double* %20, align 8
  %260 = load double, double* %22, align 8
  store double %260, double* %21, align 8
  %261 = load double, double* %18, align 8
  store double %261, double* %22, align 8
  br label %69

262:                                              ; preds = %212, %158, %149, %69
  %263 = load double, double* %9, align 8
  %264 = load double, double* %23, align 8
  %265 = fcmp ogt double %263, %264
  br i1 %265, label %266, label %270

266:                                              ; preds = %262
  %267 = load double, double* %9, align 8
  store double %267, double* %15, align 8
  %268 = load double, double* %23, align 8
  store double %268, double* %9, align 8
  %269 = load double, double* %15, align 8
  store double %269, double* %23, align 8
  br label %270

270:                                              ; preds = %266, %262
  store double 0.000000e+00, double* %29, align 8
  store double 0.000000e+00, double* %28, align 8
  %271 = load double, double* %10, align 8
  store double %271, double* %31, align 8
  store double %271, double* %30, align 8
  %272 = load double, double* %21, align 8
  store double %272, double* %38, align 8
  store double %272, double* %37, align 8
  store i32 0, i32* %39, align 4
  br label %273

273:                                              ; preds = %517, %270
  %274 = load i32, i32* %39, align 4
  %275 = icmp ne i32 %274, 100
  br i1 %275, label %276, label %520

276:                                              ; preds = %273
  %277 = load double, double* %9, align 8
  %278 = load double, double* %23, align 8
  %279 = fadd double %277, %278
  %280 = fmul double 5.000000e-01, %279
  store double %280, double* %32, align 8
  %281 = load double, double* %12, align 8
  %282 = load double, double* %10, align 8
  %283 = call double @llvm.fabs.f64(double %282)
  %284 = fmul double %281, %283
  %285 = fadd double %284, 0x3BC79CA10C924223
  store double %285, double* %33, align 8
  %286 = fmul double 2.000000e+00, %285
  store double %286, double* %34, align 8
  %287 = load double, double* %10, align 8
  %288 = load double, double* %32, align 8
  %289 = fsub double %287, %288
  %290 = call double @llvm.fabs.f64(double %289)
  %291 = load double, double* %34, align 8
  %292 = load double, double* %23, align 8
  %293 = load double, double* %9, align 8
  %294 = fsub double %292, %293
  %295 = fmul double 5.000000e-01, %294
  %296 = fsub double %291, %295
  %297 = fcmp ole double %290, %296
  br i1 %297, label %298, label %302

298:                                              ; preds = %276
  %299 = load double, double* %10, align 8
  %300 = load double*, double** %13, align 8
  store double %299, double* %300, align 8
  %301 = load double, double* %21, align 8
  store double %301, double* %7, align 8
  br label %524

302:                                              ; preds = %276
  %303 = load double, double* %28, align 8
  %304 = call double @llvm.fabs.f64(double %303)
  %305 = load double, double* %33, align 8
  %306 = fcmp ogt double %304, %305
  br i1 %306, label %307, label %418

307:                                              ; preds = %302
  %308 = load double, double* %10, align 8
  %309 = load double, double* %30, align 8
  %310 = fsub double %308, %309
  %311 = load double, double* %21, align 8
  %312 = load double, double* %37, align 8
  %313 = fsub double %311, %312
  %314 = fmul double %310, %313
  store double %314, double* %16, align 8
  %315 = load double, double* %10, align 8
  %316 = load double, double* %31, align 8
  %317 = fsub double %315, %316
  %318 = load double, double* %21, align 8
  %319 = load double, double* %38, align 8
  %320 = fsub double %318, %319
  %321 = fmul double %317, %320
  store double %321, double* %17, align 8
  %322 = load double, double* %10, align 8
  %323 = load double, double* %31, align 8
  %324 = fsub double %322, %323
  %325 = load double, double* %17, align 8
  %326 = fmul double %324, %325
  %327 = load double, double* %10, align 8
  %328 = load double, double* %30, align 8
  %329 = fsub double %327, %328
  %330 = load double, double* %16, align 8
  %331 = fmul double %329, %330
  %332 = fsub double %326, %331
  store double %332, double* %35, align 8
  %333 = load double, double* %17, align 8
  %334 = load double, double* %16, align 8
  %335 = fsub double %333, %334
  %336 = fmul double 2.000000e+00, %335
  store double %336, double* %17, align 8
  %337 = load double, double* %17, align 8
  %338 = fcmp ogt double %337, 0.000000e+00
  br i1 %338, label %339, label %342

339:                                              ; preds = %307
  %340 = load double, double* %35, align 8
  %341 = fsub double 0.000000e+00, %340
  store double %341, double* %35, align 8
  br label %345

342:                                              ; preds = %307
  %343 = load double, double* %17, align 8
  %344 = fsub double 0.000000e+00, %343
  store double %344, double* %17, align 8
  br label %345

345:                                              ; preds = %342, %339
  %346 = load double, double* %28, align 8
  store double %346, double* %36, align 8
  %347 = load double, double* %29, align 8
  store double %347, double* %28, align 8
  %348 = load double, double* %35, align 8
  %349 = call double @llvm.fabs.f64(double %348)
  %350 = load double, double* %17, align 8
  %351 = fmul double 5.000000e-01, %350
  %352 = load double, double* %36, align 8
  %353 = fmul double %351, %352
  %354 = call double @llvm.fabs.f64(double %353)
  %355 = fcmp oge double %349, %354
  br i1 %355, label %372, label %356

356:                                              ; preds = %345
  %357 = load double, double* %35, align 8
  %358 = load double, double* %17, align 8
  %359 = load double, double* %9, align 8
  %360 = load double, double* %10, align 8
  %361 = fsub double %359, %360
  %362 = fmul double %358, %361
  %363 = fcmp ole double %357, %362
  br i1 %363, label %372, label %364

364:                                              ; preds = %356
  %365 = load double, double* %35, align 8
  %366 = load double, double* %17, align 8
  %367 = load double, double* %23, align 8
  %368 = load double, double* %10, align 8
  %369 = fsub double %367, %368
  %370 = fmul double %366, %369
  %371 = fcmp oge double %365, %370
  br i1 %371, label %372, label %387

372:                                              ; preds = %364, %356, %345
  %373 = load double, double* %10, align 8
  %374 = load double, double* %32, align 8
  %375 = fcmp oge double %373, %374
  br i1 %375, label %376, label %380

376:                                              ; preds = %372
  %377 = load double, double* %9, align 8
  %378 = load double, double* %10, align 8
  %379 = fsub double %377, %378
  br label %384

380:                                              ; preds = %372
  %381 = load double, double* %23, align 8
  %382 = load double, double* %10, align 8
  %383 = fsub double %381, %382
  br label %384

384:                                              ; preds = %380, %376
  %385 = phi double [ %379, %376 ], [ %383, %380 ]
  store double %385, double* %28, align 8
  %386 = fmul double 0x3FD8722191ADE46B, %385
  store double %386, double* %29, align 8
  br label %417

387:                                              ; preds = %364
  %388 = load double, double* %35, align 8
  %389 = load double, double* %17, align 8
  %390 = fdiv double %388, %389
  store double %390, double* %29, align 8
  %391 = load double, double* %10, align 8
  %392 = load double, double* %29, align 8
  %393 = fadd double %391, %392
  store double %393, double* %15, align 8
  %394 = load double, double* %15, align 8
  %395 = load double, double* %9, align 8
  %396 = fsub double %394, %395
  %397 = load double, double* %34, align 8
  %398 = fcmp olt double %396, %397
  br i1 %398, label %405, label %399

399:                                              ; preds = %387
  %400 = load double, double* %23, align 8
  %401 = load double, double* %15, align 8
  %402 = fsub double %400, %401
  %403 = load double, double* %34, align 8
  %404 = fcmp olt double %402, %403
  br i1 %404, label %405, label %416

405:                                              ; preds = %399, %387
  %406 = load double, double* %32, align 8
  %407 = load double, double* %10, align 8
  %408 = fcmp ogt double %406, %407
  br i1 %408, label %409, label %411

409:                                              ; preds = %405
  %410 = load double, double* %33, align 8
  br label %414

411:                                              ; preds = %405
  %412 = load double, double* %33, align 8
  %413 = fsub double 0.000000e+00, %412
  br label %414

414:                                              ; preds = %411, %409
  %415 = phi double [ %410, %409 ], [ %413, %411 ]
  store double %415, double* %29, align 8
  br label %416

416:                                              ; preds = %414, %399
  br label %417

417:                                              ; preds = %416, %384
  br label %433

418:                                              ; preds = %302
  %419 = load double, double* %10, align 8
  %420 = load double, double* %32, align 8
  %421 = fcmp oge double %419, %420
  br i1 %421, label %422, label %426

422:                                              ; preds = %418
  %423 = load double, double* %9, align 8
  %424 = load double, double* %10, align 8
  %425 = fsub double %423, %424
  br label %430

426:                                              ; preds = %418
  %427 = load double, double* %23, align 8
  %428 = load double, double* %10, align 8
  %429 = fsub double %427, %428
  br label %430

430:                                              ; preds = %426, %422
  %431 = phi double [ %425, %422 ], [ %429, %426 ]
  store double %431, double* %28, align 8
  %432 = fmul double 0x3FD8722191ADE46B, %431
  store double %432, double* %29, align 8
  br label %433

433:                                              ; preds = %430, %417
  %434 = load double, double* %29, align 8
  %435 = call double @llvm.fabs.f64(double %434)
  %436 = load double, double* %33, align 8
  %437 = fcmp oge double %435, %436
  br i1 %437, label %438, label %442

438:                                              ; preds = %433
  %439 = load double, double* %10, align 8
  %440 = load double, double* %29, align 8
  %441 = fadd double %439, %440
  br label %454

442:                                              ; preds = %433
  %443 = load double, double* %10, align 8
  %444 = load double, double* %29, align 8
  %445 = fcmp ogt double %444, 0.000000e+00
  br i1 %445, label %446, label %448

446:                                              ; preds = %442
  %447 = load double, double* %33, align 8
  br label %451

448:                                              ; preds = %442
  %449 = load double, double* %33, align 8
  %450 = fneg double %449
  br label %451

451:                                              ; preds = %448, %446
  %452 = phi double [ %447, %446 ], [ %450, %448 ]
  %453 = fadd double %443, %452
  br label %454

454:                                              ; preds = %451, %438
  %455 = phi double [ %441, %438 ], [ %453, %451 ]
  store double %455, double* %15, align 8
  %456 = load double (double, i8*)*, double (double, i8*)** %8, align 8
  %457 = load double, double* %15, align 8
  %458 = load i8*, i8** %11, align 8
  %459 = call double %456(double %457, i8* %458)
  store double %459, double* %18, align 8
  %460 = load double, double* %18, align 8
  %461 = load double, double* %21, align 8
  %462 = fcmp ole double %460, %461
  br i1 %462, label %463, label %478

463:                                              ; preds = %454
  %464 = load double, double* %15, align 8
  %465 = load double, double* %10, align 8
  %466 = fcmp oge double %464, %465
  br i1 %466, label %467, label %469

467:                                              ; preds = %463
  %468 = load double, double* %10, align 8
  store double %468, double* %9, align 8
  br label %471

469:                                              ; preds = %463
  %470 = load double, double* %10, align 8
  store double %470, double* %23, align 8
  br label %471

471:                                              ; preds = %469, %467
  %472 = load double, double* %30, align 8
  store double %472, double* %31, align 8
  %473 = load double, double* %10, align 8
  store double %473, double* %30, align 8
  %474 = load double, double* %15, align 8
  store double %474, double* %10, align 8
  %475 = load double, double* %38, align 8
  store double %475, double* %37, align 8
  %476 = load double, double* %21, align 8
  store double %476, double* %38, align 8
  %477 = load double, double* %18, align 8
  store double %477, double* %21, align 8
  br label %516

478:                                              ; preds = %454
  %479 = load double, double* %15, align 8
  %480 = load double, double* %10, align 8
  %481 = fcmp olt double %479, %480
  br i1 %481, label %482, label %484

482:                                              ; preds = %478
  %483 = load double, double* %15, align 8
  store double %483, double* %9, align 8
  br label %486

484:                                              ; preds = %478
  %485 = load double, double* %15, align 8
  store double %485, double* %23, align 8
  br label %486

486:                                              ; preds = %484, %482
  %487 = load double, double* %18, align 8
  %488 = load double, double* %38, align 8
  %489 = fcmp ole double %487, %488
  br i1 %489, label %494, label %490

490:                                              ; preds = %486
  %491 = load double, double* %30, align 8
  %492 = load double, double* %10, align 8
  %493 = fcmp oeq double %491, %492
  br i1 %493, label %494, label %499

494:                                              ; preds = %490, %486
  %495 = load double, double* %30, align 8
  store double %495, double* %31, align 8
  %496 = load double, double* %15, align 8
  store double %496, double* %30, align 8
  %497 = load double, double* %38, align 8
  store double %497, double* %37, align 8
  %498 = load double, double* %18, align 8
  store double %498, double* %38, align 8
  br label %515

499:                                              ; preds = %490
  %500 = load double, double* %18, align 8
  %501 = load double, double* %37, align 8
  %502 = fcmp ole double %500, %501
  br i1 %502, label %511, label %503

503:                                              ; preds = %499
  %504 = load double, double* %31, align 8
  %505 = load double, double* %10, align 8
  %506 = fcmp oeq double %504, %505
  br i1 %506, label %511, label %507

507:                                              ; preds = %503
  %508 = load double, double* %31, align 8
  %509 = load double, double* %30, align 8
  %510 = fcmp oeq double %508, %509
  br i1 %510, label %511, label %514

511:                                              ; preds = %507, %503, %499
  %512 = load double, double* %15, align 8
  store double %512, double* %31, align 8
  %513 = load double, double* %18, align 8
  store double %513, double* %37, align 8
  br label %514

514:                                              ; preds = %511, %507
  br label %515

515:                                              ; preds = %514, %494
  br label %516

516:                                              ; preds = %515, %471
  br label %517

517:                                              ; preds = %516
  %518 = load i32, i32* %39, align 4
  %519 = add nsw i32 %518, 1
  store i32 %519, i32* %39, align 4
  br label %273

520:                                              ; preds = %273
  %521 = load double, double* %10, align 8
  %522 = load double*, double** %13, align 8
  store double %521, double* %522, align 8
  %523 = load double, double* %21, align 8
  store double %523, double* %7, align 8
  br label %524

524:                                              ; preds = %520, %298
  %525 = load double, double* %7, align 8
  ret double %525
}

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
