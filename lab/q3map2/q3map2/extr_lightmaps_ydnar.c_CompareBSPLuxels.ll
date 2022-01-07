; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_lightmaps_ydnar.c_CompareBSPLuxels.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_lightmaps_ydnar.c_CompareBSPLuxels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64, i64*, float**, i32, i32, i32** }

@minLight = common dso_local global i64* null, align 8
@qfalse = common dso_local global i32 0, align 4
@SOLID_EPSILON = common dso_local global double 0.000000e+00, align 8
@qtrue = common dso_local global i32 0, align 4
@LUXEL_COLOR_FRAC = common dso_local global double 0.000000e+00, align 8
@LUXEL_TOLERANCE = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, %struct.TYPE_4__*, i32)* @CompareBSPLuxels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CompareBSPLuxels(%struct.TYPE_4__* %0, i32 %1, %struct.TYPE_4__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca float*, align 8
  %19 = alloca float*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %8, align 8
  store i32 %3, i32* %9, align 4
  %20 = load i64*, i64** @minLight, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %4
  %25 = load i64*, i64** @minLight, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load i64*, i64** @minLight, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %29, %24, %4
  %35 = load i32, i32* %7, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %37, %34
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load i32, i32* %9, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43, %37
  %47 = load i32, i32* @qfalse, align 4
  store i32 %47, i32* %5, align 4
  br label %328

48:                                               ; preds = %43, %40, %29
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %51, %54
  br i1 %55, label %106, label %56

56:                                               ; preds = %48
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %59, %62
  br i1 %63, label %106, label %64

64:                                               ; preds = %56
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %67, %70
  br i1 %71, label %106, label %72

72:                                               ; preds = %64
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 3
  %75 = load i64*, i64** %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i64, i64* %75, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 3
  %82 = load i64*, i64** %81, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %82, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %79, %86
  br i1 %87, label %106, label %88

88:                                               ; preds = %72
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 7
  %91 = load i32**, i32*** %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32*, i32** %91, i64 %93
  %95 = load i32*, i32** %94, align 8
  %96 = icmp eq i32* %95, null
  br i1 %96, label %106, label %97

97:                                               ; preds = %88
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 7
  %100 = load i32**, i32*** %99, align 8
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32*, i32** %100, i64 %102
  %104 = load i32*, i32** %103, align 8
  %105 = icmp eq i32* %104, null
  br i1 %105, label %106, label %108

106:                                              ; preds = %97, %88, %72, %64, %56, %48
  %107 = load i32, i32* @qfalse, align 4
  store i32 %107, i32* %5, align 4
  br label %328

108:                                              ; preds = %97
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 3
  %111 = load i64*, i64** %110, align 8
  %112 = load i32, i32* %7, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i64, i64* %111, i64 %113
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %202

117:                                              ; preds = %108
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 3
  %120 = load i64*, i64** %119, align 8
  %121 = load i32, i32* %9, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i64, i64* %120, i64 %122
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %202

126:                                              ; preds = %117
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 4
  %129 = load float**, float*** %128, align 8
  %130 = load i32, i32* %7, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds float*, float** %129, i64 %131
  %133 = load float*, float** %132, align 8
  %134 = getelementptr inbounds float, float* %133, i64 0
  %135 = load float, float* %134, align 4
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 4
  %138 = load float**, float*** %137, align 8
  %139 = load i32, i32* %9, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds float*, float** %138, i64 %140
  %142 = load float*, float** %141, align 8
  %143 = getelementptr inbounds float, float* %142, i64 0
  %144 = load float, float* %143, align 4
  %145 = fsub float %135, %144
  %146 = call double @fabs(float %145)
  store double %146, double* %15, align 8
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 4
  %149 = load float**, float*** %148, align 8
  %150 = load i32, i32* %7, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds float*, float** %149, i64 %151
  %153 = load float*, float** %152, align 8
  %154 = getelementptr inbounds float, float* %153, i64 1
  %155 = load float, float* %154, align 4
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 4
  %158 = load float**, float*** %157, align 8
  %159 = load i32, i32* %9, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds float*, float** %158, i64 %160
  %162 = load float*, float** %161, align 8
  %163 = getelementptr inbounds float, float* %162, i64 1
  %164 = load float, float* %163, align 4
  %165 = fsub float %155, %164
  %166 = call double @fabs(float %165)
  store double %166, double* %16, align 8
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 4
  %169 = load float**, float*** %168, align 8
  %170 = load i32, i32* %7, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds float*, float** %169, i64 %171
  %173 = load float*, float** %172, align 8
  %174 = getelementptr inbounds float, float* %173, i64 2
  %175 = load float, float* %174, align 4
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 4
  %178 = load float**, float*** %177, align 8
  %179 = load i32, i32* %9, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds float*, float** %178, i64 %180
  %182 = load float*, float** %181, align 8
  %183 = getelementptr inbounds float, float* %182, i64 2
  %184 = load float, float* %183, align 4
  %185 = fsub float %175, %184
  %186 = call double @fabs(float %185)
  store double %186, double* %17, align 8
  %187 = load double, double* %15, align 8
  %188 = load double, double* @SOLID_EPSILON, align 8
  %189 = fcmp ogt double %187, %188
  br i1 %189, label %198, label %190

190:                                              ; preds = %126
  %191 = load double, double* %16, align 8
  %192 = load double, double* @SOLID_EPSILON, align 8
  %193 = fcmp ogt double %191, %192
  br i1 %193, label %198, label %194

194:                                              ; preds = %190
  %195 = load double, double* %17, align 8
  %196 = load double, double* @SOLID_EPSILON, align 8
  %197 = fcmp ogt double %195, %196
  br i1 %197, label %198, label %200

198:                                              ; preds = %194, %190, %126
  %199 = load i32, i32* @qfalse, align 4
  store i32 %199, i32* %5, align 4
  br label %328

200:                                              ; preds = %194
  %201 = load i32, i32* @qtrue, align 4
  store i32 %201, i32* %5, align 4
  br label %328

202:                                              ; preds = %117, %108
  %203 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 5
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 5
  %208 = load i32, i32* %207, align 8
  %209 = icmp ne i32 %205, %208
  br i1 %209, label %218, label %210

210:                                              ; preds = %202
  %211 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 6
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 6
  %216 = load i32, i32* %215, align 4
  %217 = icmp ne i32 %213, %216
  br i1 %217, label %218, label %220

218:                                              ; preds = %210, %202
  %219 = load i32, i32* @qfalse, align 4
  store i32 %219, i32* %5, align 4
  br label %328

220:                                              ; preds = %210
  store double 0.000000e+00, double* %13, align 8
  store double 0.000000e+00, double* %14, align 8
  store i32 0, i32* %12, align 4
  br label %221

221:                                              ; preds = %323, %220
  %222 = load i32, i32* %12, align 4
  %223 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 6
  %225 = load i32, i32* %224, align 4
  %226 = icmp slt i32 %222, %225
  br i1 %226, label %227, label %326

227:                                              ; preds = %221
  store i32 0, i32* %11, align 4
  br label %228

228:                                              ; preds = %319, %227
  %229 = load i32, i32* %11, align 4
  %230 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 5
  %232 = load i32, i32* %231, align 8
  %233 = icmp slt i32 %229, %232
  br i1 %233, label %234, label %322

234:                                              ; preds = %228
  %235 = load double, double* %14, align 8
  %236 = fadd double %235, 1.000000e+00
  store double %236, double* %14, align 8
  %237 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  store %struct.TYPE_4__* %237, %struct.TYPE_4__** %10, align 8
  %238 = load i32, i32* %7, align 4
  %239 = load i32, i32* %11, align 4
  %240 = load i32, i32* %12, align 4
  %241 = call float* @BSP_LUXEL(i32 %238, i32 %239, i32 %240)
  store float* %241, float** %18, align 8
  %242 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  store %struct.TYPE_4__* %242, %struct.TYPE_4__** %10, align 8
  %243 = load i32, i32* %9, align 4
  %244 = load i32, i32* %11, align 4
  %245 = load i32, i32* %12, align 4
  %246 = call float* @BSP_LUXEL(i32 %243, i32 %244, i32 %245)
  store float* %246, float** %19, align 8
  %247 = load float*, float** %18, align 8
  %248 = getelementptr inbounds float, float* %247, i64 0
  %249 = load float, float* %248, align 4
  %250 = fcmp olt float %249, 0.000000e+00
  br i1 %250, label %256, label %251

251:                                              ; preds = %234
  %252 = load float*, float** %19, align 8
  %253 = getelementptr inbounds float, float* %252, i64 0
  %254 = load float, float* %253, align 4
  %255 = fcmp olt float %254, 0.000000e+00
  br i1 %255, label %256, label %257

256:                                              ; preds = %251, %234
  br label %319

257:                                              ; preds = %251
  %258 = load float*, float** %18, align 8
  %259 = getelementptr inbounds float, float* %258, i64 0
  %260 = load float, float* %259, align 4
  %261 = load float*, float** %19, align 8
  %262 = getelementptr inbounds float, float* %261, i64 0
  %263 = load float, float* %262, align 4
  %264 = fsub float %260, %263
  %265 = call double @fabs(float %264)
  store double %265, double* %15, align 8
  %266 = load float*, float** %18, align 8
  %267 = getelementptr inbounds float, float* %266, i64 1
  %268 = load float, float* %267, align 4
  %269 = load float*, float** %19, align 8
  %270 = getelementptr inbounds float, float* %269, i64 1
  %271 = load float, float* %270, align 4
  %272 = fsub float %268, %271
  %273 = call double @fabs(float %272)
  store double %273, double* %16, align 8
  %274 = load float*, float** %18, align 8
  %275 = getelementptr inbounds float, float* %274, i64 2
  %276 = load float, float* %275, align 4
  %277 = load float*, float** %19, align 8
  %278 = getelementptr inbounds float, float* %277, i64 2
  %279 = load float, float* %278, align 4
  %280 = fsub float %276, %279
  %281 = call double @fabs(float %280)
  store double %281, double* %17, align 8
  %282 = load double, double* %15, align 8
  %283 = fcmp ogt double %282, 3.000000e+00
  br i1 %283, label %290, label %284

284:                                              ; preds = %257
  %285 = load double, double* %16, align 8
  %286 = fcmp ogt double %285, 3.000000e+00
  br i1 %286, label %290, label %287

287:                                              ; preds = %284
  %288 = load double, double* %17, align 8
  %289 = fcmp ogt double %288, 3.000000e+00
  br i1 %289, label %290, label %292

290:                                              ; preds = %287, %284, %257
  %291 = load i32, i32* @qfalse, align 4
  store i32 %291, i32* %5, align 4
  br label %328

292:                                              ; preds = %287
  %293 = load double, double* %15, align 8
  %294 = load double, double* @LUXEL_COLOR_FRAC, align 8
  %295 = fmul double %293, %294
  %296 = load double, double* %13, align 8
  %297 = fadd double %296, %295
  store double %297, double* %13, align 8
  %298 = load double, double* %16, align 8
  %299 = load double, double* @LUXEL_COLOR_FRAC, align 8
  %300 = fmul double %298, %299
  %301 = load double, double* %13, align 8
  %302 = fadd double %301, %300
  store double %302, double* %13, align 8
  %303 = load double, double* %17, align 8
  %304 = load double, double* @LUXEL_COLOR_FRAC, align 8
  %305 = fmul double %303, %304
  %306 = load double, double* %13, align 8
  %307 = fadd double %306, %305
  store double %307, double* %13, align 8
  %308 = load double, double* %14, align 8
  %309 = fcmp ogt double %308, 0.000000e+00
  br i1 %309, label %310, label %318

310:                                              ; preds = %292
  %311 = load double, double* %13, align 8
  %312 = load double, double* %14, align 8
  %313 = fdiv double %311, %312
  %314 = load double, double* @LUXEL_TOLERANCE, align 8
  %315 = fcmp ogt double %313, %314
  br i1 %315, label %316, label %318

316:                                              ; preds = %310
  %317 = load i32, i32* @qfalse, align 4
  store i32 %317, i32* %5, align 4
  br label %328

318:                                              ; preds = %310, %292
  br label %319

319:                                              ; preds = %318, %256
  %320 = load i32, i32* %11, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %11, align 4
  br label %228

322:                                              ; preds = %228
  br label %323

323:                                              ; preds = %322
  %324 = load i32, i32* %12, align 4
  %325 = add nsw i32 %324, 1
  store i32 %325, i32* %12, align 4
  br label %221

326:                                              ; preds = %221
  %327 = load i32, i32* @qtrue, align 4
  store i32 %327, i32* %5, align 4
  br label %328

328:                                              ; preds = %326, %316, %290, %218, %200, %198, %106, %46
  %329 = load i32, i32* %5, align 4
  ret i32 %329
}

declare dso_local double @fabs(float) #1

declare dso_local float* @BSP_LUXEL(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
