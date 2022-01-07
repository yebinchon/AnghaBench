; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_light.c_R_SetupEntityLightingGrid.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_light.c_R_SetupEntityLightingGrid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { float*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { float*, i32*, float*, i32 }
%struct.TYPE_13__ = type { float }
%struct.TYPE_12__ = type { float }
%struct.TYPE_10__ = type { float*, float*, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32 }

@RF_LIGHTING_ORIGIN = common dso_local global i32 0, align 4
@tr = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@FUNCTABLE_SIZE = common dso_local global i32 0, align 4
@FUNCTABLE_MASK = common dso_local global i32 0, align 4
@r_ambientScale = common dso_local global %struct.TYPE_13__* null, align 8
@r_directedScale = common dso_local global %struct.TYPE_12__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @R_SetupEntityLightingGrid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @R_SetupEntityLightingGrid(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca float*, align 8
  %4 = alloca [3 x i32], align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca float*, align 8
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x i32], align 4
  %10 = alloca float*, align 8
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca float*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @RF_LIGHTING_ORIGIN, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %1
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load float*, float** %3, align 8
  %31 = call i32 @VectorCopy(i32 %29, float* %30)
  br label %39

32:                                               ; preds = %1
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load float*, float** %3, align 8
  %38 = call i32 @VectorCopy(i32 %36, float* %37)
  br label %39

39:                                               ; preds = %32, %25
  %40 = load float*, float** %3, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tr, i32 0, i32 1), align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = load float*, float** %3, align 8
  %45 = call i32 @VectorSubtract(float* %40, i32 %43, float* %44)
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %115, %39
  %47 = load i32, i32* %5, align 4
  %48 = icmp slt i32 %47, 3
  br i1 %48, label %49, label %118

49:                                               ; preds = %46
  %50 = load float*, float** %3, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds float, float* %50, i64 %52
  %54 = load float, float* %53, align 4
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tr, i32 0, i32 1), align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load float*, float** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds float, float* %57, i64 %59
  %61 = load float, float* %60, align 4
  %62 = fmul float %54, %61
  store float %62, float* %12, align 4
  %63 = load float, float* %12, align 4
  %64 = call i32 @floor(float %63)
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 %66
  store i32 %64, i32* %67, align 4
  %68 = load float, float* %12, align 4
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = sitofp i32 %72 to float
  %74 = fsub float %68, %73
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [3 x float], [3 x float]* %8, i64 0, i64 %76
  store float %74, float* %77, align 4
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %49
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 %85
  store i32 0, i32* %86, align 4
  br label %114

87:                                               ; preds = %49
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tr, i32 0, i32 1), align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = sub nsw i32 %98, 1
  %100 = icmp sgt i32 %91, %99
  br i1 %100, label %101, label %113

101:                                              ; preds = %87
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tr, i32 0, i32 1), align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %5, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = sub nsw i32 %108, 1
  %110 = load i32, i32* %5, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 %111
  store i32 %109, i32* %112, align 4
  br label %113

113:                                              ; preds = %101, %87
  br label %114

114:                                              ; preds = %113, %83
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %5, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %5, align 4
  br label %46

118:                                              ; preds = %46
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 0
  %121 = load float*, float** %120, align 8
  %122 = call i32 @VectorClear(float* %121)
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 1
  %125 = load float*, float** %124, align 8
  %126 = call i32 @VectorClear(float* %125)
  %127 = load float*, float** %10, align 8
  %128 = call i32 @VectorClear(float* %127)
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tr, i32 0, i32 1), align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 2
  %131 = load float*, float** %130, align 8
  %132 = call i32 @assert(float* %131)
  %133 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  store i32 8, i32* %133, align 4
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tr, i32 0, i32 1), align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 0
  %138 = load i32, i32* %137, align 4
  %139 = mul nsw i32 8, %138
  %140 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  store i32 %139, i32* %140, align 4
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tr, i32 0, i32 1), align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 1
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 0
  %145 = load i32, i32* %144, align 4
  %146 = mul nsw i32 8, %145
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tr, i32 0, i32 1), align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 1
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 1
  %151 = load i32, i32* %150, align 4
  %152 = mul nsw i32 %146, %151
  %153 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 2
  store i32 %152, i32* %153, align 4
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tr, i32 0, i32 1), align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 2
  %156 = load float*, float** %155, align 8
  %157 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %158 = load i32, i32* %157, align 4
  %159 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %160 = load i32, i32* %159, align 4
  %161 = mul nsw i32 %158, %160
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds float, float* %156, i64 %162
  %164 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 1
  %165 = load i32, i32* %164, align 4
  %166 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  %167 = load i32, i32* %166, align 4
  %168 = mul nsw i32 %165, %167
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds float, float* %163, i64 %169
  %171 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 2
  %172 = load i32, i32* %171, align 4
  %173 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 2
  %174 = load i32, i32* %173, align 4
  %175 = mul nsw i32 %172, %174
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds float, float* %170, i64 %176
  store float* %177, float** %7, align 8
  store float 0.000000e+00, float* %11, align 4
  store i32 0, i32* %5, align 4
  br label %178

178:                                              ; preds = %386, %118
  %179 = load i32, i32* %5, align 4
  %180 = icmp slt i32 %179, 8
  br i1 %180, label %181, label %389

181:                                              ; preds = %178
  store float 1.000000e+00, float* %13, align 4
  %182 = load float*, float** %7, align 8
  store float* %182, float** %14, align 8
  store i32 0, i32* %6, align 4
  br label %183

183:                                              ; preds = %231, %181
  %184 = load i32, i32* %6, align 4
  %185 = icmp slt i32 %184, 3
  br i1 %185, label %186, label %234

186:                                              ; preds = %183
  %187 = load i32, i32* %5, align 4
  %188 = load i32, i32* %6, align 4
  %189 = shl i32 1, %188
  %190 = and i32 %187, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %222

192:                                              ; preds = %186
  %193 = load i32, i32* %6, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = add nsw i32 %196, 1
  %198 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tr, i32 0, i32 1), align 8
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i32 0, i32 1
  %200 = load i32*, i32** %199, align 8
  %201 = load i32, i32* %6, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = sub nsw i32 %204, 1
  %206 = icmp sgt i32 %197, %205
  br i1 %206, label %207, label %208

207:                                              ; preds = %192
  br label %234

208:                                              ; preds = %192
  %209 = load i32, i32* %6, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds [3 x float], [3 x float]* %8, i64 0, i64 %210
  %212 = load float, float* %211, align 4
  %213 = load float, float* %13, align 4
  %214 = fmul float %213, %212
  store float %214, float* %13, align 4
  %215 = load i32, i32* %6, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = load float*, float** %14, align 8
  %220 = sext i32 %218 to i64
  %221 = getelementptr inbounds float, float* %219, i64 %220
  store float* %221, float** %14, align 8
  br label %230

222:                                              ; preds = %186
  %223 = load i32, i32* %6, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds [3 x float], [3 x float]* %8, i64 0, i64 %224
  %226 = load float, float* %225, align 4
  %227 = fsub float 1.000000e+00, %226
  %228 = load float, float* %13, align 4
  %229 = fmul float %228, %227
  store float %229, float* %13, align 4
  br label %230

230:                                              ; preds = %222, %208
  br label %231

231:                                              ; preds = %230
  %232 = load i32, i32* %6, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %6, align 4
  br label %183

234:                                              ; preds = %207, %183
  %235 = load i32, i32* %6, align 4
  %236 = icmp ne i32 %235, 3
  br i1 %236, label %237, label %238

237:                                              ; preds = %234
  br label %386

238:                                              ; preds = %234
  %239 = load float*, float** %14, align 8
  %240 = getelementptr inbounds float, float* %239, i64 0
  %241 = load float, float* %240, align 4
  %242 = load float*, float** %14, align 8
  %243 = getelementptr inbounds float, float* %242, i64 1
  %244 = load float, float* %243, align 4
  %245 = fadd float %241, %244
  %246 = load float*, float** %14, align 8
  %247 = getelementptr inbounds float, float* %246, i64 2
  %248 = load float, float* %247, align 4
  %249 = fadd float %245, %248
  %250 = fcmp une float %249, 0.000000e+00
  br i1 %250, label %252, label %251

251:                                              ; preds = %238
  br label %386

252:                                              ; preds = %238
  %253 = load float, float* %13, align 4
  %254 = load float, float* %11, align 4
  %255 = fadd float %254, %253
  store float %255, float* %11, align 4
  %256 = load float, float* %13, align 4
  %257 = load float*, float** %14, align 8
  %258 = getelementptr inbounds float, float* %257, i64 0
  %259 = load float, float* %258, align 4
  %260 = fmul float %256, %259
  %261 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %262 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %261, i32 0, i32 0
  %263 = load float*, float** %262, align 8
  %264 = getelementptr inbounds float, float* %263, i64 0
  %265 = load float, float* %264, align 4
  %266 = fadd float %265, %260
  store float %266, float* %264, align 4
  %267 = load float, float* %13, align 4
  %268 = load float*, float** %14, align 8
  %269 = getelementptr inbounds float, float* %268, i64 1
  %270 = load float, float* %269, align 4
  %271 = fmul float %267, %270
  %272 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %273 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %272, i32 0, i32 0
  %274 = load float*, float** %273, align 8
  %275 = getelementptr inbounds float, float* %274, i64 1
  %276 = load float, float* %275, align 4
  %277 = fadd float %276, %271
  store float %277, float* %275, align 4
  %278 = load float, float* %13, align 4
  %279 = load float*, float** %14, align 8
  %280 = getelementptr inbounds float, float* %279, i64 2
  %281 = load float, float* %280, align 4
  %282 = fmul float %278, %281
  %283 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %284 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %283, i32 0, i32 0
  %285 = load float*, float** %284, align 8
  %286 = getelementptr inbounds float, float* %285, i64 2
  %287 = load float, float* %286, align 4
  %288 = fadd float %287, %282
  store float %288, float* %286, align 4
  %289 = load float, float* %13, align 4
  %290 = load float*, float** %14, align 8
  %291 = getelementptr inbounds float, float* %290, i64 3
  %292 = load float, float* %291, align 4
  %293 = fmul float %289, %292
  %294 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %295 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %294, i32 0, i32 1
  %296 = load float*, float** %295, align 8
  %297 = getelementptr inbounds float, float* %296, i64 0
  %298 = load float, float* %297, align 4
  %299 = fadd float %298, %293
  store float %299, float* %297, align 4
  %300 = load float, float* %13, align 4
  %301 = load float*, float** %14, align 8
  %302 = getelementptr inbounds float, float* %301, i64 4
  %303 = load float, float* %302, align 4
  %304 = fmul float %300, %303
  %305 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %306 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %305, i32 0, i32 1
  %307 = load float*, float** %306, align 8
  %308 = getelementptr inbounds float, float* %307, i64 1
  %309 = load float, float* %308, align 4
  %310 = fadd float %309, %304
  store float %310, float* %308, align 4
  %311 = load float, float* %13, align 4
  %312 = load float*, float** %14, align 8
  %313 = getelementptr inbounds float, float* %312, i64 5
  %314 = load float, float* %313, align 4
  %315 = fmul float %311, %314
  %316 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %317 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %316, i32 0, i32 1
  %318 = load float*, float** %317, align 8
  %319 = getelementptr inbounds float, float* %318, i64 2
  %320 = load float, float* %319, align 4
  %321 = fadd float %320, %315
  store float %321, float* %319, align 4
  %322 = load float*, float** %14, align 8
  %323 = getelementptr inbounds float, float* %322, i64 7
  %324 = load float, float* %323, align 4
  %325 = fptosi float %324 to i32
  store i32 %325, i32* %15, align 4
  %326 = load float*, float** %14, align 8
  %327 = getelementptr inbounds float, float* %326, i64 6
  %328 = load float, float* %327, align 4
  %329 = fptosi float %328 to i32
  store i32 %329, i32* %16, align 4
  %330 = load i32, i32* @FUNCTABLE_SIZE, align 4
  %331 = sdiv i32 %330, 256
  %332 = load i32, i32* %15, align 4
  %333 = mul nsw i32 %332, %331
  store i32 %333, i32* %15, align 4
  %334 = load i32, i32* @FUNCTABLE_SIZE, align 4
  %335 = sdiv i32 %334, 256
  %336 = load i32, i32* %16, align 4
  %337 = mul nsw i32 %336, %335
  store i32 %337, i32* %16, align 4
  %338 = load float*, float** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tr, i32 0, i32 0), align 8
  %339 = load i32, i32* %15, align 4
  %340 = load i32, i32* @FUNCTABLE_SIZE, align 4
  %341 = sdiv i32 %340, 4
  %342 = add nsw i32 %339, %341
  %343 = load i32, i32* @FUNCTABLE_MASK, align 4
  %344 = and i32 %342, %343
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds float, float* %338, i64 %345
  %347 = load float, float* %346, align 4
  %348 = load float*, float** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tr, i32 0, i32 0), align 8
  %349 = load i32, i32* %16, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds float, float* %348, i64 %350
  %352 = load float, float* %351, align 4
  %353 = fmul float %347, %352
  %354 = load float*, float** %17, align 8
  %355 = getelementptr inbounds float, float* %354, i64 0
  store float %353, float* %355, align 4
  %356 = load float*, float** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tr, i32 0, i32 0), align 8
  %357 = load i32, i32* %15, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds float, float* %356, i64 %358
  %360 = load float, float* %359, align 4
  %361 = load float*, float** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tr, i32 0, i32 0), align 8
  %362 = load i32, i32* %16, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds float, float* %361, i64 %363
  %365 = load float, float* %364, align 4
  %366 = fmul float %360, %365
  %367 = load float*, float** %17, align 8
  %368 = getelementptr inbounds float, float* %367, i64 1
  store float %366, float* %368, align 4
  %369 = load float*, float** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tr, i32 0, i32 0), align 8
  %370 = load i32, i32* %16, align 4
  %371 = load i32, i32* @FUNCTABLE_SIZE, align 4
  %372 = sdiv i32 %371, 4
  %373 = add nsw i32 %370, %372
  %374 = load i32, i32* @FUNCTABLE_MASK, align 4
  %375 = and i32 %373, %374
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds float, float* %369, i64 %376
  %378 = load float, float* %377, align 4
  %379 = load float*, float** %17, align 8
  %380 = getelementptr inbounds float, float* %379, i64 2
  store float %378, float* %380, align 4
  %381 = load float*, float** %10, align 8
  %382 = load float, float* %13, align 4
  %383 = load float*, float** %17, align 8
  %384 = load float*, float** %10, align 8
  %385 = call i32 @VectorMA(float* %381, float %382, float* %383, float* %384)
  br label %386

386:                                              ; preds = %252, %251, %237
  %387 = load i32, i32* %5, align 4
  %388 = add nsw i32 %387, 1
  store i32 %388, i32* %5, align 4
  br label %178

389:                                              ; preds = %178
  %390 = load float, float* %11, align 4
  %391 = fcmp ogt float %390, 0.000000e+00
  br i1 %391, label %392, label %415

392:                                              ; preds = %389
  %393 = load float, float* %11, align 4
  %394 = fpext float %393 to double
  %395 = fcmp olt double %394, 0x3FEFAE147AE147AE
  br i1 %395, label %396, label %415

396:                                              ; preds = %392
  %397 = load float, float* %11, align 4
  %398 = fdiv float 1.000000e+00, %397
  store float %398, float* %11, align 4
  %399 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %400 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %399, i32 0, i32 0
  %401 = load float*, float** %400, align 8
  %402 = load float, float* %11, align 4
  %403 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %404 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %403, i32 0, i32 0
  %405 = load float*, float** %404, align 8
  %406 = call i32 @VectorScale(float* %401, float %402, float* %405)
  %407 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %408 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %407, i32 0, i32 1
  %409 = load float*, float** %408, align 8
  %410 = load float, float* %11, align 4
  %411 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %412 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %411, i32 0, i32 1
  %413 = load float*, float** %412, align 8
  %414 = call i32 @VectorScale(float* %409, float %410, float* %413)
  br label %415

415:                                              ; preds = %396, %392, %389
  %416 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %417 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %416, i32 0, i32 0
  %418 = load float*, float** %417, align 8
  %419 = load %struct.TYPE_13__*, %struct.TYPE_13__** @r_ambientScale, align 8
  %420 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %419, i32 0, i32 0
  %421 = load float, float* %420, align 4
  %422 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %423 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %422, i32 0, i32 0
  %424 = load float*, float** %423, align 8
  %425 = call i32 @VectorScale(float* %418, float %421, float* %424)
  %426 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %427 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %426, i32 0, i32 1
  %428 = load float*, float** %427, align 8
  %429 = load %struct.TYPE_12__*, %struct.TYPE_12__** @r_directedScale, align 8
  %430 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %429, i32 0, i32 0
  %431 = load float, float* %430, align 4
  %432 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %433 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %432, i32 0, i32 1
  %434 = load float*, float** %433, align 8
  %435 = call i32 @VectorScale(float* %428, float %431, float* %434)
  %436 = load float*, float** %10, align 8
  %437 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %438 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %437, i32 0, i32 2
  %439 = load i32, i32* %438, align 8
  %440 = call i32 @VectorNormalize2(float* %436, i32 %439)
  ret void
}

declare dso_local i32 @VectorCopy(i32, float*) #1

declare dso_local i32 @VectorSubtract(float*, i32, float*) #1

declare dso_local i32 @floor(float) #1

declare dso_local i32 @VectorClear(float*) #1

declare dso_local i32 @assert(float*) #1

declare dso_local i32 @VectorMA(float*, float, float*, float*) #1

declare dso_local i32 @VectorScale(float*, float, float*) #1

declare dso_local i32 @VectorNormalize2(float*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
