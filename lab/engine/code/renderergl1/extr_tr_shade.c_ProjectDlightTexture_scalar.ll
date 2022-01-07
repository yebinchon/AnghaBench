; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_shade.c_ProjectDlightTexture_scalar.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_shade.c_ProjectDlightTexture_scalar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_10__, %struct.TYPE_11__ }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { float, float*, i64, i32 }
%struct.TYPE_14__ = type { i32, i32, float**, i32, i32*, i32* }
%struct.TYPE_16__ = type { i64, i64 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_15__ = type { i32 (float)* }
%struct.TYPE_13__ = type { i32 }

@SHADER_MAX_VERTEXES = common dso_local global i32 0, align 4
@SHADER_MAX_INDEXES = common dso_local global i32 0, align 4
@backEnd = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@tess = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@r_greyscale = common dso_local global %struct.TYPE_16__* null, align 8
@r_dlightBacks = common dso_local global %struct.TYPE_17__* null, align 8
@ri = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@GL_TEXTURE_COORD_ARRAY = common dso_local global i32 0, align 4
@GL_FLOAT = common dso_local global i32 0, align 4
@GL_COLOR_ARRAY = common dso_local global i32 0, align 4
@GL_UNSIGNED_BYTE = common dso_local global i32 0, align 4
@tr = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@GLS_SRCBLEND_ONE = common dso_local global i32 0, align 4
@GLS_DSTBLEND_ONE = common dso_local global i32 0, align 4
@GLS_DEPTHFUNC_EQUAL = common dso_local global i32 0, align 4
@GLS_SRCBLEND_DST_COLOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ProjectDlightTexture_scalar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ProjectDlightTexture_scalar() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca float*, align 8
  %4 = alloca float*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float*, align 8
  %15 = alloca float, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_12__*, align 8
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca i32, align 4
  %21 = alloca float*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = load i32, i32* @SHADER_MAX_VERTEXES, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %6, align 8
  %28 = alloca i32, i64 %26, align 16
  store i64 %26, i64* %7, align 8
  %29 = load i32, i32* @SHADER_MAX_VERTEXES, align 4
  %30 = zext i32 %29 to i64
  %31 = alloca [2 x float], i64 %30, align 16
  store i64 %30, i64* %8, align 8
  %32 = load i32, i32* @SHADER_MAX_VERTEXES, align 4
  %33 = zext i32 %32 to i64
  %34 = alloca [4 x i32], i64 %33, align 16
  store i64 %33, i64* %9, align 8
  %35 = load i32, i32* @SHADER_MAX_INDEXES, align 4
  %36 = zext i32 %35 to i64
  %37 = alloca i32, i64 %36, align 16
  store i64 %36, i64* %10, align 8
  store float 0.000000e+00, float* %15, align 4
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @backEnd, i32 0, i32 1, i32 0), align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %0
  store i32 1, i32* %16, align 4
  br label %501

41:                                               ; preds = %0
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %497, %41
  %43 = load i32, i32* %2, align 4
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @backEnd, i32 0, i32 1, i32 0), align 8
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %500

46:                                               ; preds = %42
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tess, i32 0, i32 0), align 8
  %48 = load i32, i32* %2, align 4
  %49 = shl i32 1, %48
  %50 = and i32 %47, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %46
  br label %497

53:                                               ; preds = %46
  %54 = getelementptr inbounds [2 x float], [2 x float]* %31, i64 0
  %55 = getelementptr inbounds [2 x float], [2 x float]* %54, i64 0, i64 0
  store float* %55, float** %4, align 8
  %56 = getelementptr inbounds [4 x i32], [4 x i32]* %34, i64 0
  %57 = getelementptr inbounds [4 x i32], [4 x i32]* %56, i64 0, i64 0
  store i32* %57, i32** %5, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @backEnd, i32 0, i32 1, i32 1), align 8
  %59 = load i32, i32* %2, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i64 %60
  store %struct.TYPE_12__* %61, %struct.TYPE_12__** %17, align 8
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = load float*, float** %3, align 8
  %66 = call i32 @VectorCopy(i32 %64, float* %65)
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = load float, float* %68, align 8
  store float %69, float* %13, align 4
  %70 = load float, float* %13, align 4
  %71 = fdiv float 1.000000e+00, %70
  store float %71, float* %12, align 4
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** @r_greyscale, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %101

76:                                               ; preds = %53
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 1
  %79 = load float*, float** %78, align 8
  %80 = getelementptr inbounds float, float* %79, i64 0
  %81 = load float, float* %80, align 4
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 1
  %84 = load float*, float** %83, align 8
  %85 = getelementptr inbounds float, float* %84, i64 1
  %86 = load float, float* %85, align 4
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 1
  %89 = load float*, float** %88, align 8
  %90 = getelementptr inbounds float, float* %89, i64 2
  %91 = load float, float* %90, align 4
  %92 = call float @LUMA(float %81, float %86, float %91)
  %93 = fmul float %92, 2.550000e+02
  store float %93, float* %18, align 4
  %94 = load float, float* %18, align 4
  %95 = load float*, float** %14, align 8
  %96 = getelementptr inbounds float, float* %95, i64 2
  store float %94, float* %96, align 4
  %97 = load float*, float** %14, align 8
  %98 = getelementptr inbounds float, float* %97, i64 1
  store float %94, float* %98, align 4
  %99 = load float*, float** %14, align 8
  %100 = getelementptr inbounds float, float* %99, i64 0
  store float %94, float* %100, align 4
  br label %189

101:                                              ; preds = %53
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** @r_greyscale, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %163

106:                                              ; preds = %101
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 1
  %109 = load float*, float** %108, align 8
  %110 = getelementptr inbounds float, float* %109, i64 0
  %111 = load float, float* %110, align 4
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 1
  %114 = load float*, float** %113, align 8
  %115 = getelementptr inbounds float, float* %114, i64 1
  %116 = load float, float* %115, align 4
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 1
  %119 = load float*, float** %118, align 8
  %120 = getelementptr inbounds float, float* %119, i64 2
  %121 = load float, float* %120, align 4
  %122 = call float @LUMA(float %111, float %116, float %121)
  %123 = fmul float %122, 2.550000e+02
  store float %123, float* %19, align 4
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 1
  %126 = load float*, float** %125, align 8
  %127 = getelementptr inbounds float, float* %126, i64 0
  %128 = load float, float* %127, align 4
  %129 = fmul float %128, 2.550000e+02
  %130 = load float, float* %19, align 4
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** @r_greyscale, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = call float @LERP(float %129, float %130, i64 %133)
  %135 = load float*, float** %14, align 8
  %136 = getelementptr inbounds float, float* %135, i64 0
  store float %134, float* %136, align 4
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 1
  %139 = load float*, float** %138, align 8
  %140 = getelementptr inbounds float, float* %139, i64 1
  %141 = load float, float* %140, align 4
  %142 = fmul float %141, 2.550000e+02
  %143 = load float, float* %19, align 4
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** @r_greyscale, align 8
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = call float @LERP(float %142, float %143, i64 %146)
  %148 = load float*, float** %14, align 8
  %149 = getelementptr inbounds float, float* %148, i64 1
  store float %147, float* %149, align 4
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 1
  %152 = load float*, float** %151, align 8
  %153 = getelementptr inbounds float, float* %152, i64 2
  %154 = load float, float* %153, align 4
  %155 = fmul float %154, 2.550000e+02
  %156 = load float, float* %19, align 4
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** @r_greyscale, align 8
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = call float @LERP(float %155, float %156, i64 %159)
  %161 = load float*, float** %14, align 8
  %162 = getelementptr inbounds float, float* %161, i64 2
  store float %160, float* %162, align 4
  br label %188

163:                                              ; preds = %101
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 1
  %166 = load float*, float** %165, align 8
  %167 = getelementptr inbounds float, float* %166, i64 0
  %168 = load float, float* %167, align 4
  %169 = fmul float %168, 2.550000e+02
  %170 = load float*, float** %14, align 8
  %171 = getelementptr inbounds float, float* %170, i64 0
  store float %169, float* %171, align 4
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 1
  %174 = load float*, float** %173, align 8
  %175 = getelementptr inbounds float, float* %174, i64 1
  %176 = load float, float* %175, align 4
  %177 = fmul float %176, 2.550000e+02
  %178 = load float*, float** %14, align 8
  %179 = getelementptr inbounds float, float* %178, i64 1
  store float %177, float* %179, align 4
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 1
  %182 = load float*, float** %181, align 8
  %183 = getelementptr inbounds float, float* %182, i64 2
  %184 = load float, float* %183, align 4
  %185 = fmul float %184, 2.550000e+02
  %186 = load float*, float** %14, align 8
  %187 = getelementptr inbounds float, float* %186, i64 2
  store float %185, float* %187, align 4
  br label %188

188:                                              ; preds = %163, %106
  br label %189

189:                                              ; preds = %188, %76
  store i32 0, i32* %1, align 4
  br label %190

190:                                              ; preds = %386, %189
  %191 = load i32, i32* %1, align 4
  %192 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tess, i32 0, i32 1), align 4
  %193 = icmp slt i32 %191, %192
  br i1 %193, label %194, label %393

194:                                              ; preds = %190
  store i32 0, i32* %20, align 4
  %195 = load float*, float** %3, align 8
  %196 = load i32*, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tess, i32 0, i32 5), align 8
  %197 = load i32, i32* %1, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %196, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = load float*, float** %21, align 8
  %202 = call i32 @VectorSubtract(float* %195, i32 %200, float* %201)
  %203 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @backEnd, i32 0, i32 0, i32 2), align 8
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @backEnd, i32 0, i32 0, i32 2), align 8
  %205 = load float*, float** %21, align 8
  %206 = getelementptr inbounds float, float* %205, i64 0
  %207 = load float, float* %206, align 4
  %208 = load float, float* %12, align 4
  %209 = fmul float %207, %208
  %210 = fadd float 5.000000e-01, %209
  %211 = load float*, float** %4, align 8
  %212 = getelementptr inbounds float, float* %211, i64 0
  store float %210, float* %212, align 4
  %213 = load float*, float** %21, align 8
  %214 = getelementptr inbounds float, float* %213, i64 1
  %215 = load float, float* %214, align 4
  %216 = load float, float* %12, align 4
  %217 = fmul float %215, %216
  %218 = fadd float 5.000000e-01, %217
  %219 = load float*, float** %4, align 8
  %220 = getelementptr inbounds float, float* %219, i64 1
  store float %218, float* %220, align 4
  %221 = load %struct.TYPE_17__*, %struct.TYPE_17__** @r_dlightBacks, align 8
  %222 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %263, label %225

225:                                              ; preds = %194
  %226 = load float*, float** %21, align 8
  %227 = getelementptr inbounds float, float* %226, i64 0
  %228 = load float, float* %227, align 4
  %229 = load float**, float*** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tess, i32 0, i32 2), align 8
  %230 = load i32, i32* %1, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds float*, float** %229, i64 %231
  %233 = load float*, float** %232, align 8
  %234 = getelementptr inbounds float, float* %233, i64 0
  %235 = load float, float* %234, align 4
  %236 = fmul float %228, %235
  %237 = load float*, float** %21, align 8
  %238 = getelementptr inbounds float, float* %237, i64 1
  %239 = load float, float* %238, align 4
  %240 = load float**, float*** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tess, i32 0, i32 2), align 8
  %241 = load i32, i32* %1, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds float*, float** %240, i64 %242
  %244 = load float*, float** %243, align 8
  %245 = getelementptr inbounds float, float* %244, i64 1
  %246 = load float, float* %245, align 4
  %247 = fmul float %239, %246
  %248 = fadd float %236, %247
  %249 = load float*, float** %21, align 8
  %250 = getelementptr inbounds float, float* %249, i64 2
  %251 = load float, float* %250, align 4
  %252 = load float**, float*** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tess, i32 0, i32 2), align 8
  %253 = load i32, i32* %1, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds float*, float** %252, i64 %254
  %256 = load float*, float** %255, align 8
  %257 = getelementptr inbounds float, float* %256, i64 2
  %258 = load float, float* %257, align 4
  %259 = fmul float %251, %258
  %260 = fadd float %248, %259
  %261 = fcmp olt float %260, 0.000000e+00
  br i1 %261, label %262, label %263

262:                                              ; preds = %225
  store i32 63, i32* %20, align 4
  br label %352

263:                                              ; preds = %225, %194
  %264 = load float*, float** %4, align 8
  %265 = getelementptr inbounds float, float* %264, i64 0
  %266 = load float, float* %265, align 4
  %267 = fcmp olt float %266, 0.000000e+00
  br i1 %267, label %268, label %271

268:                                              ; preds = %263
  %269 = load i32, i32* %20, align 4
  %270 = or i32 %269, 1
  store i32 %270, i32* %20, align 4
  br label %280

271:                                              ; preds = %263
  %272 = load float*, float** %4, align 8
  %273 = getelementptr inbounds float, float* %272, i64 0
  %274 = load float, float* %273, align 4
  %275 = fcmp ogt float %274, 1.000000e+00
  br i1 %275, label %276, label %279

276:                                              ; preds = %271
  %277 = load i32, i32* %20, align 4
  %278 = or i32 %277, 2
  store i32 %278, i32* %20, align 4
  br label %279

279:                                              ; preds = %276, %271
  br label %280

280:                                              ; preds = %279, %268
  %281 = load float*, float** %4, align 8
  %282 = getelementptr inbounds float, float* %281, i64 1
  %283 = load float, float* %282, align 4
  %284 = fcmp olt float %283, 0.000000e+00
  br i1 %284, label %285, label %288

285:                                              ; preds = %280
  %286 = load i32, i32* %20, align 4
  %287 = or i32 %286, 4
  store i32 %287, i32* %20, align 4
  br label %297

288:                                              ; preds = %280
  %289 = load float*, float** %4, align 8
  %290 = getelementptr inbounds float, float* %289, i64 1
  %291 = load float, float* %290, align 4
  %292 = fcmp ogt float %291, 1.000000e+00
  br i1 %292, label %293, label %296

293:                                              ; preds = %288
  %294 = load i32, i32* %20, align 4
  %295 = or i32 %294, 8
  store i32 %295, i32* %20, align 4
  br label %296

296:                                              ; preds = %293, %288
  br label %297

297:                                              ; preds = %296, %285
  %298 = load float*, float** %4, align 8
  %299 = getelementptr inbounds float, float* %298, i64 0
  %300 = load float, float* %299, align 4
  %301 = load float*, float** %4, align 8
  %302 = getelementptr inbounds float, float* %301, i64 0
  store float %300, float* %302, align 4
  %303 = load float*, float** %4, align 8
  %304 = getelementptr inbounds float, float* %303, i64 1
  %305 = load float, float* %304, align 4
  %306 = load float*, float** %4, align 8
  %307 = getelementptr inbounds float, float* %306, i64 1
  store float %305, float* %307, align 4
  %308 = load float*, float** %21, align 8
  %309 = getelementptr inbounds float, float* %308, i64 2
  %310 = load float, float* %309, align 4
  %311 = load float, float* %13, align 4
  %312 = fcmp ogt float %310, %311
  br i1 %312, label %313, label %316

313:                                              ; preds = %297
  %314 = load i32, i32* %20, align 4
  %315 = or i32 %314, 16
  store i32 %315, i32* %20, align 4
  store float 0.000000e+00, float* %15, align 4
  br label %351

316:                                              ; preds = %297
  %317 = load float*, float** %21, align 8
  %318 = getelementptr inbounds float, float* %317, i64 2
  %319 = load float, float* %318, align 4
  %320 = load float, float* %13, align 4
  %321 = fneg float %320
  %322 = fcmp olt float %319, %321
  br i1 %322, label %323, label %326

323:                                              ; preds = %316
  %324 = load i32, i32* %20, align 4
  %325 = or i32 %324, 32
  store i32 %325, i32* %20, align 4
  store float 0.000000e+00, float* %15, align 4
  br label %350

326:                                              ; preds = %316
  %327 = load float*, float** %21, align 8
  %328 = getelementptr inbounds float, float* %327, i64 2
  %329 = load float, float* %328, align 4
  %330 = call float @Q_fabs(float %329)
  %331 = load float*, float** %21, align 8
  %332 = getelementptr inbounds float, float* %331, i64 2
  store float %330, float* %332, align 4
  %333 = load float*, float** %21, align 8
  %334 = getelementptr inbounds float, float* %333, i64 2
  %335 = load float, float* %334, align 4
  %336 = load float, float* %13, align 4
  %337 = fmul float %336, 5.000000e-01
  %338 = fcmp olt float %335, %337
  br i1 %338, label %339, label %340

339:                                              ; preds = %326
  store float 1.000000e+00, float* %15, align 4
  br label %349

340:                                              ; preds = %326
  %341 = load float, float* %13, align 4
  %342 = load float*, float** %21, align 8
  %343 = getelementptr inbounds float, float* %342, i64 2
  %344 = load float, float* %343, align 4
  %345 = fsub float %341, %344
  %346 = fmul float 2.000000e+00, %345
  %347 = load float, float* %12, align 4
  %348 = fmul float %346, %347
  store float %348, float* %15, align 4
  br label %349

349:                                              ; preds = %340, %339
  br label %350

350:                                              ; preds = %349, %323
  br label %351

351:                                              ; preds = %350, %313
  br label %352

352:                                              ; preds = %351, %262
  %353 = load i32, i32* %20, align 4
  %354 = load i32, i32* %1, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds i32, i32* %28, i64 %355
  store i32 %353, i32* %356, align 4
  %357 = load i32 (float)*, i32 (float)** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @ri, i32 0, i32 0), align 8
  %358 = load float*, float** %14, align 8
  %359 = getelementptr inbounds float, float* %358, i64 0
  %360 = load float, float* %359, align 4
  %361 = load float, float* %15, align 4
  %362 = fmul float %360, %361
  %363 = call i32 %357(float %362)
  %364 = load i32*, i32** %5, align 8
  %365 = getelementptr inbounds i32, i32* %364, i64 0
  store i32 %363, i32* %365, align 4
  %366 = load i32 (float)*, i32 (float)** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @ri, i32 0, i32 0), align 8
  %367 = load float*, float** %14, align 8
  %368 = getelementptr inbounds float, float* %367, i64 1
  %369 = load float, float* %368, align 4
  %370 = load float, float* %15, align 4
  %371 = fmul float %369, %370
  %372 = call i32 %366(float %371)
  %373 = load i32*, i32** %5, align 8
  %374 = getelementptr inbounds i32, i32* %373, i64 1
  store i32 %372, i32* %374, align 4
  %375 = load i32 (float)*, i32 (float)** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @ri, i32 0, i32 0), align 8
  %376 = load float*, float** %14, align 8
  %377 = getelementptr inbounds float, float* %376, i64 2
  %378 = load float, float* %377, align 4
  %379 = load float, float* %15, align 4
  %380 = fmul float %378, %379
  %381 = call i32 %375(float %380)
  %382 = load i32*, i32** %5, align 8
  %383 = getelementptr inbounds i32, i32* %382, i64 2
  store i32 %381, i32* %383, align 4
  %384 = load i32*, i32** %5, align 8
  %385 = getelementptr inbounds i32, i32* %384, i64 3
  store i32 255, i32* %385, align 4
  br label %386

386:                                              ; preds = %352
  %387 = load i32, i32* %1, align 4
  %388 = add nsw i32 %387, 1
  store i32 %388, i32* %1, align 4
  %389 = load float*, float** %4, align 8
  %390 = getelementptr inbounds float, float* %389, i64 2
  store float* %390, float** %4, align 8
  %391 = load i32*, i32** %5, align 8
  %392 = getelementptr inbounds i32, i32* %391, i64 4
  store i32* %392, i32** %5, align 8
  br label %190

393:                                              ; preds = %190
  store i32 0, i32* %11, align 4
  store i32 0, i32* %1, align 4
  br label %394

394:                                              ; preds = %449, %393
  %395 = load i32, i32* %1, align 4
  %396 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tess, i32 0, i32 3), align 8
  %397 = icmp slt i32 %395, %396
  br i1 %397, label %398, label %452

398:                                              ; preds = %394
  %399 = load i32*, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tess, i32 0, i32 4), align 8
  %400 = load i32, i32* %1, align 4
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds i32, i32* %399, i64 %401
  %403 = load i32, i32* %402, align 4
  store i32 %403, i32* %22, align 4
  %404 = load i32*, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tess, i32 0, i32 4), align 8
  %405 = load i32, i32* %1, align 4
  %406 = add nsw i32 %405, 1
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds i32, i32* %404, i64 %407
  %409 = load i32, i32* %408, align 4
  store i32 %409, i32* %23, align 4
  %410 = load i32*, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tess, i32 0, i32 4), align 8
  %411 = load i32, i32* %1, align 4
  %412 = add nsw i32 %411, 2
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds i32, i32* %410, i64 %413
  %415 = load i32, i32* %414, align 4
  store i32 %415, i32* %24, align 4
  %416 = load i32, i32* %22, align 4
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds i32, i32* %28, i64 %417
  %419 = load i32, i32* %418, align 4
  %420 = load i32, i32* %23, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds i32, i32* %28, i64 %421
  %423 = load i32, i32* %422, align 4
  %424 = and i32 %419, %423
  %425 = load i32, i32* %24, align 4
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds i32, i32* %28, i64 %426
  %428 = load i32, i32* %427, align 4
  %429 = and i32 %424, %428
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %431, label %432

431:                                              ; preds = %398
  br label %449

432:                                              ; preds = %398
  %433 = load i32, i32* %22, align 4
  %434 = load i32, i32* %11, align 4
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds i32, i32* %37, i64 %435
  store i32 %433, i32* %436, align 4
  %437 = load i32, i32* %23, align 4
  %438 = load i32, i32* %11, align 4
  %439 = add nsw i32 %438, 1
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds i32, i32* %37, i64 %440
  store i32 %437, i32* %441, align 4
  %442 = load i32, i32* %24, align 4
  %443 = load i32, i32* %11, align 4
  %444 = add nsw i32 %443, 2
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds i32, i32* %37, i64 %445
  store i32 %442, i32* %446, align 4
  %447 = load i32, i32* %11, align 4
  %448 = add nsw i32 %447, 3
  store i32 %448, i32* %11, align 4
  br label %449

449:                                              ; preds = %432, %431
  %450 = load i32, i32* %1, align 4
  %451 = add nsw i32 %450, 3
  store i32 %451, i32* %1, align 4
  br label %394

452:                                              ; preds = %394
  %453 = load i32, i32* %11, align 4
  %454 = icmp ne i32 %453, 0
  br i1 %454, label %456, label %455

455:                                              ; preds = %452
  br label %497

456:                                              ; preds = %452
  %457 = load i32, i32* @GL_TEXTURE_COORD_ARRAY, align 4
  %458 = call i32 @qglEnableClientState(i32 %457)
  %459 = load i32, i32* @GL_FLOAT, align 4
  %460 = getelementptr inbounds [2 x float], [2 x float]* %31, i64 0
  %461 = getelementptr inbounds [2 x float], [2 x float]* %460, i64 0, i64 0
  %462 = call i32 @qglTexCoordPointer(i32 2, i32 %459, i32 0, float* %461)
  %463 = load i32, i32* @GL_COLOR_ARRAY, align 4
  %464 = call i32 @qglEnableClientState(i32 %463)
  %465 = load i32, i32* @GL_UNSIGNED_BYTE, align 4
  %466 = bitcast [4 x i32]* %34 to i32**
  %467 = call i32 @qglColorPointer(i32 4, i32 %465, i32 0, i32** %466)
  %468 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tr, i32 0, i32 0), align 4
  %469 = call i32 @GL_Bind(i32 %468)
  %470 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %471 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %470, i32 0, i32 2
  %472 = load i64, i64* %471, align 8
  %473 = icmp ne i64 %472, 0
  br i1 %473, label %474, label %481

474:                                              ; preds = %456
  %475 = load i32, i32* @GLS_SRCBLEND_ONE, align 4
  %476 = load i32, i32* @GLS_DSTBLEND_ONE, align 4
  %477 = or i32 %475, %476
  %478 = load i32, i32* @GLS_DEPTHFUNC_EQUAL, align 4
  %479 = or i32 %477, %478
  %480 = call i32 @GL_State(i32 %479)
  br label %488

481:                                              ; preds = %456
  %482 = load i32, i32* @GLS_SRCBLEND_DST_COLOR, align 4
  %483 = load i32, i32* @GLS_DSTBLEND_ONE, align 4
  %484 = or i32 %482, %483
  %485 = load i32, i32* @GLS_DEPTHFUNC_EQUAL, align 4
  %486 = or i32 %484, %485
  %487 = call i32 @GL_State(i32 %486)
  br label %488

488:                                              ; preds = %481, %474
  %489 = load i32, i32* %11, align 4
  %490 = call i32 @R_DrawElements(i32 %489, i32* %37)
  %491 = load i32, i32* %11, align 4
  %492 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @backEnd, i32 0, i32 0, i32 0), align 8
  %493 = add nsw i32 %492, %491
  store i32 %493, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @backEnd, i32 0, i32 0, i32 0), align 8
  %494 = load i32, i32* %11, align 4
  %495 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @backEnd, i32 0, i32 0, i32 1), align 4
  %496 = add nsw i32 %495, %494
  store i32 %496, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @backEnd, i32 0, i32 0, i32 1), align 4
  br label %497

497:                                              ; preds = %488, %455, %52
  %498 = load i32, i32* %2, align 4
  %499 = add nsw i32 %498, 1
  store i32 %499, i32* %2, align 4
  br label %42

500:                                              ; preds = %42
  store i32 0, i32* %16, align 4
  br label %501

501:                                              ; preds = %500, %40
  %502 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %502)
  %503 = load i32, i32* %16, align 4
  switch i32 %503, label %505 [
    i32 0, label %504
    i32 1, label %504
  ]

504:                                              ; preds = %501, %501
  ret void

505:                                              ; preds = %501
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @VectorCopy(i32, float*) #2

declare dso_local float @LUMA(float, float, float) #2

declare dso_local float @LERP(float, float, i64) #2

declare dso_local i32 @VectorSubtract(float*, i32, float*) #2

declare dso_local float @Q_fabs(float) #2

declare dso_local i32 @qglEnableClientState(i32) #2

declare dso_local i32 @qglTexCoordPointer(i32, i32, i32, float*) #2

declare dso_local i32 @qglColorPointer(i32, i32, i32, i32**) #2

declare dso_local i32 @GL_Bind(i32) #2

declare dso_local i32 @GL_State(i32) #2

declare dso_local i32 @R_DrawElements(i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
