; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/mathlib/extr_bbox.c_aabb_test_ray.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/mathlib/extr_bbox.c_aabb_test_ray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { float*, float* }
%struct.TYPE_5__ = type { float*, float* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aabb_test_ray(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load float*, float** %10, align 8
  %12 = getelementptr inbounds float, float* %11, i64 0
  %13 = load float, float* %12, align 4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load float*, float** %15, align 8
  %17 = getelementptr inbounds float, float* %16, i64 0
  %18 = load float, float* %17, align 4
  %19 = fsub float %13, %18
  %20 = load float*, float** %6, align 8
  %21 = getelementptr inbounds float, float* %20, i64 0
  store float %19, float* %21, align 4
  %22 = load float*, float** %6, align 8
  %23 = getelementptr inbounds float, float* %22, i64 0
  %24 = load float, float* %23, align 4
  %25 = call float @fabs(float %24)
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load float*, float** %27, align 8
  %29 = getelementptr inbounds float, float* %28, i64 0
  %30 = load float, float* %29, align 4
  %31 = fcmp ogt float %25, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %2
  %33 = load float*, float** %6, align 8
  %34 = getelementptr inbounds float, float* %33, i64 0
  %35 = load float, float* %34, align 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load float*, float** %37, align 8
  %39 = getelementptr inbounds float, float* %38, i64 0
  %40 = load float, float* %39, align 4
  %41 = fmul float %35, %40
  %42 = fcmp oge float %41, 0.000000e+00
  br i1 %42, label %43, label %44

43:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %270

44:                                               ; preds = %32, %2
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load float*, float** %46, align 8
  %48 = getelementptr inbounds float, float* %47, i64 1
  %49 = load float, float* %48, align 4
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load float*, float** %51, align 8
  %53 = getelementptr inbounds float, float* %52, i64 1
  %54 = load float, float* %53, align 4
  %55 = fsub float %49, %54
  %56 = load float*, float** %6, align 8
  %57 = getelementptr inbounds float, float* %56, i64 1
  store float %55, float* %57, align 4
  %58 = load float*, float** %6, align 8
  %59 = getelementptr inbounds float, float* %58, i64 1
  %60 = load float, float* %59, align 4
  %61 = call float @fabs(float %60)
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load float*, float** %63, align 8
  %65 = getelementptr inbounds float, float* %64, i64 1
  %66 = load float, float* %65, align 4
  %67 = fcmp ogt float %61, %66
  br i1 %67, label %68, label %80

68:                                               ; preds = %44
  %69 = load float*, float** %6, align 8
  %70 = getelementptr inbounds float, float* %69, i64 1
  %71 = load float, float* %70, align 4
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load float*, float** %73, align 8
  %75 = getelementptr inbounds float, float* %74, i64 1
  %76 = load float, float* %75, align 4
  %77 = fmul float %71, %76
  %78 = fcmp oge float %77, 0.000000e+00
  br i1 %78, label %79, label %80

79:                                               ; preds = %68
  store i32 0, i32* %3, align 4
  br label %270

80:                                               ; preds = %68, %44
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load float*, float** %82, align 8
  %84 = getelementptr inbounds float, float* %83, i64 2
  %85 = load float, float* %84, align 4
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load float*, float** %87, align 8
  %89 = getelementptr inbounds float, float* %88, i64 2
  %90 = load float, float* %89, align 4
  %91 = fsub float %85, %90
  %92 = load float*, float** %6, align 8
  %93 = getelementptr inbounds float, float* %92, i64 2
  store float %91, float* %93, align 4
  %94 = load float*, float** %6, align 8
  %95 = getelementptr inbounds float, float* %94, i64 2
  %96 = load float, float* %95, align 4
  %97 = call float @fabs(float %96)
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = load float*, float** %99, align 8
  %101 = getelementptr inbounds float, float* %100, i64 2
  %102 = load float, float* %101, align 4
  %103 = fcmp ogt float %97, %102
  br i1 %103, label %104, label %116

104:                                              ; preds = %80
  %105 = load float*, float** %6, align 8
  %106 = getelementptr inbounds float, float* %105, i64 2
  %107 = load float, float* %106, align 4
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 1
  %110 = load float*, float** %109, align 8
  %111 = getelementptr inbounds float, float* %110, i64 2
  %112 = load float, float* %111, align 4
  %113 = fmul float %107, %112
  %114 = fcmp oge float %113, 0.000000e+00
  br i1 %114, label %115, label %116

115:                                              ; preds = %104
  store i32 0, i32* %3, align 4
  br label %270

116:                                              ; preds = %104, %80
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 1
  %119 = load float*, float** %118, align 8
  %120 = getelementptr inbounds float, float* %119, i64 0
  %121 = load float, float* %120, align 4
  %122 = call float @fabs(float %121)
  %123 = load float*, float** %7, align 8
  %124 = getelementptr inbounds float, float* %123, i64 0
  store float %122, float* %124, align 4
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 1
  %127 = load float*, float** %126, align 8
  %128 = getelementptr inbounds float, float* %127, i64 1
  %129 = load float, float* %128, align 4
  %130 = call float @fabs(float %129)
  %131 = load float*, float** %7, align 8
  %132 = getelementptr inbounds float, float* %131, i64 1
  store float %130, float* %132, align 4
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 1
  %135 = load float*, float** %134, align 8
  %136 = getelementptr inbounds float, float* %135, i64 2
  %137 = load float, float* %136, align 4
  %138 = call float @fabs(float %137)
  %139 = load float*, float** %7, align 8
  %140 = getelementptr inbounds float, float* %139, i64 2
  store float %138, float* %140, align 4
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 1
  %143 = load float*, float** %142, align 8
  %144 = getelementptr inbounds float, float* %143, i64 1
  %145 = load float, float* %144, align 4
  %146 = load float*, float** %6, align 8
  %147 = getelementptr inbounds float, float* %146, i64 2
  %148 = load float, float* %147, align 4
  %149 = fmul float %145, %148
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 1
  %152 = load float*, float** %151, align 8
  %153 = getelementptr inbounds float, float* %152, i64 2
  %154 = load float, float* %153, align 4
  %155 = load float*, float** %6, align 8
  %156 = getelementptr inbounds float, float* %155, i64 1
  %157 = load float, float* %156, align 4
  %158 = fmul float %154, %157
  %159 = fsub float %149, %158
  store float %159, float* %8, align 4
  %160 = load float, float* %8, align 4
  %161 = call float @fabs(float %160)
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 1
  %164 = load float*, float** %163, align 8
  %165 = getelementptr inbounds float, float* %164, i64 1
  %166 = load float, float* %165, align 4
  %167 = load float*, float** %7, align 8
  %168 = getelementptr inbounds float, float* %167, i64 2
  %169 = load float, float* %168, align 4
  %170 = fmul float %166, %169
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 1
  %173 = load float*, float** %172, align 8
  %174 = getelementptr inbounds float, float* %173, i64 2
  %175 = load float, float* %174, align 4
  %176 = load float*, float** %7, align 8
  %177 = getelementptr inbounds float, float* %176, i64 1
  %178 = load float, float* %177, align 4
  %179 = fmul float %175, %178
  %180 = fadd float %170, %179
  %181 = fcmp ogt float %161, %180
  br i1 %181, label %182, label %183

182:                                              ; preds = %116
  store i32 0, i32* %3, align 4
  br label %270

183:                                              ; preds = %116
  %184 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 1
  %186 = load float*, float** %185, align 8
  %187 = getelementptr inbounds float, float* %186, i64 2
  %188 = load float, float* %187, align 4
  %189 = load float*, float** %6, align 8
  %190 = getelementptr inbounds float, float* %189, i64 0
  %191 = load float, float* %190, align 4
  %192 = fmul float %188, %191
  %193 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 1
  %195 = load float*, float** %194, align 8
  %196 = getelementptr inbounds float, float* %195, i64 0
  %197 = load float, float* %196, align 4
  %198 = load float*, float** %6, align 8
  %199 = getelementptr inbounds float, float* %198, i64 2
  %200 = load float, float* %199, align 4
  %201 = fmul float %197, %200
  %202 = fsub float %192, %201
  store float %202, float* %8, align 4
  %203 = load float, float* %8, align 4
  %204 = call float @fabs(float %203)
  %205 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 1
  %207 = load float*, float** %206, align 8
  %208 = getelementptr inbounds float, float* %207, i64 0
  %209 = load float, float* %208, align 4
  %210 = load float*, float** %7, align 8
  %211 = getelementptr inbounds float, float* %210, i64 2
  %212 = load float, float* %211, align 4
  %213 = fmul float %209, %212
  %214 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 1
  %216 = load float*, float** %215, align 8
  %217 = getelementptr inbounds float, float* %216, i64 2
  %218 = load float, float* %217, align 4
  %219 = load float*, float** %7, align 8
  %220 = getelementptr inbounds float, float* %219, i64 0
  %221 = load float, float* %220, align 4
  %222 = fmul float %218, %221
  %223 = fadd float %213, %222
  %224 = fcmp ogt float %204, %223
  br i1 %224, label %225, label %226

225:                                              ; preds = %183
  store i32 0, i32* %3, align 4
  br label %270

226:                                              ; preds = %183
  %227 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i32 0, i32 1
  %229 = load float*, float** %228, align 8
  %230 = getelementptr inbounds float, float* %229, i64 0
  %231 = load float, float* %230, align 4
  %232 = load float*, float** %6, align 8
  %233 = getelementptr inbounds float, float* %232, i64 1
  %234 = load float, float* %233, align 4
  %235 = fmul float %231, %234
  %236 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %236, i32 0, i32 1
  %238 = load float*, float** %237, align 8
  %239 = getelementptr inbounds float, float* %238, i64 1
  %240 = load float, float* %239, align 4
  %241 = load float*, float** %6, align 8
  %242 = getelementptr inbounds float, float* %241, i64 0
  %243 = load float, float* %242, align 4
  %244 = fmul float %240, %243
  %245 = fsub float %235, %244
  store float %245, float* %8, align 4
  %246 = load float, float* %8, align 4
  %247 = call float @fabs(float %246)
  %248 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %249 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %248, i32 0, i32 1
  %250 = load float*, float** %249, align 8
  %251 = getelementptr inbounds float, float* %250, i64 0
  %252 = load float, float* %251, align 4
  %253 = load float*, float** %7, align 8
  %254 = getelementptr inbounds float, float* %253, i64 1
  %255 = load float, float* %254, align 4
  %256 = fmul float %252, %255
  %257 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %258 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %257, i32 0, i32 1
  %259 = load float*, float** %258, align 8
  %260 = getelementptr inbounds float, float* %259, i64 1
  %261 = load float, float* %260, align 4
  %262 = load float*, float** %7, align 8
  %263 = getelementptr inbounds float, float* %262, i64 0
  %264 = load float, float* %263, align 4
  %265 = fmul float %261, %264
  %266 = fadd float %256, %265
  %267 = fcmp ogt float %247, %266
  br i1 %267, label %268, label %269

268:                                              ; preds = %226
  store i32 0, i32* %3, align 4
  br label %270

269:                                              ; preds = %226
  store i32 1, i32* %3, align 4
  br label %270

270:                                              ; preds = %269, %268, %225, %182, %115, %79, %43
  %271 = load i32, i32* %3, align 4
  ret i32 %271
}

declare dso_local float @fabs(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
