; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_weapons.c_CG_RailTrail.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_weapons.c_CG_RailTrail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { float }
%struct.TYPE_18__ = type { double }
%struct.TYPE_17__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_16__ = type { i32*, i32* }
%struct.TYPE_15__ = type { float, double, double, double*, %struct.TYPE_12__, i32, i32, %struct.TYPE_14__ }
%struct.TYPE_12__ = type { float, i32*, i32*, i32 }
%struct.TYPE_14__ = type { float, i32*, i32*, i32*, float, i32, i32, i32 }

@LE_FADE_RGB = common dso_local global i32 0, align 4
@cg = common dso_local global %struct.TYPE_20__ zeroinitializer, align 4
@cg_railTrailTime = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@RT_RAIL_CORE = common dso_local global i32 0, align 4
@cgs = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
@cg_oldRail = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@LEF_PUFF_DONT_SCALE = common dso_local global i32 0, align 4
@LE_MOVE_SCALE_FADE = common dso_local global i32 0, align 4
@RT_SPRITE = common dso_local global i32 0, align 4
@TR_LINEAR = common dso_local global i32 0, align 4
@RADIUS = common dso_local global i32 0, align 4
@ROTATION = common dso_local global i32 0, align 4
@SPACING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CG_RailTrail(%struct.TYPE_16__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [36 x i32*], align 16
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca float, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_15__*, align 8
  %17 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 2
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %20, 4
  store i32 %21, i32* %19, align 4
  %22 = call %struct.TYPE_15__* (...) @CG_AllocLocalEntity()
  store %struct.TYPE_15__* %22, %struct.TYPE_15__** %16, align 8
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 7
  store %struct.TYPE_14__* %24, %struct.TYPE_14__** %17, align 8
  %25 = load i32, i32* @LE_FADE_RGB, align 4
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 8
  %28 = load float, float* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @cg, i32 0, i32 0), align 4
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  store float %28, float* %30, align 8
  %31 = load float, float* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @cg, i32 0, i32 0), align 4
  %32 = fpext float %31 to double
  %33 = load double, double* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @cg_railTrailTime, i32 0, i32 0), align 8
  %34 = fadd double %32, %33
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 1
  store double %34, double* %36, align 8
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 1
  %39 = load double, double* %38, align 8
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  %42 = load float, float* %41, align 8
  %43 = fpext float %42 to double
  %44 = fsub double %39, %43
  %45 = fdiv double 1.000000e+00, %44
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 2
  store double %45, double* %47, align 8
  %48 = load float, float* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @cg, i32 0, i32 0), align 4
  %49 = fdiv float %48, 1.000000e+03
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  store float %49, float* %51, align 8
  %52 = load i32, i32* @RT_RAIL_CORE, align 4
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 6
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cgs, i32 0, i32 0, i32 1), align 4
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 5
  store i32 %55, i32* %57, align 4
  %58 = load i32*, i32** %5, align 8
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @VectorCopy(i32* %58, i32* %61)
  %63 = load i32*, i32** %6, align 8
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @VectorCopy(i32* %63, i32* %66)
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = mul nsw i32 %72, 255
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 3
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  store i32 %73, i32* %77, align 4
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  %82 = load i32, i32* %81, align 4
  %83 = mul nsw i32 %82, 255
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 3
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  store i32 %83, i32* %87, align 4
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 2
  %92 = load i32, i32* %91, align 4
  %93 = mul nsw i32 %92, 255
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 3
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 2
  store i32 %93, i32* %97, align 4
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 3
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 3
  store i32 255, i32* %101, align 4
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = load i32, i32* %105, align 4
  %107 = sitofp i32 %106 to double
  %108 = fmul double %107, 7.500000e-01
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 3
  %111 = load double*, double** %110, align 8
  %112 = getelementptr inbounds double, double* %111, i64 0
  store double %108, double* %112, align 8
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 1
  %117 = load i32, i32* %116, align 4
  %118 = sitofp i32 %117 to double
  %119 = fmul double %118, 7.500000e-01
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 3
  %122 = load double*, double** %121, align 8
  %123 = getelementptr inbounds double, double* %122, i64 1
  store double %119, double* %123, align 8
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 2
  %128 = load i32, i32* %127, align 4
  %129 = sitofp i32 %128 to double
  %130 = fmul double %129, 7.500000e-01
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 3
  %133 = load double*, double** %132, align 8
  %134 = getelementptr inbounds double, double* %133, i64 2
  store double %130, double* %134, align 8
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 3
  %137 = load double*, double** %136, align 8
  %138 = getelementptr inbounds double, double* %137, i64 3
  store double 1.000000e+00, double* %138, align 8
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 7
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @AxisClear(i32 %141)
  %143 = load i64, i64* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cg_oldRail, i32 0, i32 0), align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %158

145:                                              ; preds = %3
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 2
  %150 = load i32, i32* %149, align 4
  %151 = sub nsw i32 %150, 8
  store i32 %151, i32* %149, align 4
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 2
  %154 = load i32*, i32** %153, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 2
  %156 = load i32, i32* %155, align 4
  %157 = sub nsw i32 %156, 8
  store i32 %157, i32* %155, align 4
  br label %393

158:                                              ; preds = %3
  %159 = load i32*, i32** %5, align 8
  %160 = load i32*, i32** %8, align 8
  %161 = call i32 @VectorCopy(i32* %159, i32* %160)
  %162 = load i32*, i32** %6, align 8
  %163 = load i32*, i32** %5, align 8
  %164 = load i32*, i32** %10, align 8
  %165 = call i32 @VectorSubtract(i32* %162, i32* %163, i32* %164)
  %166 = load i32*, i32** %10, align 8
  %167 = call float @VectorNormalize(i32* %166)
  store float %167, float* %12, align 4
  %168 = load i32*, i32** %11, align 8
  %169 = load i32*, i32** %10, align 8
  %170 = call i32 @PerpendicularVector(i32* %168, i32* %169)
  store i32 0, i32* %13, align 4
  br label %171

171:                                              ; preds = %184, %158
  %172 = load i32, i32* %13, align 4
  %173 = icmp slt i32 %172, 36
  br i1 %173, label %174, label %187

174:                                              ; preds = %171
  %175 = load i32, i32* %13, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [36 x i32*], [36 x i32*]* %7, i64 0, i64 %176
  %178 = load i32*, i32** %177, align 8
  %179 = load i32*, i32** %10, align 8
  %180 = load i32*, i32** %11, align 8
  %181 = load i32, i32* %13, align 4
  %182 = mul nsw i32 %181, 10
  %183 = call i32 @RotatePointAroundVector(i32* %178, i32* %179, i32* %180, i32 %182)
  br label %184

184:                                              ; preds = %174
  %185 = load i32, i32* %13, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %13, align 4
  br label %171

187:                                              ; preds = %171
  %188 = load i32*, i32** %8, align 8
  %189 = load i32*, i32** %10, align 8
  %190 = load i32*, i32** %8, align 8
  %191 = call i32 @VectorMA(i32* %188, i32 20, i32* %189, i32* %190)
  %192 = load i32*, i32** %10, align 8
  %193 = load i32*, i32** %10, align 8
  %194 = call i32 @VectorScale(i32* %192, i32 5, i32* %193)
  store i32 -1, i32* %15, align 4
  store i32 18, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %195

195:                                              ; preds = %390, %187
  %196 = load i32, i32* %13, align 4
  %197 = sitofp i32 %196 to float
  %198 = load float, float* %12, align 4
  %199 = fcmp olt float %197, %198
  br i1 %199, label %200, label %393

200:                                              ; preds = %195
  %201 = load i32, i32* %13, align 4
  %202 = load i32, i32* %15, align 4
  %203 = icmp ne i32 %201, %202
  br i1 %203, label %204, label %382

204:                                              ; preds = %200
  %205 = load i32, i32* %13, align 4
  %206 = add nsw i32 %205, 5
  store i32 %206, i32* %15, align 4
  %207 = call %struct.TYPE_15__* (...) @CG_AllocLocalEntity()
  store %struct.TYPE_15__* %207, %struct.TYPE_15__** %16, align 8
  %208 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %209 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %208, i32 0, i32 7
  store %struct.TYPE_14__* %209, %struct.TYPE_14__** %17, align 8
  %210 = load i32, i32* @LEF_PUFF_DONT_SCALE, align 4
  %211 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %212 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %211, i32 0, i32 6
  store i32 %210, i32* %212, align 4
  %213 = load i32, i32* @LE_MOVE_SCALE_FADE, align 4
  %214 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %215 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %214, i32 0, i32 5
  store i32 %213, i32* %215, align 8
  %216 = load float, float* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @cg, i32 0, i32 0), align 4
  %217 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %218 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %217, i32 0, i32 0
  store float %216, float* %218, align 8
  %219 = load float, float* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @cg, i32 0, i32 0), align 4
  %220 = load i32, i32* %13, align 4
  %221 = ashr i32 %220, 1
  %222 = sitofp i32 %221 to float
  %223 = fadd float %219, %222
  %224 = fadd float %223, 6.000000e+02
  %225 = fpext float %224 to double
  %226 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %227 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %226, i32 0, i32 1
  store double %225, double* %227, align 8
  %228 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %229 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %228, i32 0, i32 1
  %230 = load double, double* %229, align 8
  %231 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %232 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %231, i32 0, i32 0
  %233 = load float, float* %232, align 8
  %234 = fpext float %233 to double
  %235 = fsub double %230, %234
  %236 = fdiv double 1.000000e+00, %235
  %237 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %238 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %237, i32 0, i32 2
  store double %236, double* %238, align 8
  %239 = load float, float* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @cg, i32 0, i32 0), align 4
  %240 = fdiv float %239, 1.000000e+03
  %241 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %242 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %241, i32 0, i32 0
  store float %240, float* %242, align 8
  %243 = load i32, i32* @RT_SPRITE, align 4
  %244 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %245 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %244, i32 0, i32 6
  store i32 %243, i32* %245, align 8
  %246 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %247 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %246, i32 0, i32 4
  store float 0x3FF19999A0000000, float* %247, align 8
  %248 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cgs, i32 0, i32 0, i32 0), align 4
  %249 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %250 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %249, i32 0, i32 5
  store i32 %248, i32* %250, align 4
  %251 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %252 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %251, i32 0, i32 1
  %253 = load i32*, i32** %252, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 0
  %255 = load i32, i32* %254, align 4
  %256 = mul nsw i32 %255, 255
  %257 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %258 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %257, i32 0, i32 3
  %259 = load i32*, i32** %258, align 8
  %260 = getelementptr inbounds i32, i32* %259, i64 0
  store i32 %256, i32* %260, align 4
  %261 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %262 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %261, i32 0, i32 1
  %263 = load i32*, i32** %262, align 8
  %264 = getelementptr inbounds i32, i32* %263, i64 1
  %265 = load i32, i32* %264, align 4
  %266 = mul nsw i32 %265, 255
  %267 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %268 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %267, i32 0, i32 3
  %269 = load i32*, i32** %268, align 8
  %270 = getelementptr inbounds i32, i32* %269, i64 1
  store i32 %266, i32* %270, align 4
  %271 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %272 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %271, i32 0, i32 1
  %273 = load i32*, i32** %272, align 8
  %274 = getelementptr inbounds i32, i32* %273, i64 2
  %275 = load i32, i32* %274, align 4
  %276 = mul nsw i32 %275, 255
  %277 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %278 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %277, i32 0, i32 3
  %279 = load i32*, i32** %278, align 8
  %280 = getelementptr inbounds i32, i32* %279, i64 2
  store i32 %276, i32* %280, align 4
  %281 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %282 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %281, i32 0, i32 3
  %283 = load i32*, i32** %282, align 8
  %284 = getelementptr inbounds i32, i32* %283, i64 3
  store i32 255, i32* %284, align 4
  %285 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %286 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %285, i32 0, i32 1
  %287 = load i32*, i32** %286, align 8
  %288 = getelementptr inbounds i32, i32* %287, i64 0
  %289 = load i32, i32* %288, align 4
  %290 = sitofp i32 %289 to double
  %291 = fmul double %290, 7.500000e-01
  %292 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %293 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %292, i32 0, i32 3
  %294 = load double*, double** %293, align 8
  %295 = getelementptr inbounds double, double* %294, i64 0
  store double %291, double* %295, align 8
  %296 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %297 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %296, i32 0, i32 1
  %298 = load i32*, i32** %297, align 8
  %299 = getelementptr inbounds i32, i32* %298, i64 1
  %300 = load i32, i32* %299, align 4
  %301 = sitofp i32 %300 to double
  %302 = fmul double %301, 7.500000e-01
  %303 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %304 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %303, i32 0, i32 3
  %305 = load double*, double** %304, align 8
  %306 = getelementptr inbounds double, double* %305, i64 1
  store double %302, double* %306, align 8
  %307 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %308 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %307, i32 0, i32 1
  %309 = load i32*, i32** %308, align 8
  %310 = getelementptr inbounds i32, i32* %309, i64 2
  %311 = load i32, i32* %310, align 4
  %312 = sitofp i32 %311 to double
  %313 = fmul double %312, 7.500000e-01
  %314 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %315 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %314, i32 0, i32 3
  %316 = load double*, double** %315, align 8
  %317 = getelementptr inbounds double, double* %316, i64 2
  store double %313, double* %317, align 8
  %318 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %319 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %318, i32 0, i32 3
  %320 = load double*, double** %319, align 8
  %321 = getelementptr inbounds double, double* %320, i64 3
  store double 1.000000e+00, double* %321, align 8
  %322 = load i32, i32* @TR_LINEAR, align 4
  %323 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %324 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %323, i32 0, i32 4
  %325 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %324, i32 0, i32 3
  store i32 %322, i32* %325, align 8
  %326 = load float, float* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @cg, i32 0, i32 0), align 4
  %327 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %328 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %327, i32 0, i32 4
  %329 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %328, i32 0, i32 0
  store float %326, float* %329, align 8
  %330 = load i32*, i32** %8, align 8
  %331 = load i32*, i32** %9, align 8
  %332 = call i32 @VectorCopy(i32* %330, i32* %331)
  %333 = load i32*, i32** %9, align 8
  %334 = load i32, i32* %14, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds [36 x i32*], [36 x i32*]* %7, i64 0, i64 %335
  %337 = load i32*, i32** %336, align 8
  %338 = load i32*, i32** %9, align 8
  %339 = call i32 @VectorMA(i32* %333, i32 4, i32* %337, i32* %338)
  %340 = load i32*, i32** %9, align 8
  %341 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %342 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %341, i32 0, i32 4
  %343 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %342, i32 0, i32 1
  %344 = load i32*, i32** %343, align 8
  %345 = call i32 @VectorCopy(i32* %340, i32* %344)
  %346 = load i32, i32* %14, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds [36 x i32*], [36 x i32*]* %7, i64 0, i64 %347
  %349 = load i32*, i32** %348, align 8
  %350 = getelementptr inbounds i32, i32* %349, i64 0
  %351 = load i32, i32* %350, align 4
  %352 = mul nsw i32 %351, 6
  %353 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %354 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %353, i32 0, i32 4
  %355 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %354, i32 0, i32 2
  %356 = load i32*, i32** %355, align 8
  %357 = getelementptr inbounds i32, i32* %356, i64 0
  store i32 %352, i32* %357, align 4
  %358 = load i32, i32* %14, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds [36 x i32*], [36 x i32*]* %7, i64 0, i64 %359
  %361 = load i32*, i32** %360, align 8
  %362 = getelementptr inbounds i32, i32* %361, i64 1
  %363 = load i32, i32* %362, align 4
  %364 = mul nsw i32 %363, 6
  %365 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %366 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %365, i32 0, i32 4
  %367 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %366, i32 0, i32 2
  %368 = load i32*, i32** %367, align 8
  %369 = getelementptr inbounds i32, i32* %368, i64 1
  store i32 %364, i32* %369, align 4
  %370 = load i32, i32* %14, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds [36 x i32*], [36 x i32*]* %7, i64 0, i64 %371
  %373 = load i32*, i32** %372, align 8
  %374 = getelementptr inbounds i32, i32* %373, i64 2
  %375 = load i32, i32* %374, align 4
  %376 = mul nsw i32 %375, 6
  %377 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %378 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %377, i32 0, i32 4
  %379 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %378, i32 0, i32 2
  %380 = load i32*, i32** %379, align 8
  %381 = getelementptr inbounds i32, i32* %380, i64 2
  store i32 %376, i32* %381, align 4
  br label %382

382:                                              ; preds = %204, %200
  %383 = load i32*, i32** %8, align 8
  %384 = load i32*, i32** %10, align 8
  %385 = load i32*, i32** %8, align 8
  %386 = call i32 @VectorAdd(i32* %383, i32* %384, i32* %385)
  %387 = load i32, i32* %14, align 4
  %388 = add nsw i32 %387, 1
  %389 = srem i32 %388, 36
  store i32 %389, i32* %14, align 4
  br label %390

390:                                              ; preds = %382
  %391 = load i32, i32* %13, align 4
  %392 = add nsw i32 %391, 5
  store i32 %392, i32* %13, align 4
  br label %195

393:                                              ; preds = %145, %195
  ret void
}

declare dso_local %struct.TYPE_15__* @CG_AllocLocalEntity(...) #1

declare dso_local i32 @VectorCopy(i32*, i32*) #1

declare dso_local i32 @AxisClear(i32) #1

declare dso_local i32 @VectorSubtract(i32*, i32*, i32*) #1

declare dso_local float @VectorNormalize(i32*) #1

declare dso_local i32 @PerpendicularVector(i32*, i32*) #1

declare dso_local i32 @RotatePointAroundVector(i32*, i32*, i32*, i32) #1

declare dso_local i32 @VectorMA(i32*, i32, i32*, i32*) #1

declare dso_local i32 @VectorScale(i32*, i32, i32*) #1

declare dso_local i32 @VectorAdd(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
