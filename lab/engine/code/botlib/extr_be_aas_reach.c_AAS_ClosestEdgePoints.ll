; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_reach.c_AAS_ClosestEdgePoints.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_reach.c_AAS_ClosestEdgePoints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { float, i32* }

@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @AAS_ClosestEdgePoints(i32* %0, i32* %1, i32* %2, i32* %3, %struct.TYPE_4__* %4, %struct.TYPE_4__* %5, i32* %6, i32* %7, i32* %8, i32* %9, float %10) #0 {
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_4__*, align 8
  %17 = alloca %struct.TYPE_4__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca float, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca float, align 4
  %30 = alloca float, align 4
  %31 = alloca float, align 4
  %32 = alloca float, align 4
  %33 = alloca float, align 4
  %34 = alloca float, align 4
  %35 = alloca float, align 4
  %36 = alloca i32, align 4
  store i32* %0, i32** %12, align 8
  store i32* %1, i32** %13, align 8
  store i32* %2, i32** %14, align 8
  store i32* %3, i32** %15, align 8
  store %struct.TYPE_4__* %4, %struct.TYPE_4__** %16, align 8
  store %struct.TYPE_4__* %5, %struct.TYPE_4__** %17, align 8
  store i32* %6, i32** %18, align 8
  store i32* %7, i32** %19, align 8
  store i32* %8, i32** %20, align 8
  store i32* %9, i32** %21, align 8
  store float %10, float* %22, align 4
  %37 = load i32*, i32** %13, align 8
  %38 = load i32*, i32** %12, align 8
  %39 = load i32*, i32** %23, align 8
  %40 = call i32 @VectorSubtract(i32* %37, i32* %38, i32* %39)
  %41 = load i32*, i32** %15, align 8
  %42 = load i32*, i32** %14, align 8
  %43 = load i32*, i32** %24, align 8
  %44 = call i32 @VectorSubtract(i32* %41, i32* %42, i32* %43)
  %45 = load i32*, i32** %23, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 2
  store i32 0, i32* %46, align 4
  %47 = load i32*, i32** %24, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 2
  store i32 0, i32* %48, align 4
  %49 = load i32*, i32** %24, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %145

53:                                               ; preds = %11
  %54 = load i32*, i32** %24, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %24, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = sdiv i32 %56, %59
  %61 = sitofp i32 %60 to float
  store float %61, float* %30, align 4
  %62 = load i32*, i32** %14, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  %64 = load i32, i32* %63, align 4
  %65 = sitofp i32 %64 to float
  %66 = load float, float* %30, align 4
  %67 = load i32*, i32** %14, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = sitofp i32 %69 to float
  %71 = fmul float %66, %70
  %72 = fsub float %65, %71
  store float %72, float* %32, align 4
  %73 = load i32*, i32** %12, align 8
  %74 = load i32*, i32** %24, align 8
  %75 = call float @DotProduct(i32* %73, i32* %74)
  %76 = load float, float* %30, align 4
  %77 = load i32*, i32** %24, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = sitofp i32 %79 to float
  %81 = fmul float %76, %80
  %82 = load float, float* %32, align 4
  %83 = load i32*, i32** %24, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  %85 = load i32, i32* %84, align 4
  %86 = sitofp i32 %85 to float
  %87 = fmul float %82, %86
  %88 = fadd float %81, %87
  %89 = fsub float %75, %88
  %90 = load i32*, i32** %24, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = sitofp i32 %92 to float
  %94 = fdiv float %89, %93
  %95 = fptosi float %94 to i32
  %96 = load i32*, i32** %25, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  store i32 %95, i32* %97, align 4
  %98 = load float, float* %30, align 4
  %99 = load i32*, i32** %25, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  %101 = load i32, i32* %100, align 4
  %102 = sitofp i32 %101 to float
  %103 = fmul float %98, %102
  %104 = load float, float* %32, align 4
  %105 = fadd float %103, %104
  %106 = fptosi float %105 to i32
  %107 = load i32*, i32** %25, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 1
  store i32 %106, i32* %108, align 4
  %109 = load i32*, i32** %13, align 8
  %110 = load i32*, i32** %24, align 8
  %111 = call float @DotProduct(i32* %109, i32* %110)
  %112 = load float, float* %30, align 4
  %113 = load i32*, i32** %24, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 0
  %115 = load i32, i32* %114, align 4
  %116 = sitofp i32 %115 to float
  %117 = fmul float %112, %116
  %118 = load float, float* %32, align 4
  %119 = load i32*, i32** %24, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 1
  %121 = load i32, i32* %120, align 4
  %122 = sitofp i32 %121 to float
  %123 = fmul float %118, %122
  %124 = fadd float %117, %123
  %125 = fsub float %111, %124
  %126 = load i32*, i32** %24, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  %128 = load i32, i32* %127, align 4
  %129 = sitofp i32 %128 to float
  %130 = fdiv float %125, %129
  %131 = fptosi float %130 to i32
  %132 = load i32*, i32** %26, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 0
  store i32 %131, i32* %133, align 4
  %134 = load float, float* %30, align 4
  %135 = load i32*, i32** %26, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 0
  %137 = load i32, i32* %136, align 4
  %138 = sitofp i32 %137 to float
  %139 = fmul float %134, %138
  %140 = load float, float* %32, align 4
  %141 = fadd float %139, %140
  %142 = fptosi float %141 to i32
  %143 = load i32*, i32** %26, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 1
  store i32 %142, i32* %144, align 4
  br label %166

145:                                              ; preds = %11
  %146 = load i32*, i32** %14, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 0
  %148 = load i32, i32* %147, align 4
  %149 = load i32*, i32** %25, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 0
  store i32 %148, i32* %150, align 4
  %151 = load i32*, i32** %12, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 1
  %153 = load i32, i32* %152, align 4
  %154 = load i32*, i32** %25, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 1
  store i32 %153, i32* %155, align 4
  %156 = load i32*, i32** %14, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32*, i32** %26, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 0
  store i32 %158, i32* %160, align 4
  %161 = load i32*, i32** %13, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 1
  %163 = load i32, i32* %162, align 4
  %164 = load i32*, i32** %26, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 1
  store i32 %163, i32* %165, align 4
  br label %166

166:                                              ; preds = %145, %53
  %167 = load i32*, i32** %23, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 0
  %169 = load i32, i32* %168, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %263

171:                                              ; preds = %166
  %172 = load i32*, i32** %23, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 1
  %174 = load i32, i32* %173, align 4
  %175 = load i32*, i32** %23, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 0
  %177 = load i32, i32* %176, align 4
  %178 = sdiv i32 %174, %177
  %179 = sitofp i32 %178 to float
  store float %179, float* %29, align 4
  %180 = load i32*, i32** %12, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 1
  %182 = load i32, i32* %181, align 4
  %183 = sitofp i32 %182 to float
  %184 = load float, float* %29, align 4
  %185 = load i32*, i32** %12, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 0
  %187 = load i32, i32* %186, align 4
  %188 = sitofp i32 %187 to float
  %189 = fmul float %184, %188
  %190 = fsub float %183, %189
  store float %190, float* %31, align 4
  %191 = load i32*, i32** %14, align 8
  %192 = load i32*, i32** %23, align 8
  %193 = call float @DotProduct(i32* %191, i32* %192)
  %194 = load float, float* %29, align 4
  %195 = load i32*, i32** %23, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 0
  %197 = load i32, i32* %196, align 4
  %198 = sitofp i32 %197 to float
  %199 = fmul float %194, %198
  %200 = load float, float* %31, align 4
  %201 = load i32*, i32** %23, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 1
  %203 = load i32, i32* %202, align 4
  %204 = sitofp i32 %203 to float
  %205 = fmul float %200, %204
  %206 = fadd float %199, %205
  %207 = fsub float %193, %206
  %208 = load i32*, i32** %23, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 0
  %210 = load i32, i32* %209, align 4
  %211 = sitofp i32 %210 to float
  %212 = fdiv float %207, %211
  %213 = fptosi float %212 to i32
  %214 = load i32*, i32** %27, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 0
  store i32 %213, i32* %215, align 4
  %216 = load float, float* %29, align 4
  %217 = load i32*, i32** %27, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 0
  %219 = load i32, i32* %218, align 4
  %220 = sitofp i32 %219 to float
  %221 = fmul float %216, %220
  %222 = load float, float* %31, align 4
  %223 = fadd float %221, %222
  %224 = fptosi float %223 to i32
  %225 = load i32*, i32** %27, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 1
  store i32 %224, i32* %226, align 4
  %227 = load i32*, i32** %15, align 8
  %228 = load i32*, i32** %23, align 8
  %229 = call float @DotProduct(i32* %227, i32* %228)
  %230 = load float, float* %29, align 4
  %231 = load i32*, i32** %23, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 0
  %233 = load i32, i32* %232, align 4
  %234 = sitofp i32 %233 to float
  %235 = fmul float %230, %234
  %236 = load float, float* %31, align 4
  %237 = load i32*, i32** %23, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 1
  %239 = load i32, i32* %238, align 4
  %240 = sitofp i32 %239 to float
  %241 = fmul float %236, %240
  %242 = fadd float %235, %241
  %243 = fsub float %229, %242
  %244 = load i32*, i32** %23, align 8
  %245 = getelementptr inbounds i32, i32* %244, i64 0
  %246 = load i32, i32* %245, align 4
  %247 = sitofp i32 %246 to float
  %248 = fdiv float %243, %247
  %249 = fptosi float %248 to i32
  %250 = load i32*, i32** %28, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 0
  store i32 %249, i32* %251, align 4
  %252 = load float, float* %29, align 4
  %253 = load i32*, i32** %28, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 0
  %255 = load i32, i32* %254, align 4
  %256 = sitofp i32 %255 to float
  %257 = fmul float %252, %256
  %258 = load float, float* %31, align 4
  %259 = fadd float %257, %258
  %260 = fptosi float %259 to i32
  %261 = load i32*, i32** %28, align 8
  %262 = getelementptr inbounds i32, i32* %261, i64 1
  store i32 %260, i32* %262, align 4
  br label %284

263:                                              ; preds = %166
  %264 = load i32*, i32** %12, align 8
  %265 = getelementptr inbounds i32, i32* %264, i64 0
  %266 = load i32, i32* %265, align 4
  %267 = load i32*, i32** %27, align 8
  %268 = getelementptr inbounds i32, i32* %267, i64 0
  store i32 %266, i32* %268, align 4
  %269 = load i32*, i32** %14, align 8
  %270 = getelementptr inbounds i32, i32* %269, i64 1
  %271 = load i32, i32* %270, align 4
  %272 = load i32*, i32** %27, align 8
  %273 = getelementptr inbounds i32, i32* %272, i64 1
  store i32 %271, i32* %273, align 4
  %274 = load i32*, i32** %12, align 8
  %275 = getelementptr inbounds i32, i32* %274, i64 0
  %276 = load i32, i32* %275, align 4
  %277 = load i32*, i32** %28, align 8
  %278 = getelementptr inbounds i32, i32* %277, i64 0
  store i32 %276, i32* %278, align 4
  %279 = load i32*, i32** %15, align 8
  %280 = getelementptr inbounds i32, i32* %279, i64 1
  %281 = load i32, i32* %280, align 4
  %282 = load i32*, i32** %28, align 8
  %283 = getelementptr inbounds i32, i32* %282, i64 1
  store i32 %281, i32* %283, align 4
  br label %284

284:                                              ; preds = %263, %171
  %285 = load i32*, i32** %25, align 8
  %286 = getelementptr inbounds i32, i32* %285, i64 2
  store i32 0, i32* %286, align 4
  %287 = load i32*, i32** %26, align 8
  %288 = getelementptr inbounds i32, i32* %287, i64 2
  store i32 0, i32* %288, align 4
  %289 = load i32*, i32** %27, align 8
  %290 = getelementptr inbounds i32, i32* %289, i64 2
  store i32 0, i32* %290, align 4
  %291 = load i32*, i32** %28, align 8
  %292 = getelementptr inbounds i32, i32* %291, i64 2
  store i32 0, i32* %292, align 4
  %293 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %294 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %293, i32 0, i32 0
  %295 = load float, float* %294, align 8
  %296 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %297 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %296, i32 0, i32 1
  %298 = load i32*, i32** %297, align 8
  %299 = load i32*, i32** %25, align 8
  %300 = call float @DotProduct(i32* %298, i32* %299)
  %301 = fsub float %295, %300
  %302 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %303 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %302, i32 0, i32 1
  %304 = load i32*, i32** %303, align 8
  %305 = getelementptr inbounds i32, i32* %304, i64 2
  %306 = load i32, i32* %305, align 4
  %307 = sitofp i32 %306 to float
  %308 = fdiv float %301, %307
  %309 = fptosi float %308 to i32
  %310 = load i32*, i32** %25, align 8
  %311 = getelementptr inbounds i32, i32* %310, i64 2
  store i32 %309, i32* %311, align 4
  %312 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %313 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %312, i32 0, i32 0
  %314 = load float, float* %313, align 8
  %315 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %316 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %315, i32 0, i32 1
  %317 = load i32*, i32** %316, align 8
  %318 = load i32*, i32** %26, align 8
  %319 = call float @DotProduct(i32* %317, i32* %318)
  %320 = fsub float %314, %319
  %321 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %322 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %321, i32 0, i32 1
  %323 = load i32*, i32** %322, align 8
  %324 = getelementptr inbounds i32, i32* %323, i64 2
  %325 = load i32, i32* %324, align 4
  %326 = sitofp i32 %325 to float
  %327 = fdiv float %320, %326
  %328 = fptosi float %327 to i32
  %329 = load i32*, i32** %26, align 8
  %330 = getelementptr inbounds i32, i32* %329, i64 2
  store i32 %328, i32* %330, align 4
  %331 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %332 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %331, i32 0, i32 0
  %333 = load float, float* %332, align 8
  %334 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %335 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %334, i32 0, i32 1
  %336 = load i32*, i32** %335, align 8
  %337 = load i32*, i32** %27, align 8
  %338 = call float @DotProduct(i32* %336, i32* %337)
  %339 = fsub float %333, %338
  %340 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %341 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %340, i32 0, i32 1
  %342 = load i32*, i32** %341, align 8
  %343 = getelementptr inbounds i32, i32* %342, i64 2
  %344 = load i32, i32* %343, align 4
  %345 = sitofp i32 %344 to float
  %346 = fdiv float %339, %345
  %347 = fptosi float %346 to i32
  %348 = load i32*, i32** %27, align 8
  %349 = getelementptr inbounds i32, i32* %348, i64 2
  store i32 %347, i32* %349, align 4
  %350 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %351 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %350, i32 0, i32 0
  %352 = load float, float* %351, align 8
  %353 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %354 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %353, i32 0, i32 1
  %355 = load i32*, i32** %354, align 8
  %356 = load i32*, i32** %28, align 8
  %357 = call float @DotProduct(i32* %355, i32* %356)
  %358 = fsub float %352, %357
  %359 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %360 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %359, i32 0, i32 1
  %361 = load i32*, i32** %360, align 8
  %362 = getelementptr inbounds i32, i32* %361, i64 2
  %363 = load i32, i32* %362, align 4
  %364 = sitofp i32 %363 to float
  %365 = fdiv float %358, %364
  %366 = fptosi float %365 to i32
  %367 = load i32*, i32** %28, align 8
  %368 = getelementptr inbounds i32, i32* %367, i64 2
  store i32 %366, i32* %368, align 4
  %369 = load i32, i32* @qfalse, align 4
  store i32 %369, i32* %36, align 4
  %370 = load i32*, i32** %25, align 8
  %371 = load i32*, i32** %14, align 8
  %372 = load i32*, i32** %15, align 8
  %373 = call i64 @VectorBetweenVectors(i32* %370, i32* %371, i32* %372)
  %374 = icmp ne i64 %373, 0
  br i1 %374, label %375, label %478

375:                                              ; preds = %284
  %376 = load i32*, i32** %12, align 8
  %377 = load i32*, i32** %25, align 8
  %378 = call float @VectorDistance(i32* %376, i32* %377)
  store float %378, float* %33, align 4
  %379 = load float, float* %33, align 4
  %380 = fpext float %379 to double
  %381 = load float, float* %22, align 4
  %382 = fpext float %381 to double
  %383 = fsub double %382, 5.000000e-01
  %384 = fcmp ogt double %380, %383
  br i1 %384, label %385, label %457

385:                                              ; preds = %375
  %386 = load float, float* %33, align 4
  %387 = fpext float %386 to double
  %388 = load float, float* %22, align 4
  %389 = fpext float %388 to double
  %390 = fadd double %389, 5.000000e-01
  %391 = fcmp olt double %387, %390
  br i1 %391, label %392, label %457

392:                                              ; preds = %385
  %393 = load i32*, i32** %18, align 8
  %394 = load i32*, i32** %12, align 8
  %395 = call float @VectorDistance(i32* %393, i32* %394)
  store float %395, float* %34, align 4
  %396 = load i32*, i32** %20, align 8
  %397 = load i32*, i32** %12, align 8
  %398 = call float @VectorDistance(i32* %396, i32* %397)
  store float %398, float* %35, align 4
  %399 = load float, float* %34, align 4
  %400 = load float, float* %35, align 4
  %401 = fcmp ogt float %399, %400
  br i1 %401, label %402, label %413

402:                                              ; preds = %392
  %403 = load float, float* %34, align 4
  %404 = load i32*, i32** %18, align 8
  %405 = load i32*, i32** %20, align 8
  %406 = call float @VectorDistance(i32* %404, i32* %405)
  %407 = fcmp ogt float %403, %406
  br i1 %407, label %408, label %412

408:                                              ; preds = %402
  %409 = load i32*, i32** %12, align 8
  %410 = load i32*, i32** %20, align 8
  %411 = call i32 @VectorCopy(i32* %409, i32* %410)
  br label %412

412:                                              ; preds = %408, %402
  br label %424

413:                                              ; preds = %392
  %414 = load float, float* %35, align 4
  %415 = load i32*, i32** %18, align 8
  %416 = load i32*, i32** %20, align 8
  %417 = call float @VectorDistance(i32* %415, i32* %416)
  %418 = fcmp ogt float %414, %417
  br i1 %418, label %419, label %423

419:                                              ; preds = %413
  %420 = load i32*, i32** %12, align 8
  %421 = load i32*, i32** %18, align 8
  %422 = call i32 @VectorCopy(i32* %420, i32* %421)
  br label %423

423:                                              ; preds = %419, %413
  br label %424

424:                                              ; preds = %423, %412
  %425 = load i32*, i32** %19, align 8
  %426 = load i32*, i32** %25, align 8
  %427 = call float @VectorDistance(i32* %425, i32* %426)
  store float %427, float* %34, align 4
  %428 = load i32*, i32** %21, align 8
  %429 = load i32*, i32** %25, align 8
  %430 = call float @VectorDistance(i32* %428, i32* %429)
  store float %430, float* %35, align 4
  %431 = load float, float* %34, align 4
  %432 = load float, float* %35, align 4
  %433 = fcmp ogt float %431, %432
  br i1 %433, label %434, label %445

434:                                              ; preds = %424
  %435 = load float, float* %34, align 4
  %436 = load i32*, i32** %19, align 8
  %437 = load i32*, i32** %21, align 8
  %438 = call float @VectorDistance(i32* %436, i32* %437)
  %439 = fcmp ogt float %435, %438
  br i1 %439, label %440, label %444

440:                                              ; preds = %434
  %441 = load i32*, i32** %25, align 8
  %442 = load i32*, i32** %21, align 8
  %443 = call i32 @VectorCopy(i32* %441, i32* %442)
  br label %444

444:                                              ; preds = %440, %434
  br label %456

445:                                              ; preds = %424
  %446 = load float, float* %35, align 4
  %447 = load i32*, i32** %19, align 8
  %448 = load i32*, i32** %21, align 8
  %449 = call float @VectorDistance(i32* %447, i32* %448)
  %450 = fcmp ogt float %446, %449
  br i1 %450, label %451, label %455

451:                                              ; preds = %445
  %452 = load i32*, i32** %25, align 8
  %453 = load i32*, i32** %19, align 8
  %454 = call i32 @VectorCopy(i32* %452, i32* %453)
  br label %455

455:                                              ; preds = %451, %445
  br label %456

456:                                              ; preds = %455, %444
  br label %476

457:                                              ; preds = %385, %375
  %458 = load float, float* %33, align 4
  %459 = load float, float* %22, align 4
  %460 = fcmp olt float %458, %459
  br i1 %460, label %461, label %475

461:                                              ; preds = %457
  %462 = load float, float* %33, align 4
  store float %462, float* %22, align 4
  %463 = load i32*, i32** %12, align 8
  %464 = load i32*, i32** %18, align 8
  %465 = call i32 @VectorCopy(i32* %463, i32* %464)
  %466 = load i32*, i32** %12, align 8
  %467 = load i32*, i32** %20, align 8
  %468 = call i32 @VectorCopy(i32* %466, i32* %467)
  %469 = load i32*, i32** %25, align 8
  %470 = load i32*, i32** %19, align 8
  %471 = call i32 @VectorCopy(i32* %469, i32* %470)
  %472 = load i32*, i32** %25, align 8
  %473 = load i32*, i32** %21, align 8
  %474 = call i32 @VectorCopy(i32* %472, i32* %473)
  br label %475

475:                                              ; preds = %461, %457
  br label %476

476:                                              ; preds = %475, %456
  %477 = load i32, i32* @qtrue, align 4
  store i32 %477, i32* %36, align 4
  br label %478

478:                                              ; preds = %476, %284
  %479 = load i32*, i32** %26, align 8
  %480 = load i32*, i32** %14, align 8
  %481 = load i32*, i32** %15, align 8
  %482 = call i64 @VectorBetweenVectors(i32* %479, i32* %480, i32* %481)
  %483 = icmp ne i64 %482, 0
  br i1 %483, label %484, label %587

484:                                              ; preds = %478
  %485 = load i32*, i32** %13, align 8
  %486 = load i32*, i32** %26, align 8
  %487 = call float @VectorDistance(i32* %485, i32* %486)
  store float %487, float* %33, align 4
  %488 = load float, float* %33, align 4
  %489 = fpext float %488 to double
  %490 = load float, float* %22, align 4
  %491 = fpext float %490 to double
  %492 = fsub double %491, 5.000000e-01
  %493 = fcmp ogt double %489, %492
  br i1 %493, label %494, label %566

494:                                              ; preds = %484
  %495 = load float, float* %33, align 4
  %496 = fpext float %495 to double
  %497 = load float, float* %22, align 4
  %498 = fpext float %497 to double
  %499 = fadd double %498, 5.000000e-01
  %500 = fcmp olt double %496, %499
  br i1 %500, label %501, label %566

501:                                              ; preds = %494
  %502 = load i32*, i32** %18, align 8
  %503 = load i32*, i32** %13, align 8
  %504 = call float @VectorDistance(i32* %502, i32* %503)
  store float %504, float* %34, align 4
  %505 = load i32*, i32** %20, align 8
  %506 = load i32*, i32** %13, align 8
  %507 = call float @VectorDistance(i32* %505, i32* %506)
  store float %507, float* %35, align 4
  %508 = load float, float* %34, align 4
  %509 = load float, float* %35, align 4
  %510 = fcmp ogt float %508, %509
  br i1 %510, label %511, label %522

511:                                              ; preds = %501
  %512 = load float, float* %34, align 4
  %513 = load i32*, i32** %18, align 8
  %514 = load i32*, i32** %20, align 8
  %515 = call float @VectorDistance(i32* %513, i32* %514)
  %516 = fcmp ogt float %512, %515
  br i1 %516, label %517, label %521

517:                                              ; preds = %511
  %518 = load i32*, i32** %13, align 8
  %519 = load i32*, i32** %20, align 8
  %520 = call i32 @VectorCopy(i32* %518, i32* %519)
  br label %521

521:                                              ; preds = %517, %511
  br label %533

522:                                              ; preds = %501
  %523 = load float, float* %35, align 4
  %524 = load i32*, i32** %18, align 8
  %525 = load i32*, i32** %20, align 8
  %526 = call float @VectorDistance(i32* %524, i32* %525)
  %527 = fcmp ogt float %523, %526
  br i1 %527, label %528, label %532

528:                                              ; preds = %522
  %529 = load i32*, i32** %13, align 8
  %530 = load i32*, i32** %18, align 8
  %531 = call i32 @VectorCopy(i32* %529, i32* %530)
  br label %532

532:                                              ; preds = %528, %522
  br label %533

533:                                              ; preds = %532, %521
  %534 = load i32*, i32** %19, align 8
  %535 = load i32*, i32** %26, align 8
  %536 = call float @VectorDistance(i32* %534, i32* %535)
  store float %536, float* %34, align 4
  %537 = load i32*, i32** %21, align 8
  %538 = load i32*, i32** %26, align 8
  %539 = call float @VectorDistance(i32* %537, i32* %538)
  store float %539, float* %35, align 4
  %540 = load float, float* %34, align 4
  %541 = load float, float* %35, align 4
  %542 = fcmp ogt float %540, %541
  br i1 %542, label %543, label %554

543:                                              ; preds = %533
  %544 = load float, float* %34, align 4
  %545 = load i32*, i32** %19, align 8
  %546 = load i32*, i32** %21, align 8
  %547 = call float @VectorDistance(i32* %545, i32* %546)
  %548 = fcmp ogt float %544, %547
  br i1 %548, label %549, label %553

549:                                              ; preds = %543
  %550 = load i32*, i32** %26, align 8
  %551 = load i32*, i32** %21, align 8
  %552 = call i32 @VectorCopy(i32* %550, i32* %551)
  br label %553

553:                                              ; preds = %549, %543
  br label %565

554:                                              ; preds = %533
  %555 = load float, float* %35, align 4
  %556 = load i32*, i32** %19, align 8
  %557 = load i32*, i32** %21, align 8
  %558 = call float @VectorDistance(i32* %556, i32* %557)
  %559 = fcmp ogt float %555, %558
  br i1 %559, label %560, label %564

560:                                              ; preds = %554
  %561 = load i32*, i32** %26, align 8
  %562 = load i32*, i32** %19, align 8
  %563 = call i32 @VectorCopy(i32* %561, i32* %562)
  br label %564

564:                                              ; preds = %560, %554
  br label %565

565:                                              ; preds = %564, %553
  br label %585

566:                                              ; preds = %494, %484
  %567 = load float, float* %33, align 4
  %568 = load float, float* %22, align 4
  %569 = fcmp olt float %567, %568
  br i1 %569, label %570, label %584

570:                                              ; preds = %566
  %571 = load float, float* %33, align 4
  store float %571, float* %22, align 4
  %572 = load i32*, i32** %13, align 8
  %573 = load i32*, i32** %18, align 8
  %574 = call i32 @VectorCopy(i32* %572, i32* %573)
  %575 = load i32*, i32** %13, align 8
  %576 = load i32*, i32** %20, align 8
  %577 = call i32 @VectorCopy(i32* %575, i32* %576)
  %578 = load i32*, i32** %26, align 8
  %579 = load i32*, i32** %19, align 8
  %580 = call i32 @VectorCopy(i32* %578, i32* %579)
  %581 = load i32*, i32** %26, align 8
  %582 = load i32*, i32** %21, align 8
  %583 = call i32 @VectorCopy(i32* %581, i32* %582)
  br label %584

584:                                              ; preds = %570, %566
  br label %585

585:                                              ; preds = %584, %565
  %586 = load i32, i32* @qtrue, align 4
  store i32 %586, i32* %36, align 4
  br label %587

587:                                              ; preds = %585, %478
  %588 = load i32*, i32** %27, align 8
  %589 = load i32*, i32** %12, align 8
  %590 = load i32*, i32** %13, align 8
  %591 = call i64 @VectorBetweenVectors(i32* %588, i32* %589, i32* %590)
  %592 = icmp ne i64 %591, 0
  br i1 %592, label %593, label %696

593:                                              ; preds = %587
  %594 = load i32*, i32** %14, align 8
  %595 = load i32*, i32** %27, align 8
  %596 = call float @VectorDistance(i32* %594, i32* %595)
  store float %596, float* %33, align 4
  %597 = load float, float* %33, align 4
  %598 = fpext float %597 to double
  %599 = load float, float* %22, align 4
  %600 = fpext float %599 to double
  %601 = fsub double %600, 5.000000e-01
  %602 = fcmp ogt double %598, %601
  br i1 %602, label %603, label %675

603:                                              ; preds = %593
  %604 = load float, float* %33, align 4
  %605 = fpext float %604 to double
  %606 = load float, float* %22, align 4
  %607 = fpext float %606 to double
  %608 = fadd double %607, 5.000000e-01
  %609 = fcmp olt double %605, %608
  br i1 %609, label %610, label %675

610:                                              ; preds = %603
  %611 = load i32*, i32** %18, align 8
  %612 = load i32*, i32** %27, align 8
  %613 = call float @VectorDistance(i32* %611, i32* %612)
  store float %613, float* %34, align 4
  %614 = load i32*, i32** %20, align 8
  %615 = load i32*, i32** %27, align 8
  %616 = call float @VectorDistance(i32* %614, i32* %615)
  store float %616, float* %35, align 4
  %617 = load float, float* %34, align 4
  %618 = load float, float* %35, align 4
  %619 = fcmp ogt float %617, %618
  br i1 %619, label %620, label %631

620:                                              ; preds = %610
  %621 = load float, float* %34, align 4
  %622 = load i32*, i32** %18, align 8
  %623 = load i32*, i32** %20, align 8
  %624 = call float @VectorDistance(i32* %622, i32* %623)
  %625 = fcmp ogt float %621, %624
  br i1 %625, label %626, label %630

626:                                              ; preds = %620
  %627 = load i32*, i32** %27, align 8
  %628 = load i32*, i32** %20, align 8
  %629 = call i32 @VectorCopy(i32* %627, i32* %628)
  br label %630

630:                                              ; preds = %626, %620
  br label %642

631:                                              ; preds = %610
  %632 = load float, float* %35, align 4
  %633 = load i32*, i32** %18, align 8
  %634 = load i32*, i32** %20, align 8
  %635 = call float @VectorDistance(i32* %633, i32* %634)
  %636 = fcmp ogt float %632, %635
  br i1 %636, label %637, label %641

637:                                              ; preds = %631
  %638 = load i32*, i32** %27, align 8
  %639 = load i32*, i32** %18, align 8
  %640 = call i32 @VectorCopy(i32* %638, i32* %639)
  br label %641

641:                                              ; preds = %637, %631
  br label %642

642:                                              ; preds = %641, %630
  %643 = load i32*, i32** %19, align 8
  %644 = load i32*, i32** %14, align 8
  %645 = call float @VectorDistance(i32* %643, i32* %644)
  store float %645, float* %34, align 4
  %646 = load i32*, i32** %21, align 8
  %647 = load i32*, i32** %14, align 8
  %648 = call float @VectorDistance(i32* %646, i32* %647)
  store float %648, float* %35, align 4
  %649 = load float, float* %34, align 4
  %650 = load float, float* %35, align 4
  %651 = fcmp ogt float %649, %650
  br i1 %651, label %652, label %663

652:                                              ; preds = %642
  %653 = load float, float* %34, align 4
  %654 = load i32*, i32** %19, align 8
  %655 = load i32*, i32** %21, align 8
  %656 = call float @VectorDistance(i32* %654, i32* %655)
  %657 = fcmp ogt float %653, %656
  br i1 %657, label %658, label %662

658:                                              ; preds = %652
  %659 = load i32*, i32** %14, align 8
  %660 = load i32*, i32** %21, align 8
  %661 = call i32 @VectorCopy(i32* %659, i32* %660)
  br label %662

662:                                              ; preds = %658, %652
  br label %674

663:                                              ; preds = %642
  %664 = load float, float* %35, align 4
  %665 = load i32*, i32** %19, align 8
  %666 = load i32*, i32** %21, align 8
  %667 = call float @VectorDistance(i32* %665, i32* %666)
  %668 = fcmp ogt float %664, %667
  br i1 %668, label %669, label %673

669:                                              ; preds = %663
  %670 = load i32*, i32** %14, align 8
  %671 = load i32*, i32** %19, align 8
  %672 = call i32 @VectorCopy(i32* %670, i32* %671)
  br label %673

673:                                              ; preds = %669, %663
  br label %674

674:                                              ; preds = %673, %662
  br label %694

675:                                              ; preds = %603, %593
  %676 = load float, float* %33, align 4
  %677 = load float, float* %22, align 4
  %678 = fcmp olt float %676, %677
  br i1 %678, label %679, label %693

679:                                              ; preds = %675
  %680 = load float, float* %33, align 4
  store float %680, float* %22, align 4
  %681 = load i32*, i32** %27, align 8
  %682 = load i32*, i32** %18, align 8
  %683 = call i32 @VectorCopy(i32* %681, i32* %682)
  %684 = load i32*, i32** %27, align 8
  %685 = load i32*, i32** %20, align 8
  %686 = call i32 @VectorCopy(i32* %684, i32* %685)
  %687 = load i32*, i32** %14, align 8
  %688 = load i32*, i32** %19, align 8
  %689 = call i32 @VectorCopy(i32* %687, i32* %688)
  %690 = load i32*, i32** %14, align 8
  %691 = load i32*, i32** %21, align 8
  %692 = call i32 @VectorCopy(i32* %690, i32* %691)
  br label %693

693:                                              ; preds = %679, %675
  br label %694

694:                                              ; preds = %693, %674
  %695 = load i32, i32* @qtrue, align 4
  store i32 %695, i32* %36, align 4
  br label %696

696:                                              ; preds = %694, %587
  %697 = load i32*, i32** %28, align 8
  %698 = load i32*, i32** %12, align 8
  %699 = load i32*, i32** %13, align 8
  %700 = call i64 @VectorBetweenVectors(i32* %697, i32* %698, i32* %699)
  %701 = icmp ne i64 %700, 0
  br i1 %701, label %702, label %805

702:                                              ; preds = %696
  %703 = load i32*, i32** %15, align 8
  %704 = load i32*, i32** %28, align 8
  %705 = call float @VectorDistance(i32* %703, i32* %704)
  store float %705, float* %33, align 4
  %706 = load float, float* %33, align 4
  %707 = fpext float %706 to double
  %708 = load float, float* %22, align 4
  %709 = fpext float %708 to double
  %710 = fsub double %709, 5.000000e-01
  %711 = fcmp ogt double %707, %710
  br i1 %711, label %712, label %784

712:                                              ; preds = %702
  %713 = load float, float* %33, align 4
  %714 = fpext float %713 to double
  %715 = load float, float* %22, align 4
  %716 = fpext float %715 to double
  %717 = fadd double %716, 5.000000e-01
  %718 = fcmp olt double %714, %717
  br i1 %718, label %719, label %784

719:                                              ; preds = %712
  %720 = load i32*, i32** %18, align 8
  %721 = load i32*, i32** %28, align 8
  %722 = call float @VectorDistance(i32* %720, i32* %721)
  store float %722, float* %34, align 4
  %723 = load i32*, i32** %20, align 8
  %724 = load i32*, i32** %28, align 8
  %725 = call float @VectorDistance(i32* %723, i32* %724)
  store float %725, float* %35, align 4
  %726 = load float, float* %34, align 4
  %727 = load float, float* %35, align 4
  %728 = fcmp ogt float %726, %727
  br i1 %728, label %729, label %740

729:                                              ; preds = %719
  %730 = load float, float* %34, align 4
  %731 = load i32*, i32** %18, align 8
  %732 = load i32*, i32** %20, align 8
  %733 = call float @VectorDistance(i32* %731, i32* %732)
  %734 = fcmp ogt float %730, %733
  br i1 %734, label %735, label %739

735:                                              ; preds = %729
  %736 = load i32*, i32** %28, align 8
  %737 = load i32*, i32** %20, align 8
  %738 = call i32 @VectorCopy(i32* %736, i32* %737)
  br label %739

739:                                              ; preds = %735, %729
  br label %751

740:                                              ; preds = %719
  %741 = load float, float* %35, align 4
  %742 = load i32*, i32** %18, align 8
  %743 = load i32*, i32** %20, align 8
  %744 = call float @VectorDistance(i32* %742, i32* %743)
  %745 = fcmp ogt float %741, %744
  br i1 %745, label %746, label %750

746:                                              ; preds = %740
  %747 = load i32*, i32** %28, align 8
  %748 = load i32*, i32** %18, align 8
  %749 = call i32 @VectorCopy(i32* %747, i32* %748)
  br label %750

750:                                              ; preds = %746, %740
  br label %751

751:                                              ; preds = %750, %739
  %752 = load i32*, i32** %19, align 8
  %753 = load i32*, i32** %15, align 8
  %754 = call float @VectorDistance(i32* %752, i32* %753)
  store float %754, float* %34, align 4
  %755 = load i32*, i32** %21, align 8
  %756 = load i32*, i32** %15, align 8
  %757 = call float @VectorDistance(i32* %755, i32* %756)
  store float %757, float* %35, align 4
  %758 = load float, float* %34, align 4
  %759 = load float, float* %35, align 4
  %760 = fcmp ogt float %758, %759
  br i1 %760, label %761, label %772

761:                                              ; preds = %751
  %762 = load float, float* %34, align 4
  %763 = load i32*, i32** %19, align 8
  %764 = load i32*, i32** %21, align 8
  %765 = call float @VectorDistance(i32* %763, i32* %764)
  %766 = fcmp ogt float %762, %765
  br i1 %766, label %767, label %771

767:                                              ; preds = %761
  %768 = load i32*, i32** %15, align 8
  %769 = load i32*, i32** %21, align 8
  %770 = call i32 @VectorCopy(i32* %768, i32* %769)
  br label %771

771:                                              ; preds = %767, %761
  br label %783

772:                                              ; preds = %751
  %773 = load float, float* %35, align 4
  %774 = load i32*, i32** %19, align 8
  %775 = load i32*, i32** %21, align 8
  %776 = call float @VectorDistance(i32* %774, i32* %775)
  %777 = fcmp ogt float %773, %776
  br i1 %777, label %778, label %782

778:                                              ; preds = %772
  %779 = load i32*, i32** %15, align 8
  %780 = load i32*, i32** %19, align 8
  %781 = call i32 @VectorCopy(i32* %779, i32* %780)
  br label %782

782:                                              ; preds = %778, %772
  br label %783

783:                                              ; preds = %782, %771
  br label %803

784:                                              ; preds = %712, %702
  %785 = load float, float* %33, align 4
  %786 = load float, float* %22, align 4
  %787 = fcmp olt float %785, %786
  br i1 %787, label %788, label %802

788:                                              ; preds = %784
  %789 = load float, float* %33, align 4
  store float %789, float* %22, align 4
  %790 = load i32*, i32** %28, align 8
  %791 = load i32*, i32** %18, align 8
  %792 = call i32 @VectorCopy(i32* %790, i32* %791)
  %793 = load i32*, i32** %28, align 8
  %794 = load i32*, i32** %20, align 8
  %795 = call i32 @VectorCopy(i32* %793, i32* %794)
  %796 = load i32*, i32** %15, align 8
  %797 = load i32*, i32** %19, align 8
  %798 = call i32 @VectorCopy(i32* %796, i32* %797)
  %799 = load i32*, i32** %15, align 8
  %800 = load i32*, i32** %21, align 8
  %801 = call i32 @VectorCopy(i32* %799, i32* %800)
  br label %802

802:                                              ; preds = %788, %784
  br label %803

803:                                              ; preds = %802, %783
  %804 = load i32, i32* @qtrue, align 4
  store i32 %804, i32* %36, align 4
  br label %805

805:                                              ; preds = %803, %696
  %806 = load i32, i32* %36, align 4
  %807 = icmp ne i32 %806, 0
  br i1 %807, label %893, label %808

808:                                              ; preds = %805
  %809 = load i32*, i32** %12, align 8
  %810 = load i32*, i32** %14, align 8
  %811 = call float @VectorDistance(i32* %809, i32* %810)
  store float %811, float* %33, align 4
  %812 = load float, float* %33, align 4
  %813 = load float, float* %22, align 4
  %814 = fcmp olt float %812, %813
  br i1 %814, label %815, label %829

815:                                              ; preds = %808
  %816 = load float, float* %33, align 4
  store float %816, float* %22, align 4
  %817 = load i32*, i32** %12, align 8
  %818 = load i32*, i32** %18, align 8
  %819 = call i32 @VectorCopy(i32* %817, i32* %818)
  %820 = load i32*, i32** %12, align 8
  %821 = load i32*, i32** %20, align 8
  %822 = call i32 @VectorCopy(i32* %820, i32* %821)
  %823 = load i32*, i32** %14, align 8
  %824 = load i32*, i32** %19, align 8
  %825 = call i32 @VectorCopy(i32* %823, i32* %824)
  %826 = load i32*, i32** %14, align 8
  %827 = load i32*, i32** %21, align 8
  %828 = call i32 @VectorCopy(i32* %826, i32* %827)
  br label %829

829:                                              ; preds = %815, %808
  %830 = load i32*, i32** %12, align 8
  %831 = load i32*, i32** %15, align 8
  %832 = call float @VectorDistance(i32* %830, i32* %831)
  store float %832, float* %33, align 4
  %833 = load float, float* %33, align 4
  %834 = load float, float* %22, align 4
  %835 = fcmp olt float %833, %834
  br i1 %835, label %836, label %850

836:                                              ; preds = %829
  %837 = load float, float* %33, align 4
  store float %837, float* %22, align 4
  %838 = load i32*, i32** %12, align 8
  %839 = load i32*, i32** %18, align 8
  %840 = call i32 @VectorCopy(i32* %838, i32* %839)
  %841 = load i32*, i32** %12, align 8
  %842 = load i32*, i32** %20, align 8
  %843 = call i32 @VectorCopy(i32* %841, i32* %842)
  %844 = load i32*, i32** %15, align 8
  %845 = load i32*, i32** %19, align 8
  %846 = call i32 @VectorCopy(i32* %844, i32* %845)
  %847 = load i32*, i32** %15, align 8
  %848 = load i32*, i32** %21, align 8
  %849 = call i32 @VectorCopy(i32* %847, i32* %848)
  br label %850

850:                                              ; preds = %836, %829
  %851 = load i32*, i32** %13, align 8
  %852 = load i32*, i32** %14, align 8
  %853 = call float @VectorDistance(i32* %851, i32* %852)
  store float %853, float* %33, align 4
  %854 = load float, float* %33, align 4
  %855 = load float, float* %22, align 4
  %856 = fcmp olt float %854, %855
  br i1 %856, label %857, label %871

857:                                              ; preds = %850
  %858 = load float, float* %33, align 4
  store float %858, float* %22, align 4
  %859 = load i32*, i32** %13, align 8
  %860 = load i32*, i32** %18, align 8
  %861 = call i32 @VectorCopy(i32* %859, i32* %860)
  %862 = load i32*, i32** %13, align 8
  %863 = load i32*, i32** %20, align 8
  %864 = call i32 @VectorCopy(i32* %862, i32* %863)
  %865 = load i32*, i32** %14, align 8
  %866 = load i32*, i32** %19, align 8
  %867 = call i32 @VectorCopy(i32* %865, i32* %866)
  %868 = load i32*, i32** %14, align 8
  %869 = load i32*, i32** %21, align 8
  %870 = call i32 @VectorCopy(i32* %868, i32* %869)
  br label %871

871:                                              ; preds = %857, %850
  %872 = load i32*, i32** %13, align 8
  %873 = load i32*, i32** %15, align 8
  %874 = call float @VectorDistance(i32* %872, i32* %873)
  store float %874, float* %33, align 4
  %875 = load float, float* %33, align 4
  %876 = load float, float* %22, align 4
  %877 = fcmp olt float %875, %876
  br i1 %877, label %878, label %892

878:                                              ; preds = %871
  %879 = load float, float* %33, align 4
  store float %879, float* %22, align 4
  %880 = load i32*, i32** %13, align 8
  %881 = load i32*, i32** %18, align 8
  %882 = call i32 @VectorCopy(i32* %880, i32* %881)
  %883 = load i32*, i32** %13, align 8
  %884 = load i32*, i32** %20, align 8
  %885 = call i32 @VectorCopy(i32* %883, i32* %884)
  %886 = load i32*, i32** %15, align 8
  %887 = load i32*, i32** %19, align 8
  %888 = call i32 @VectorCopy(i32* %886, i32* %887)
  %889 = load i32*, i32** %15, align 8
  %890 = load i32*, i32** %21, align 8
  %891 = call i32 @VectorCopy(i32* %889, i32* %890)
  br label %892

892:                                              ; preds = %878, %871
  br label %893

893:                                              ; preds = %892, %805
  %894 = load float, float* %22, align 4
  ret float %894
}

declare dso_local i32 @VectorSubtract(i32*, i32*, i32*) #1

declare dso_local float @DotProduct(i32*, i32*) #1

declare dso_local i64 @VectorBetweenVectors(i32*, i32*, i32*) #1

declare dso_local float @VectorDistance(i32*, i32*) #1

declare dso_local i32 @VectorCopy(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
