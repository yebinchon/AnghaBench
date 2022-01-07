; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_light.c_R_SetupEntityLighting.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_light.c_R_SetupEntityLighting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i64, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_19__ = type { i32 (i64)* }
%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { float, i32*, i32 }
%struct.TYPE_16__ = type { i32*, i32*, i32*, %struct.TYPE_14__, i32, i64 }
%struct.TYPE_14__ = type { i32, i32*, i32, i32 }

@qtrue = common dso_local global i64 0, align 8
@RF_LIGHTING_ORIGIN = common dso_local global i32 0, align 4
@RDF_NOWORLDMODEL = common dso_local global i32 0, align 4
@tr = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@DLIGHT_AT_RADIUS = common dso_local global float 0.000000e+00, align 4
@DLIGHT_MINIMUM_RADIUS = common dso_local global float 0.000000e+00, align 4
@r_debugLight = common dso_local global %struct.TYPE_20__* null, align 8
@ri = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R_SetupEntityLighting(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca float, align 4
  %8 = alloca i32*, align 8
  %9 = alloca float, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %4, align 8
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 5
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %300

17:                                               ; preds = %2
  %18 = load i64, i64* @qtrue, align 8
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 5
  store i64 %18, i64* %20, align 8
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @RF_LIGHTING_ORIGIN, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %17
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %11, align 8
  %34 = call i32 @VectorCopy(i32 %32, i32* %33)
  br label %42

35:                                               ; preds = %17
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i32*, i32** %11, align 8
  %41 = call i32 @VectorCopy(i32 %39, i32* %40)
  br label %42

42:                                               ; preds = %35, %28
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @RDF_NOWORLDMODEL, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %42
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @tr, i32 0, i32 3), align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %56 = call i32 @R_SetupEntityLightingGrid(%struct.TYPE_16__* %55)
  br label %91

57:                                               ; preds = %49, %42
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @tr, i32 0, i32 0), align 8
  %59 = mul nsw i32 %58, 150
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 2
  store i32 %59, i32* %63, align 4
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  store i32 %59, i32* %67, align 4
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  store i32 %59, i32* %71, align 4
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @tr, i32 0, i32 0), align 8
  %73 = mul nsw i32 %72, 150
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 2
  store i32 %73, i32* %77, align 4
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  store i32 %73, i32* %81, align 4
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  store i32 %73, i32* %85, align 4
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @tr, i32 0, i32 2), align 8
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @VectorCopy(i32 %86, i32* %89)
  br label %91

91:                                               ; preds = %57, %54
  %92 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @tr, i32 0, i32 0), align 8
  %93 = mul nsw i32 %92, 32
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, %93
  store i32 %99, i32* %97, align 4
  %100 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @tr, i32 0, i32 0), align 8
  %101 = mul nsw i32 %100, 32
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 1
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, %101
  store i32 %107, i32* %105, align 4
  %108 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @tr, i32 0, i32 0), align 8
  %109 = mul nsw i32 %108, 32
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 2
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %114, %109
  store i32 %115, i32* %113, align 4
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = call float @VectorLength(i32* %118)
  store float %119, float* %9, align 4
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 2
  %122 = load i32*, i32** %121, align 8
  %123 = load float, float* %9, align 4
  %124 = load i32*, i32** %10, align 8
  %125 = call i32 @VectorScale(i32* %122, float %123, i32* %124)
  store i32 0, i32* %5, align 4
  br label %126

126:                                              ; preds = %183, %91
  %127 = load i32, i32* %5, align 4
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = icmp slt i32 %127, %130
  br i1 %131, label %132, label %186

132:                                              ; preds = %126
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 2
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %134, align 8
  %136 = load i32, i32* %5, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i64 %137
  store %struct.TYPE_17__* %138, %struct.TYPE_17__** %6, align 8
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = load i32*, i32** %11, align 8
  %143 = load i32*, i32** %8, align 8
  %144 = call i32 @VectorSubtract(i32 %141, i32* %142, i32* %143)
  %145 = load i32*, i32** %8, align 8
  %146 = call float @VectorNormalize(i32* %145)
  store float %146, float* %9, align 4
  %147 = load float, float* @DLIGHT_AT_RADIUS, align 4
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 0
  %150 = load float, float* %149, align 8
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 0
  %153 = load float, float* %152, align 8
  %154 = fmul float %150, %153
  %155 = fmul float %147, %154
  store float %155, float* %7, align 4
  %156 = load float, float* %9, align 4
  %157 = load float, float* @DLIGHT_MINIMUM_RADIUS, align 4
  %158 = fcmp olt float %156, %157
  br i1 %158, label %159, label %161

159:                                              ; preds = %132
  %160 = load float, float* @DLIGHT_MINIMUM_RADIUS, align 4
  store float %160, float* %9, align 4
  br label %161

161:                                              ; preds = %159, %132
  %162 = load float, float* %7, align 4
  %163 = load float, float* %9, align 4
  %164 = load float, float* %9, align 4
  %165 = fmul float %163, %164
  %166 = fdiv float %162, %165
  store float %166, float* %9, align 4
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i32 0, i32 1
  %169 = load i32*, i32** %168, align 8
  %170 = load float, float* %9, align 4
  %171 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i32 0, i32 1
  %173 = load i32*, i32** %172, align 8
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 1
  %176 = load i32*, i32** %175, align 8
  %177 = call i32 @VectorMA(i32* %169, float %170, i32* %173, i32* %176)
  %178 = load i32*, i32** %10, align 8
  %179 = load float, float* %9, align 4
  %180 = load i32*, i32** %8, align 8
  %181 = load i32*, i32** %10, align 8
  %182 = call i32 @VectorMA(i32* %178, float %179, i32* %180, i32* %181)
  br label %183

183:                                              ; preds = %161
  %184 = load i32, i32* %5, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %5, align 4
  br label %126

186:                                              ; preds = %126
  store i32 0, i32* %5, align 4
  br label %187

187:                                              ; preds = %211, %186
  %188 = load i32, i32* %5, align 4
  %189 = icmp slt i32 %188, 3
  br i1 %189, label %190, label %214

190:                                              ; preds = %187
  %191 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %191, i32 0, i32 0
  %193 = load i32*, i32** %192, align 8
  %194 = load i32, i32* %5, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %193, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = sext i32 %197 to i64
  %199 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @tr, i32 0, i32 1), align 8
  %200 = icmp sgt i64 %198, %199
  br i1 %200, label %201, label %210

201:                                              ; preds = %190
  %202 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @tr, i32 0, i32 1), align 8
  %203 = trunc i64 %202 to i32
  %204 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %204, i32 0, i32 0
  %206 = load i32*, i32** %205, align 8
  %207 = load i32, i32* %5, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %206, i64 %208
  store i32 %203, i32* %209, align 4
  br label %210

210:                                              ; preds = %201, %190
  br label %211

211:                                              ; preds = %210
  %212 = load i32, i32* %5, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %5, align 4
  br label %187

214:                                              ; preds = %187
  %215 = load %struct.TYPE_20__*, %struct.TYPE_20__** @r_debugLight, align 8
  %216 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %214
  %220 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %221 = call i32 @LogLight(%struct.TYPE_16__* %220)
  br label %222

222:                                              ; preds = %219, %214
  %223 = load i32 (i64)*, i32 (i64)** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @ri, i32 0, i32 0), align 8
  %224 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %224, i32 0, i32 0
  %226 = load i32*, i32** %225, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 0
  %228 = load i32, i32* %227, align 4
  %229 = sext i32 %228 to i64
  %230 = call i32 %223(i64 %229)
  %231 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %232 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %231, i32 0, i32 4
  %233 = getelementptr inbounds i32, i32* %232, i64 0
  store i32 %230, i32* %233, align 8
  %234 = load i32 (i64)*, i32 (i64)** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @ri, i32 0, i32 0), align 8
  %235 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %236 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %235, i32 0, i32 0
  %237 = load i32*, i32** %236, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 1
  %239 = load i32, i32* %238, align 4
  %240 = sext i32 %239 to i64
  %241 = call i32 %234(i64 %240)
  %242 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %243 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %242, i32 0, i32 4
  %244 = getelementptr inbounds i32, i32* %243, i64 1
  store i32 %241, i32* %244, align 4
  %245 = load i32 (i64)*, i32 (i64)** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @ri, i32 0, i32 0), align 8
  %246 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %247 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %246, i32 0, i32 0
  %248 = load i32*, i32** %247, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 2
  %250 = load i32, i32* %249, align 4
  %251 = sext i32 %250 to i64
  %252 = call i32 %245(i64 %251)
  %253 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %254 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %253, i32 0, i32 4
  %255 = getelementptr inbounds i32, i32* %254, i64 2
  store i32 %252, i32* %255, align 8
  %256 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %257 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %256, i32 0, i32 4
  %258 = getelementptr inbounds i32, i32* %257, i64 3
  store i32 255, i32* %258, align 4
  %259 = load i32*, i32** %10, align 8
  %260 = call float @VectorNormalize(i32* %259)
  %261 = load i32*, i32** %10, align 8
  %262 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %263 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %262, i32 0, i32 3
  %264 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %263, i32 0, i32 1
  %265 = load i32*, i32** %264, align 8
  %266 = getelementptr inbounds i32, i32* %265, i64 0
  %267 = load i32, i32* %266, align 4
  %268 = call i8* @DotProduct(i32* %261, i32 %267)
  %269 = ptrtoint i8* %268 to i32
  %270 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %271 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %270, i32 0, i32 2
  %272 = load i32*, i32** %271, align 8
  %273 = getelementptr inbounds i32, i32* %272, i64 0
  store i32 %269, i32* %273, align 4
  %274 = load i32*, i32** %10, align 8
  %275 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %276 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %275, i32 0, i32 3
  %277 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %276, i32 0, i32 1
  %278 = load i32*, i32** %277, align 8
  %279 = getelementptr inbounds i32, i32* %278, i64 1
  %280 = load i32, i32* %279, align 4
  %281 = call i8* @DotProduct(i32* %274, i32 %280)
  %282 = ptrtoint i8* %281 to i32
  %283 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %284 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %283, i32 0, i32 2
  %285 = load i32*, i32** %284, align 8
  %286 = getelementptr inbounds i32, i32* %285, i64 1
  store i32 %282, i32* %286, align 4
  %287 = load i32*, i32** %10, align 8
  %288 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %289 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %288, i32 0, i32 3
  %290 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %289, i32 0, i32 1
  %291 = load i32*, i32** %290, align 8
  %292 = getelementptr inbounds i32, i32* %291, i64 2
  %293 = load i32, i32* %292, align 4
  %294 = call i8* @DotProduct(i32* %287, i32 %293)
  %295 = ptrtoint i8* %294 to i32
  %296 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %297 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %296, i32 0, i32 2
  %298 = load i32*, i32** %297, align 8
  %299 = getelementptr inbounds i32, i32* %298, i64 2
  store i32 %295, i32* %299, align 4
  br label %300

300:                                              ; preds = %222, %16
  ret void
}

declare dso_local i32 @VectorCopy(i32, i32*) #1

declare dso_local i32 @R_SetupEntityLightingGrid(%struct.TYPE_16__*) #1

declare dso_local float @VectorLength(i32*) #1

declare dso_local i32 @VectorScale(i32*, float, i32*) #1

declare dso_local i32 @VectorSubtract(i32, i32*, i32*) #1

declare dso_local float @VectorNormalize(i32*) #1

declare dso_local i32 @VectorMA(i32*, float, i32*, i32*) #1

declare dso_local i32 @LogLight(%struct.TYPE_16__*) #1

declare dso_local i8* @DotProduct(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
