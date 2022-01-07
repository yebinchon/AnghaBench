; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_light_ydnar.c_DirtForSample.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_light_ydnar.c_DirtForSample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32, i64, i32, i32 }

@dirty = common dso_local global i32 0, align 4
@dirtDepth = common dso_local global float 0.000000e+00, align 4
@dirtMode = common dso_local global i32 0, align 4
@numDirtVectors = common dso_local global i32 0, align 4
@DIRT_CONE_ANGLE = common dso_local global float 0.000000e+00, align 4
@dirtVectors = common dso_local global float** null, align 8
@dirtGain = common dso_local global i32 0, align 4
@dirtScale = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @DirtForSample(%struct.TYPE_5__* %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca float*, align 8
  %14 = alloca float*, align 8
  %15 = alloca float*, align 8
  %16 = alloca float*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %17 = load i32, i32* @dirty, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  store float 1.000000e+00, float* %2, align 4
  br label %440

20:                                               ; preds = %1
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %22 = icmp eq %struct.TYPE_5__* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %20
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23, %20
  store float 0.000000e+00, float* %2, align 4
  br label %440

29:                                               ; preds = %23
  store float 0.000000e+00, float* %5, align 4
  %30 = load float, float* @dirtDepth, align 4
  %31 = fdiv float 1.000000e+00, %30
  store float %31, float* %9, align 4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = load float*, float** %10, align 8
  %36 = call i32 @VectorCopy(i32 %34, float* %35)
  %37 = load float*, float** %10, align 8
  %38 = getelementptr inbounds float, float* %37, i64 0
  %39 = load float, float* %38, align 4
  %40 = fcmp oeq float %39, 0.000000e+00
  br i1 %40, label %41, label %62

41:                                               ; preds = %29
  %42 = load float*, float** %10, align 8
  %43 = getelementptr inbounds float, float* %42, i64 1
  %44 = load float, float* %43, align 4
  %45 = fcmp oeq float %44, 0.000000e+00
  br i1 %45, label %46, label %62

46:                                               ; preds = %41
  %47 = load float*, float** %10, align 8
  %48 = getelementptr inbounds float, float* %47, i64 2
  %49 = load float, float* %48, align 4
  %50 = fcmp oeq float %49, -1.000000e+00
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load float*, float** %13, align 8
  %53 = call i32 @VectorSet(float* %52, float -1.000000e+00, float 0.000000e+00, float 0.000000e+00)
  %54 = load float*, float** %12, align 8
  %55 = call i32 @VectorSet(float* %54, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00)
  br label %61

56:                                               ; preds = %46
  %57 = load float*, float** %13, align 8
  %58 = call i32 @VectorSet(float* %57, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00)
  %59 = load float*, float** %12, align 8
  %60 = call i32 @VectorSet(float* %59, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00)
  br label %61

61:                                               ; preds = %56, %51
  br label %79

62:                                               ; preds = %41, %29
  %63 = load float*, float** %11, align 8
  %64 = call i32 @VectorSet(float* %63, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)
  %65 = load float*, float** %10, align 8
  %66 = load float*, float** %11, align 8
  %67 = load float*, float** %13, align 8
  %68 = call i32 @CrossProduct(float* %65, float* %66, float* %67)
  %69 = load float*, float** %13, align 8
  %70 = load float*, float** %13, align 8
  %71 = call i32 @VectorNormalize(float* %69, float* %70)
  %72 = load float*, float** %13, align 8
  %73 = load float*, float** %10, align 8
  %74 = load float*, float** %12, align 8
  %75 = call i32 @CrossProduct(float* %72, float* %73, float* %74)
  %76 = load float*, float** %12, align 8
  %77 = load float*, float** %12, align 8
  %78 = call i32 @VectorNormalize(float* %76, float* %77)
  br label %79

79:                                               ; preds = %62, %61
  %80 = load i32, i32* @dirtMode, align 4
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %82, label %226

82:                                               ; preds = %79
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %222, %82
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* @numDirtVectors, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %225

87:                                               ; preds = %83
  %88 = call float (...) @Random()
  %89 = call float @DEG2RAD(float 3.600000e+02)
  %90 = fmul float %88, %89
  store float %90, float* %7, align 4
  %91 = call float (...) @Random()
  %92 = load float, float* @DIRT_CONE_ANGLE, align 4
  %93 = call float @DEG2RAD(float %92)
  %94 = fmul float %91, %93
  store float %94, float* %8, align 4
  %95 = load float, float* %7, align 4
  %96 = call float @cos(float %95)
  %97 = load float, float* %8, align 4
  %98 = call float @sin(float %97)
  %99 = fmul float %96, %98
  %100 = load float*, float** %14, align 8
  %101 = getelementptr inbounds float, float* %100, i64 0
  store float %99, float* %101, align 4
  %102 = load float, float* %7, align 4
  %103 = call float @sin(float %102)
  %104 = load float, float* %8, align 4
  %105 = call float @sin(float %104)
  %106 = fmul float %103, %105
  %107 = load float*, float** %14, align 8
  %108 = getelementptr inbounds float, float* %107, i64 1
  store float %106, float* %108, align 4
  %109 = load float, float* %8, align 4
  %110 = call float @cos(float %109)
  %111 = load float*, float** %14, align 8
  %112 = getelementptr inbounds float, float* %111, i64 2
  store float %110, float* %112, align 4
  %113 = load float*, float** %13, align 8
  %114 = getelementptr inbounds float, float* %113, i64 0
  %115 = load float, float* %114, align 4
  %116 = load float*, float** %14, align 8
  %117 = getelementptr inbounds float, float* %116, i64 0
  %118 = load float, float* %117, align 4
  %119 = fmul float %115, %118
  %120 = load float*, float** %12, align 8
  %121 = getelementptr inbounds float, float* %120, i64 0
  %122 = load float, float* %121, align 4
  %123 = load float*, float** %14, align 8
  %124 = getelementptr inbounds float, float* %123, i64 1
  %125 = load float, float* %124, align 4
  %126 = fmul float %122, %125
  %127 = fadd float %119, %126
  %128 = load float*, float** %10, align 8
  %129 = getelementptr inbounds float, float* %128, i64 0
  %130 = load float, float* %129, align 4
  %131 = load float*, float** %14, align 8
  %132 = getelementptr inbounds float, float* %131, i64 2
  %133 = load float, float* %132, align 4
  %134 = fmul float %130, %133
  %135 = fadd float %127, %134
  %136 = load float*, float** %15, align 8
  %137 = getelementptr inbounds float, float* %136, i64 0
  store float %135, float* %137, align 4
  %138 = load float*, float** %13, align 8
  %139 = getelementptr inbounds float, float* %138, i64 1
  %140 = load float, float* %139, align 4
  %141 = load float*, float** %14, align 8
  %142 = getelementptr inbounds float, float* %141, i64 0
  %143 = load float, float* %142, align 4
  %144 = fmul float %140, %143
  %145 = load float*, float** %12, align 8
  %146 = getelementptr inbounds float, float* %145, i64 1
  %147 = load float, float* %146, align 4
  %148 = load float*, float** %14, align 8
  %149 = getelementptr inbounds float, float* %148, i64 1
  %150 = load float, float* %149, align 4
  %151 = fmul float %147, %150
  %152 = fadd float %144, %151
  %153 = load float*, float** %10, align 8
  %154 = getelementptr inbounds float, float* %153, i64 1
  %155 = load float, float* %154, align 4
  %156 = load float*, float** %14, align 8
  %157 = getelementptr inbounds float, float* %156, i64 2
  %158 = load float, float* %157, align 4
  %159 = fmul float %155, %158
  %160 = fadd float %152, %159
  %161 = load float*, float** %15, align 8
  %162 = getelementptr inbounds float, float* %161, i64 1
  store float %160, float* %162, align 4
  %163 = load float*, float** %13, align 8
  %164 = getelementptr inbounds float, float* %163, i64 2
  %165 = load float, float* %164, align 4
  %166 = load float*, float** %14, align 8
  %167 = getelementptr inbounds float, float* %166, i64 0
  %168 = load float, float* %167, align 4
  %169 = fmul float %165, %168
  %170 = load float*, float** %12, align 8
  %171 = getelementptr inbounds float, float* %170, i64 2
  %172 = load float, float* %171, align 4
  %173 = load float*, float** %14, align 8
  %174 = getelementptr inbounds float, float* %173, i64 1
  %175 = load float, float* %174, align 4
  %176 = fmul float %172, %175
  %177 = fadd float %169, %176
  %178 = load float*, float** %10, align 8
  %179 = getelementptr inbounds float, float* %178, i64 2
  %180 = load float, float* %179, align 4
  %181 = load float*, float** %14, align 8
  %182 = getelementptr inbounds float, float* %181, i64 2
  %183 = load float, float* %182, align 4
  %184 = fmul float %180, %183
  %185 = fadd float %177, %184
  %186 = load float*, float** %15, align 8
  %187 = getelementptr inbounds float, float* %186, i64 2
  store float %185, float* %187, align 4
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 8
  %191 = load float, float* @dirtDepth, align 4
  %192 = load float*, float** %15, align 8
  %193 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 4
  %195 = load i32, i32* %194, align 8
  %196 = call i32 @VectorMA(i32 %190, float %191, float* %192, i32 %195)
  %197 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %198 = call i32 @SetupTrace(%struct.TYPE_5__* %197)
  %199 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %200 = call i32 @TraceLine(%struct.TYPE_5__* %199)
  %201 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 3
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %221

205:                                              ; preds = %87
  %206 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 8
  %212 = load float*, float** %16, align 8
  %213 = call i32 @VectorSubtract(i32 %208, i32 %211, float* %212)
  %214 = load float, float* %9, align 4
  %215 = load float*, float** %16, align 8
  %216 = call float @VectorLength(float* %215)
  %217 = fmul float %214, %216
  %218 = fsub float 1.000000e+00, %217
  %219 = load float, float* %5, align 4
  %220 = fadd float %219, %218
  store float %220, float* %5, align 4
  br label %221

221:                                              ; preds = %205, %87
  br label %222

222:                                              ; preds = %221
  %223 = load i32, i32* %4, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %4, align 4
  br label %83

225:                                              ; preds = %83
  br label %381

226:                                              ; preds = %79
  store i32 0, i32* %4, align 4
  br label %227

227:                                              ; preds = %377, %226
  %228 = load i32, i32* %4, align 4
  %229 = load i32, i32* @numDirtVectors, align 4
  %230 = icmp slt i32 %228, %229
  br i1 %230, label %231, label %380

231:                                              ; preds = %227
  %232 = load float*, float** %13, align 8
  %233 = getelementptr inbounds float, float* %232, i64 0
  %234 = load float, float* %233, align 4
  %235 = load float**, float*** @dirtVectors, align 8
  %236 = load i32, i32* %4, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds float*, float** %235, i64 %237
  %239 = load float*, float** %238, align 8
  %240 = getelementptr inbounds float, float* %239, i64 0
  %241 = load float, float* %240, align 4
  %242 = fmul float %234, %241
  %243 = load float*, float** %12, align 8
  %244 = getelementptr inbounds float, float* %243, i64 0
  %245 = load float, float* %244, align 4
  %246 = load float**, float*** @dirtVectors, align 8
  %247 = load i32, i32* %4, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds float*, float** %246, i64 %248
  %250 = load float*, float** %249, align 8
  %251 = getelementptr inbounds float, float* %250, i64 1
  %252 = load float, float* %251, align 4
  %253 = fmul float %245, %252
  %254 = fadd float %242, %253
  %255 = load float*, float** %10, align 8
  %256 = getelementptr inbounds float, float* %255, i64 0
  %257 = load float, float* %256, align 4
  %258 = load float**, float*** @dirtVectors, align 8
  %259 = load i32, i32* %4, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds float*, float** %258, i64 %260
  %262 = load float*, float** %261, align 8
  %263 = getelementptr inbounds float, float* %262, i64 2
  %264 = load float, float* %263, align 4
  %265 = fmul float %257, %264
  %266 = fadd float %254, %265
  %267 = load float*, float** %15, align 8
  %268 = getelementptr inbounds float, float* %267, i64 0
  store float %266, float* %268, align 4
  %269 = load float*, float** %13, align 8
  %270 = getelementptr inbounds float, float* %269, i64 1
  %271 = load float, float* %270, align 4
  %272 = load float**, float*** @dirtVectors, align 8
  %273 = load i32, i32* %4, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds float*, float** %272, i64 %274
  %276 = load float*, float** %275, align 8
  %277 = getelementptr inbounds float, float* %276, i64 0
  %278 = load float, float* %277, align 4
  %279 = fmul float %271, %278
  %280 = load float*, float** %12, align 8
  %281 = getelementptr inbounds float, float* %280, i64 1
  %282 = load float, float* %281, align 4
  %283 = load float**, float*** @dirtVectors, align 8
  %284 = load i32, i32* %4, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds float*, float** %283, i64 %285
  %287 = load float*, float** %286, align 8
  %288 = getelementptr inbounds float, float* %287, i64 1
  %289 = load float, float* %288, align 4
  %290 = fmul float %282, %289
  %291 = fadd float %279, %290
  %292 = load float*, float** %10, align 8
  %293 = getelementptr inbounds float, float* %292, i64 1
  %294 = load float, float* %293, align 4
  %295 = load float**, float*** @dirtVectors, align 8
  %296 = load i32, i32* %4, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds float*, float** %295, i64 %297
  %299 = load float*, float** %298, align 8
  %300 = getelementptr inbounds float, float* %299, i64 2
  %301 = load float, float* %300, align 4
  %302 = fmul float %294, %301
  %303 = fadd float %291, %302
  %304 = load float*, float** %15, align 8
  %305 = getelementptr inbounds float, float* %304, i64 1
  store float %303, float* %305, align 4
  %306 = load float*, float** %13, align 8
  %307 = getelementptr inbounds float, float* %306, i64 2
  %308 = load float, float* %307, align 4
  %309 = load float**, float*** @dirtVectors, align 8
  %310 = load i32, i32* %4, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds float*, float** %309, i64 %311
  %313 = load float*, float** %312, align 8
  %314 = getelementptr inbounds float, float* %313, i64 0
  %315 = load float, float* %314, align 4
  %316 = fmul float %308, %315
  %317 = load float*, float** %12, align 8
  %318 = getelementptr inbounds float, float* %317, i64 2
  %319 = load float, float* %318, align 4
  %320 = load float**, float*** @dirtVectors, align 8
  %321 = load i32, i32* %4, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds float*, float** %320, i64 %322
  %324 = load float*, float** %323, align 8
  %325 = getelementptr inbounds float, float* %324, i64 1
  %326 = load float, float* %325, align 4
  %327 = fmul float %319, %326
  %328 = fadd float %316, %327
  %329 = load float*, float** %10, align 8
  %330 = getelementptr inbounds float, float* %329, i64 2
  %331 = load float, float* %330, align 4
  %332 = load float**, float*** @dirtVectors, align 8
  %333 = load i32, i32* %4, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds float*, float** %332, i64 %334
  %336 = load float*, float** %335, align 8
  %337 = getelementptr inbounds float, float* %336, i64 2
  %338 = load float, float* %337, align 4
  %339 = fmul float %331, %338
  %340 = fadd float %328, %339
  %341 = load float*, float** %15, align 8
  %342 = getelementptr inbounds float, float* %341, i64 2
  store float %340, float* %342, align 4
  %343 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %344 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %343, i32 0, i32 1
  %345 = load i32, i32* %344, align 8
  %346 = load float, float* @dirtDepth, align 4
  %347 = load float*, float** %15, align 8
  %348 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %349 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %348, i32 0, i32 4
  %350 = load i32, i32* %349, align 8
  %351 = call i32 @VectorMA(i32 %345, float %346, float* %347, i32 %350)
  %352 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %353 = call i32 @SetupTrace(%struct.TYPE_5__* %352)
  %354 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %355 = call i32 @TraceLine(%struct.TYPE_5__* %354)
  %356 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %357 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %356, i32 0, i32 3
  %358 = load i64, i64* %357, align 8
  %359 = icmp ne i64 %358, 0
  br i1 %359, label %360, label %376

360:                                              ; preds = %231
  %361 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %362 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %361, i32 0, i32 2
  %363 = load i32, i32* %362, align 4
  %364 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %365 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %364, i32 0, i32 1
  %366 = load i32, i32* %365, align 8
  %367 = load float*, float** %16, align 8
  %368 = call i32 @VectorSubtract(i32 %363, i32 %366, float* %367)
  %369 = load float, float* %9, align 4
  %370 = load float*, float** %16, align 8
  %371 = call float @VectorLength(float* %370)
  %372 = fmul float %369, %371
  %373 = fsub float 1.000000e+00, %372
  %374 = load float, float* %5, align 4
  %375 = fadd float %374, %373
  store float %375, float* %5, align 4
  br label %376

376:                                              ; preds = %360, %231
  br label %377

377:                                              ; preds = %376
  %378 = load i32, i32* %4, align 4
  %379 = add nsw i32 %378, 1
  store i32 %379, i32* %4, align 4
  br label %227

380:                                              ; preds = %227
  br label %381

381:                                              ; preds = %380, %225
  %382 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %383 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %382, i32 0, i32 1
  %384 = load i32, i32* %383, align 8
  %385 = load float, float* @dirtDepth, align 4
  %386 = load float*, float** %10, align 8
  %387 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %388 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %387, i32 0, i32 4
  %389 = load i32, i32* %388, align 8
  %390 = call i32 @VectorMA(i32 %384, float %385, float* %386, i32 %389)
  %391 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %392 = call i32 @SetupTrace(%struct.TYPE_5__* %391)
  %393 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %394 = call i32 @TraceLine(%struct.TYPE_5__* %393)
  %395 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %396 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %395, i32 0, i32 3
  %397 = load i64, i64* %396, align 8
  %398 = icmp ne i64 %397, 0
  br i1 %398, label %399, label %415

399:                                              ; preds = %381
  %400 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %401 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %400, i32 0, i32 2
  %402 = load i32, i32* %401, align 4
  %403 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %404 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %403, i32 0, i32 1
  %405 = load i32, i32* %404, align 8
  %406 = load float*, float** %16, align 8
  %407 = call i32 @VectorSubtract(i32 %402, i32 %405, float* %406)
  %408 = load float, float* %9, align 4
  %409 = load float*, float** %16, align 8
  %410 = call float @VectorLength(float* %409)
  %411 = fmul float %408, %410
  %412 = fsub float 1.000000e+00, %411
  %413 = load float, float* %5, align 4
  %414 = fadd float %413, %412
  store float %414, float* %5, align 4
  br label %415

415:                                              ; preds = %399, %381
  %416 = load float, float* %5, align 4
  %417 = fcmp ole float %416, 0.000000e+00
  br i1 %417, label %418, label %419

418:                                              ; preds = %415
  store float 1.000000e+00, float* %2, align 4
  br label %440

419:                                              ; preds = %415
  %420 = load float, float* %5, align 4
  %421 = load i32, i32* @numDirtVectors, align 4
  %422 = add nsw i32 %421, 1
  %423 = sitofp i32 %422 to float
  %424 = fdiv float %420, %423
  %425 = load i32, i32* @dirtGain, align 4
  %426 = call float @pow(float %424, i32 %425)
  store float %426, float* %6, align 4
  %427 = load float, float* %6, align 4
  %428 = fcmp ogt float %427, 1.000000e+00
  br i1 %428, label %429, label %430

429:                                              ; preds = %419
  store float 1.000000e+00, float* %6, align 4
  br label %430

430:                                              ; preds = %429, %419
  %431 = load float, float* @dirtScale, align 4
  %432 = load float, float* %6, align 4
  %433 = fmul float %432, %431
  store float %433, float* %6, align 4
  %434 = load float, float* %6, align 4
  %435 = fcmp ogt float %434, 1.000000e+00
  br i1 %435, label %436, label %437

436:                                              ; preds = %430
  store float 1.000000e+00, float* %6, align 4
  br label %437

437:                                              ; preds = %436, %430
  %438 = load float, float* %6, align 4
  %439 = fsub float 1.000000e+00, %438
  store float %439, float* %2, align 4
  br label %440

440:                                              ; preds = %437, %418, %28, %19
  %441 = load float, float* %2, align 4
  ret float %441
}

declare dso_local i32 @VectorCopy(i32, float*) #1

declare dso_local i32 @VectorSet(float*, float, float, float) #1

declare dso_local i32 @CrossProduct(float*, float*, float*) #1

declare dso_local i32 @VectorNormalize(float*, float*) #1

declare dso_local float @Random(...) #1

declare dso_local float @DEG2RAD(float) #1

declare dso_local float @cos(float) #1

declare dso_local float @sin(float) #1

declare dso_local i32 @VectorMA(i32, float, float*, i32) #1

declare dso_local i32 @SetupTrace(%struct.TYPE_5__*) #1

declare dso_local i32 @TraceLine(%struct.TYPE_5__*) #1

declare dso_local i32 @VectorSubtract(i32, i32, float*) #1

declare dso_local float @VectorLength(float*) #1

declare dso_local float @pow(float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
