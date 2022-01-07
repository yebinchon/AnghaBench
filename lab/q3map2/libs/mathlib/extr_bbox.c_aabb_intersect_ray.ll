; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/mathlib/extr_bbox.c_aabb_intersect_ray.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/mathlib/extr_bbox.c_aabb_intersect_ray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { float*, float* }
%struct.TYPE_5__ = type { float*, float* }

@NUMDIM = common dso_local global i32 0, align 4
@LEFT = common dso_local global i8 0, align 1
@RIGHT = common dso_local global i8 0, align 1
@MIDDLE = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aabb_intersect_ray(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1, float* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca float*, align 8
  %16 = alloca float*, align 8
  %17 = alloca float*, align 8
  %18 = alloca float*, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store float* %2, float** %7, align 8
  store i32 1, i32* %8, align 4
  %20 = load i32, i32* @NUMDIM, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %9, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %10, align 8
  %24 = load i32, i32* @NUMDIM, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca double, i64 %25, align 16
  store i64 %25, i64* %13, align 8
  %27 = load i32, i32* @NUMDIM, align 4
  %28 = zext i32 %27 to i64
  %29 = alloca double, i64 %28, align 16
  store i64 %28, i64* %14, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load float*, float** %31, align 8
  store float* %32, float** %17, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load float*, float** %34, align 8
  store float* %35, float** %18, align 8
  store i32 0, i32* %11, align 4
  br label %36

36:                                               ; preds = %139, %3
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* @NUMDIM, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %142

40:                                               ; preds = %36
  %41 = load float*, float** %17, align 8
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds float, float* %41, i64 %43
  %45 = load float, float* %44, align 4
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load float*, float** %47, align 8
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds float, float* %48, i64 %50
  %52 = load float, float* %51, align 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load float*, float** %54, align 8
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds float, float* %55, i64 %57
  %59 = load float, float* %58, align 4
  %60 = fsub float %52, %59
  %61 = fcmp olt float %45, %60
  br i1 %61, label %62, label %86

62:                                               ; preds = %40
  %63 = load i8, i8* @LEFT, align 1
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %23, i64 %65
  store i8 %63, i8* %66, align 1
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load float*, float** %68, align 8
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds float, float* %69, i64 %71
  %73 = load float, float* %72, align 4
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load float*, float** %75, align 8
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds float, float* %76, i64 %78
  %80 = load float, float* %79, align 4
  %81 = fsub float %73, %80
  %82 = fpext float %81 to double
  %83 = load i32, i32* %11, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds double, double* %29, i64 %84
  store double %82, double* %85, align 8
  store i32 0, i32* %8, align 4
  br label %138

86:                                               ; preds = %40
  %87 = load float*, float** %17, align 8
  %88 = load i32, i32* %11, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds float, float* %87, i64 %89
  %91 = load float, float* %90, align 4
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load float*, float** %93, align 8
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds float, float* %94, i64 %96
  %98 = load float, float* %97, align 4
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  %101 = load float*, float** %100, align 8
  %102 = load i32, i32* %11, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds float, float* %101, i64 %103
  %105 = load float, float* %104, align 4
  %106 = fadd float %98, %105
  %107 = fcmp ogt float %91, %106
  br i1 %107, label %108, label %132

108:                                              ; preds = %86
  %109 = load i8, i8* @RIGHT, align 1
  %110 = load i32, i32* %11, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %23, i64 %111
  store i8 %109, i8* %112, align 1
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load float*, float** %114, align 8
  %116 = load i32, i32* %11, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds float, float* %115, i64 %117
  %119 = load float, float* %118, align 4
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 1
  %122 = load float*, float** %121, align 8
  %123 = load i32, i32* %11, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds float, float* %122, i64 %124
  %126 = load float, float* %125, align 4
  %127 = fadd float %119, %126
  %128 = fpext float %127 to double
  %129 = load i32, i32* %11, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds double, double* %29, i64 %130
  store double %128, double* %131, align 8
  store i32 0, i32* %8, align 4
  br label %137

132:                                              ; preds = %86
  %133 = load i8, i8* @MIDDLE, align 1
  %134 = load i32, i32* %11, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8, i8* %23, i64 %135
  store i8 %133, i8* %136, align 1
  br label %137

137:                                              ; preds = %132, %108
  br label %138

138:                                              ; preds = %137, %62
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %11, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %11, align 4
  br label %36

142:                                              ; preds = %36
  %143 = load i32, i32* %8, align 4
  %144 = icmp eq i32 %143, 1
  br i1 %144, label %145, label %147

145:                                              ; preds = %142
  %146 = load float*, float** %7, align 8
  store float 0.000000e+00, float* %146, align 4
  store i32 1, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %308

147:                                              ; preds = %142
  store i32 0, i32* %11, align 4
  br label %148

148:                                              ; preds = %196, %147
  %149 = load i32, i32* %11, align 4
  %150 = load i32, i32* @NUMDIM, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %199

152:                                              ; preds = %148
  %153 = load i32, i32* %11, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8, i8* %23, i64 %154
  %156 = load i8, i8* %155, align 1
  %157 = sext i8 %156 to i32
  %158 = load i8, i8* @MIDDLE, align 1
  %159 = sext i8 %158 to i32
  %160 = icmp ne i32 %157, %159
  br i1 %160, label %161, label %191

161:                                              ; preds = %152
  %162 = load float*, float** %18, align 8
  %163 = load i32, i32* %11, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds float, float* %162, i64 %164
  %166 = load float, float* %165, align 4
  %167 = fpext float %166 to double
  %168 = fcmp une double %167, 0.000000e+00
  br i1 %168, label %169, label %191

169:                                              ; preds = %161
  %170 = load i32, i32* %11, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds double, double* %29, i64 %171
  %173 = load double, double* %172, align 8
  %174 = load float*, float** %17, align 8
  %175 = load i32, i32* %11, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds float, float* %174, i64 %176
  %178 = load float, float* %177, align 4
  %179 = fpext float %178 to double
  %180 = fsub double %173, %179
  %181 = load float*, float** %18, align 8
  %182 = load i32, i32* %11, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds float, float* %181, i64 %183
  %185 = load float, float* %184, align 4
  %186 = fpext float %185 to double
  %187 = fdiv double %180, %186
  %188 = load i32, i32* %11, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds double, double* %26, i64 %189
  store double %187, double* %190, align 8
  br label %195

191:                                              ; preds = %161, %152
  %192 = load i32, i32* %11, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds double, double* %26, i64 %193
  store double -1.000000e+00, double* %194, align 8
  br label %195

195:                                              ; preds = %191, %169
  br label %196

196:                                              ; preds = %195
  %197 = load i32, i32* %11, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %11, align 4
  br label %148

199:                                              ; preds = %148
  store i32 0, i32* %12, align 4
  store i32 1, i32* %11, align 4
  br label %200

200:                                              ; preds = %217, %199
  %201 = load i32, i32* %11, align 4
  %202 = load i32, i32* @NUMDIM, align 4
  %203 = icmp slt i32 %201, %202
  br i1 %203, label %204, label %220

204:                                              ; preds = %200
  %205 = load i32, i32* %12, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds double, double* %26, i64 %206
  %208 = load double, double* %207, align 8
  %209 = load i32, i32* %11, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds double, double* %26, i64 %210
  %212 = load double, double* %211, align 8
  %213 = fcmp olt double %208, %212
  br i1 %213, label %214, label %216

214:                                              ; preds = %204
  %215 = load i32, i32* %11, align 4
  store i32 %215, i32* %12, align 4
  br label %216

216:                                              ; preds = %214, %204
  br label %217

217:                                              ; preds = %216
  %218 = load i32, i32* %11, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %11, align 4
  br label %200

220:                                              ; preds = %200
  %221 = load i32, i32* %12, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds double, double* %26, i64 %222
  %224 = load double, double* %223, align 8
  %225 = fcmp olt double %224, 0.000000e+00
  br i1 %225, label %226, label %227

226:                                              ; preds = %220
  store i32 0, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %308

227:                                              ; preds = %220
  store i32 0, i32* %11, align 4
  br label %228

228:                                              ; preds = %296, %227
  %229 = load i32, i32* %11, align 4
  %230 = load i32, i32* @NUMDIM, align 4
  %231 = icmp slt i32 %229, %230
  br i1 %231, label %232, label %299

232:                                              ; preds = %228
  %233 = load i32, i32* %12, align 4
  %234 = load i32, i32* %11, align 4
  %235 = icmp ne i32 %233, %234
  br i1 %235, label %236, label %285

236:                                              ; preds = %232
  %237 = load float*, float** %17, align 8
  %238 = load i32, i32* %11, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds float, float* %237, i64 %239
  %241 = load float, float* %240, align 4
  %242 = fpext float %241 to double
  %243 = load i32, i32* %12, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds double, double* %26, i64 %244
  %246 = load double, double* %245, align 8
  %247 = load float*, float** %18, align 8
  %248 = load i32, i32* %11, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds float, float* %247, i64 %249
  %251 = load float, float* %250, align 4
  %252 = fpext float %251 to double
  %253 = fmul double %246, %252
  %254 = fadd double %242, %253
  %255 = fptrunc double %254 to float
  %256 = load float*, float** %15, align 8
  %257 = load i32, i32* %11, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds float, float* %256, i64 %258
  store float %255, float* %259, align 4
  %260 = load float*, float** %15, align 8
  %261 = load i32, i32* %11, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds float, float* %260, i64 %262
  %264 = load float, float* %263, align 4
  %265 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %266 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %265, i32 0, i32 0
  %267 = load float*, float** %266, align 8
  %268 = load i32, i32* %11, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds float, float* %267, i64 %269
  %271 = load float, float* %270, align 4
  %272 = fsub float %264, %271
  %273 = call double @fabs(float %272)
  %274 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %275 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %274, i32 0, i32 1
  %276 = load float*, float** %275, align 8
  %277 = load i32, i32* %11, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds float, float* %276, i64 %278
  %280 = load float, float* %279, align 4
  %281 = fpext float %280 to double
  %282 = fcmp ogt double %273, %281
  br i1 %282, label %283, label %284

283:                                              ; preds = %236
  store i32 0, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %308

284:                                              ; preds = %236
  br label %295

285:                                              ; preds = %232
  %286 = load i32, i32* %11, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds double, double* %29, i64 %287
  %289 = load double, double* %288, align 8
  %290 = fptrunc double %289 to float
  %291 = load float*, float** %15, align 8
  %292 = load i32, i32* %11, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds float, float* %291, i64 %293
  store float %290, float* %294, align 4
  br label %295

295:                                              ; preds = %285, %284
  br label %296

296:                                              ; preds = %295
  %297 = load i32, i32* %11, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %11, align 4
  br label %228

299:                                              ; preds = %228
  %300 = load float*, float** %15, align 8
  %301 = load float*, float** %17, align 8
  %302 = load float*, float** %16, align 8
  %303 = call i32 @VectorSubtract(float* %300, float* %301, float* %302)
  %304 = load float*, float** %16, align 8
  %305 = load float*, float** %18, align 8
  %306 = call float @DotProduct(float* %304, float* %305)
  %307 = load float*, float** %7, align 8
  store float %306, float* %307, align 4
  store i32 1, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %308

308:                                              ; preds = %299, %283, %226, %145
  %309 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %309)
  %310 = load i32, i32* %4, align 4
  ret i32 %310
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local double @fabs(float) #2

declare dso_local i32 @VectorSubtract(float*, float*, float*) #2

declare dso_local float @DotProduct(float*, float*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
