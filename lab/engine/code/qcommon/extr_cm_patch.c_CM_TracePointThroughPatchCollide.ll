; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_cm_patch.c_CM_TracePointThroughPatchCollide.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_cm_patch.c_CM_TracePointThroughPatchCollide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64 }
%struct.TYPE_17__ = type { i32 }
%struct.patchCollide_s = type { i32, i32, %struct.TYPE_14__*, %struct.TYPE_15__* }
%struct.TYPE_14__ = type { i64, float* }
%struct.TYPE_15__ = type { i64, i32, i32*, i32* }
%struct.TYPE_13__ = type { %struct.TYPE_12__, i32, i32, i32*, i32 }
%struct.TYPE_12__ = type { float, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { float, i32 }

@MAX_PATCH_PLANES = common dso_local global i32 0, align 4
@CM_TracePointThroughPatchCollide.cv = internal global %struct.TYPE_16__* null, align 8
@cm_playerCurveClip = common dso_local global %struct.TYPE_17__* null, align 8
@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"r_debugSurfaceUpdate\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@debugPatchCollide = common dso_local global %struct.patchCollide_s* null, align 8
@debugFacet = common dso_local global %struct.TYPE_15__* null, align 8
@SURFACE_CLIP_EPSILON = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CM_TracePointThroughPatchCollide(%struct.TYPE_13__* %0, %struct.patchCollide_s* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.patchCollide_s*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca float, align 4
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store %struct.patchCollide_s* %1, %struct.patchCollide_s** %4, align 8
  %18 = load i32, i32* @MAX_PATCH_PLANES, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %5, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %6, align 8
  %22 = load i32, i32* @MAX_PATCH_PLANES, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca float, i64 %23, align 16
  store i64 %23, i64* %7, align 8
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** @cm_playerCurveClip, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %2
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29, %2
  store i32 1, i32* %17, align 4
  br label %332

35:                                               ; preds = %29
  %36 = load %struct.patchCollide_s*, %struct.patchCollide_s** %4, align 8
  %37 = getelementptr inbounds %struct.patchCollide_s, %struct.patchCollide_s* %36, i32 0, i32 2
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %37, align 8
  store %struct.TYPE_14__* %38, %struct.TYPE_14__** %9, align 8
  store i32 0, i32* %11, align 4
  br label %39

39:                                               ; preds = %128, %35
  %40 = load i32, i32* %11, align 4
  %41 = load %struct.patchCollide_s*, %struct.patchCollide_s** %4, align 8
  %42 = getelementptr inbounds %struct.patchCollide_s, %struct.patchCollide_s* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %133

45:                                               ; preds = %39
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 3
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 1
  %56 = load float*, float** %55, align 8
  %57 = call float @DotProduct(i32 %53, float* %56)
  store float %57, float* %14, align 4
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 1
  %63 = load float*, float** %62, align 8
  %64 = call float @DotProduct(i32 %60, float* %63)
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 1
  %67 = load float*, float** %66, align 8
  %68 = getelementptr inbounds float, float* %67, i64 3
  %69 = load float, float* %68, align 4
  %70 = fsub float %64, %69
  %71 = load float, float* %14, align 4
  %72 = fadd float %70, %71
  store float %72, float* %15, align 4
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 1
  %78 = load float*, float** %77, align 8
  %79 = call float @DotProduct(i32 %75, float* %78)
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 1
  %82 = load float*, float** %81, align 8
  %83 = getelementptr inbounds float, float* %82, i64 3
  %84 = load float, float* %83, align 4
  %85 = fsub float %79, %84
  %86 = load float, float* %14, align 4
  %87 = fadd float %85, %86
  store float %87, float* %16, align 4
  %88 = load float, float* %15, align 4
  %89 = fcmp ole float %88, 0.000000e+00
  br i1 %89, label %90, label %95

90:                                               ; preds = %45
  %91 = load i32, i32* @qfalse, align 4
  %92 = load i32, i32* %11, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %21, i64 %93
  store i32 %91, i32* %94, align 4
  br label %100

95:                                               ; preds = %45
  %96 = load i32, i32* @qtrue, align 4
  %97 = load i32, i32* %11, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %21, i64 %98
  store i32 %96, i32* %99, align 4
  br label %100

100:                                              ; preds = %95, %90
  %101 = load float, float* %15, align 4
  %102 = load float, float* %16, align 4
  %103 = fcmp oeq float %101, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %100
  %105 = load i32, i32* %11, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds float, float* %24, i64 %106
  store float 9.999900e+04, float* %107, align 4
  br label %127

108:                                              ; preds = %100
  %109 = load float, float* %15, align 4
  %110 = load float, float* %15, align 4
  %111 = load float, float* %16, align 4
  %112 = fsub float %110, %111
  %113 = fdiv float %109, %112
  %114 = load i32, i32* %11, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds float, float* %24, i64 %115
  store float %113, float* %116, align 4
  %117 = load i32, i32* %11, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds float, float* %24, i64 %118
  %120 = load float, float* %119, align 4
  %121 = fcmp ole float %120, 0.000000e+00
  br i1 %121, label %122, label %126

122:                                              ; preds = %108
  %123 = load i32, i32* %11, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds float, float* %24, i64 %124
  store float 9.999900e+04, float* %125, align 4
  br label %126

126:                                              ; preds = %122, %108
  br label %127

127:                                              ; preds = %126, %104
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %11, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %11, align 4
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 1
  store %struct.TYPE_14__* %132, %struct.TYPE_14__** %9, align 8
  br label %39

133:                                              ; preds = %39
  %134 = load %struct.patchCollide_s*, %struct.patchCollide_s** %4, align 8
  %135 = getelementptr inbounds %struct.patchCollide_s, %struct.patchCollide_s* %134, i32 0, i32 3
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %135, align 8
  store %struct.TYPE_15__* %136, %struct.TYPE_15__** %10, align 8
  store i32 0, i32* %11, align 4
  br label %137

137:                                              ; preds = %326, %133
  %138 = load i32, i32* %11, align 4
  %139 = load %struct.patchCollide_s*, %struct.patchCollide_s** %4, align 8
  %140 = getelementptr inbounds %struct.patchCollide_s, %struct.patchCollide_s* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = icmp slt i32 %138, %141
  br i1 %142, label %143, label %331

143:                                              ; preds = %137
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = getelementptr inbounds i32, i32* %21, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %151, label %150

150:                                              ; preds = %143
  br label %326

151:                                              ; preds = %143
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = getelementptr inbounds float, float* %24, i64 %154
  %156 = load float, float* %155, align 4
  store float %156, float* %8, align 4
  %157 = load float, float* %8, align 4
  %158 = fcmp olt float %157, 0.000000e+00
  br i1 %158, label %159, label %160

159:                                              ; preds = %151
  br label %326

160:                                              ; preds = %151
  %161 = load float, float* %8, align 4
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 0
  %165 = load float, float* %164, align 8
  %166 = fcmp ogt float %161, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %160
  br label %326

168:                                              ; preds = %160
  store i32 0, i32* %12, align 4
  br label %169

169:                                              ; preds = %215, %168
  %170 = load i32, i32* %12, align 4
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = icmp slt i32 %170, %173
  br i1 %174, label %175, label %218

175:                                              ; preds = %169
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i32 0, i32 2
  %178 = load i32*, i32** %177, align 8
  %179 = load i32, i32* %12, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  %182 = load i32, i32* %181, align 4
  store i32 %182, i32* %13, align 4
  %183 = load i32, i32* %13, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %21, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %187, i32 0, i32 3
  %189 = load i32*, i32** %188, align 8
  %190 = load i32, i32* %12, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = xor i32 %186, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %205

196:                                              ; preds = %175
  %197 = load i32, i32* %13, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds float, float* %24, i64 %198
  %200 = load float, float* %199, align 4
  %201 = load float, float* %8, align 4
  %202 = fcmp ogt float %200, %201
  br i1 %202, label %203, label %204

203:                                              ; preds = %196
  br label %218

204:                                              ; preds = %196
  br label %214

205:                                              ; preds = %175
  %206 = load i32, i32* %13, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds float, float* %24, i64 %207
  %209 = load float, float* %208, align 4
  %210 = load float, float* %8, align 4
  %211 = fcmp olt float %209, %210
  br i1 %211, label %212, label %213

212:                                              ; preds = %205
  br label %218

213:                                              ; preds = %205
  br label %214

214:                                              ; preds = %213, %204
  br label %215

215:                                              ; preds = %214
  %216 = load i32, i32* %12, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %12, align 4
  br label %169

218:                                              ; preds = %212, %203, %169
  %219 = load i32, i32* %12, align 4
  %220 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %221 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 8
  %223 = icmp eq i32 %219, %222
  br i1 %223, label %224, label %325

224:                                              ; preds = %218
  %225 = load %struct.TYPE_16__*, %struct.TYPE_16__** @CM_TracePointThroughPatchCollide.cv, align 8
  %226 = icmp ne %struct.TYPE_16__* %225, null
  br i1 %226, label %229, label %227

227:                                              ; preds = %224
  %228 = call %struct.TYPE_16__* @Cvar_Get(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store %struct.TYPE_16__* %228, %struct.TYPE_16__** @CM_TracePointThroughPatchCollide.cv, align 8
  br label %229

229:                                              ; preds = %227, %224
  %230 = load %struct.TYPE_16__*, %struct.TYPE_16__** @CM_TracePointThroughPatchCollide.cv, align 8
  %231 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %237

234:                                              ; preds = %229
  %235 = load %struct.patchCollide_s*, %struct.patchCollide_s** %4, align 8
  store %struct.patchCollide_s* %235, %struct.patchCollide_s** @debugPatchCollide, align 8
  %236 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  store %struct.TYPE_15__* %236, %struct.TYPE_15__** @debugFacet, align 8
  br label %237

237:                                              ; preds = %234, %229
  %238 = load %struct.patchCollide_s*, %struct.patchCollide_s** %4, align 8
  %239 = getelementptr inbounds %struct.patchCollide_s, %struct.patchCollide_s* %238, i32 0, i32 2
  %240 = load %struct.TYPE_14__*, %struct.TYPE_14__** %239, align 8
  %241 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %242 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %240, i64 %243
  store %struct.TYPE_14__* %244, %struct.TYPE_14__** %9, align 8
  %245 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %246 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %245, i32 0, i32 3
  %247 = load i32*, i32** %246, align 8
  %248 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %249 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = getelementptr inbounds i32, i32* %247, i64 %250
  %252 = load i32, i32* %251, align 4
  %253 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %254 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %253, i32 0, i32 1
  %255 = load float*, float** %254, align 8
  %256 = call float @DotProduct(i32 %252, float* %255)
  store float %256, float* %14, align 4
  %257 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %258 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 8
  %260 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %261 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %260, i32 0, i32 1
  %262 = load float*, float** %261, align 8
  %263 = call float @DotProduct(i32 %259, float* %262)
  %264 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %265 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %264, i32 0, i32 1
  %266 = load float*, float** %265, align 8
  %267 = getelementptr inbounds float, float* %266, i64 3
  %268 = load float, float* %267, align 4
  %269 = fsub float %263, %268
  %270 = load float, float* %14, align 4
  %271 = fadd float %269, %270
  store float %271, float* %15, align 4
  %272 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %273 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %276 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %275, i32 0, i32 1
  %277 = load float*, float** %276, align 8
  %278 = call float @DotProduct(i32 %274, float* %277)
  %279 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %280 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %279, i32 0, i32 1
  %281 = load float*, float** %280, align 8
  %282 = getelementptr inbounds float, float* %281, i64 3
  %283 = load float, float* %282, align 4
  %284 = fsub float %278, %283
  %285 = load float, float* %14, align 4
  %286 = fadd float %284, %285
  store float %286, float* %16, align 4
  %287 = load float, float* %15, align 4
  %288 = load float, float* @SURFACE_CLIP_EPSILON, align 4
  %289 = fsub float %287, %288
  %290 = load float, float* %15, align 4
  %291 = load float, float* %16, align 4
  %292 = fsub float %290, %291
  %293 = fdiv float %289, %292
  %294 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %295 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %295, i32 0, i32 0
  store float %293, float* %296, align 8
  %297 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %298 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %298, i32 0, i32 0
  %300 = load float, float* %299, align 8
  %301 = fcmp olt float %300, 0.000000e+00
  br i1 %301, label %302, label %306

302:                                              ; preds = %237
  %303 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %304 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %303, i32 0, i32 0
  %305 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %304, i32 0, i32 0
  store float 0.000000e+00, float* %305, align 8
  br label %306

306:                                              ; preds = %302, %237
  %307 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %308 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %307, i32 0, i32 1
  %309 = load float*, float** %308, align 8
  %310 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %311 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %311, i32 0, i32 1
  %313 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %312, i32 0, i32 1
  %314 = load i32, i32* %313, align 4
  %315 = call i32 @VectorCopy(float* %309, i32 %314)
  %316 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %317 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %316, i32 0, i32 1
  %318 = load float*, float** %317, align 8
  %319 = getelementptr inbounds float, float* %318, i64 3
  %320 = load float, float* %319, align 4
  %321 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %322 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %321, i32 0, i32 0
  %323 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %322, i32 0, i32 1
  %324 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %323, i32 0, i32 0
  store float %320, float* %324, align 4
  br label %325

325:                                              ; preds = %306, %218
  br label %326

326:                                              ; preds = %325, %167, %159, %150
  %327 = load i32, i32* %11, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %11, align 4
  %329 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %330 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %329, i32 1
  store %struct.TYPE_15__* %330, %struct.TYPE_15__** %10, align 8
  br label %137

331:                                              ; preds = %137
  store i32 0, i32* %17, align 4
  br label %332

332:                                              ; preds = %331, %34
  %333 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %333)
  %334 = load i32, i32* %17, align 4
  switch i32 %334, label %336 [
    i32 0, label %335
    i32 1, label %335
  ]

335:                                              ; preds = %332, %332
  ret void

336:                                              ; preds = %332
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local float @DotProduct(i32, float*) #2

declare dso_local %struct.TYPE_16__* @Cvar_Get(i8*, i8*, i32) #2

declare dso_local i32 @VectorCopy(float*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
