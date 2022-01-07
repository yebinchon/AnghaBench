; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_world.c_R_DlightSurface.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_world.c_R_DlightSurface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_13__, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { float*, float }
%struct.TYPE_15__ = type { i32*, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, float**, i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { float, i32 }
%struct.TYPE_14__ = type { i32 }

@CULLINFO_PLANE = common dso_local global i32 0, align 4
@tr = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@CULLINFO_BOX = common dso_local global i32 0, align 4
@CULLINFO_SPHERE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i32)* @R_DlightSurface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @R_DlightSurface(%struct.TYPE_15__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @CULLINFO_PLANE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %70

15:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %66, %15
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @tr, i32 0, i32 1, i32 0), align 8
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %69

20:                                               ; preds = %16
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %6, align 4
  %23 = shl i32 1, %22
  %24 = and i32 %21, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  br label %66

27:                                               ; preds = %20
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @tr, i32 0, i32 1, i32 1), align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i64 %30
  store %struct.TYPE_16__* %31, %struct.TYPE_16__** %7, align 8
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = load float*, float** %33, align 8
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 4
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call float @DotProduct(float* %34, i32 %39)
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load float, float* %44, align 8
  %46 = fsub float %40, %45
  store float %46, float* %5, align 4
  %47 = load float, float* %5, align 4
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 1
  %50 = load float, float* %49, align 8
  %51 = fneg float %50
  %52 = fcmp olt float %47, %51
  br i1 %52, label %59, label %53

53:                                               ; preds = %27
  %54 = load float, float* %5, align 4
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 1
  %57 = load float, float* %56, align 8
  %58 = fcmp ogt float %54, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %53, %27
  %60 = load i32, i32* %6, align 4
  %61 = shl i32 1, %60
  %62 = xor i32 %61, -1
  %63 = load i32, i32* %4, align 4
  %64 = and i32 %63, %62
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %59, %53
  br label %66

66:                                               ; preds = %65, %26
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %6, align 4
  br label %16

69:                                               ; preds = %16
  br label %70

70:                                               ; preds = %69, %2
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @CULLINFO_BOX, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %219

78:                                               ; preds = %70
  store i32 0, i32* %6, align 4
  br label %79

79:                                               ; preds = %215, %78
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @tr, i32 0, i32 1, i32 0), align 8
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %218

83:                                               ; preds = %79
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* %6, align 4
  %86 = shl i32 1, %85
  %87 = and i32 %84, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %83
  br label %215

90:                                               ; preds = %83
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @tr, i32 0, i32 1, i32 1), align 8
  %92 = load i32, i32* %6, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i64 %93
  store %struct.TYPE_16__* %94, %struct.TYPE_16__** %7, align 8
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 0
  %97 = load float*, float** %96, align 8
  %98 = getelementptr inbounds float, float* %97, i64 0
  %99 = load float, float* %98, align 4
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 1
  %102 = load float, float* %101, align 8
  %103 = fsub float %99, %102
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 1
  %107 = load float**, float*** %106, align 8
  %108 = getelementptr inbounds float*, float** %107, i64 1
  %109 = load float*, float** %108, align 8
  %110 = getelementptr inbounds float, float* %109, i64 0
  %111 = load float, float* %110, align 4
  %112 = fcmp ogt float %103, %111
  br i1 %112, label %208, label %113

113:                                              ; preds = %90
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 0
  %116 = load float*, float** %115, align 8
  %117 = getelementptr inbounds float, float* %116, i64 0
  %118 = load float, float* %117, align 4
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 1
  %121 = load float, float* %120, align 8
  %122 = fadd float %118, %121
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 1
  %126 = load float**, float*** %125, align 8
  %127 = getelementptr inbounds float*, float** %126, i64 0
  %128 = load float*, float** %127, align 8
  %129 = getelementptr inbounds float, float* %128, i64 0
  %130 = load float, float* %129, align 4
  %131 = fcmp olt float %122, %130
  br i1 %131, label %208, label %132

132:                                              ; preds = %113
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 0
  %135 = load float*, float** %134, align 8
  %136 = getelementptr inbounds float, float* %135, i64 1
  %137 = load float, float* %136, align 4
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 1
  %140 = load float, float* %139, align 8
  %141 = fsub float %137, %140
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 1
  %145 = load float**, float*** %144, align 8
  %146 = getelementptr inbounds float*, float** %145, i64 1
  %147 = load float*, float** %146, align 8
  %148 = getelementptr inbounds float, float* %147, i64 1
  %149 = load float, float* %148, align 4
  %150 = fcmp ogt float %141, %149
  br i1 %150, label %208, label %151

151:                                              ; preds = %132
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 0
  %154 = load float*, float** %153, align 8
  %155 = getelementptr inbounds float, float* %154, i64 1
  %156 = load float, float* %155, align 4
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 1
  %159 = load float, float* %158, align 8
  %160 = fadd float %156, %159
  %161 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 1
  %164 = load float**, float*** %163, align 8
  %165 = getelementptr inbounds float*, float** %164, i64 0
  %166 = load float*, float** %165, align 8
  %167 = getelementptr inbounds float, float* %166, i64 1
  %168 = load float, float* %167, align 4
  %169 = fcmp olt float %160, %168
  br i1 %169, label %208, label %170

170:                                              ; preds = %151
  %171 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 0
  %173 = load float*, float** %172, align 8
  %174 = getelementptr inbounds float, float* %173, i64 2
  %175 = load float, float* %174, align 4
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 1
  %178 = load float, float* %177, align 8
  %179 = fsub float %175, %178
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 1
  %183 = load float**, float*** %182, align 8
  %184 = getelementptr inbounds float*, float** %183, i64 1
  %185 = load float*, float** %184, align 8
  %186 = getelementptr inbounds float, float* %185, i64 2
  %187 = load float, float* %186, align 4
  %188 = fcmp ogt float %179, %187
  br i1 %188, label %208, label %189

189:                                              ; preds = %170
  %190 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %191 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %190, i32 0, i32 0
  %192 = load float*, float** %191, align 8
  %193 = getelementptr inbounds float, float* %192, i64 2
  %194 = load float, float* %193, align 4
  %195 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %196 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %195, i32 0, i32 1
  %197 = load float, float* %196, align 8
  %198 = fadd float %194, %197
  %199 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %200, i32 0, i32 1
  %202 = load float**, float*** %201, align 8
  %203 = getelementptr inbounds float*, float** %202, i64 0
  %204 = load float*, float** %203, align 8
  %205 = getelementptr inbounds float, float* %204, i64 2
  %206 = load float, float* %205, align 4
  %207 = fcmp olt float %198, %206
  br i1 %207, label %208, label %214

208:                                              ; preds = %189, %170, %151, %132, %113, %90
  %209 = load i32, i32* %6, align 4
  %210 = shl i32 1, %209
  %211 = xor i32 %210, -1
  %212 = load i32, i32* %4, align 4
  %213 = and i32 %212, %211
  store i32 %213, i32* %4, align 4
  br label %214

214:                                              ; preds = %208, %189
  br label %215

215:                                              ; preds = %214, %89
  %216 = load i32, i32* %6, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %6, align 4
  br label %79

218:                                              ; preds = %79
  br label %219

219:                                              ; preds = %218, %70
  %220 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* @CULLINFO_SPHERE, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %271

227:                                              ; preds = %219
  store i32 0, i32* %6, align 4
  br label %228

228:                                              ; preds = %267, %227
  %229 = load i32, i32* %6, align 4
  %230 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @tr, i32 0, i32 1, i32 0), align 8
  %231 = icmp slt i32 %229, %230
  br i1 %231, label %232, label %270

232:                                              ; preds = %228
  %233 = load i32, i32* %4, align 4
  %234 = load i32, i32* %6, align 4
  %235 = shl i32 1, %234
  %236 = and i32 %233, %235
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %239, label %238

238:                                              ; preds = %232
  br label %267

239:                                              ; preds = %232
  %240 = load %struct.TYPE_16__*, %struct.TYPE_16__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @tr, i32 0, i32 1, i32 1), align 8
  %241 = load i32, i32* %6, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %240, i64 %242
  store %struct.TYPE_16__* %243, %struct.TYPE_16__** %7, align 8
  %244 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %245 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %244, i32 0, i32 0
  %246 = load float*, float** %245, align 8
  %247 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %248 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %247, i32 0, i32 1
  %249 = load float, float* %248, align 8
  %250 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %251 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %250, i32 0, i32 1
  %252 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %251, i32 0, i32 3
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %255 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %254, i32 0, i32 1
  %256 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 8
  %258 = call i32 @SpheresIntersect(float* %246, float %249, i32 %253, i32 %257)
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %266, label %260

260:                                              ; preds = %239
  %261 = load i32, i32* %6, align 4
  %262 = shl i32 1, %261
  %263 = xor i32 %262, -1
  %264 = load i32, i32* %4, align 4
  %265 = and i32 %264, %263
  store i32 %265, i32* %4, align 4
  br label %266

266:                                              ; preds = %260, %239
  br label %267

267:                                              ; preds = %266, %238
  %268 = load i32, i32* %6, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %6, align 4
  br label %228

270:                                              ; preds = %228
  br label %271

271:                                              ; preds = %270, %219
  %272 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %273 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %272, i32 0, i32 0
  %274 = load i32*, i32** %273, align 8
  %275 = load i32, i32* %274, align 4
  switch i32 %275, label %283 [
    i32 130, label %276
    i32 129, label %276
    i32 128, label %276
  ]

276:                                              ; preds = %271, %271, %271
  %277 = load i32, i32* %4, align 4
  %278 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %279 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %278, i32 0, i32 0
  %280 = load i32*, i32** %279, align 8
  %281 = bitcast i32* %280 to %struct.TYPE_14__*
  %282 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %281, i32 0, i32 0
  store i32 %277, i32* %282, align 4
  br label %284

283:                                              ; preds = %271
  store i32 0, i32* %4, align 4
  br label %284

284:                                              ; preds = %283, %276
  %285 = load i32, i32* %4, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %290

287:                                              ; preds = %284
  %288 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @tr, i32 0, i32 0, i32 1), align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @tr, i32 0, i32 0, i32 1), align 4
  br label %293

290:                                              ; preds = %284
  %291 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @tr, i32 0, i32 0, i32 0), align 8
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @tr, i32 0, i32 0, i32 0), align 8
  br label %293

293:                                              ; preds = %290, %287
  %294 = load i32, i32* %4, align 4
  ret i32 %294
}

declare dso_local float @DotProduct(float*, i32) #1

declare dso_local i32 @SpheresIntersect(float*, float, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
