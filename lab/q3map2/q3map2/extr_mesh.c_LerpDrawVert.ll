; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_mesh.c_LerpDrawVert.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_mesh.c_LerpDrawVert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { double*, double*, float**, i32**, float* }

@MAX_LIGHTMAPS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LerpDrawVert(%struct.TYPE_5__* %0, %struct.TYPE_5__* %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %6, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load double*, double** %9, align 8
  %11 = getelementptr inbounds double, double* %10, i64 0
  %12 = load double, double* %11, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load double*, double** %14, align 8
  %16 = getelementptr inbounds double, double* %15, i64 0
  %17 = load double, double* %16, align 8
  %18 = fadd double %12, %17
  %19 = fmul double 5.000000e-01, %18
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load double*, double** %21, align 8
  %23 = getelementptr inbounds double, double* %22, i64 0
  store double %19, double* %23, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load double*, double** %25, align 8
  %27 = getelementptr inbounds double, double* %26, i64 1
  %28 = load double, double* %27, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load double*, double** %30, align 8
  %32 = getelementptr inbounds double, double* %31, i64 1
  %33 = load double, double* %32, align 8
  %34 = fadd double %28, %33
  %35 = fmul double 5.000000e-01, %34
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load double*, double** %37, align 8
  %39 = getelementptr inbounds double, double* %38, i64 1
  store double %35, double* %39, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load double*, double** %41, align 8
  %43 = getelementptr inbounds double, double* %42, i64 2
  %44 = load double, double* %43, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load double*, double** %46, align 8
  %48 = getelementptr inbounds double, double* %47, i64 2
  %49 = load double, double* %48, align 8
  %50 = fadd double %44, %49
  %51 = fmul double 5.000000e-01, %50
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load double*, double** %53, align 8
  %55 = getelementptr inbounds double, double* %54, i64 2
  store double %51, double* %55, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load double*, double** %57, align 8
  %59 = getelementptr inbounds double, double* %58, i64 0
  %60 = load double, double* %59, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load double*, double** %62, align 8
  %64 = getelementptr inbounds double, double* %63, i64 0
  %65 = load double, double* %64, align 8
  %66 = fadd double %60, %65
  %67 = fmul double 5.000000e-01, %66
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load double*, double** %69, align 8
  %71 = getelementptr inbounds double, double* %70, i64 0
  store double %67, double* %71, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load double*, double** %73, align 8
  %75 = getelementptr inbounds double, double* %74, i64 1
  %76 = load double, double* %75, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load double*, double** %78, align 8
  %80 = getelementptr inbounds double, double* %79, i64 1
  %81 = load double, double* %80, align 8
  %82 = fadd double %76, %81
  %83 = fmul double 5.000000e-01, %82
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = load double*, double** %85, align 8
  %87 = getelementptr inbounds double, double* %86, i64 1
  store double %83, double* %87, align 8
  store i32 0, i32* %7, align 4
  br label %88

88:                                               ; preds = %261, %3
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* @MAX_LIGHTMAPS, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %264

92:                                               ; preds = %88
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 2
  %95 = load float**, float*** %94, align 8
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds float*, float** %95, i64 %97
  %99 = load float*, float** %98, align 8
  %100 = getelementptr inbounds float, float* %99, i64 0
  %101 = load float, float* %100, align 4
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 2
  %104 = load float**, float*** %103, align 8
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds float*, float** %104, i64 %106
  %108 = load float*, float** %107, align 8
  %109 = getelementptr inbounds float, float* %108, i64 0
  %110 = load float, float* %109, align 4
  %111 = fadd float %101, %110
  %112 = fmul float 5.000000e-01, %111
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 2
  %115 = load float**, float*** %114, align 8
  %116 = load i32, i32* %7, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds float*, float** %115, i64 %117
  %119 = load float*, float** %118, align 8
  %120 = getelementptr inbounds float, float* %119, i64 0
  store float %112, float* %120, align 4
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 2
  %123 = load float**, float*** %122, align 8
  %124 = load i32, i32* %7, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds float*, float** %123, i64 %125
  %127 = load float*, float** %126, align 8
  %128 = getelementptr inbounds float, float* %127, i64 1
  %129 = load float, float* %128, align 4
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 2
  %132 = load float**, float*** %131, align 8
  %133 = load i32, i32* %7, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds float*, float** %132, i64 %134
  %136 = load float*, float** %135, align 8
  %137 = getelementptr inbounds float, float* %136, i64 1
  %138 = load float, float* %137, align 4
  %139 = fadd float %129, %138
  %140 = fmul float 5.000000e-01, %139
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 2
  %143 = load float**, float*** %142, align 8
  %144 = load i32, i32* %7, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds float*, float** %143, i64 %145
  %147 = load float*, float** %146, align 8
  %148 = getelementptr inbounds float, float* %147, i64 1
  store float %140, float* %148, align 4
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 3
  %151 = load i32**, i32*** %150, align 8
  %152 = load i32, i32* %7, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32*, i32** %151, i64 %153
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 0
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 3
  %160 = load i32**, i32*** %159, align 8
  %161 = load i32, i32* %7, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32*, i32** %160, i64 %162
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 0
  %166 = load i32, i32* %165, align 4
  %167 = add nsw i32 %157, %166
  %168 = ashr i32 %167, 1
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 3
  %171 = load i32**, i32*** %170, align 8
  %172 = load i32, i32* %7, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32*, i32** %171, i64 %173
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 0
  store i32 %168, i32* %176, align 4
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 3
  %179 = load i32**, i32*** %178, align 8
  %180 = load i32, i32* %7, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32*, i32** %179, i64 %181
  %183 = load i32*, i32** %182, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 1
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 3
  %188 = load i32**, i32*** %187, align 8
  %189 = load i32, i32* %7, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32*, i32** %188, i64 %190
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 1
  %194 = load i32, i32* %193, align 4
  %195 = add nsw i32 %185, %194
  %196 = ashr i32 %195, 1
  %197 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 3
  %199 = load i32**, i32*** %198, align 8
  %200 = load i32, i32* %7, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32*, i32** %199, i64 %201
  %203 = load i32*, i32** %202, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 1
  store i32 %196, i32* %204, align 4
  %205 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 3
  %207 = load i32**, i32*** %206, align 8
  %208 = load i32, i32* %7, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32*, i32** %207, i64 %209
  %211 = load i32*, i32** %210, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 2
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 3
  %216 = load i32**, i32*** %215, align 8
  %217 = load i32, i32* %7, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32*, i32** %216, i64 %218
  %220 = load i32*, i32** %219, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 2
  %222 = load i32, i32* %221, align 4
  %223 = add nsw i32 %213, %222
  %224 = ashr i32 %223, 1
  %225 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i32 0, i32 3
  %227 = load i32**, i32*** %226, align 8
  %228 = load i32, i32* %7, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32*, i32** %227, i64 %229
  %231 = load i32*, i32** %230, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 2
  store i32 %224, i32* %232, align 4
  %233 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %234 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %233, i32 0, i32 3
  %235 = load i32**, i32*** %234, align 8
  %236 = load i32, i32* %7, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32*, i32** %235, i64 %237
  %239 = load i32*, i32** %238, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 3
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %242, i32 0, i32 3
  %244 = load i32**, i32*** %243, align 8
  %245 = load i32, i32* %7, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32*, i32** %244, i64 %246
  %248 = load i32*, i32** %247, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 3
  %250 = load i32, i32* %249, align 4
  %251 = add nsw i32 %241, %250
  %252 = ashr i32 %251, 1
  %253 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %254 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %253, i32 0, i32 3
  %255 = load i32**, i32*** %254, align 8
  %256 = load i32, i32* %7, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32*, i32** %255, i64 %257
  %259 = load i32*, i32** %258, align 8
  %260 = getelementptr inbounds i32, i32* %259, i64 3
  store i32 %252, i32* %260, align 4
  br label %261

261:                                              ; preds = %92
  %262 = load i32, i32* %7, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %7, align 4
  br label %88

264:                                              ; preds = %88
  %265 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %266 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %265, i32 0, i32 4
  %267 = load float*, float** %266, align 8
  %268 = getelementptr inbounds float, float* %267, i64 0
  %269 = load float, float* %268, align 4
  %270 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %271 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %270, i32 0, i32 4
  %272 = load float*, float** %271, align 8
  %273 = getelementptr inbounds float, float* %272, i64 0
  %274 = load float, float* %273, align 4
  %275 = fadd float %269, %274
  %276 = fmul float 5.000000e-01, %275
  %277 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %278 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %277, i32 0, i32 4
  %279 = load float*, float** %278, align 8
  %280 = getelementptr inbounds float, float* %279, i64 0
  store float %276, float* %280, align 4
  %281 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %282 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %281, i32 0, i32 4
  %283 = load float*, float** %282, align 8
  %284 = getelementptr inbounds float, float* %283, i64 1
  %285 = load float, float* %284, align 4
  %286 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %287 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %286, i32 0, i32 4
  %288 = load float*, float** %287, align 8
  %289 = getelementptr inbounds float, float* %288, i64 1
  %290 = load float, float* %289, align 4
  %291 = fadd float %285, %290
  %292 = fmul float 5.000000e-01, %291
  %293 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %294 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %293, i32 0, i32 4
  %295 = load float*, float** %294, align 8
  %296 = getelementptr inbounds float, float* %295, i64 1
  store float %292, float* %296, align 4
  %297 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %298 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %297, i32 0, i32 4
  %299 = load float*, float** %298, align 8
  %300 = getelementptr inbounds float, float* %299, i64 2
  %301 = load float, float* %300, align 4
  %302 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %303 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %302, i32 0, i32 4
  %304 = load float*, float** %303, align 8
  %305 = getelementptr inbounds float, float* %304, i64 2
  %306 = load float, float* %305, align 4
  %307 = fadd float %301, %306
  %308 = fmul float 5.000000e-01, %307
  %309 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %310 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %309, i32 0, i32 4
  %311 = load float*, float** %310, align 8
  %312 = getelementptr inbounds float, float* %311, i64 2
  store float %308, float* %312, align 4
  %313 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %314 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %313, i32 0, i32 4
  %315 = load float*, float** %314, align 8
  %316 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %317 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %316, i32 0, i32 4
  %318 = load float*, float** %317, align 8
  %319 = call i64 @VectorNormalize(float* %315, float* %318)
  %320 = icmp eq i64 %319, 0
  br i1 %320, label %321, label %329

321:                                              ; preds = %264
  %322 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %323 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %322, i32 0, i32 4
  %324 = load float*, float** %323, align 8
  %325 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %326 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %325, i32 0, i32 4
  %327 = load float*, float** %326, align 8
  %328 = call i32 @VectorCopy(float* %324, float* %327)
  br label %329

329:                                              ; preds = %321, %264
  ret void
}

declare dso_local i64 @VectorNormalize(float*, float*) #1

declare dso_local i32 @VectorCopy(float*, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
