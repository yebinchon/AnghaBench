; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_cm_trace.c_CM_TraceThroughVerticalCylinder.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_cm_trace.c_CM_TraceThroughVerticalCylinder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { float, i32, %struct.TYPE_5__, i8*, i8* }
%struct.TYPE_5__ = type { i32, i32 }

@qtrue = common dso_local global i8* null, align 8
@SURFACE_CLIP_EPSILON = common dso_local global float 0.000000e+00, align 4
@RADIUS_EPSILON = common dso_local global float 0.000000e+00, align 4
@CONTENTS_BODY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CM_TraceThroughVerticalCylinder(%struct.TYPE_7__* %0, float* %1, float %2, float %3, float* %4, float* %5) #0 {
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float*, align 8
  %23 = alloca float*, align 8
  %24 = alloca float*, align 8
  %25 = alloca float*, align 8
  %26 = alloca float*, align 8
  %27 = alloca float*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store float* %1, float** %8, align 8
  store float %2, float* %9, align 4
  store float %3, float* %10, align 4
  store float* %4, float** %11, align 8
  store float* %5, float** %12, align 8
  %28 = load float*, float** %24, align 8
  %29 = load float*, float** %11, align 8
  %30 = getelementptr inbounds float, float* %29, i64 0
  %31 = load float, float* %30, align 4
  %32 = load float*, float** %11, align 8
  %33 = getelementptr inbounds float, float* %32, i64 1
  %34 = load float, float* %33, align 4
  %35 = call i32 @VectorSet(float* %28, float %31, float %34, i32 0)
  %36 = load float*, float** %25, align 8
  %37 = load float*, float** %12, align 8
  %38 = getelementptr inbounds float, float* %37, i64 0
  %39 = load float, float* %38, align 4
  %40 = load float*, float** %12, align 8
  %41 = getelementptr inbounds float, float* %40, i64 1
  %42 = load float, float* %41, align 4
  %43 = call i32 @VectorSet(float* %36, float %39, float %42, i32 0)
  %44 = load float*, float** %26, align 8
  %45 = load float*, float** %8, align 8
  %46 = getelementptr inbounds float, float* %45, i64 0
  %47 = load float, float* %46, align 4
  %48 = load float*, float** %8, align 8
  %49 = getelementptr inbounds float, float* %48, i64 1
  %50 = load float, float* %49, align 4
  %51 = call i32 @VectorSet(float* %44, float %47, float %50, i32 0)
  %52 = load float*, float** %11, align 8
  %53 = getelementptr inbounds float, float* %52, i64 2
  %54 = load float, float* %53, align 4
  %55 = load float*, float** %8, align 8
  %56 = getelementptr inbounds float, float* %55, i64 2
  %57 = load float, float* %56, align 4
  %58 = load float, float* %10, align 4
  %59 = fadd float %57, %58
  %60 = fcmp ole float %54, %59
  br i1 %60, label %61, label %107

61:                                               ; preds = %6
  %62 = load float*, float** %11, align 8
  %63 = getelementptr inbounds float, float* %62, i64 2
  %64 = load float, float* %63, align 4
  %65 = load float*, float** %8, align 8
  %66 = getelementptr inbounds float, float* %65, i64 2
  %67 = load float, float* %66, align 4
  %68 = load float, float* %10, align 4
  %69 = fsub float %67, %68
  %70 = fcmp oge float %64, %69
  br i1 %70, label %71, label %107

71:                                               ; preds = %61
  %72 = load float*, float** %24, align 8
  %73 = load float*, float** %26, align 8
  %74 = load float*, float** %23, align 8
  %75 = call i32 @VectorSubtract(float* %72, float* %73, float* %74)
  %76 = load float*, float** %23, align 8
  %77 = call float @VectorLengthSquared(float* %76)
  store float %77, float* %16, align 4
  %78 = load float, float* %16, align 4
  %79 = load float, float* %9, align 4
  %80 = call float @Square(float %79)
  %81 = fcmp olt float %78, %80
  br i1 %81, label %82, label %106

82:                                               ; preds = %71
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  store float 0.000000e+00, float* %85, align 8
  %86 = load i8*, i8** @qtrue, align 8
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 4
  store i8* %86, i8** %89, align 8
  %90 = load float*, float** %25, align 8
  %91 = load float*, float** %26, align 8
  %92 = load float*, float** %23, align 8
  %93 = call i32 @VectorSubtract(float* %90, float* %91, float* %92)
  %94 = load float*, float** %23, align 8
  %95 = call float @VectorLengthSquared(float* %94)
  store float %95, float* %16, align 4
  %96 = load float, float* %16, align 4
  %97 = load float, float* %9, align 4
  %98 = call float @Square(float %97)
  %99 = fcmp olt float %96, %98
  br i1 %99, label %100, label %105

100:                                              ; preds = %82
  %101 = load i8*, i8** @qtrue, align 8
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 3
  store i8* %101, i8** %104, align 8
  br label %105

105:                                              ; preds = %100, %82
  br label %294

106:                                              ; preds = %71
  br label %107

107:                                              ; preds = %106, %61, %6
  %108 = load float*, float** %25, align 8
  %109 = load float*, float** %24, align 8
  %110 = load float*, float** %23, align 8
  %111 = call i32 @VectorSubtract(float* %108, float* %109, float* %110)
  %112 = load float*, float** %23, align 8
  %113 = call float @VectorNormalize(float* %112)
  store float %113, float* %13, align 4
  %114 = load float*, float** %26, align 8
  %115 = load float*, float** %24, align 8
  %116 = load float*, float** %25, align 8
  %117 = load float*, float** %23, align 8
  %118 = call float @CM_DistanceFromLineSquared(float* %114, float* %115, float* %116, float* %117)
  store float %118, float* %16, align 4
  %119 = load float*, float** %25, align 8
  %120 = load float*, float** %26, align 8
  %121 = load float*, float** %22, align 8
  %122 = call i32 @VectorSubtract(float* %119, float* %120, float* %121)
  %123 = load float*, float** %22, align 8
  %124 = call float @VectorLengthSquared(float* %123)
  store float %124, float* %17, align 4
  %125 = load float, float* %16, align 4
  %126 = load float, float* %9, align 4
  %127 = call float @Square(float %126)
  %128 = fcmp oge float %125, %127
  br i1 %128, label %129, label %137

129:                                              ; preds = %107
  %130 = load float, float* %17, align 4
  %131 = load float, float* %9, align 4
  %132 = load float, float* @SURFACE_CLIP_EPSILON, align 4
  %133 = fadd float %131, %132
  %134 = call float @Square(float %133)
  %135 = fcmp ogt float %130, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %129
  br label %294

137:                                              ; preds = %129, %107
  %138 = load float*, float** %11, align 8
  %139 = load float*, float** %8, align 8
  %140 = load float*, float** %22, align 8
  %141 = call i32 @VectorSubtract(float* %138, float* %139, float* %140)
  %142 = load float*, float** %22, align 8
  %143 = getelementptr inbounds float, float* %142, i64 0
  %144 = load float, float* %143, align 4
  %145 = load float*, float** %23, align 8
  %146 = getelementptr inbounds float, float* %145, i64 0
  %147 = load float, float* %146, align 4
  %148 = fmul float %144, %147
  %149 = load float*, float** %22, align 8
  %150 = getelementptr inbounds float, float* %149, i64 1
  %151 = load float, float* %150, align 4
  %152 = load float*, float** %23, align 8
  %153 = getelementptr inbounds float, float* %152, i64 1
  %154 = load float, float* %153, align 4
  %155 = fmul float %151, %154
  %156 = fadd float %148, %155
  %157 = fmul float 2.000000e+00, %156
  store float %157, float* %18, align 4
  %158 = load float*, float** %22, align 8
  %159 = getelementptr inbounds float, float* %158, i64 0
  %160 = load float, float* %159, align 4
  %161 = load float*, float** %22, align 8
  %162 = getelementptr inbounds float, float* %161, i64 0
  %163 = load float, float* %162, align 4
  %164 = fmul float %160, %163
  %165 = load float*, float** %22, align 8
  %166 = getelementptr inbounds float, float* %165, i64 1
  %167 = load float, float* %166, align 4
  %168 = load float*, float** %22, align 8
  %169 = getelementptr inbounds float, float* %168, i64 1
  %170 = load float, float* %169, align 4
  %171 = fmul float %167, %170
  %172 = fadd float %164, %171
  %173 = load float, float* %9, align 4
  %174 = load float, float* @RADIUS_EPSILON, align 4
  %175 = fadd float %173, %174
  %176 = load float, float* %9, align 4
  %177 = load float, float* @RADIUS_EPSILON, align 4
  %178 = fadd float %176, %177
  %179 = fmul float %175, %178
  %180 = fsub float %172, %179
  store float %180, float* %19, align 4
  %181 = load float, float* %18, align 4
  %182 = load float, float* %18, align 4
  %183 = fmul float %181, %182
  %184 = load float, float* %19, align 4
  %185 = fmul float 4.000000e+00, %184
  %186 = fsub float %183, %185
  store float %186, float* %20, align 4
  %187 = load float, float* %20, align 4
  %188 = fcmp ogt float %187, 0.000000e+00
  br i1 %188, label %189, label %289

189:                                              ; preds = %137
  %190 = load float, float* %20, align 4
  %191 = call float @SquareRootFloat(float %190)
  store float %191, float* %21, align 4
  %192 = load float, float* %18, align 4
  %193 = fneg float %192
  %194 = load float, float* %21, align 4
  %195 = fsub float %193, %194
  %196 = fmul float %195, 5.000000e-01
  store float %196, float* %15, align 4
  %197 = load float, float* %15, align 4
  %198 = fcmp olt float %197, 0.000000e+00
  br i1 %198, label %199, label %200

199:                                              ; preds = %189
  store float 0.000000e+00, float* %15, align 4
  br label %204

200:                                              ; preds = %189
  %201 = load float, float* %13, align 4
  %202 = load float, float* %15, align 4
  %203 = fdiv float %202, %201
  store float %203, float* %15, align 4
  br label %204

204:                                              ; preds = %200, %199
  %205 = load float, float* %15, align 4
  %206 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 0
  %209 = load float, float* %208, align 8
  %210 = fcmp olt float %205, %209
  br i1 %210, label %211, label %288

211:                                              ; preds = %204
  %212 = load float*, float** %12, align 8
  %213 = load float*, float** %11, align 8
  %214 = load float*, float** %23, align 8
  %215 = call i32 @VectorSubtract(float* %212, float* %213, float* %214)
  %216 = load float*, float** %11, align 8
  %217 = load float, float* %15, align 4
  %218 = load float*, float** %23, align 8
  %219 = load float*, float** %27, align 8
  %220 = call i32 @VectorMA(float* %216, float %217, float* %218, float* %219)
  %221 = load float*, float** %27, align 8
  %222 = getelementptr inbounds float, float* %221, i64 2
  %223 = load float, float* %222, align 4
  %224 = load float*, float** %8, align 8
  %225 = getelementptr inbounds float, float* %224, i64 2
  %226 = load float, float* %225, align 4
  %227 = load float, float* %10, align 4
  %228 = fadd float %226, %227
  %229 = fcmp ole float %223, %228
  br i1 %229, label %230, label %287

230:                                              ; preds = %211
  %231 = load float*, float** %27, align 8
  %232 = getelementptr inbounds float, float* %231, i64 2
  %233 = load float, float* %232, align 4
  %234 = load float*, float** %8, align 8
  %235 = getelementptr inbounds float, float* %234, i64 2
  %236 = load float, float* %235, align 4
  %237 = load float, float* %10, align 4
  %238 = fsub float %236, %237
  %239 = fcmp oge float %233, %238
  br i1 %239, label %240, label %287

240:                                              ; preds = %230
  %241 = load float, float* %15, align 4
  %242 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %243 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %243, i32 0, i32 0
  store float %241, float* %244, align 8
  %245 = load float*, float** %27, align 8
  %246 = load float*, float** %8, align 8
  %247 = load float*, float** %23, align 8
  %248 = call i32 @VectorSubtract(float* %245, float* %246, float* %247)
  %249 = load float*, float** %23, align 8
  %250 = getelementptr inbounds float, float* %249, i64 2
  store float 0.000000e+00, float* %250, align 4
  %251 = load float, float* %9, align 4
  %252 = load float, float* @RADIUS_EPSILON, align 4
  %253 = fadd float %251, %252
  %254 = fdiv float 1.000000e+00, %253
  store float %254, float* %14, align 4
  %255 = load float*, float** %23, align 8
  %256 = load float, float* %14, align 4
  %257 = load float*, float** %23, align 8
  %258 = call i32 @VectorScale(float* %255, float %256, float* %257)
  %259 = load float*, float** %23, align 8
  %260 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %261 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %261, i32 0, i32 2
  %263 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = call i32 @VectorCopy(float* %259, i32 %264)
  %266 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %267 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 8
  %269 = load float*, float** %27, align 8
  %270 = load float*, float** %27, align 8
  %271 = call i32 @VectorAdd(i32 %268, float* %269, float* %270)
  %272 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %273 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %273, i32 0, i32 2
  %275 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = load float*, float** %27, align 8
  %278 = call i32 @DotProduct(i32 %276, float* %277)
  %279 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %280 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %280, i32 0, i32 2
  %282 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %281, i32 0, i32 1
  store i32 %278, i32* %282, align 4
  %283 = load i32, i32* @CONTENTS_BODY, align 4
  %284 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %285 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %285, i32 0, i32 1
  store i32 %283, i32* %286, align 4
  br label %287

287:                                              ; preds = %240, %230, %211
  br label %288

288:                                              ; preds = %287, %204
  br label %294

289:                                              ; preds = %137
  %290 = load float, float* %20, align 4
  %291 = fcmp oeq float %290, 0.000000e+00
  br i1 %291, label %292, label %293

292:                                              ; preds = %289
  br label %293

293:                                              ; preds = %292, %289
  br label %294

294:                                              ; preds = %105, %136, %293, %288
  ret void
}

declare dso_local i32 @VectorSet(float*, float, float, i32) #1

declare dso_local i32 @VectorSubtract(float*, float*, float*) #1

declare dso_local float @VectorLengthSquared(float*) #1

declare dso_local float @Square(float) #1

declare dso_local float @VectorNormalize(float*) #1

declare dso_local float @CM_DistanceFromLineSquared(float*, float*, float*, float*) #1

declare dso_local float @SquareRootFloat(float) #1

declare dso_local i32 @VectorMA(float*, float, float*, float*) #1

declare dso_local i32 @VectorScale(float*, float, float*) #1

declare dso_local i32 @VectorCopy(float*, i32) #1

declare dso_local i32 @VectorAdd(i32, float*, float*) #1

declare dso_local i32 @DotProduct(i32, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
