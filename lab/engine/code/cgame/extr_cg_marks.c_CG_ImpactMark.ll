; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_marks.c_CG_ImpactMark.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_marks.c_CG_ImpactMark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_12__ = type { double*, i64, i32 }
%struct.TYPE_13__ = type { float*, i32, %struct.TYPE_11__, i32, i64, i32 }
%struct.TYPE_11__ = type { i32 }

@MAX_MARK_FRAGMENTS = common dso_local global i32 0, align 4
@MAX_MARK_POINTS = common dso_local global i32 0, align 4
@cg_addMarks = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@.str = private unnamed_addr constant [38 x i8] c"CG_ImpactMark called with <= 0 radius\00", align 1
@MAX_VERTS_ON_POLY = common dso_local global i32 0, align 4
@cg = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@markTotal = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CG_ImpactMark(i32 %0, float* %1, float* %2, float %3, float %4, float %5, float %6, float %7, i64 %8, float %9, i64 %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca float*, align 8
  %14 = alloca float*, align 8
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca i64, align 8
  %21 = alloca float, align 4
  %22 = alloca i64, align 8
  %23 = alloca [3 x float*], align 16
  %24 = alloca float, align 4
  %25 = alloca [4 x float*], align 16
  %26 = alloca [4 x float], align 16
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i8*, align 8
  %31 = alloca i64, align 8
  %32 = alloca %struct.TYPE_14__*, align 8
  %33 = alloca i64, align 8
  %34 = alloca float*, align 8
  %35 = alloca i32, align 4
  %36 = alloca %struct.TYPE_12__*, align 8
  %37 = alloca i8*, align 8
  %38 = alloca i64, align 8
  %39 = alloca %struct.TYPE_13__*, align 8
  %40 = alloca float*, align 8
  store i32 %0, i32* %12, align 4
  store float* %1, float** %13, align 8
  store float* %2, float** %14, align 8
  store float %3, float* %15, align 4
  store float %4, float* %16, align 4
  store float %5, float* %17, align 4
  store float %6, float* %18, align 4
  store float %7, float* %19, align 4
  store i64 %8, i64* %20, align 8
  store float %9, float* %21, align 4
  store i64 %10, i64* %22, align 8
  %41 = load i32, i32* @MAX_MARK_FRAGMENTS, align 4
  %42 = zext i32 %41 to i64
  %43 = call i8* @llvm.stacksave()
  store i8* %43, i8** %30, align 8
  %44 = alloca %struct.TYPE_14__, i64 %42, align 16
  store i64 %42, i64* %31, align 8
  %45 = load i32, i32* @MAX_MARK_POINTS, align 4
  %46 = zext i32 %45 to i64
  %47 = alloca float*, i64 %46, align 16
  store i64 %46, i64* %33, align 8
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg_addMarks, i32 0, i32 0), align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %11
  store i32 1, i32* %35, align 4
  br label %376

51:                                               ; preds = %11
  %52 = load float, float* %21, align 4
  %53 = fcmp ole float %52, 0.000000e+00
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = call i32 @CG_Error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %51
  %57 = load float*, float** %14, align 8
  %58 = getelementptr inbounds [3 x float*], [3 x float*]* %23, i64 0, i64 0
  %59 = load float*, float** %58, align 16
  %60 = call i32 @VectorNormalize2(float* %57, float* %59)
  %61 = getelementptr inbounds [3 x float*], [3 x float*]* %23, i64 0, i64 1
  %62 = load float*, float** %61, align 8
  %63 = getelementptr inbounds [3 x float*], [3 x float*]* %23, i64 0, i64 0
  %64 = load float*, float** %63, align 16
  %65 = call i32 @PerpendicularVector(float* %62, float* %64)
  %66 = getelementptr inbounds [3 x float*], [3 x float*]* %23, i64 0, i64 2
  %67 = load float*, float** %66, align 16
  %68 = getelementptr inbounds [3 x float*], [3 x float*]* %23, i64 0, i64 0
  %69 = load float*, float** %68, align 16
  %70 = getelementptr inbounds [3 x float*], [3 x float*]* %23, i64 0, i64 1
  %71 = load float*, float** %70, align 8
  %72 = load float, float* %15, align 4
  %73 = call i32 @RotatePointAroundVector(float* %67, float* %69, float* %71, float %72)
  %74 = getelementptr inbounds [3 x float*], [3 x float*]* %23, i64 0, i64 0
  %75 = load float*, float** %74, align 16
  %76 = getelementptr inbounds [3 x float*], [3 x float*]* %23, i64 0, i64 2
  %77 = load float*, float** %76, align 16
  %78 = getelementptr inbounds [3 x float*], [3 x float*]* %23, i64 0, i64 1
  %79 = load float*, float** %78, align 8
  %80 = call i32 @CrossProduct(float* %75, float* %77, float* %79)
  %81 = load float, float* %21, align 4
  %82 = fpext float %81 to double
  %83 = fdiv double 5.000000e-01, %82
  %84 = fptrunc double %83 to float
  store float %84, float* %24, align 4
  store i32 0, i32* %27, align 4
  br label %85

85:                                               ; preds = %201, %56
  %86 = load i32, i32* %27, align 4
  %87 = icmp slt i32 %86, 3
  br i1 %87, label %88, label %204

88:                                               ; preds = %85
  %89 = load float*, float** %13, align 8
  %90 = load i32, i32* %27, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds float, float* %89, i64 %91
  %93 = load float, float* %92, align 4
  %94 = load float, float* %21, align 4
  %95 = getelementptr inbounds [3 x float*], [3 x float*]* %23, i64 0, i64 1
  %96 = load float*, float** %95, align 8
  %97 = load i32, i32* %27, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds float, float* %96, i64 %98
  %100 = load float, float* %99, align 4
  %101 = fmul float %94, %100
  %102 = fsub float %93, %101
  %103 = load float, float* %21, align 4
  %104 = getelementptr inbounds [3 x float*], [3 x float*]* %23, i64 0, i64 2
  %105 = load float*, float** %104, align 16
  %106 = load i32, i32* %27, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds float, float* %105, i64 %107
  %109 = load float, float* %108, align 4
  %110 = fmul float %103, %109
  %111 = fsub float %102, %110
  %112 = getelementptr inbounds [4 x float*], [4 x float*]* %25, i64 0, i64 0
  %113 = load float*, float** %112, align 16
  %114 = load i32, i32* %27, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds float, float* %113, i64 %115
  store float %111, float* %116, align 4
  %117 = load float*, float** %13, align 8
  %118 = load i32, i32* %27, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds float, float* %117, i64 %119
  %121 = load float, float* %120, align 4
  %122 = load float, float* %21, align 4
  %123 = getelementptr inbounds [3 x float*], [3 x float*]* %23, i64 0, i64 1
  %124 = load float*, float** %123, align 8
  %125 = load i32, i32* %27, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds float, float* %124, i64 %126
  %128 = load float, float* %127, align 4
  %129 = fmul float %122, %128
  %130 = fadd float %121, %129
  %131 = load float, float* %21, align 4
  %132 = getelementptr inbounds [3 x float*], [3 x float*]* %23, i64 0, i64 2
  %133 = load float*, float** %132, align 16
  %134 = load i32, i32* %27, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds float, float* %133, i64 %135
  %137 = load float, float* %136, align 4
  %138 = fmul float %131, %137
  %139 = fsub float %130, %138
  %140 = getelementptr inbounds [4 x float*], [4 x float*]* %25, i64 0, i64 1
  %141 = load float*, float** %140, align 8
  %142 = load i32, i32* %27, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds float, float* %141, i64 %143
  store float %139, float* %144, align 4
  %145 = load float*, float** %13, align 8
  %146 = load i32, i32* %27, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds float, float* %145, i64 %147
  %149 = load float, float* %148, align 4
  %150 = load float, float* %21, align 4
  %151 = getelementptr inbounds [3 x float*], [3 x float*]* %23, i64 0, i64 1
  %152 = load float*, float** %151, align 8
  %153 = load i32, i32* %27, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds float, float* %152, i64 %154
  %156 = load float, float* %155, align 4
  %157 = fmul float %150, %156
  %158 = fadd float %149, %157
  %159 = load float, float* %21, align 4
  %160 = getelementptr inbounds [3 x float*], [3 x float*]* %23, i64 0, i64 2
  %161 = load float*, float** %160, align 16
  %162 = load i32, i32* %27, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds float, float* %161, i64 %163
  %165 = load float, float* %164, align 4
  %166 = fmul float %159, %165
  %167 = fadd float %158, %166
  %168 = getelementptr inbounds [4 x float*], [4 x float*]* %25, i64 0, i64 2
  %169 = load float*, float** %168, align 16
  %170 = load i32, i32* %27, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds float, float* %169, i64 %171
  store float %167, float* %172, align 4
  %173 = load float*, float** %13, align 8
  %174 = load i32, i32* %27, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds float, float* %173, i64 %175
  %177 = load float, float* %176, align 4
  %178 = load float, float* %21, align 4
  %179 = getelementptr inbounds [3 x float*], [3 x float*]* %23, i64 0, i64 1
  %180 = load float*, float** %179, align 8
  %181 = load i32, i32* %27, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds float, float* %180, i64 %182
  %184 = load float, float* %183, align 4
  %185 = fmul float %178, %184
  %186 = fsub float %177, %185
  %187 = load float, float* %21, align 4
  %188 = getelementptr inbounds [3 x float*], [3 x float*]* %23, i64 0, i64 2
  %189 = load float*, float** %188, align 16
  %190 = load i32, i32* %27, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds float, float* %189, i64 %191
  %193 = load float, float* %192, align 4
  %194 = fmul float %187, %193
  %195 = fadd float %186, %194
  %196 = getelementptr inbounds [4 x float*], [4 x float*]* %25, i64 0, i64 3
  %197 = load float*, float** %196, align 8
  %198 = load i32, i32* %27, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds float, float* %197, i64 %199
  store float %195, float* %200, align 4
  br label %201

201:                                              ; preds = %88
  %202 = load i32, i32* %27, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %27, align 4
  br label %85

204:                                              ; preds = %85
  %205 = load float*, float** %14, align 8
  %206 = load float*, float** %34, align 8
  %207 = call i32 @VectorScale(float* %205, i32 -20, float* %206)
  %208 = getelementptr inbounds [4 x float*], [4 x float*]* %25, i64 0, i64 0
  %209 = bitcast float** %208 to i8*
  %210 = load float*, float** %34, align 8
  %211 = load i32, i32* @MAX_MARK_POINTS, align 4
  %212 = getelementptr inbounds float*, float** %47, i64 0
  %213 = load float*, float** %212, align 16
  %214 = load i32, i32* @MAX_MARK_FRAGMENTS, align 4
  %215 = call i32 @trap_CM_MarkFragments(i32 4, i8* %209, float* %210, i32 %211, float* %213, i32 %214, %struct.TYPE_14__* %44)
  store i32 %215, i32* %29, align 4
  %216 = load float, float* %16, align 4
  %217 = fmul float %216, 2.550000e+02
  %218 = getelementptr inbounds [4 x float], [4 x float]* %26, i64 0, i64 0
  store float %217, float* %218, align 16
  %219 = load float, float* %17, align 4
  %220 = fmul float %219, 2.550000e+02
  %221 = getelementptr inbounds [4 x float], [4 x float]* %26, i64 0, i64 1
  store float %220, float* %221, align 4
  %222 = load float, float* %18, align 4
  %223 = fmul float %222, 2.550000e+02
  %224 = getelementptr inbounds [4 x float], [4 x float]* %26, i64 0, i64 2
  store float %223, float* %224, align 8
  %225 = load float, float* %19, align 4
  %226 = fmul float %225, 2.550000e+02
  %227 = getelementptr inbounds [4 x float], [4 x float]* %26, i64 0, i64 3
  store float %226, float* %227, align 4
  store i32 0, i32* %27, align 4
  store %struct.TYPE_14__* %44, %struct.TYPE_14__** %32, align 8
  br label %228

228:                                              ; preds = %370, %204
  %229 = load i32, i32* %27, align 4
  %230 = load i32, i32* %29, align 4
  %231 = icmp slt i32 %229, %230
  br i1 %231, label %232, label %375

232:                                              ; preds = %228
  %233 = load i32, i32* @MAX_VERTS_ON_POLY, align 4
  %234 = zext i32 %233 to i64
  %235 = call i8* @llvm.stacksave()
  store i8* %235, i8** %37, align 8
  %236 = alloca %struct.TYPE_12__, i64 %234, align 16
  store i64 %234, i64* %38, align 8
  %237 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %238 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* @MAX_VERTS_ON_POLY, align 4
  %241 = icmp sgt i32 %239, %240
  br i1 %241, label %242, label %246

242:                                              ; preds = %232
  %243 = load i32, i32* @MAX_VERTS_ON_POLY, align 4
  %244 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %245 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %244, i32 0, i32 0
  store i32 %243, i32* %245, align 4
  br label %246

246:                                              ; preds = %242, %232
  store i32 0, i32* %28, align 4
  store %struct.TYPE_12__* %236, %struct.TYPE_12__** %36, align 8
  br label %247

247:                                              ; preds = %303, %246
  %248 = load i32, i32* %28, align 4
  %249 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %250 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = icmp slt i32 %248, %251
  br i1 %252, label %253, label %308

253:                                              ; preds = %247
  %254 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %255 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = load i32, i32* %28, align 4
  %258 = add nsw i32 %256, %257
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds float*, float** %47, i64 %259
  %261 = load float*, float** %260, align 8
  %262 = load %struct.TYPE_12__*, %struct.TYPE_12__** %36, align 8
  %263 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 8
  %265 = call i32 @VectorCopy(float* %261, i32 %264)
  %266 = load %struct.TYPE_12__*, %struct.TYPE_12__** %36, align 8
  %267 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %266, i32 0, i32 2
  %268 = load i32, i32* %267, align 8
  %269 = load float*, float** %13, align 8
  %270 = load float*, float** %40, align 8
  %271 = call i32 @VectorSubtract(i32 %268, float* %269, float* %270)
  %272 = load float*, float** %40, align 8
  %273 = getelementptr inbounds [3 x float*], [3 x float*]* %23, i64 0, i64 1
  %274 = load float*, float** %273, align 8
  %275 = call float @DotProduct(float* %272, float* %274)
  %276 = load float, float* %24, align 4
  %277 = fmul float %275, %276
  %278 = fpext float %277 to double
  %279 = fadd double 5.000000e-01, %278
  %280 = load %struct.TYPE_12__*, %struct.TYPE_12__** %36, align 8
  %281 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %280, i32 0, i32 0
  %282 = load double*, double** %281, align 8
  %283 = getelementptr inbounds double, double* %282, i64 0
  store double %279, double* %283, align 8
  %284 = load float*, float** %40, align 8
  %285 = getelementptr inbounds [3 x float*], [3 x float*]* %23, i64 0, i64 2
  %286 = load float*, float** %285, align 16
  %287 = call float @DotProduct(float* %284, float* %286)
  %288 = load float, float* %24, align 4
  %289 = fmul float %287, %288
  %290 = fpext float %289 to double
  %291 = fadd double 5.000000e-01, %290
  %292 = load %struct.TYPE_12__*, %struct.TYPE_12__** %36, align 8
  %293 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %292, i32 0, i32 0
  %294 = load double*, double** %293, align 8
  %295 = getelementptr inbounds double, double* %294, i64 1
  store double %291, double* %295, align 8
  %296 = getelementptr inbounds [4 x float], [4 x float]* %26, i64 0, i64 0
  %297 = bitcast float* %296 to i32*
  %298 = load i32, i32* %297, align 16
  %299 = load %struct.TYPE_12__*, %struct.TYPE_12__** %36, align 8
  %300 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %299, i32 0, i32 1
  %301 = load i64, i64* %300, align 8
  %302 = inttoptr i64 %301 to i32*
  store i32 %298, i32* %302, align 4
  br label %303

303:                                              ; preds = %253
  %304 = load i32, i32* %28, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %28, align 4
  %306 = load %struct.TYPE_12__*, %struct.TYPE_12__** %36, align 8
  %307 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %306, i32 1
  store %struct.TYPE_12__* %307, %struct.TYPE_12__** %36, align 8
  br label %247

308:                                              ; preds = %247
  %309 = load i64, i64* %22, align 8
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %311, label %317

311:                                              ; preds = %308
  %312 = load i32, i32* %12, align 4
  %313 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %314 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 4
  %316 = call i32 @trap_R_AddPolyToScene(i32 %312, i32 %315, %struct.TYPE_12__* %236)
  store i32 7, i32* %35, align 4
  br label %366

317:                                              ; preds = %308
  %318 = call %struct.TYPE_13__* (...) @CG_AllocMark()
  store %struct.TYPE_13__* %318, %struct.TYPE_13__** %39, align 8
  %319 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @cg, i32 0, i32 0), align 4
  %320 = load %struct.TYPE_13__*, %struct.TYPE_13__** %39, align 8
  %321 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %320, i32 0, i32 5
  store i32 %319, i32* %321, align 8
  %322 = load i64, i64* %20, align 8
  %323 = load %struct.TYPE_13__*, %struct.TYPE_13__** %39, align 8
  %324 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %323, i32 0, i32 4
  store i64 %322, i64* %324, align 8
  %325 = load i32, i32* %12, align 4
  %326 = load %struct.TYPE_13__*, %struct.TYPE_13__** %39, align 8
  %327 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %326, i32 0, i32 3
  store i32 %325, i32* %327, align 8
  %328 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %329 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 4
  %331 = load %struct.TYPE_13__*, %struct.TYPE_13__** %39, align 8
  %332 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %331, i32 0, i32 2
  %333 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %332, i32 0, i32 0
  store i32 %330, i32* %333, align 4
  %334 = load float, float* %16, align 4
  %335 = load %struct.TYPE_13__*, %struct.TYPE_13__** %39, align 8
  %336 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %335, i32 0, i32 0
  %337 = load float*, float** %336, align 8
  %338 = getelementptr inbounds float, float* %337, i64 0
  store float %334, float* %338, align 4
  %339 = load float, float* %17, align 4
  %340 = load %struct.TYPE_13__*, %struct.TYPE_13__** %39, align 8
  %341 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %340, i32 0, i32 0
  %342 = load float*, float** %341, align 8
  %343 = getelementptr inbounds float, float* %342, i64 1
  store float %339, float* %343, align 4
  %344 = load float, float* %18, align 4
  %345 = load %struct.TYPE_13__*, %struct.TYPE_13__** %39, align 8
  %346 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %345, i32 0, i32 0
  %347 = load float*, float** %346, align 8
  %348 = getelementptr inbounds float, float* %347, i64 2
  store float %344, float* %348, align 4
  %349 = load float, float* %19, align 4
  %350 = load %struct.TYPE_13__*, %struct.TYPE_13__** %39, align 8
  %351 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %350, i32 0, i32 0
  %352 = load float*, float** %351, align 8
  %353 = getelementptr inbounds float, float* %352, i64 3
  store float %349, float* %353, align 4
  %354 = load %struct.TYPE_13__*, %struct.TYPE_13__** %39, align 8
  %355 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %354, i32 0, i32 1
  %356 = load i32, i32* %355, align 8
  %357 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %358 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 4
  %360 = sext i32 %359 to i64
  %361 = mul i64 %360, 24
  %362 = trunc i64 %361 to i32
  %363 = call i32 @memcpy(i32 %356, %struct.TYPE_12__* %236, i32 %362)
  %364 = load i32, i32* @markTotal, align 4
  %365 = add nsw i32 %364, 1
  store i32 %365, i32* @markTotal, align 4
  store i32 0, i32* %35, align 4
  br label %366

366:                                              ; preds = %317, %311
  %367 = load i8*, i8** %37, align 8
  call void @llvm.stackrestore(i8* %367)
  %368 = load i32, i32* %35, align 4
  switch i32 %368, label %380 [
    i32 0, label %369
    i32 7, label %370
  ]

369:                                              ; preds = %366
  br label %370

370:                                              ; preds = %369, %366
  %371 = load i32, i32* %27, align 4
  %372 = add nsw i32 %371, 1
  store i32 %372, i32* %27, align 4
  %373 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %374 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %373, i32 1
  store %struct.TYPE_14__* %374, %struct.TYPE_14__** %32, align 8
  br label %228

375:                                              ; preds = %228
  store i32 0, i32* %35, align 4
  br label %376

376:                                              ; preds = %375, %50
  %377 = load i8*, i8** %30, align 8
  call void @llvm.stackrestore(i8* %377)
  %378 = load i32, i32* %35, align 4
  switch i32 %378, label %380 [
    i32 0, label %379
    i32 1, label %379
  ]

379:                                              ; preds = %376, %376
  ret void

380:                                              ; preds = %376, %366
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @CG_Error(i8*) #2

declare dso_local i32 @VectorNormalize2(float*, float*) #2

declare dso_local i32 @PerpendicularVector(float*, float*) #2

declare dso_local i32 @RotatePointAroundVector(float*, float*, float*, float) #2

declare dso_local i32 @CrossProduct(float*, float*, float*) #2

declare dso_local i32 @VectorScale(float*, i32, float*) #2

declare dso_local i32 @trap_CM_MarkFragments(i32, i8*, float*, i32, float*, i32, %struct.TYPE_14__*) #2

declare dso_local i32 @VectorCopy(float*, i32) #2

declare dso_local i32 @VectorSubtract(i32, float*, float*) #2

declare dso_local float @DotProduct(float*, float*) #2

declare dso_local i32 @trap_R_AddPolyToScene(i32, i32, %struct.TYPE_12__*) #2

declare dso_local %struct.TYPE_13__* @CG_AllocMark(...) #2

declare dso_local i32 @memcpy(i32, %struct.TYPE_12__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
