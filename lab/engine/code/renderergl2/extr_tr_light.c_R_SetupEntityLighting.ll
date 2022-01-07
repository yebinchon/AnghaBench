; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_light.c_R_SetupEntityLighting.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_light.c_R_SetupEntityLighting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32*, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_18__ = type { i32 (float)* }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { float, i32*, i32 }
%struct.TYPE_15__ = type { i32*, i32*, i32*, %struct.TYPE_13__, i8**, i32, i64 }
%struct.TYPE_13__ = type { i32, i32*, i32*, i32* }

@qtrue = common dso_local global i64 0, align 8
@RF_LIGHTING_ORIGIN = common dso_local global i32 0, align 4
@RDF_NOWORLDMODEL = common dso_local global i32 0, align 4
@tr = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@DLIGHT_AT_RADIUS = common dso_local global float 0.000000e+00, align 4
@DLIGHT_MINIMUM_RADIUS = common dso_local global float 0.000000e+00, align 4
@r_debugLight = common dso_local global %struct.TYPE_19__* null, align 8
@ri = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R_SetupEntityLighting(%struct.TYPE_14__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca float, align 4
  %8 = alloca i32*, align 8
  %9 = alloca float, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %4, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 6
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %391

21:                                               ; preds = %2
  %22 = load i64, i64* @qtrue, align 8
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 6
  store i64 %22, i64* %24, align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @RF_LIGHTING_ORIGIN, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %21
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32*, i32** %11, align 8
  %38 = call i32 @VectorCopy(i32* %36, i32* %37)
  br label %46

39:                                               ; preds = %21
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = load i32*, i32** %11, align 8
  %45 = call i32 @VectorCopy(i32* %43, i32* %44)
  br label %46

46:                                               ; preds = %39, %32
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @RDF_NOWORLDMODEL, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %62, label %53

53:                                               ; preds = %46
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @tr, i32 0, i32 2), align 8
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @tr, i32 0, i32 2), align 8
  %61 = call i32 @R_SetupEntityLightingGrid(%struct.TYPE_15__* %59, %struct.TYPE_20__* %60)
  br label %96

62:                                               ; preds = %53, %46
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @tr, i32 0, i32 0), align 8
  %64 = mul nsw i32 %63, 150
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 2
  store i32 %64, i32* %68, align 4
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  store i32 %64, i32* %72, align 4
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  store i32 %64, i32* %76, align 4
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @tr, i32 0, i32 0), align 8
  %78 = mul nsw i32 %77, 150
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 2
  store i32 %78, i32* %82, align 4
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  store i32 %78, i32* %86, align 4
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  store i32 %78, i32* %90, align 4
  %91 = load i32*, i32** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @tr, i32 0, i32 1), align 8
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = call i32 @VectorCopy(i32* %91, i32* %94)
  br label %96

96:                                               ; preds = %62, %58
  %97 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @tr, i32 0, i32 0), align 8
  %98 = mul nsw i32 %97, 32
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, %98
  store i32 %104, i32* %102, align 4
  %105 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @tr, i32 0, i32 0), align 8
  %106 = mul nsw i32 %105, 32
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 1
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %111, %106
  store i32 %112, i32* %110, align 4
  %113 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @tr, i32 0, i32 0), align 8
  %114 = mul nsw i32 %113, 32
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 2
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %119, %114
  store i32 %120, i32* %118, align 4
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = call float @VectorLength(i32* %123)
  store float %124, float* %9, align 4
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 2
  %127 = load i32*, i32** %126, align 8
  %128 = load float, float* %9, align 4
  %129 = load i32*, i32** %10, align 8
  %130 = call i32 @VectorScale(i32* %127, float %128, i32* %129)
  store i32 0, i32* %5, align 4
  br label %131

131:                                              ; preds = %188, %96
  %132 = load i32, i32* %5, align 4
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = icmp slt i32 %132, %135
  br i1 %136, label %137, label %191

137:                                              ; preds = %131
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 2
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %139, align 8
  %141 = load i32, i32* %5, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i64 %142
  store %struct.TYPE_16__* %143, %struct.TYPE_16__** %6, align 8
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = load i32*, i32** %11, align 8
  %148 = load i32*, i32** %8, align 8
  %149 = call i32 @VectorSubtract(i32 %146, i32* %147, i32* %148)
  %150 = load i32*, i32** %8, align 8
  %151 = call float @VectorNormalize(i32* %150)
  store float %151, float* %9, align 4
  %152 = load float, float* @DLIGHT_AT_RADIUS, align 4
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 0
  %155 = load float, float* %154, align 8
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 0
  %158 = load float, float* %157, align 8
  %159 = fmul float %155, %158
  %160 = fmul float %152, %159
  store float %160, float* %7, align 4
  %161 = load float, float* %9, align 4
  %162 = load float, float* @DLIGHT_MINIMUM_RADIUS, align 4
  %163 = fcmp olt float %161, %162
  br i1 %163, label %164, label %166

164:                                              ; preds = %137
  %165 = load float, float* @DLIGHT_MINIMUM_RADIUS, align 4
  store float %165, float* %9, align 4
  br label %166

166:                                              ; preds = %164, %137
  %167 = load float, float* %7, align 4
  %168 = load float, float* %9, align 4
  %169 = load float, float* %9, align 4
  %170 = fmul float %168, %169
  %171 = fdiv float %167, %170
  store float %171, float* %9, align 4
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 1
  %174 = load i32*, i32** %173, align 8
  %175 = load float, float* %9, align 4
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 1
  %178 = load i32*, i32** %177, align 8
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 1
  %181 = load i32*, i32** %180, align 8
  %182 = call i32 @VectorMA(i32* %174, float %175, i32* %178, i32* %181)
  %183 = load i32*, i32** %10, align 8
  %184 = load float, float* %9, align 4
  %185 = load i32*, i32** %8, align 8
  %186 = load i32*, i32** %10, align 8
  %187 = call i32 @VectorMA(i32* %183, float %184, i32* %185, i32* %186)
  br label %188

188:                                              ; preds = %166
  %189 = load i32, i32* %5, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %5, align 4
  br label %131

191:                                              ; preds = %131
  %192 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %192, i32 0, i32 0
  %194 = load i32*, i32** %193, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 0
  %196 = load i32, i32* %195, align 4
  %197 = sitofp i32 %196 to float
  store float %197, float* %12, align 4
  %198 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %198, i32 0, i32 0
  %200 = load i32*, i32** %199, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 1
  %202 = load i32, i32* %201, align 4
  %203 = sitofp i32 %202 to float
  store float %203, float* %13, align 4
  %204 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %204, i32 0, i32 0
  %206 = load i32*, i32** %205, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 2
  %208 = load i32, i32* %207, align 4
  %209 = sitofp i32 %208 to float
  store float %209, float* %14, align 4
  %210 = load float, float* %12, align 4
  %211 = load float, float* %13, align 4
  %212 = call float @MAX(float %210, float %211)
  %213 = load float, float* %14, align 4
  %214 = call float @MAX(float %212, float %213)
  store float %214, float* %15, align 4
  %215 = load float, float* %15, align 4
  %216 = fcmp ogt float %215, 2.550000e+02
  br i1 %216, label %217, label %247

217:                                              ; preds = %191
  %218 = load float, float* %15, align 4
  %219 = fdiv float 2.550000e+02, %218
  store float %219, float* %15, align 4
  %220 = load float, float* %15, align 4
  %221 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %221, i32 0, i32 0
  %223 = load i32*, i32** %222, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 0
  %225 = load i32, i32* %224, align 4
  %226 = sitofp i32 %225 to float
  %227 = fmul float %226, %220
  %228 = fptosi float %227 to i32
  store i32 %228, i32* %224, align 4
  %229 = load float, float* %15, align 4
  %230 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %231 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %230, i32 0, i32 0
  %232 = load i32*, i32** %231, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 1
  %234 = load i32, i32* %233, align 4
  %235 = sitofp i32 %234 to float
  %236 = fmul float %235, %229
  %237 = fptosi float %236 to i32
  store i32 %237, i32* %233, align 4
  %238 = load float, float* %15, align 4
  %239 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %240 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %239, i32 0, i32 0
  %241 = load i32*, i32** %240, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 2
  %243 = load i32, i32* %242, align 4
  %244 = sitofp i32 %243 to float
  %245 = fmul float %244, %238
  %246 = fptosi float %245 to i32
  store i32 %246, i32* %242, align 4
  br label %247

247:                                              ; preds = %217, %191
  %248 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %249 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %248, i32 0, i32 1
  %250 = load i32*, i32** %249, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 0
  %252 = load i32, i32* %251, align 4
  %253 = sitofp i32 %252 to float
  store float %253, float* %12, align 4
  %254 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %254, i32 0, i32 1
  %256 = load i32*, i32** %255, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 1
  %258 = load i32, i32* %257, align 4
  %259 = sitofp i32 %258 to float
  store float %259, float* %13, align 4
  %260 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %261 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %260, i32 0, i32 1
  %262 = load i32*, i32** %261, align 8
  %263 = getelementptr inbounds i32, i32* %262, i64 2
  %264 = load i32, i32* %263, align 4
  %265 = sitofp i32 %264 to float
  store float %265, float* %14, align 4
  %266 = load float, float* %12, align 4
  %267 = load float, float* %13, align 4
  %268 = call float @MAX(float %266, float %267)
  %269 = load float, float* %14, align 4
  %270 = call float @MAX(float %268, float %269)
  store float %270, float* %15, align 4
  %271 = load float, float* %15, align 4
  %272 = fcmp ogt float %271, 2.550000e+02
  br i1 %272, label %273, label %303

273:                                              ; preds = %247
  %274 = load float, float* %15, align 4
  %275 = fdiv float 2.550000e+02, %274
  store float %275, float* %15, align 4
  %276 = load float, float* %15, align 4
  %277 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %278 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %277, i32 0, i32 1
  %279 = load i32*, i32** %278, align 8
  %280 = getelementptr inbounds i32, i32* %279, i64 0
  %281 = load i32, i32* %280, align 4
  %282 = sitofp i32 %281 to float
  %283 = fmul float %282, %276
  %284 = fptosi float %283 to i32
  store i32 %284, i32* %280, align 4
  %285 = load float, float* %15, align 4
  %286 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %287 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %286, i32 0, i32 1
  %288 = load i32*, i32** %287, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 1
  %290 = load i32, i32* %289, align 4
  %291 = sitofp i32 %290 to float
  %292 = fmul float %291, %285
  %293 = fptosi float %292 to i32
  store i32 %293, i32* %289, align 4
  %294 = load float, float* %15, align 4
  %295 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %296 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %295, i32 0, i32 1
  %297 = load i32*, i32** %296, align 8
  %298 = getelementptr inbounds i32, i32* %297, i64 2
  %299 = load i32, i32* %298, align 4
  %300 = sitofp i32 %299 to float
  %301 = fmul float %300, %294
  %302 = fptosi float %301 to i32
  store i32 %302, i32* %298, align 4
  br label %303

303:                                              ; preds = %273, %247
  %304 = load %struct.TYPE_19__*, %struct.TYPE_19__** @r_debugLight, align 8
  %305 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %304, i32 0, i32 0
  %306 = load i64, i64* %305, align 8
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %308, label %311

308:                                              ; preds = %303
  %309 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %310 = call i32 @LogLight(%struct.TYPE_15__* %309)
  br label %311

311:                                              ; preds = %308, %303
  %312 = load i32 (float)*, i32 (float)** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @ri, i32 0, i32 0), align 8
  %313 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %314 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %313, i32 0, i32 0
  %315 = load i32*, i32** %314, align 8
  %316 = getelementptr inbounds i32, i32* %315, i64 0
  %317 = load i32, i32* %316, align 4
  %318 = sitofp i32 %317 to float
  %319 = call i32 %312(float %318)
  %320 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %321 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %320, i32 0, i32 5
  %322 = getelementptr inbounds i32, i32* %321, i64 0
  store i32 %319, i32* %322, align 8
  %323 = load i32 (float)*, i32 (float)** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @ri, i32 0, i32 0), align 8
  %324 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %325 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %324, i32 0, i32 0
  %326 = load i32*, i32** %325, align 8
  %327 = getelementptr inbounds i32, i32* %326, i64 1
  %328 = load i32, i32* %327, align 4
  %329 = sitofp i32 %328 to float
  %330 = call i32 %323(float %329)
  %331 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %332 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %331, i32 0, i32 5
  %333 = getelementptr inbounds i32, i32* %332, i64 1
  store i32 %330, i32* %333, align 4
  %334 = load i32 (float)*, i32 (float)** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @ri, i32 0, i32 0), align 8
  %335 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %336 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %335, i32 0, i32 0
  %337 = load i32*, i32** %336, align 8
  %338 = getelementptr inbounds i32, i32* %337, i64 2
  %339 = load i32, i32* %338, align 4
  %340 = sitofp i32 %339 to float
  %341 = call i32 %334(float %340)
  %342 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %343 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %342, i32 0, i32 5
  %344 = getelementptr inbounds i32, i32* %343, i64 2
  store i32 %341, i32* %344, align 8
  %345 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %346 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %345, i32 0, i32 5
  %347 = getelementptr inbounds i32, i32* %346, i64 3
  store i32 255, i32* %347, align 4
  %348 = load i32*, i32** %10, align 8
  %349 = call float @VectorNormalize(i32* %348)
  %350 = load i32*, i32** %10, align 8
  %351 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %352 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %351, i32 0, i32 3
  %353 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %352, i32 0, i32 3
  %354 = load i32*, i32** %353, align 8
  %355 = getelementptr inbounds i32, i32* %354, i64 0
  %356 = load i32, i32* %355, align 4
  %357 = call i8* @DotProduct(i32* %350, i32 %356)
  %358 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %359 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %358, i32 0, i32 4
  %360 = load i8**, i8*** %359, align 8
  %361 = getelementptr inbounds i8*, i8** %360, i64 0
  store i8* %357, i8** %361, align 8
  %362 = load i32*, i32** %10, align 8
  %363 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %364 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %363, i32 0, i32 3
  %365 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %364, i32 0, i32 3
  %366 = load i32*, i32** %365, align 8
  %367 = getelementptr inbounds i32, i32* %366, i64 1
  %368 = load i32, i32* %367, align 4
  %369 = call i8* @DotProduct(i32* %362, i32 %368)
  %370 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %371 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %370, i32 0, i32 4
  %372 = load i8**, i8*** %371, align 8
  %373 = getelementptr inbounds i8*, i8** %372, i64 1
  store i8* %369, i8** %373, align 8
  %374 = load i32*, i32** %10, align 8
  %375 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %376 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %375, i32 0, i32 3
  %377 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %376, i32 0, i32 3
  %378 = load i32*, i32** %377, align 8
  %379 = getelementptr inbounds i32, i32* %378, i64 2
  %380 = load i32, i32* %379, align 4
  %381 = call i8* @DotProduct(i32* %374, i32 %380)
  %382 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %383 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %382, i32 0, i32 4
  %384 = load i8**, i8*** %383, align 8
  %385 = getelementptr inbounds i8*, i8** %384, i64 2
  store i8* %381, i8** %385, align 8
  %386 = load i32*, i32** %10, align 8
  %387 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %388 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %387, i32 0, i32 2
  %389 = load i32*, i32** %388, align 8
  %390 = call i32 @VectorCopy(i32* %386, i32* %389)
  br label %391

391:                                              ; preds = %311, %20
  ret void
}

declare dso_local i32 @VectorCopy(i32*, i32*) #1

declare dso_local i32 @R_SetupEntityLightingGrid(%struct.TYPE_15__*, %struct.TYPE_20__*) #1

declare dso_local float @VectorLength(i32*) #1

declare dso_local i32 @VectorScale(i32*, float, i32*) #1

declare dso_local i32 @VectorSubtract(i32, i32*, i32*) #1

declare dso_local float @VectorNormalize(i32*) #1

declare dso_local i32 @VectorMA(i32*, float, i32*, i32*) #1

declare dso_local float @MAX(float, float) #1

declare dso_local i32 @LogLight(%struct.TYPE_15__*) #1

declare dso_local i8* @DotProduct(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
