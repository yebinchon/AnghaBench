; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_surface.c_CalcSurfaceTextureRange.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_surface.c_CalcSurfaceTextureRange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, float*, i32*, i32*, i32*, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { float* }
%struct.TYPE_5__ = type { i32, i32 }

@qtrue = common dso_local global i32 0, align 4
@texRange = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CalcSurfaceTextureRange(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca [2 x float], align 4
  %9 = alloca [2 x float], align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp sle i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @qtrue, align 4
  store i32 %15, i32* %2, align 4
  br label %310

16:                                               ; preds = %1
  %17 = getelementptr inbounds [2 x float], [2 x float]* %8, i64 0, i64 0
  store float 9.999990e+05, float* %17, align 4
  %18 = getelementptr inbounds [2 x float], [2 x float]* %8, i64 0, i64 1
  store float 9.999990e+05, float* %18, align 4
  %19 = getelementptr inbounds [2 x float], [2 x float]* %9, i64 0, i64 0
  store float -9.999990e+05, float* %19, align 4
  %20 = getelementptr inbounds [2 x float], [2 x float]* %9, i64 0, i64 1
  store float -9.999990e+05, float* %20, align 4
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %104, %16
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %107

27:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %100, %27
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %29, 2
  br i1 %30, label %31, label %103

31:                                               ; preds = %28
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 5
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load float*, float** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds float, float* %39, i64 %41
  %43 = load float, float* %42, align 4
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [2 x float], [2 x float]* %8, i64 0, i64 %45
  %47 = load float, float* %46, align 4
  %48 = fcmp olt float %43, %47
  br i1 %48, label %49, label %65

49:                                               ; preds = %31
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 5
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load float*, float** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds float, float* %57, i64 %59
  %61 = load float, float* %60, align 4
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [2 x float], [2 x float]* %8, i64 0, i64 %63
  store float %61, float* %64, align 4
  br label %65

65:                                               ; preds = %49, %31
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 5
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load float*, float** %72, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds float, float* %73, i64 %75
  %77 = load float, float* %76, align 4
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [2 x float], [2 x float]* %9, i64 0, i64 %79
  %81 = load float, float* %80, align 4
  %82 = fcmp ogt float %77, %81
  br i1 %82, label %83, label %99

83:                                               ; preds = %65
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 5
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = load i32, i32* %4, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load float*, float** %90, align 8
  %92 = load i32, i32* %5, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds float, float* %91, i64 %93
  %95 = load float, float* %94, align 4
  %96 = load i32, i32* %5, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [2 x float], [2 x float]* %9, i64 0, i64 %97
  store float %95, float* %98, align 4
  br label %99

99:                                               ; preds = %83, %65
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %5, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %5, align 4
  br label %28

103:                                              ; preds = %28
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %4, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %4, align 4
  br label %21

107:                                              ; preds = %21
  store i32 0, i32* %5, align 4
  br label %108

108:                                              ; preds = %130, %107
  %109 = load i32, i32* %5, align 4
  %110 = icmp slt i32 %109, 2
  br i1 %110, label %111, label %133

111:                                              ; preds = %108
  %112 = load i32, i32* %5, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [2 x float], [2 x float]* %8, i64 0, i64 %113
  %115 = load float, float* %114, align 4
  %116 = load i32, i32* %5, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [2 x float], [2 x float]* %9, i64 0, i64 %117
  %119 = load float, float* %118, align 4
  %120 = fadd float %115, %119
  %121 = fmul float 5.000000e-01, %120
  %122 = call float @floor(float %121)
  %123 = fneg float %122
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 1
  %126 = load float*, float** %125, align 8
  %127 = load i32, i32* %5, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds float, float* %126, i64 %128
  store float %123, float* %129, align 4
  br label %130

130:                                              ; preds = %111
  %131 = load i32, i32* %5, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %5, align 4
  br label %108

133:                                              ; preds = %108
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 6
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 %138, i32* %139, align 4
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 6
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 %144, i32* %145, align 4
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 2
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 0
  store i32 999999, i32* %149, align 4
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 2
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 1
  store i32 999999, i32* %153, align 4
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 3
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 0
  store i32 -999999, i32* %157, align 4
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 3
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 1
  store i32 -999999, i32* %161, align 4
  store i32 0, i32* %4, align 4
  br label %162

162:                                              ; preds = %240, %133
  %163 = load i32, i32* %4, align 4
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = icmp slt i32 %163, %166
  br i1 %167, label %168, label %243

168:                                              ; preds = %162
  store i32 0, i32* %5, align 4
  br label %169

169:                                              ; preds = %236, %168
  %170 = load i32, i32* %5, align 4
  %171 = icmp slt i32 %170, 2
  br i1 %171, label %172, label %239

172:                                              ; preds = %169
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 5
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %174, align 8
  %176 = load i32, i32* %4, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 0
  %180 = load float*, float** %179, align 8
  %181 = load i32, i32* %5, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds float, float* %180, i64 %182
  %184 = load float, float* %183, align 4
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 1
  %187 = load float*, float** %186, align 8
  %188 = load i32, i32* %5, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds float, float* %187, i64 %189
  %191 = load float, float* %190, align 4
  %192 = fadd float %184, %191
  %193 = load i32, i32* %5, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = sitofp i32 %196 to float
  %198 = fmul float %192, %197
  %199 = fptosi float %198 to i32
  store i32 %199, i32* %6, align 4
  %200 = load i32, i32* %6, align 4
  %201 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i32 0, i32 2
  %203 = load i32*, i32** %202, align 8
  %204 = load i32, i32* %5, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = icmp slt i32 %200, %207
  br i1 %208, label %209, label %217

209:                                              ; preds = %172
  %210 = load i32, i32* %6, align 4
  %211 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 2
  %213 = load i32*, i32** %212, align 8
  %214 = load i32, i32* %5, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %213, i64 %215
  store i32 %210, i32* %216, align 4
  br label %217

217:                                              ; preds = %209, %172
  %218 = load i32, i32* %6, align 4
  %219 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 3
  %221 = load i32*, i32** %220, align 8
  %222 = load i32, i32* %5, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %221, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = icmp sgt i32 %218, %225
  br i1 %226, label %227, label %235

227:                                              ; preds = %217
  %228 = load i32, i32* %6, align 4
  %229 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %229, i32 0, i32 3
  %231 = load i32*, i32** %230, align 8
  %232 = load i32, i32* %5, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %231, i64 %233
  store i32 %228, i32* %234, align 4
  br label %235

235:                                              ; preds = %227, %217
  br label %236

236:                                              ; preds = %235
  %237 = load i32, i32* %5, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %5, align 4
  br label %169

239:                                              ; preds = %169
  br label %240

240:                                              ; preds = %239
  %241 = load i32, i32* %4, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %4, align 4
  br label %162

243:                                              ; preds = %162
  store i32 0, i32* %5, align 4
  br label %244

244:                                              ; preds = %269, %243
  %245 = load i32, i32* %5, align 4
  %246 = icmp slt i32 %245, 2
  br i1 %246, label %247, label %272

247:                                              ; preds = %244
  %248 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %248, i32 0, i32 3
  %250 = load i32*, i32** %249, align 8
  %251 = load i32, i32* %5, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %250, i64 %252
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %256 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %255, i32 0, i32 2
  %257 = load i32*, i32** %256, align 8
  %258 = load i32, i32* %5, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %257, i64 %259
  %261 = load i32, i32* %260, align 4
  %262 = sub nsw i32 %254, %261
  %263 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %264 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %263, i32 0, i32 4
  %265 = load i32*, i32** %264, align 8
  %266 = load i32, i32* %5, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i32, i32* %265, i64 %267
  store i32 %262, i32* %268, align 4
  br label %269

269:                                              ; preds = %247
  %270 = load i32, i32* %5, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %5, align 4
  br label %244

272:                                              ; preds = %244
  %273 = load i32, i32* @texRange, align 4
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %275, label %277

275:                                              ; preds = %272
  %276 = load i32, i32* @qtrue, align 4
  store i32 %276, i32* %2, align 4
  br label %310

277:                                              ; preds = %272
  store i32 0, i32* %5, align 4
  br label %278

278:                                              ; preds = %305, %277
  %279 = load i32, i32* %5, align 4
  %280 = icmp slt i32 %279, 2
  br i1 %280, label %281, label %308

281:                                              ; preds = %278
  %282 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %283 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %282, i32 0, i32 2
  %284 = load i32*, i32** %283, align 8
  %285 = load i32, i32* %5, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i32, i32* %284, i64 %286
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* @texRange, align 4
  %290 = sub nsw i32 0, %289
  %291 = icmp slt i32 %288, %290
  br i1 %291, label %302, label %292

292:                                              ; preds = %281
  %293 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %294 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %293, i32 0, i32 3
  %295 = load i32*, i32** %294, align 8
  %296 = load i32, i32* %5, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i32, i32* %295, i64 %297
  %299 = load i32, i32* %298, align 4
  %300 = load i32, i32* @texRange, align 4
  %301 = icmp sgt i32 %299, %300
  br i1 %301, label %302, label %304

302:                                              ; preds = %292, %281
  %303 = load i32, i32* @qfalse, align 4
  store i32 %303, i32* %2, align 4
  br label %310

304:                                              ; preds = %292
  br label %305

305:                                              ; preds = %304
  %306 = load i32, i32* %5, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %5, align 4
  br label %278

308:                                              ; preds = %278
  %309 = load i32, i32* @qtrue, align 4
  store i32 %309, i32* %2, align 4
  br label %310

310:                                              ; preds = %308, %302, %275, %14
  %311 = load i32, i32* %2, align 4
  ret i32 %311
}

declare dso_local float @floor(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
