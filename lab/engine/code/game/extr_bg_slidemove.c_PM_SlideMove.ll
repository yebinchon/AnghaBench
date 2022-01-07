; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_bg_slidemove.c_PM_SlideMove.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_bg_slidemove.c_PM_SlideMove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_12__*, i32, i32, i32, i32 (%struct.TYPE_13__*, double*, i32, i32, double*, i32, i32)* }
%struct.TYPE_12__ = type { double*, double, double*, i64, i32 }
%struct.TYPE_13__ = type { i32, double*, %struct.TYPE_11__, i32, i64 }
%struct.TYPE_11__ = type { double* }
%struct.TYPE_14__ = type { double, float, %struct.TYPE_10__, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { double* }

@MAX_CLIP_PLANES = common dso_local global i32 0, align 4
@pm = common dso_local global %struct.TYPE_15__* null, align 8
@pml = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@OVERCLIP = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PM_SlideMove(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double*, align 8
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca double*, align 8
  %12 = alloca double*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_13__, align 8
  %17 = alloca double*, align 8
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca double*, align 8
  %21 = alloca double*, align 8
  %22 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %23 = load i32, i32* @MAX_CLIP_PLANES, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %9, align 8
  %26 = alloca double*, i64 %24, align 16
  store i64 %24, i64* %10, align 8
  store i32 4, i32* %5, align 4
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** @pm, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load double*, double** %30, align 8
  %32 = load double*, double** %11, align 8
  %33 = call i32 @VectorCopy(double* %31, double* %32)
  %34 = load i32, i32* %3, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %95

36:                                               ; preds = %1
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** @pm, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load double*, double** %40, align 8
  %42 = load double*, double** %20, align 8
  %43 = call i32 @VectorCopy(double* %41, double* %42)
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** @pm, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 1
  %48 = load double, double* %47, align 8
  %49 = load double, double* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @pml, i32 0, i32 0), align 8
  %50 = fmul double %48, %49
  %51 = load double*, double** %20, align 8
  %52 = getelementptr inbounds double, double* %51, i64 2
  %53 = load double, double* %52, align 8
  %54 = fsub double %53, %50
  store double %54, double* %52, align 8
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** @pm, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = load double*, double** %58, align 8
  %60 = getelementptr inbounds double, double* %59, i64 2
  %61 = load double, double* %60, align 8
  %62 = load double*, double** %20, align 8
  %63 = getelementptr inbounds double, double* %62, i64 2
  %64 = load double, double* %63, align 8
  %65 = fadd double %61, %64
  %66 = fmul double %65, 5.000000e-01
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** @pm, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load double*, double** %70, align 8
  %72 = getelementptr inbounds double, double* %71, i64 2
  store double %66, double* %72, align 8
  %73 = load double*, double** %20, align 8
  %74 = getelementptr inbounds double, double* %73, i64 2
  %75 = load double, double* %74, align 8
  %76 = load double*, double** %11, align 8
  %77 = getelementptr inbounds double, double* %76, i64 2
  store double %75, double* %77, align 8
  %78 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @pml, i32 0, i32 3), align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %94

80:                                               ; preds = %36
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** @pm, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = load double*, double** %84, align 8
  %86 = load double*, double** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @pml, i32 0, i32 2, i32 0, i32 0), align 8
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** @pm, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = load double*, double** %90, align 8
  %92 = load i32, i32* @OVERCLIP, align 4
  %93 = call i32 @PM_ClipVelocity(double* %85, double* %86, double* %91, i32 %92)
  br label %94

94:                                               ; preds = %80, %36
  br label %95

95:                                               ; preds = %94, %1
  %96 = load double, double* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @pml, i32 0, i32 0), align 8
  %97 = fptrunc double %96 to float
  store float %97, float* %18, align 4
  %98 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @pml, i32 0, i32 3), align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %95
  store i32 1, i32* %8, align 4
  %101 = load double*, double** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @pml, i32 0, i32 2, i32 0, i32 0), align 8
  %102 = getelementptr inbounds double*, double** %26, i64 0
  %103 = load double*, double** %102, align 16
  %104 = call i32 @VectorCopy(double* %101, double* %103)
  br label %106

105:                                              ; preds = %95
  store i32 0, i32* %8, align 4
  br label %106

106:                                              ; preds = %105, %100
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** @pm, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 0
  %111 = load double*, double** %110, align 8
  %112 = load i32, i32* %8, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds double*, double** %26, i64 %113
  %115 = load double*, double** %114, align 8
  %116 = call i32 @VectorNormalize2(double* %111, double* %115)
  %117 = load i32, i32* %8, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %8, align 4
  store i32 0, i32* %4, align 4
  br label %119

119:                                              ; preds = %467, %106
  %120 = load i32, i32* %4, align 4
  %121 = load i32, i32* %5, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %470

123:                                              ; preds = %119
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** @pm, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 2
  %128 = load double*, double** %127, align 8
  %129 = load float, float* %18, align 4
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** @pm, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 0
  %134 = load double*, double** %133, align 8
  %135 = load double*, double** %17, align 8
  %136 = call i32 @VectorMA(double* %128, float %129, double* %134, double* %135)
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** @pm, align 8
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 4
  %139 = load i32 (%struct.TYPE_13__*, double*, i32, i32, double*, i32, i32)*, i32 (%struct.TYPE_13__*, double*, i32, i32, double*, i32, i32)** %138, align 8
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** @pm, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 2
  %144 = load double*, double** %143, align 8
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** @pm, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** @pm, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = load double*, double** %17, align 8
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** @pm, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** @pm, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = call i32 %139(%struct.TYPE_13__* %16, double* %144, i32 %147, i32 %150, double* %151, i32 %156, i32 %159)
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 4
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %172

164:                                              ; preds = %123
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** @pm, align 8
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 0
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 0
  %169 = load double*, double** %168, align 8
  %170 = getelementptr inbounds double, double* %169, i64 2
  store double 0.000000e+00, double* %170, align 8
  %171 = load i32, i32* @qtrue, align 4
  store i32 %171, i32* %2, align 4
  store i32 1, i32* %22, align 4
  br label %500

172:                                              ; preds = %123
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = icmp sgt i32 %174, 0
  br i1 %175, label %176, label %185

176:                                              ; preds = %172
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  %178 = load double*, double** %177, align 8
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** @pm, align 8
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 0
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 2
  %183 = load double*, double** %182, align 8
  %184 = call i32 @VectorCopy(double* %178, double* %183)
  br label %185

185:                                              ; preds = %176, %172
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = icmp eq i32 %187, 1
  br i1 %188, label %189, label %190

189:                                              ; preds = %185
  br label %470

190:                                              ; preds = %185
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 3
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @PM_AddTouchEnt(i32 %192)
  %194 = load float, float* %18, align 4
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = sitofp i32 %196 to float
  %198 = fmul float %194, %197
  %199 = load float, float* %18, align 4
  %200 = fsub float %199, %198
  store float %200, float* %18, align 4
  %201 = load i32, i32* %8, align 4
  %202 = load i32, i32* @MAX_CLIP_PLANES, align 4
  %203 = icmp sge i32 %201, %202
  br i1 %203, label %204, label %212

204:                                              ; preds = %190
  %205 = load %struct.TYPE_15__*, %struct.TYPE_15__** @pm, align 8
  %206 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %205, i32 0, i32 0
  %207 = load %struct.TYPE_12__*, %struct.TYPE_12__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i32 0, i32 0
  %209 = load double*, double** %208, align 8
  %210 = call i32 @VectorClear(double* %209)
  %211 = load i32, i32* @qtrue, align 4
  store i32 %211, i32* %2, align 4
  store i32 1, i32* %22, align 4
  br label %500

212:                                              ; preds = %190
  store i32 0, i32* %13, align 4
  br label %213

213:                                              ; preds = %243, %212
  %214 = load i32, i32* %13, align 4
  %215 = load i32, i32* %8, align 4
  %216 = icmp slt i32 %214, %215
  br i1 %216, label %217, label %246

217:                                              ; preds = %213
  %218 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 2
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i32 0, i32 0
  %220 = load double*, double** %219, align 8
  %221 = load i32, i32* %13, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds double*, double** %26, i64 %222
  %224 = load double*, double** %223, align 8
  %225 = call double @DotProduct(double* %220, double* %224)
  %226 = fcmp ogt double %225, 0x3FEFAE147AE147AE
  br i1 %226, label %227, label %242

227:                                              ; preds = %217
  %228 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 2
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %228, i32 0, i32 0
  %230 = load double*, double** %229, align 8
  %231 = load %struct.TYPE_15__*, %struct.TYPE_15__** @pm, align 8
  %232 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %231, i32 0, i32 0
  %233 = load %struct.TYPE_12__*, %struct.TYPE_12__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i32 0, i32 0
  %235 = load double*, double** %234, align 8
  %236 = load %struct.TYPE_15__*, %struct.TYPE_15__** @pm, align 8
  %237 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %236, i32 0, i32 0
  %238 = load %struct.TYPE_12__*, %struct.TYPE_12__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %238, i32 0, i32 0
  %240 = load double*, double** %239, align 8
  %241 = call i32 @VectorAdd(double* %230, double* %235, double* %240)
  br label %246

242:                                              ; preds = %217
  br label %243

243:                                              ; preds = %242
  %244 = load i32, i32* %13, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %13, align 4
  br label %213

246:                                              ; preds = %227, %213
  %247 = load i32, i32* %13, align 4
  %248 = load i32, i32* %8, align 4
  %249 = icmp slt i32 %247, %248
  br i1 %249, label %250, label %251

250:                                              ; preds = %246
  br label %467

251:                                              ; preds = %246
  %252 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 2
  %253 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %252, i32 0, i32 0
  %254 = load double*, double** %253, align 8
  %255 = load i32, i32* %8, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds double*, double** %26, i64 %256
  %258 = load double*, double** %257, align 8
  %259 = call i32 @VectorCopy(double* %254, double* %258)
  %260 = load i32, i32* %8, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %8, align 4
  store i32 0, i32* %13, align 4
  br label %262

262:                                              ; preds = %463, %251
  %263 = load i32, i32* %13, align 4
  %264 = load i32, i32* %8, align 4
  %265 = icmp slt i32 %263, %264
  br i1 %265, label %266, label %466

266:                                              ; preds = %262
  %267 = load %struct.TYPE_15__*, %struct.TYPE_15__** @pm, align 8
  %268 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %267, i32 0, i32 0
  %269 = load %struct.TYPE_12__*, %struct.TYPE_12__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %269, i32 0, i32 0
  %271 = load double*, double** %270, align 8
  %272 = load i32, i32* %13, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds double*, double** %26, i64 %273
  %275 = load double*, double** %274, align 8
  %276 = call double @DotProduct(double* %271, double* %275)
  %277 = fptrunc double %276 to float
  store float %277, float* %19, align 4
  %278 = load float, float* %19, align 4
  %279 = fpext float %278 to double
  %280 = fcmp oge double %279, 1.000000e-01
  br i1 %280, label %281, label %282

281:                                              ; preds = %266
  br label %463

282:                                              ; preds = %266
  %283 = load float, float* %19, align 4
  %284 = fneg float %283
  %285 = load float, float* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @pml, i32 0, i32 1), align 8
  %286 = fcmp ogt float %284, %285
  br i1 %286, label %287, label %290

287:                                              ; preds = %282
  %288 = load float, float* %19, align 4
  %289 = fneg float %288
  store float %289, float* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @pml, i32 0, i32 1), align 8
  br label %290

290:                                              ; preds = %287, %282
  %291 = load %struct.TYPE_15__*, %struct.TYPE_15__** @pm, align 8
  %292 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %291, i32 0, i32 0
  %293 = load %struct.TYPE_12__*, %struct.TYPE_12__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %293, i32 0, i32 0
  %295 = load double*, double** %294, align 8
  %296 = load i32, i32* %13, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds double*, double** %26, i64 %297
  %299 = load double*, double** %298, align 8
  %300 = load double*, double** %12, align 8
  %301 = load i32, i32* @OVERCLIP, align 4
  %302 = call i32 @PM_ClipVelocity(double* %295, double* %299, double* %300, i32 %301)
  %303 = load i32, i32* %3, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %314

305:                                              ; preds = %290
  %306 = load double*, double** %20, align 8
  %307 = load i32, i32* %13, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds double*, double** %26, i64 %308
  %310 = load double*, double** %309, align 8
  %311 = load double*, double** %21, align 8
  %312 = load i32, i32* @OVERCLIP, align 4
  %313 = call i32 @PM_ClipVelocity(double* %306, double* %310, double* %311, i32 %312)
  br label %314

314:                                              ; preds = %305, %290
  store i32 0, i32* %14, align 4
  br label %315

315:                                              ; preds = %445, %314
  %316 = load i32, i32* %14, align 4
  %317 = load i32, i32* %8, align 4
  %318 = icmp slt i32 %316, %317
  br i1 %318, label %319, label %448

319:                                              ; preds = %315
  %320 = load i32, i32* %14, align 4
  %321 = load i32, i32* %13, align 4
  %322 = icmp eq i32 %320, %321
  br i1 %322, label %323, label %324

323:                                              ; preds = %319
  br label %445

324:                                              ; preds = %319
  %325 = load double*, double** %12, align 8
  %326 = load i32, i32* %14, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds double*, double** %26, i64 %327
  %329 = load double*, double** %328, align 8
  %330 = call double @DotProduct(double* %325, double* %329)
  %331 = fcmp oge double %330, 1.000000e-01
  br i1 %331, label %332, label %333

332:                                              ; preds = %324
  br label %445

333:                                              ; preds = %324
  %334 = load double*, double** %12, align 8
  %335 = load i32, i32* %14, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds double*, double** %26, i64 %336
  %338 = load double*, double** %337, align 8
  %339 = load double*, double** %12, align 8
  %340 = load i32, i32* @OVERCLIP, align 4
  %341 = call i32 @PM_ClipVelocity(double* %334, double* %338, double* %339, i32 %340)
  %342 = load i32, i32* %3, align 4
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %353

344:                                              ; preds = %333
  %345 = load double*, double** %21, align 8
  %346 = load i32, i32* %14, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds double*, double** %26, i64 %347
  %349 = load double*, double** %348, align 8
  %350 = load double*, double** %21, align 8
  %351 = load i32, i32* @OVERCLIP, align 4
  %352 = call i32 @PM_ClipVelocity(double* %345, double* %349, double* %350, i32 %351)
  br label %353

353:                                              ; preds = %344, %333
  %354 = load double*, double** %12, align 8
  %355 = load i32, i32* %13, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds double*, double** %26, i64 %356
  %358 = load double*, double** %357, align 8
  %359 = call double @DotProduct(double* %354, double* %358)
  %360 = fcmp oge double %359, 0.000000e+00
  br i1 %360, label %361, label %362

361:                                              ; preds = %353
  br label %445

362:                                              ; preds = %353
  %363 = load i32, i32* %13, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds double*, double** %26, i64 %364
  %366 = load double*, double** %365, align 8
  %367 = load i32, i32* %14, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds double*, double** %26, i64 %368
  %370 = load double*, double** %369, align 8
  %371 = load double*, double** %6, align 8
  %372 = call i32 @CrossProduct(double* %366, double* %370, double* %371)
  %373 = load double*, double** %6, align 8
  %374 = call i32 @VectorNormalize(double* %373)
  %375 = load double*, double** %6, align 8
  %376 = load %struct.TYPE_15__*, %struct.TYPE_15__** @pm, align 8
  %377 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %376, i32 0, i32 0
  %378 = load %struct.TYPE_12__*, %struct.TYPE_12__** %377, align 8
  %379 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %378, i32 0, i32 0
  %380 = load double*, double** %379, align 8
  %381 = call double @DotProduct(double* %375, double* %380)
  %382 = fptrunc double %381 to float
  store float %382, float* %7, align 4
  %383 = load double*, double** %6, align 8
  %384 = load float, float* %7, align 4
  %385 = load double*, double** %12, align 8
  %386 = call i32 @VectorScale(double* %383, float %384, double* %385)
  %387 = load i32, i32* %3, align 4
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %389, label %410

389:                                              ; preds = %362
  %390 = load i32, i32* %13, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds double*, double** %26, i64 %391
  %393 = load double*, double** %392, align 8
  %394 = load i32, i32* %14, align 4
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds double*, double** %26, i64 %395
  %397 = load double*, double** %396, align 8
  %398 = load double*, double** %6, align 8
  %399 = call i32 @CrossProduct(double* %393, double* %397, double* %398)
  %400 = load double*, double** %6, align 8
  %401 = call i32 @VectorNormalize(double* %400)
  %402 = load double*, double** %6, align 8
  %403 = load double*, double** %20, align 8
  %404 = call double @DotProduct(double* %402, double* %403)
  %405 = fptrunc double %404 to float
  store float %405, float* %7, align 4
  %406 = load double*, double** %6, align 8
  %407 = load float, float* %7, align 4
  %408 = load double*, double** %21, align 8
  %409 = call i32 @VectorScale(double* %406, float %407, double* %408)
  br label %410

410:                                              ; preds = %389, %362
  store i32 0, i32* %15, align 4
  br label %411

411:                                              ; preds = %441, %410
  %412 = load i32, i32* %15, align 4
  %413 = load i32, i32* %8, align 4
  %414 = icmp slt i32 %412, %413
  br i1 %414, label %415, label %444

415:                                              ; preds = %411
  %416 = load i32, i32* %15, align 4
  %417 = load i32, i32* %13, align 4
  %418 = icmp eq i32 %416, %417
  br i1 %418, label %423, label %419

419:                                              ; preds = %415
  %420 = load i32, i32* %15, align 4
  %421 = load i32, i32* %14, align 4
  %422 = icmp eq i32 %420, %421
  br i1 %422, label %423, label %424

423:                                              ; preds = %419, %415
  br label %441

424:                                              ; preds = %419
  %425 = load double*, double** %12, align 8
  %426 = load i32, i32* %15, align 4
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds double*, double** %26, i64 %427
  %429 = load double*, double** %428, align 8
  %430 = call double @DotProduct(double* %425, double* %429)
  %431 = fcmp oge double %430, 1.000000e-01
  br i1 %431, label %432, label %433

432:                                              ; preds = %424
  br label %441

433:                                              ; preds = %424
  %434 = load %struct.TYPE_15__*, %struct.TYPE_15__** @pm, align 8
  %435 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %434, i32 0, i32 0
  %436 = load %struct.TYPE_12__*, %struct.TYPE_12__** %435, align 8
  %437 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %436, i32 0, i32 0
  %438 = load double*, double** %437, align 8
  %439 = call i32 @VectorClear(double* %438)
  %440 = load i32, i32* @qtrue, align 4
  store i32 %440, i32* %2, align 4
  store i32 1, i32* %22, align 4
  br label %500

441:                                              ; preds = %432, %423
  %442 = load i32, i32* %15, align 4
  %443 = add nsw i32 %442, 1
  store i32 %443, i32* %15, align 4
  br label %411

444:                                              ; preds = %411
  br label %445

445:                                              ; preds = %444, %361, %332, %323
  %446 = load i32, i32* %14, align 4
  %447 = add nsw i32 %446, 1
  store i32 %447, i32* %14, align 4
  br label %315

448:                                              ; preds = %315
  %449 = load double*, double** %12, align 8
  %450 = load %struct.TYPE_15__*, %struct.TYPE_15__** @pm, align 8
  %451 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %450, i32 0, i32 0
  %452 = load %struct.TYPE_12__*, %struct.TYPE_12__** %451, align 8
  %453 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %452, i32 0, i32 0
  %454 = load double*, double** %453, align 8
  %455 = call i32 @VectorCopy(double* %449, double* %454)
  %456 = load i32, i32* %3, align 4
  %457 = icmp ne i32 %456, 0
  br i1 %457, label %458, label %462

458:                                              ; preds = %448
  %459 = load double*, double** %21, align 8
  %460 = load double*, double** %20, align 8
  %461 = call i32 @VectorCopy(double* %459, double* %460)
  br label %462

462:                                              ; preds = %458, %448
  br label %466

463:                                              ; preds = %281
  %464 = load i32, i32* %13, align 4
  %465 = add nsw i32 %464, 1
  store i32 %465, i32* %13, align 4
  br label %262

466:                                              ; preds = %462, %262
  br label %467

467:                                              ; preds = %466, %250
  %468 = load i32, i32* %4, align 4
  %469 = add nsw i32 %468, 1
  store i32 %469, i32* %4, align 4
  br label %119

470:                                              ; preds = %189, %119
  %471 = load i32, i32* %3, align 4
  %472 = icmp ne i32 %471, 0
  br i1 %472, label %473, label %481

473:                                              ; preds = %470
  %474 = load double*, double** %20, align 8
  %475 = load %struct.TYPE_15__*, %struct.TYPE_15__** @pm, align 8
  %476 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %475, i32 0, i32 0
  %477 = load %struct.TYPE_12__*, %struct.TYPE_12__** %476, align 8
  %478 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %477, i32 0, i32 0
  %479 = load double*, double** %478, align 8
  %480 = call i32 @VectorCopy(double* %474, double* %479)
  br label %481

481:                                              ; preds = %473, %470
  %482 = load %struct.TYPE_15__*, %struct.TYPE_15__** @pm, align 8
  %483 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %482, i32 0, i32 0
  %484 = load %struct.TYPE_12__*, %struct.TYPE_12__** %483, align 8
  %485 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %484, i32 0, i32 3
  %486 = load i64, i64* %485, align 8
  %487 = icmp ne i64 %486, 0
  br i1 %487, label %488, label %496

488:                                              ; preds = %481
  %489 = load double*, double** %11, align 8
  %490 = load %struct.TYPE_15__*, %struct.TYPE_15__** @pm, align 8
  %491 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %490, i32 0, i32 0
  %492 = load %struct.TYPE_12__*, %struct.TYPE_12__** %491, align 8
  %493 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %492, i32 0, i32 0
  %494 = load double*, double** %493, align 8
  %495 = call i32 @VectorCopy(double* %489, double* %494)
  br label %496

496:                                              ; preds = %488, %481
  %497 = load i32, i32* %4, align 4
  %498 = icmp ne i32 %497, 0
  %499 = zext i1 %498 to i32
  store i32 %499, i32* %2, align 4
  store i32 1, i32* %22, align 4
  br label %500

500:                                              ; preds = %496, %433, %204, %164
  %501 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %501)
  %502 = load i32, i32* %2, align 4
  ret i32 %502
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @VectorCopy(double*, double*) #2

declare dso_local i32 @PM_ClipVelocity(double*, double*, double*, i32) #2

declare dso_local i32 @VectorNormalize2(double*, double*) #2

declare dso_local i32 @VectorMA(double*, float, double*, double*) #2

declare dso_local i32 @PM_AddTouchEnt(i32) #2

declare dso_local i32 @VectorClear(double*) #2

declare dso_local double @DotProduct(double*, double*) #2

declare dso_local i32 @VectorAdd(double*, double*, double*) #2

declare dso_local i32 @CrossProduct(double*, double*, double*) #2

declare dso_local i32 @VectorNormalize(double*) #2

declare dso_local i32 @VectorScale(double*, float, double*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
