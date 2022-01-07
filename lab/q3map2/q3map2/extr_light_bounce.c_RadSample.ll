; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_light_bounce.c_RadSample.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_light_bounce.c_RadSample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32*, i32* }
%struct.TYPE_13__ = type { i32, i32, i32** }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { float*, float**, double** }

@bouncing = common dso_local global i64 0, align 8
@qfalse = common dso_local global i64 0, align 8
@MAX_SAMPLES = common dso_local global i32 0, align 4
@SAMPLE_GRANULARITY = common dso_local global i32 0, align 4
@superSample = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_16__*, %struct.TYPE_13__*, %struct.TYPE_12__*, %struct.TYPE_14__*, double*, double*, i32*)* @RadSample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RadSample(i32 %0, %struct.TYPE_16__* %1, %struct.TYPE_13__* %2, %struct.TYPE_12__* %3, %struct.TYPE_14__* %4, double* %5, double* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca double*, align 8
  %15 = alloca double*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca double*, align 8
  %26 = alloca double*, align 8
  %27 = alloca double*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca float, align 4
  %30 = alloca float, align 4
  %31 = alloca float, align 4
  %32 = alloca double*, align 8
  %33 = alloca [2 x float], align 4
  %34 = alloca [2 x float], align 4
  %35 = alloca float*, align 8
  %36 = alloca [3 x %struct.TYPE_15__*], align 16
  store i32 %0, i32* %9, align 4
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %10, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %11, align 8
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %12, align 8
  store %struct.TYPE_14__* %4, %struct.TYPE_14__** %13, align 8
  store double* %5, double** %14, align 8
  store double* %6, double** %15, align 8
  store i32* %7, i32** %16, align 8
  %37 = load double*, double** %26, align 8
  %38 = load double*, double** %27, align 8
  %39 = call i32 @ClearBounds(double* %37, double* %38)
  %40 = load double*, double** %14, align 8
  %41 = call i32 @VectorClear(double* %40)
  %42 = load double*, double** %15, align 8
  %43 = call i32 @VectorClear(double* %42)
  store float 0.000000e+00, float* %29, align 4
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %45 = icmp eq %struct.TYPE_14__* %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %8
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %49, 3
  br i1 %50, label %51, label %52

51:                                               ; preds = %46, %8
  br label %603

52:                                               ; preds = %46
  store i32 0, i32* %24, align 4
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %54 = icmp eq %struct.TYPE_13__* %53, null
  br i1 %54, label %68, label %55

55:                                               ; preds = %52
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 2
  %58 = load i32**, i32*** %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32*, i32** %58, i64 %60
  %62 = load i32*, i32** %61, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %68, label %64

64:                                               ; preds = %55
  %65 = load i64, i64* @bouncing, align 8
  %66 = load i64, i64* @qfalse, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %192

68:                                               ; preds = %64, %55, %52
  store i32 0, i32* %24, align 4
  br label %69

69:                                               ; preds = %180, %68
  %70 = load i32, i32* %24, align 4
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp slt i32 %70, %73
  br i1 %74, label %75, label %183

75:                                               ; preds = %69
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %92, align 8
  %94 = load i32, i32* %24, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 0
  %98 = load float*, float** %97, align 8
  %99 = load i32*, i32** %28, align 8
  %100 = call i32 @RadSampleImage(i32 %80, i32 %85, i32 %90, float* %98, i32* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %110, label %102

102:                                              ; preds = %75
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32*, i32** %28, align 8
  %107 = call i32 @VectorCopy(i32 %105, i32* %106)
  %108 = load i32*, i32** %28, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 3
  store i32 255, i32* %109, align 4
  br label %110

110:                                              ; preds = %102, %75
  store i32 0, i32* %17, align 4
  br label %111

111:                                              ; preds = %145, %110
  %112 = load i32, i32* %17, align 4
  %113 = icmp slt i32 %112, 3
  br i1 %113, label %114, label %148

114:                                              ; preds = %111
  %115 = load i32*, i32** %28, align 8
  %116 = load i32, i32* %17, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = sdiv i32 %119, 255
  %121 = sitofp i32 %120 to float
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %123, align 8
  %125 = load i32, i32* %24, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 1
  %129 = load float**, float*** %128, align 8
  %130 = load i32, i32* %9, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds float*, float** %129, i64 %131
  %133 = load float*, float** %132, align 8
  %134 = load i32, i32* %17, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds float, float* %133, i64 %135
  %137 = load float, float* %136, align 4
  %138 = fdiv float %137, 2.550000e+02
  %139 = fmul float %121, %138
  %140 = fpext float %139 to double
  %141 = load double*, double** %25, align 8
  %142 = load i32, i32* %17, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds double, double* %141, i64 %143
  store double %140, double* %144, align 8
  br label %145

145:                                              ; preds = %114
  %146 = load i32, i32* %17, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %17, align 4
  br label %111

148:                                              ; preds = %111
  %149 = load double*, double** %25, align 8
  %150 = load double*, double** %26, align 8
  %151 = load double*, double** %27, align 8
  %152 = call i32 @AddPointToBounds(double* %149, double* %150, double* %151)
  %153 = load double*, double** %14, align 8
  %154 = load double*, double** %25, align 8
  %155 = load double*, double** %14, align 8
  %156 = call i32 @VectorAdd(double* %153, double* %154, double* %155)
  %157 = load i32*, i32** %28, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 3
  %159 = load i32, i32* %158, align 4
  %160 = sitofp i32 %159 to float
  %161 = fdiv float %160, 2.550000e+02
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %163, align 8
  %165 = load i32, i32* %24, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 1
  %169 = load float**, float*** %168, align 8
  %170 = load i32, i32* %9, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds float*, float** %169, i64 %171
  %173 = load float*, float** %172, align 8
  %174 = getelementptr inbounds float, float* %173, i64 3
  %175 = load float, float* %174, align 4
  %176 = fdiv float %175, 2.550000e+02
  %177 = fmul float %161, %176
  %178 = load float, float* %29, align 4
  %179 = fadd float %178, %177
  store float %179, float* %29, align 4
  br label %180

180:                                              ; preds = %148
  %181 = load i32, i32* %24, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %24, align 4
  br label %69

183:                                              ; preds = %69
  %184 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i32 0, i32 0
  %186 = load i32*, i32** %185, align 8
  %187 = load i32, i32* %9, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = load i32*, i32** %16, align 8
  store i32 %190, i32* %191, align 4
  br label %564

192:                                              ; preds = %64
  store i32 1, i32* %21, align 4
  br label %193

193:                                              ; preds = %552, %192
  %194 = load i32, i32* %21, align 4
  %195 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = sub nsw i32 %197, 1
  %199 = icmp slt i32 %194, %198
  br i1 %199, label %200, label %204

200:                                              ; preds = %193
  %201 = load i32, i32* %24, align 4
  %202 = load i32, i32* @MAX_SAMPLES, align 4
  %203 = icmp slt i32 %201, %202
  br label %204

204:                                              ; preds = %200, %193
  %205 = phi i1 [ false, %193 ], [ %203, %200 ]
  br i1 %205, label %206, label %555

206:                                              ; preds = %204
  %207 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %208 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %207, i32 0, i32 1
  %209 = load %struct.TYPE_15__*, %struct.TYPE_15__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %209, i64 0
  %211 = getelementptr inbounds [3 x %struct.TYPE_15__*], [3 x %struct.TYPE_15__*]* %36, i64 0, i64 0
  store %struct.TYPE_15__* %210, %struct.TYPE_15__** %211, align 16
  %212 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %213 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %212, i32 0, i32 1
  %214 = load %struct.TYPE_15__*, %struct.TYPE_15__** %213, align 8
  %215 = load i32, i32* %21, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %214, i64 %216
  %218 = getelementptr inbounds [3 x %struct.TYPE_15__*], [3 x %struct.TYPE_15__*]* %36, i64 0, i64 1
  store %struct.TYPE_15__* %217, %struct.TYPE_15__** %218, align 8
  %219 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %220 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %219, i32 0, i32 1
  %221 = load %struct.TYPE_15__*, %struct.TYPE_15__** %220, align 8
  %222 = load i32, i32* %21, align 4
  %223 = add nsw i32 %222, 1
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %221, i64 %224
  %226 = getelementptr inbounds [3 x %struct.TYPE_15__*], [3 x %struct.TYPE_15__*]* %36, i64 0, i64 2
  store %struct.TYPE_15__* %225, %struct.TYPE_15__** %226, align 16
  store i32 1, i32* %17, align 4
  br label %227

227:                                              ; preds = %548, %206
  %228 = load i32, i32* %17, align 4
  %229 = load i32, i32* @SAMPLE_GRANULARITY, align 4
  %230 = icmp slt i32 %228, %229
  br i1 %230, label %231, label %235

231:                                              ; preds = %227
  %232 = load i32, i32* %24, align 4
  %233 = load i32, i32* @MAX_SAMPLES, align 4
  %234 = icmp slt i32 %232, %233
  br label %235

235:                                              ; preds = %231, %227
  %236 = phi i1 [ false, %227 ], [ %234, %231 ]
  br i1 %236, label %237, label %551

237:                                              ; preds = %235
  store i32 1, i32* %18, align 4
  br label %238

238:                                              ; preds = %544, %237
  %239 = load i32, i32* %18, align 4
  %240 = load i32, i32* @SAMPLE_GRANULARITY, align 4
  %241 = icmp slt i32 %239, %240
  br i1 %241, label %242, label %246

242:                                              ; preds = %238
  %243 = load i32, i32* %24, align 4
  %244 = load i32, i32* @MAX_SAMPLES, align 4
  %245 = icmp slt i32 %243, %244
  br label %246

246:                                              ; preds = %242, %238
  %247 = phi i1 [ false, %238 ], [ %245, %242 ]
  br i1 %247, label %248, label %547

248:                                              ; preds = %246
  store i32 1, i32* %19, align 4
  br label %249

249:                                              ; preds = %540, %248
  %250 = load i32, i32* %19, align 4
  %251 = load i32, i32* @SAMPLE_GRANULARITY, align 4
  %252 = icmp slt i32 %250, %251
  br i1 %252, label %253, label %257

253:                                              ; preds = %249
  %254 = load i32, i32* %24, align 4
  %255 = load i32, i32* @MAX_SAMPLES, align 4
  %256 = icmp slt i32 %254, %255
  br label %257

257:                                              ; preds = %253, %249
  %258 = phi i1 [ false, %249 ], [ %256, %253 ]
  br i1 %258, label %259, label %543

259:                                              ; preds = %257
  %260 = load i32, i32* %17, align 4
  %261 = sitofp i32 %260 to double
  %262 = load double*, double** %32, align 8
  %263 = getelementptr inbounds double, double* %262, i64 0
  store double %261, double* %263, align 8
  %264 = load i32, i32* %18, align 4
  %265 = sitofp i32 %264 to double
  %266 = load double*, double** %32, align 8
  %267 = getelementptr inbounds double, double* %266, i64 1
  store double %265, double* %267, align 8
  %268 = load i32, i32* %19, align 4
  %269 = sitofp i32 %268 to double
  %270 = load double*, double** %32, align 8
  %271 = getelementptr inbounds double, double* %270, i64 2
  store double %269, double* %271, align 8
  %272 = load double*, double** %32, align 8
  %273 = getelementptr inbounds double, double* %272, i64 0
  %274 = load double, double* %273, align 8
  %275 = load double*, double** %32, align 8
  %276 = getelementptr inbounds double, double* %275, i64 1
  %277 = load double, double* %276, align 8
  %278 = fadd double %274, %277
  %279 = load double*, double** %32, align 8
  %280 = getelementptr inbounds double, double* %279, i64 2
  %281 = load double, double* %280, align 8
  %282 = fadd double %278, %281
  %283 = fdiv double 1.000000e+00, %282
  %284 = fptrunc double %283 to float
  store float %284, float* %31, align 4
  %285 = load double*, double** %32, align 8
  %286 = load float, float* %31, align 4
  %287 = fpext float %286 to double
  %288 = load double*, double** %32, align 8
  %289 = call i32 @VectorScale(double* %285, double %287, double* %288)
  %290 = getelementptr inbounds [2 x float], [2 x float]* %33, i64 0, i64 1
  store float 0.000000e+00, float* %290, align 4
  %291 = getelementptr inbounds [2 x float], [2 x float]* %33, i64 0, i64 0
  store float 0.000000e+00, float* %291, align 4
  %292 = getelementptr inbounds [2 x float], [2 x float]* %34, i64 0, i64 1
  store float 0.000000e+00, float* %292, align 4
  %293 = getelementptr inbounds [2 x float], [2 x float]* %34, i64 0, i64 0
  store float 0.000000e+00, float* %293, align 4
  store float 0.000000e+00, float* %30, align 4
  store i32 0, i32* %20, align 4
  br label %294

294:                                              ; preds = %407, %259
  %295 = load i32, i32* %20, align 4
  %296 = icmp slt i32 %295, 3
  br i1 %296, label %297, label %410

297:                                              ; preds = %294
  %298 = load i32, i32* %20, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds [3 x %struct.TYPE_15__*], [3 x %struct.TYPE_15__*]* %36, i64 0, i64 %299
  %301 = load %struct.TYPE_15__*, %struct.TYPE_15__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %301, i32 0, i32 0
  %303 = load float*, float** %302, align 8
  %304 = getelementptr inbounds float, float* %303, i64 0
  %305 = load float, float* %304, align 4
  %306 = fpext float %305 to double
  %307 = load double*, double** %32, align 8
  %308 = load i32, i32* %20, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds double, double* %307, i64 %309
  %311 = load double, double* %310, align 8
  %312 = fmul double %306, %311
  %313 = getelementptr inbounds [2 x float], [2 x float]* %33, i64 0, i64 0
  %314 = load float, float* %313, align 4
  %315 = fpext float %314 to double
  %316 = fadd double %315, %312
  %317 = fptrunc double %316 to float
  store float %317, float* %313, align 4
  %318 = load i32, i32* %20, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds [3 x %struct.TYPE_15__*], [3 x %struct.TYPE_15__*]* %36, i64 0, i64 %319
  %321 = load %struct.TYPE_15__*, %struct.TYPE_15__** %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %321, i32 0, i32 0
  %323 = load float*, float** %322, align 8
  %324 = getelementptr inbounds float, float* %323, i64 1
  %325 = load float, float* %324, align 4
  %326 = fpext float %325 to double
  %327 = load double*, double** %32, align 8
  %328 = load i32, i32* %20, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds double, double* %327, i64 %329
  %331 = load double, double* %330, align 8
  %332 = fmul double %326, %331
  %333 = getelementptr inbounds [2 x float], [2 x float]* %33, i64 0, i64 1
  %334 = load float, float* %333, align 4
  %335 = fpext float %334 to double
  %336 = fadd double %335, %332
  %337 = fptrunc double %336 to float
  store float %337, float* %333, align 4
  %338 = load i32, i32* %20, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds [3 x %struct.TYPE_15__*], [3 x %struct.TYPE_15__*]* %36, i64 0, i64 %339
  %341 = load %struct.TYPE_15__*, %struct.TYPE_15__** %340, align 8
  %342 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %341, i32 0, i32 2
  %343 = load double**, double*** %342, align 8
  %344 = load i32, i32* %9, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds double*, double** %343, i64 %345
  %347 = load double*, double** %346, align 8
  %348 = getelementptr inbounds double, double* %347, i64 0
  %349 = load double, double* %348, align 8
  %350 = load double*, double** %32, align 8
  %351 = load i32, i32* %20, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds double, double* %350, i64 %352
  %354 = load double, double* %353, align 8
  %355 = fmul double %349, %354
  %356 = getelementptr inbounds [2 x float], [2 x float]* %34, i64 0, i64 0
  %357 = load float, float* %356, align 4
  %358 = fpext float %357 to double
  %359 = fadd double %358, %355
  %360 = fptrunc double %359 to float
  store float %360, float* %356, align 4
  %361 = load i32, i32* %20, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds [3 x %struct.TYPE_15__*], [3 x %struct.TYPE_15__*]* %36, i64 0, i64 %362
  %364 = load %struct.TYPE_15__*, %struct.TYPE_15__** %363, align 8
  %365 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %364, i32 0, i32 2
  %366 = load double**, double*** %365, align 8
  %367 = load i32, i32* %9, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds double*, double** %366, i64 %368
  %370 = load double*, double** %369, align 8
  %371 = getelementptr inbounds double, double* %370, i64 1
  %372 = load double, double* %371, align 8
  %373 = load double*, double** %32, align 8
  %374 = load i32, i32* %20, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds double, double* %373, i64 %375
  %377 = load double, double* %376, align 8
  %378 = fmul double %372, %377
  %379 = getelementptr inbounds [2 x float], [2 x float]* %34, i64 0, i64 1
  %380 = load float, float* %379, align 4
  %381 = fpext float %380 to double
  %382 = fadd double %381, %378
  %383 = fptrunc double %382 to float
  store float %383, float* %379, align 4
  %384 = load i32, i32* %20, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds [3 x %struct.TYPE_15__*], [3 x %struct.TYPE_15__*]* %36, i64 0, i64 %385
  %387 = load %struct.TYPE_15__*, %struct.TYPE_15__** %386, align 8
  %388 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %387, i32 0, i32 1
  %389 = load float**, float*** %388, align 8
  %390 = load i32, i32* %9, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds float*, float** %389, i64 %391
  %393 = load float*, float** %392, align 8
  %394 = getelementptr inbounds float, float* %393, i64 3
  %395 = load float, float* %394, align 4
  %396 = fpext float %395 to double
  %397 = load double*, double** %32, align 8
  %398 = load i32, i32* %20, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds double, double* %397, i64 %399
  %401 = load double, double* %400, align 8
  %402 = fmul double %396, %401
  %403 = load float, float* %30, align 4
  %404 = fpext float %403 to double
  %405 = fadd double %404, %402
  %406 = fptrunc double %405 to float
  store float %406, float* %30, align 4
  br label %407

407:                                              ; preds = %297
  %408 = load i32, i32* %20, align 4
  %409 = add nsw i32 %408, 1
  store i32 %409, i32* %20, align 4
  br label %294

410:                                              ; preds = %294
  %411 = getelementptr inbounds [2 x float], [2 x float]* %34, i64 0, i64 0
  %412 = load float, float* %411, align 4
  %413 = load i64, i64* @superSample, align 8
  %414 = sitofp i64 %413 to float
  %415 = fdiv float %412, %414
  %416 = fptosi float %415 to i32
  store i32 %416, i32* %22, align 4
  %417 = getelementptr inbounds [2 x float], [2 x float]* %34, i64 0, i64 1
  %418 = load float, float* %417, align 4
  %419 = load i64, i64* @superSample, align 8
  %420 = sitofp i64 %419 to float
  %421 = fdiv float %418, %420
  %422 = fptosi float %421 to i32
  store i32 %422, i32* %23, align 4
  %423 = load i32, i32* %22, align 4
  %424 = icmp slt i32 %423, 0
  br i1 %424, label %425, label %426

425:                                              ; preds = %410
  store i32 0, i32* %22, align 4
  br label %438

426:                                              ; preds = %410
  %427 = load i32, i32* %22, align 4
  %428 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %429 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %428, i32 0, i32 0
  %430 = load i32, i32* %429, align 8
  %431 = icmp sge i32 %427, %430
  br i1 %431, label %432, label %437

432:                                              ; preds = %426
  %433 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %434 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %433, i32 0, i32 0
  %435 = load i32, i32* %434, align 8
  %436 = sub nsw i32 %435, 1
  store i32 %436, i32* %22, align 4
  br label %437

437:                                              ; preds = %432, %426
  br label %438

438:                                              ; preds = %437, %425
  %439 = load i32, i32* %23, align 4
  %440 = icmp slt i32 %439, 0
  br i1 %440, label %441, label %442

441:                                              ; preds = %438
  store i32 0, i32* %23, align 4
  br label %454

442:                                              ; preds = %438
  %443 = load i32, i32* %23, align 4
  %444 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %445 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %444, i32 0, i32 1
  %446 = load i32, i32* %445, align 4
  %447 = icmp sge i32 %443, %446
  br i1 %447, label %448, label %453

448:                                              ; preds = %442
  %449 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %450 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %449, i32 0, i32 1
  %451 = load i32, i32* %450, align 4
  %452 = sub nsw i32 %451, 1
  store i32 %452, i32* %23, align 4
  br label %453

453:                                              ; preds = %448, %442
  br label %454

454:                                              ; preds = %453, %441
  %455 = load i32, i32* %9, align 4
  %456 = load i32, i32* %22, align 4
  %457 = load i32, i32* %23, align 4
  %458 = call float* @RAD_LUXEL(i32 %455, i32 %456, i32 %457)
  store float* %458, float** %35, align 8
  %459 = load float*, float** %35, align 8
  %460 = getelementptr inbounds float, float* %459, i64 0
  %461 = load float, float* %460, align 4
  %462 = fcmp olt float %461, 0.000000e+00
  br i1 %462, label %463, label %464

463:                                              ; preds = %454
  br label %540

464:                                              ; preds = %454
  %465 = load i32, i32* %24, align 4
  %466 = add nsw i32 %465, 1
  store i32 %466, i32* %24, align 4
  %467 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %468 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %467, i32 0, i32 1
  %469 = load %struct.TYPE_11__*, %struct.TYPE_11__** %468, align 8
  %470 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %469, i32 0, i32 2
  %471 = load i32, i32* %470, align 4
  %472 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %473 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %472, i32 0, i32 1
  %474 = load %struct.TYPE_11__*, %struct.TYPE_11__** %473, align 8
  %475 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %474, i32 0, i32 1
  %476 = load i32, i32* %475, align 4
  %477 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %478 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %477, i32 0, i32 1
  %479 = load %struct.TYPE_11__*, %struct.TYPE_11__** %478, align 8
  %480 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %479, i32 0, i32 0
  %481 = load i32, i32* %480, align 4
  %482 = getelementptr inbounds [2 x float], [2 x float]* %33, i64 0, i64 0
  %483 = load i32*, i32** %28, align 8
  %484 = call i32 @RadSampleImage(i32 %471, i32 %476, i32 %481, float* %482, i32* %483)
  %485 = icmp ne i32 %484, 0
  br i1 %485, label %494, label %486

486:                                              ; preds = %464
  %487 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %488 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %487, i32 0, i32 0
  %489 = load i32, i32* %488, align 8
  %490 = load i32*, i32** %28, align 8
  %491 = call i32 @VectorCopy(i32 %489, i32* %490)
  %492 = load i32*, i32** %28, align 8
  %493 = getelementptr inbounds i32, i32* %492, i64 3
  store i32 255, i32* %493, align 4
  br label %494

494:                                              ; preds = %486, %464
  store i32 0, i32* %17, align 4
  br label %495

495:                                              ; preds = %518, %494
  %496 = load i32, i32* %17, align 4
  %497 = icmp slt i32 %496, 3
  br i1 %497, label %498, label %521

498:                                              ; preds = %495
  %499 = load i32*, i32** %28, align 8
  %500 = load i32, i32* %17, align 4
  %501 = sext i32 %500 to i64
  %502 = getelementptr inbounds i32, i32* %499, i64 %501
  %503 = load i32, i32* %502, align 4
  %504 = sdiv i32 %503, 255
  %505 = sitofp i32 %504 to float
  %506 = load float*, float** %35, align 8
  %507 = load i32, i32* %17, align 4
  %508 = sext i32 %507 to i64
  %509 = getelementptr inbounds float, float* %506, i64 %508
  %510 = load float, float* %509, align 4
  %511 = fdiv float %510, 2.550000e+02
  %512 = fmul float %505, %511
  %513 = fpext float %512 to double
  %514 = load double*, double** %25, align 8
  %515 = load i32, i32* %17, align 4
  %516 = sext i32 %515 to i64
  %517 = getelementptr inbounds double, double* %514, i64 %516
  store double %513, double* %517, align 8
  br label %518

518:                                              ; preds = %498
  %519 = load i32, i32* %17, align 4
  %520 = add nsw i32 %519, 1
  store i32 %520, i32* %17, align 4
  br label %495

521:                                              ; preds = %495
  %522 = load double*, double** %25, align 8
  %523 = load double*, double** %26, align 8
  %524 = load double*, double** %27, align 8
  %525 = call i32 @AddPointToBounds(double* %522, double* %523, double* %524)
  %526 = load double*, double** %14, align 8
  %527 = load double*, double** %25, align 8
  %528 = load double*, double** %14, align 8
  %529 = call i32 @VectorAdd(double* %526, double* %527, double* %528)
  %530 = load i32*, i32** %28, align 8
  %531 = getelementptr inbounds i32, i32* %530, i64 3
  %532 = load i32, i32* %531, align 4
  %533 = sdiv i32 %532, 255
  %534 = sitofp i32 %533 to float
  %535 = load float, float* %30, align 4
  %536 = fdiv float %535, 2.550000e+02
  %537 = fmul float %534, %536
  %538 = load float, float* %29, align 4
  %539 = fadd float %538, %537
  store float %539, float* %29, align 4
  br label %540

540:                                              ; preds = %521, %463
  %541 = load i32, i32* %19, align 4
  %542 = add nsw i32 %541, 1
  store i32 %542, i32* %19, align 4
  br label %249

543:                                              ; preds = %257
  br label %544

544:                                              ; preds = %543
  %545 = load i32, i32* %18, align 4
  %546 = add nsw i32 %545, 1
  store i32 %546, i32* %18, align 4
  br label %238

547:                                              ; preds = %246
  br label %548

548:                                              ; preds = %547
  %549 = load i32, i32* %17, align 4
  %550 = add nsw i32 %549, 1
  store i32 %550, i32* %17, align 4
  br label %227

551:                                              ; preds = %235
  br label %552

552:                                              ; preds = %551
  %553 = load i32, i32* %21, align 4
  %554 = add nsw i32 %553, 1
  store i32 %554, i32* %21, align 4
  br label %193

555:                                              ; preds = %204
  %556 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %557 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %556, i32 0, i32 1
  %558 = load i32*, i32** %557, align 8
  %559 = load i32, i32* %9, align 4
  %560 = sext i32 %559 to i64
  %561 = getelementptr inbounds i32, i32* %558, i64 %560
  %562 = load i32, i32* %561, align 4
  %563 = load i32*, i32** %16, align 8
  store i32 %562, i32* %563, align 4
  br label %564

564:                                              ; preds = %555, %183
  %565 = load i32, i32* %24, align 4
  %566 = icmp sle i32 %565, 0
  br i1 %566, label %567, label %568

567:                                              ; preds = %564
  br label %603

568:                                              ; preds = %564
  %569 = load double*, double** %14, align 8
  %570 = load i32, i32* %24, align 4
  %571 = sitofp i32 %570 to double
  %572 = fdiv double 1.000000e+00, %571
  %573 = load double*, double** %14, align 8
  %574 = call i32 @VectorScale(double* %569, double %572, double* %573)
  store i32 0, i32* %17, align 4
  br label %575

575:                                              ; preds = %600, %568
  %576 = load i32, i32* %17, align 4
  %577 = icmp slt i32 %576, 3
  br i1 %577, label %578, label %603

578:                                              ; preds = %575
  %579 = load double*, double** %27, align 8
  %580 = load i32, i32* %17, align 4
  %581 = sext i32 %580 to i64
  %582 = getelementptr inbounds double, double* %579, i64 %581
  %583 = load double, double* %582, align 8
  %584 = load double*, double** %26, align 8
  %585 = load i32, i32* %17, align 4
  %586 = sext i32 %585 to i64
  %587 = getelementptr inbounds double, double* %584, i64 %586
  %588 = load double, double* %587, align 8
  %589 = fsub double %583, %588
  %590 = load double*, double** %27, align 8
  %591 = load i32, i32* %17, align 4
  %592 = sext i32 %591 to i64
  %593 = getelementptr inbounds double, double* %590, i64 %592
  %594 = load double, double* %593, align 8
  %595 = fmul double %589, %594
  %596 = load double*, double** %15, align 8
  %597 = load i32, i32* %17, align 4
  %598 = sext i32 %597 to i64
  %599 = getelementptr inbounds double, double* %596, i64 %598
  store double %595, double* %599, align 8
  br label %600

600:                                              ; preds = %578
  %601 = load i32, i32* %17, align 4
  %602 = add nsw i32 %601, 1
  store i32 %602, i32* %17, align 4
  br label %575

603:                                              ; preds = %51, %567, %575
  ret void
}

declare dso_local i32 @ClearBounds(double*, double*) #1

declare dso_local i32 @VectorClear(double*) #1

declare dso_local i32 @RadSampleImage(i32, i32, i32, float*, i32*) #1

declare dso_local i32 @VectorCopy(i32, i32*) #1

declare dso_local i32 @AddPointToBounds(double*, double*, double*) #1

declare dso_local i32 @VectorAdd(double*, double*, double*) #1

declare dso_local i32 @VectorScale(double*, double, double*) #1

declare dso_local float* @RAD_LUXEL(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
