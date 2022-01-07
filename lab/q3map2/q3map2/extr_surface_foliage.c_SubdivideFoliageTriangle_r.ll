; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_surface_foliage.c_SubdivideFoliageTriangle_r.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_surface_foliage.c_SubdivideFoliageTriangle_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { float, i32, float }
%struct.TYPE_14__ = type { float*, float*, i64** }

@numFoliageInstances = common dso_local global i64 0, align 8
@MAX_FOLIAGE_INSTANCES = common dso_local global i64 0, align 8
@foliageInstances = common dso_local global %struct.TYPE_13__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_12__*, %struct.TYPE_14__**)* @SubdivideFoliageTriangle_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SubdivideFoliageTriangle_r(i32* %0, %struct.TYPE_12__* %1, %struct.TYPE_14__** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_14__**, align 8
  %7 = alloca %struct.TYPE_14__, align 8
  %8 = alloca [3 x %struct.TYPE_14__*], align 16
  %9 = alloca i32, align 4
  %10 = alloca float*, align 8
  %11 = alloca i32, align 4
  %12 = alloca float*, align 8
  %13 = alloca float*, align 8
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca %struct.TYPE_13__*, align 8
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_14__** %2, %struct.TYPE_14__*** %6, align 8
  %23 = load i64, i64* @numFoliageInstances, align 8
  %24 = load i64, i64* @MAX_FOLIAGE_INSTANCES, align 8
  %25 = icmp uge i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  br label %282

27:                                               ; preds = %3
  %28 = load float*, float** %10, align 8
  %29 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %29, i64 0
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = load float*, float** %32, align 8
  %34 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %34, i64 1
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = load float*, float** %37, align 8
  %39 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %39, i64 2
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = load float*, float** %42, align 8
  %44 = call i32 @PlaneFromPoints(float* %28, float* %33, float* %38, float* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %27
  br label %282

47:                                               ; preds = %27
  %48 = load float*, float** %10, align 8
  %49 = getelementptr inbounds float, float* %48, i64 2
  %50 = load float, float* %49, align 4
  %51 = fcmp olt float %50, 5.000000e-01
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %282

53:                                               ; preds = %47
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** @foliageInstances, align 8
  %55 = load i64, i64* @numFoliageInstances, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i64 %55
  store %struct.TYPE_13__* %56, %struct.TYPE_13__** %19, align 8
  store i32 -1, i32* %9, align 4
  store float 0.000000e+00, float* %18, align 4
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @VectorClear(i32 %59)
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @VectorClear(i32 %63)
  store i32 0, i32* %11, align 4
  br label %65

65:                                               ; preds = %152, %53
  %66 = load i32, i32* %11, align 4
  %67 = icmp slt i32 %66, 3
  br i1 %67, label %68, label %155

68:                                               ; preds = %65
  %69 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %6, align 8
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %69, i64 %71
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  %75 = load float*, float** %74, align 8
  store float* %75, float** %12, align 8
  %76 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %6, align 8
  %77 = load i32, i32* %11, align 4
  %78 = add nsw i32 %77, 1
  %79 = srem i32 %78, 3
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %76, i64 %80
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  %84 = load float*, float** %83, align 8
  store float* %84, float** %13, align 8
  %85 = load float*, float** %12, align 8
  %86 = getelementptr inbounds float, float* %85, i64 0
  %87 = load float, float* %86, align 4
  %88 = load float*, float** %13, align 8
  %89 = getelementptr inbounds float, float* %88, i64 0
  %90 = load float, float* %89, align 4
  %91 = fsub float %87, %90
  store float %91, float* %14, align 4
  %92 = load float*, float** %12, align 8
  %93 = getelementptr inbounds float, float* %92, i64 1
  %94 = load float, float* %93, align 4
  %95 = load float*, float** %13, align 8
  %96 = getelementptr inbounds float, float* %95, i64 1
  %97 = load float, float* %96, align 4
  %98 = fsub float %94, %97
  store float %98, float* %15, align 4
  %99 = load float*, float** %12, align 8
  %100 = getelementptr inbounds float, float* %99, i64 2
  %101 = load float, float* %100, align 4
  %102 = load float*, float** %13, align 8
  %103 = getelementptr inbounds float, float* %102, i64 2
  %104 = load float, float* %103, align 4
  %105 = fsub float %101, %104
  store float %105, float* %16, align 4
  %106 = load float, float* %14, align 4
  %107 = load float, float* %14, align 4
  %108 = fmul float %106, %107
  %109 = load float, float* %15, align 4
  %110 = load float, float* %15, align 4
  %111 = fmul float %109, %110
  %112 = fadd float %108, %111
  %113 = load float, float* %16, align 4
  %114 = load float, float* %16, align 4
  %115 = fmul float %113, %114
  %116 = fadd float %112, %115
  store float %116, float* %17, align 4
  %117 = load float, float* %17, align 4
  %118 = load float, float* %18, align 4
  %119 = fcmp ogt float %117, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %68
  %121 = load float, float* %17, align 4
  store float %121, float* %18, align 4
  %122 = load i32, i32* %11, align 4
  store i32 %122, i32* %9, align 4
  br label %123

123:                                              ; preds = %120, %68
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %6, align 8
  %128 = load i32, i32* %11, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %127, i64 %129
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 0
  %133 = load float*, float** %132, align 8
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @VectorAdd(i32 %126, float* %133, i32 %136)
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %6, align 8
  %142 = load i32, i32* %11, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %141, i64 %143
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 1
  %147 = load float*, float** %146, align 8
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @VectorAdd(i32 %140, float* %147, i32 %150)
  br label %152

152:                                              ; preds = %123
  %153 = load i32, i32* %11, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %11, align 4
  br label %65

155:                                              ; preds = %65
  %156 = load float, float* %18, align 4
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 0
  %159 = load float, float* %158, align 4
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 0
  %162 = load float, float* %161, align 4
  %163 = fmul float %159, %162
  %164 = fcmp ole float %156, %163
  br i1 %164, label %165, label %248

165:                                              ; preds = %155
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = icmp eq i32 %168, 2
  br i1 %169, label %170, label %171

170:                                              ; preds = %165
  store float 1.000000e+00, float* %20, align 4
  br label %217

171:                                              ; preds = %165
  %172 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %172, i64 0
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 2
  %176 = load i64**, i64*** %175, align 8
  %177 = getelementptr inbounds i64*, i64** %176, i64 0
  %178 = load i64*, i64** %177, align 8
  %179 = getelementptr inbounds i64, i64* %178, i64 3
  %180 = load i64, i64* %179, align 8
  %181 = sitofp i64 %180 to float
  %182 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %182, i64 1
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 2
  %186 = load i64**, i64*** %185, align 8
  %187 = getelementptr inbounds i64*, i64** %186, i64 0
  %188 = load i64*, i64** %187, align 8
  %189 = getelementptr inbounds i64, i64* %188, i64 3
  %190 = load i64, i64* %189, align 8
  %191 = sitofp i64 %190 to float
  %192 = fadd float %181, %191
  %193 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %193, i64 2
  %195 = load %struct.TYPE_14__*, %struct.TYPE_14__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i32 0, i32 2
  %197 = load i64**, i64*** %196, align 8
  %198 = getelementptr inbounds i64*, i64** %197, i64 0
  %199 = load i64*, i64** %198, align 8
  %200 = getelementptr inbounds i64, i64* %199, i64 3
  %201 = load i64, i64* %200, align 8
  %202 = sitofp i64 %201 to float
  %203 = fadd float %192, %202
  %204 = fdiv float %203, 7.650000e+02
  store float %204, float* %20, align 4
  %205 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = icmp eq i32 %207, 1
  br i1 %208, label %209, label %212

209:                                              ; preds = %171
  %210 = load float, float* %20, align 4
  %211 = fsub float 1.000000e+00, %210
  store float %211, float* %20, align 4
  br label %212

212:                                              ; preds = %209, %171
  %213 = load float, float* %20, align 4
  %214 = fcmp olt float %213, 7.500000e-01
  br i1 %214, label %215, label %216

215:                                              ; preds = %212
  br label %282

216:                                              ; preds = %212
  br label %217

217:                                              ; preds = %216, %170
  %218 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %218, i32 0, i32 2
  %220 = load float, float* %219, align 4
  %221 = load float, float* %20, align 4
  %222 = fmul float %220, %221
  store float %222, float* %21, align 4
  %223 = call float (...) @Random()
  store float %223, float* %22, align 4
  %224 = load float, float* %22, align 4
  %225 = load float, float* %21, align 4
  %226 = fcmp ogt float %224, %225
  br i1 %226, label %227, label %228

227:                                              ; preds = %217
  br label %282

228:                                              ; preds = %217
  %229 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %230 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %233 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @VectorScale(i32 %231, float 0x3FD5555560000000, i32 %234)
  %236 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %237 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %240 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = call float @VectorNormalize(i32 %238, i32 %241)
  %243 = fcmp oeq float %242, 0.000000e+00
  br i1 %243, label %244, label %245

244:                                              ; preds = %228
  br label %282

245:                                              ; preds = %228
  %246 = load i64, i64* @numFoliageInstances, align 8
  %247 = add i64 %246, 1
  store i64 %247, i64* @numFoliageInstances, align 8
  br label %282

248:                                              ; preds = %155
  %249 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %6, align 8
  %250 = load i32, i32* %9, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %249, i64 %251
  %253 = load %struct.TYPE_14__*, %struct.TYPE_14__** %252, align 8
  %254 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %6, align 8
  %255 = load i32, i32* %9, align 4
  %256 = add nsw i32 %255, 1
  %257 = srem i32 %256, 3
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %254, i64 %258
  %260 = load %struct.TYPE_14__*, %struct.TYPE_14__** %259, align 8
  %261 = call i32 @LerpDrawVert(%struct.TYPE_14__* %253, %struct.TYPE_14__* %260, %struct.TYPE_14__* %7)
  %262 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %6, align 8
  %263 = getelementptr inbounds [3 x %struct.TYPE_14__*], [3 x %struct.TYPE_14__*]* %8, i64 0, i64 0
  %264 = call i32 @VectorCopy(%struct.TYPE_14__** %262, %struct.TYPE_14__** %263)
  %265 = load i32, i32* %9, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds [3 x %struct.TYPE_14__*], [3 x %struct.TYPE_14__*]* %8, i64 0, i64 %266
  store %struct.TYPE_14__* %7, %struct.TYPE_14__** %267, align 8
  %268 = load i32*, i32** %4, align 8
  %269 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %270 = getelementptr inbounds [3 x %struct.TYPE_14__*], [3 x %struct.TYPE_14__*]* %8, i64 0, i64 0
  call void @SubdivideFoliageTriangle_r(i32* %268, %struct.TYPE_12__* %269, %struct.TYPE_14__** %270)
  %271 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %6, align 8
  %272 = getelementptr inbounds [3 x %struct.TYPE_14__*], [3 x %struct.TYPE_14__*]* %8, i64 0, i64 0
  %273 = call i32 @VectorCopy(%struct.TYPE_14__** %271, %struct.TYPE_14__** %272)
  %274 = load i32, i32* %9, align 4
  %275 = add nsw i32 %274, 1
  %276 = srem i32 %275, 3
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds [3 x %struct.TYPE_14__*], [3 x %struct.TYPE_14__*]* %8, i64 0, i64 %277
  store %struct.TYPE_14__* %7, %struct.TYPE_14__** %278, align 8
  %279 = load i32*, i32** %4, align 8
  %280 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %281 = getelementptr inbounds [3 x %struct.TYPE_14__*], [3 x %struct.TYPE_14__*]* %8, i64 0, i64 0
  call void @SubdivideFoliageTriangle_r(i32* %279, %struct.TYPE_12__* %280, %struct.TYPE_14__** %281)
  br label %282

282:                                              ; preds = %248, %245, %244, %227, %215, %52, %46, %26
  ret void
}

declare dso_local i32 @PlaneFromPoints(float*, float*, float*, float*) #1

declare dso_local i32 @VectorClear(i32) #1

declare dso_local i32 @VectorAdd(i32, float*, i32) #1

declare dso_local float @Random(...) #1

declare dso_local i32 @VectorScale(i32, float, i32) #1

declare dso_local float @VectorNormalize(i32, i32) #1

declare dso_local i32 @LerpDrawVert(%struct.TYPE_14__*, %struct.TYPE_14__*, %struct.TYPE_14__*) #1

declare dso_local i32 @VectorCopy(%struct.TYPE_14__**, %struct.TYPE_14__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
