; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_cm_patch.c_CM_TraceThroughPatchCollide.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_cm_patch.c_CM_TraceThroughPatchCollide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64 }
%struct.patchCollide_s = type { i32, %struct.TYPE_16__*, %struct.TYPE_17__*, i32* }
%struct.TYPE_16__ = type { float*, i64 }
%struct.TYPE_17__ = type { i64, i32, i64*, i64* }
%struct.TYPE_15__ = type { float*, float*, float**, %struct.TYPE_13__, %struct.TYPE_14__, i64, i32* }
%struct.TYPE_13__ = type { float, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { float*, float }
%struct.TYPE_14__ = type { float*, i64, i64 }

@CM_TraceThroughPatchCollide.cv = internal global %struct.TYPE_18__* null, align 8
@.str = private unnamed_addr constant [21 x i8] c"r_debugSurfaceUpdate\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@debugPatchCollide = common dso_local global %struct.patchCollide_s* null, align 8
@debugFacet = common dso_local global %struct.TYPE_17__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CM_TraceThroughPatchCollide(%struct.TYPE_15__* %0, %struct.patchCollide_s* %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.patchCollide_s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca %struct.TYPE_16__*, align 8
  %14 = alloca %struct.TYPE_17__*, align 8
  %15 = alloca [4 x float], align 16
  %16 = alloca [4 x float], align 16
  %17 = alloca float*, align 8
  %18 = alloca float*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store %struct.patchCollide_s* %1, %struct.patchCollide_s** %4, align 8
  %19 = bitcast [4 x float]* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %19, i8 0, i64 16, i1 false)
  %20 = bitcast [4 x float]* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %20, i8 0, i64 16, i1 false)
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 6
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 6
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.patchCollide_s*, %struct.patchCollide_s** %4, align 8
  %32 = getelementptr inbounds %struct.patchCollide_s, %struct.patchCollide_s* %31, i32 0, i32 3
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.patchCollide_s*, %struct.patchCollide_s** %4, align 8
  %37 = getelementptr inbounds %struct.patchCollide_s, %struct.patchCollide_s* %36, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @CM_BoundsIntersect(i32 %25, i32 %30, i32 %35, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %2
  br label %416

44:                                               ; preds = %2
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 5
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %51 = load %struct.patchCollide_s*, %struct.patchCollide_s** %4, align 8
  %52 = call i32 @CM_TracePointThroughPatchCollide(%struct.TYPE_15__* %50, %struct.patchCollide_s* %51)
  br label %416

53:                                               ; preds = %44
  %54 = load %struct.patchCollide_s*, %struct.patchCollide_s** %4, align 8
  %55 = getelementptr inbounds %struct.patchCollide_s, %struct.patchCollide_s* %54, i32 0, i32 2
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %55, align 8
  store %struct.TYPE_17__* %56, %struct.TYPE_17__** %14, align 8
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %411, %53
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.patchCollide_s*, %struct.patchCollide_s** %4, align 8
  %60 = getelementptr inbounds %struct.patchCollide_s, %struct.patchCollide_s* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %416

63:                                               ; preds = %57
  store float -1.000000e+00, float* %10, align 4
  store float 1.000000e+00, float* %11, align 4
  store i32 -1, i32* %8, align 4
  %64 = load %struct.patchCollide_s*, %struct.patchCollide_s** %4, align 8
  %65 = getelementptr inbounds %struct.patchCollide_s, %struct.patchCollide_s* %64, i32 0, i32 1
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %65, align 8
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i64 %69
  store %struct.TYPE_16__* %70, %struct.TYPE_16__** %13, align 8
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 0
  %73 = load float*, float** %72, align 8
  %74 = getelementptr inbounds [4 x float], [4 x float]* %15, i64 0, i64 0
  %75 = call i32 @VectorCopy(float* %73, float* %74)
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 0
  %78 = load float*, float** %77, align 8
  %79 = getelementptr inbounds float, float* %78, i64 3
  %80 = load float, float* %79, align 4
  %81 = getelementptr inbounds [4 x float], [4 x float]* %15, i64 0, i64 3
  store float %80, float* %81, align 4
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 4
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %143

87:                                               ; preds = %63
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = sitofp i64 %91 to float
  %93 = getelementptr inbounds [4 x float], [4 x float]* %15, i64 0, i64 3
  %94 = load float, float* %93, align 4
  %95 = fadd float %94, %92
  store float %95, float* %93, align 4
  %96 = getelementptr inbounds [4 x float], [4 x float]* %15, i64 0, i64 0
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 4
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 0
  %100 = load float*, float** %99, align 8
  %101 = call float @DotProduct(float* %96, float* %100)
  store float %101, float* %12, align 4
  %102 = load float, float* %12, align 4
  %103 = fcmp ogt float %102, 0.000000e+00
  br i1 %103, label %104, label %123

104:                                              ; preds = %87
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 0
  %107 = load float*, float** %106, align 8
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 4
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 0
  %111 = load float*, float** %110, align 8
  %112 = load float*, float** %17, align 8
  %113 = call i32 @VectorSubtract(float* %107, float* %111, float* %112)
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 1
  %116 = load float*, float** %115, align 8
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 4
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 0
  %120 = load float*, float** %119, align 8
  %121 = load float*, float** %18, align 8
  %122 = call i32 @VectorSubtract(float* %116, float* %120, float* %121)
  br label %142

123:                                              ; preds = %87
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 0
  %126 = load float*, float** %125, align 8
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 4
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 0
  %130 = load float*, float** %129, align 8
  %131 = load float*, float** %17, align 8
  %132 = call i32 @VectorAdd(float* %126, float* %130, float* %131)
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 1
  %135 = load float*, float** %134, align 8
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 4
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 0
  %139 = load float*, float** %138, align 8
  %140 = load float*, float** %18, align 8
  %141 = call i32 @VectorAdd(float* %135, float* %139, float* %140)
  br label %142

142:                                              ; preds = %123, %104
  br label %168

143:                                              ; preds = %63
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 2
  %146 = load float**, float*** %145, align 8
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = getelementptr inbounds float*, float** %146, i64 %149
  %151 = load float*, float** %150, align 8
  %152 = getelementptr inbounds [4 x float], [4 x float]* %15, i64 0, i64 0
  %153 = call float @DotProduct(float* %151, float* %152)
  store float %153, float* %9, align 4
  %154 = load float, float* %9, align 4
  %155 = getelementptr inbounds [4 x float], [4 x float]* %15, i64 0, i64 3
  %156 = load float, float* %155, align 4
  %157 = fsub float %156, %154
  store float %157, float* %155, align 4
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 0
  %160 = load float*, float** %159, align 8
  %161 = load float*, float** %17, align 8
  %162 = call i32 @VectorCopy(float* %160, float* %161)
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 1
  %165 = load float*, float** %164, align 8
  %166 = load float*, float** %18, align 8
  %167 = call i32 @VectorCopy(float* %165, float* %166)
  br label %168

168:                                              ; preds = %143, %142
  %169 = getelementptr inbounds [4 x float], [4 x float]* %15, i64 0, i64 0
  %170 = load float*, float** %17, align 8
  %171 = load float*, float** %18, align 8
  %172 = call i32 @CM_CheckFacetPlane(float* %169, float* %170, float* %171, float* %10, float* %11, i32* %7)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %175, label %174

174:                                              ; preds = %168
  br label %411

175:                                              ; preds = %168
  %176 = load i32, i32* %7, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %175
  %179 = getelementptr inbounds [4 x float], [4 x float]* %15, i64 0, i64 0
  %180 = getelementptr inbounds [4 x float], [4 x float]* %16, i64 0, i64 0
  %181 = call i32 @Vector4Copy(float* %179, float* %180)
  br label %182

182:                                              ; preds = %178, %175
  store i32 0, i32* %6, align 4
  br label %183

183:                                              ; preds = %339, %182
  %184 = load i32, i32* %6, align 4
  %185 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %186 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = icmp slt i32 %184, %187
  br i1 %188, label %189, label %342

189:                                              ; preds = %183
  %190 = load %struct.patchCollide_s*, %struct.patchCollide_s** %4, align 8
  %191 = getelementptr inbounds %struct.patchCollide_s, %struct.patchCollide_s* %190, i32 0, i32 1
  %192 = load %struct.TYPE_16__*, %struct.TYPE_16__** %191, align 8
  %193 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %194 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %193, i32 0, i32 2
  %195 = load i64*, i64** %194, align 8
  %196 = load i32, i32* %6, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i64, i64* %195, i64 %197
  %199 = load i64, i64* %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i64 %199
  store %struct.TYPE_16__* %200, %struct.TYPE_16__** %13, align 8
  %201 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %202 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %201, i32 0, i32 3
  %203 = load i64*, i64** %202, align 8
  %204 = load i32, i32* %6, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i64, i64* %203, i64 %205
  %207 = load i64, i64* %206, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %222

209:                                              ; preds = %189
  %210 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %211 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %210, i32 0, i32 0
  %212 = load float*, float** %211, align 8
  %213 = getelementptr inbounds [4 x float], [4 x float]* %15, i64 0, i64 0
  %214 = call i32 @VectorNegate(float* %212, float* %213)
  %215 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %216 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %215, i32 0, i32 0
  %217 = load float*, float** %216, align 8
  %218 = getelementptr inbounds float, float* %217, i64 3
  %219 = load float, float* %218, align 4
  %220 = fneg float %219
  %221 = getelementptr inbounds [4 x float], [4 x float]* %15, i64 0, i64 3
  store float %220, float* %221, align 4
  br label %234

222:                                              ; preds = %189
  %223 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %224 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %223, i32 0, i32 0
  %225 = load float*, float** %224, align 8
  %226 = getelementptr inbounds [4 x float], [4 x float]* %15, i64 0, i64 0
  %227 = call i32 @VectorCopy(float* %225, float* %226)
  %228 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %229 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %228, i32 0, i32 0
  %230 = load float*, float** %229, align 8
  %231 = getelementptr inbounds float, float* %230, i64 3
  %232 = load float, float* %231, align 4
  %233 = getelementptr inbounds [4 x float], [4 x float]* %15, i64 0, i64 3
  store float %232, float* %233, align 4
  br label %234

234:                                              ; preds = %222, %209
  %235 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %236 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %235, i32 0, i32 4
  %237 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %236, i32 0, i32 2
  %238 = load i64, i64* %237, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %296

240:                                              ; preds = %234
  %241 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %242 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %241, i32 0, i32 4
  %243 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %242, i32 0, i32 1
  %244 = load i64, i64* %243, align 8
  %245 = sitofp i64 %244 to float
  %246 = getelementptr inbounds [4 x float], [4 x float]* %15, i64 0, i64 3
  %247 = load float, float* %246, align 4
  %248 = fadd float %247, %245
  store float %248, float* %246, align 4
  %249 = getelementptr inbounds [4 x float], [4 x float]* %15, i64 0, i64 0
  %250 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %251 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %250, i32 0, i32 4
  %252 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %251, i32 0, i32 0
  %253 = load float*, float** %252, align 8
  %254 = call float @DotProduct(float* %249, float* %253)
  store float %254, float* %12, align 4
  %255 = load float, float* %12, align 4
  %256 = fcmp ogt float %255, 0.000000e+00
  br i1 %256, label %257, label %276

257:                                              ; preds = %240
  %258 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %259 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %258, i32 0, i32 0
  %260 = load float*, float** %259, align 8
  %261 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %262 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %261, i32 0, i32 4
  %263 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %262, i32 0, i32 0
  %264 = load float*, float** %263, align 8
  %265 = load float*, float** %17, align 8
  %266 = call i32 @VectorSubtract(float* %260, float* %264, float* %265)
  %267 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %268 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %267, i32 0, i32 1
  %269 = load float*, float** %268, align 8
  %270 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %271 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %270, i32 0, i32 4
  %272 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %271, i32 0, i32 0
  %273 = load float*, float** %272, align 8
  %274 = load float*, float** %18, align 8
  %275 = call i32 @VectorSubtract(float* %269, float* %273, float* %274)
  br label %295

276:                                              ; preds = %240
  %277 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %278 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %277, i32 0, i32 0
  %279 = load float*, float** %278, align 8
  %280 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %281 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %280, i32 0, i32 4
  %282 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %281, i32 0, i32 0
  %283 = load float*, float** %282, align 8
  %284 = load float*, float** %17, align 8
  %285 = call i32 @VectorAdd(float* %279, float* %283, float* %284)
  %286 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %287 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %286, i32 0, i32 1
  %288 = load float*, float** %287, align 8
  %289 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %290 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %289, i32 0, i32 4
  %291 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %290, i32 0, i32 0
  %292 = load float*, float** %291, align 8
  %293 = load float*, float** %18, align 8
  %294 = call i32 @VectorAdd(float* %288, float* %292, float* %293)
  br label %295

295:                                              ; preds = %276, %257
  br label %323

296:                                              ; preds = %234
  %297 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %298 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %297, i32 0, i32 2
  %299 = load float**, float*** %298, align 8
  %300 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %301 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %300, i32 0, i32 1
  %302 = load i64, i64* %301, align 8
  %303 = getelementptr inbounds float*, float** %299, i64 %302
  %304 = load float*, float** %303, align 8
  %305 = getelementptr inbounds [4 x float], [4 x float]* %15, i64 0, i64 0
  %306 = call float @DotProduct(float* %304, float* %305)
  store float %306, float* %9, align 4
  %307 = load float, float* %9, align 4
  %308 = call i64 @fabs(float %307)
  %309 = sitofp i64 %308 to float
  %310 = getelementptr inbounds [4 x float], [4 x float]* %15, i64 0, i64 3
  %311 = load float, float* %310, align 4
  %312 = fadd float %311, %309
  store float %312, float* %310, align 4
  %313 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %314 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %313, i32 0, i32 0
  %315 = load float*, float** %314, align 8
  %316 = load float*, float** %17, align 8
  %317 = call i32 @VectorCopy(float* %315, float* %316)
  %318 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %319 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %318, i32 0, i32 1
  %320 = load float*, float** %319, align 8
  %321 = load float*, float** %18, align 8
  %322 = call i32 @VectorCopy(float* %320, float* %321)
  br label %323

323:                                              ; preds = %296, %295
  %324 = getelementptr inbounds [4 x float], [4 x float]* %15, i64 0, i64 0
  %325 = load float*, float** %17, align 8
  %326 = load float*, float** %18, align 8
  %327 = call i32 @CM_CheckFacetPlane(float* %324, float* %325, float* %326, float* %10, float* %11, i32* %7)
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %330, label %329

329:                                              ; preds = %323
  br label %342

330:                                              ; preds = %323
  %331 = load i32, i32* %7, align 4
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %338

333:                                              ; preds = %330
  %334 = load i32, i32* %6, align 4
  store i32 %334, i32* %8, align 4
  %335 = getelementptr inbounds [4 x float], [4 x float]* %15, i64 0, i64 0
  %336 = getelementptr inbounds [4 x float], [4 x float]* %16, i64 0, i64 0
  %337 = call i32 @Vector4Copy(float* %335, float* %336)
  br label %338

338:                                              ; preds = %333, %330
  br label %339

339:                                              ; preds = %338
  %340 = load i32, i32* %6, align 4
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* %6, align 4
  br label %183

342:                                              ; preds = %329, %183
  %343 = load i32, i32* %6, align 4
  %344 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %345 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %344, i32 0, i32 1
  %346 = load i32, i32* %345, align 8
  %347 = icmp slt i32 %343, %346
  br i1 %347, label %348, label %349

348:                                              ; preds = %342
  br label %411

349:                                              ; preds = %342
  %350 = load i32, i32* %8, align 4
  %351 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %352 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %351, i32 0, i32 1
  %353 = load i32, i32* %352, align 8
  %354 = sub nsw i32 %353, 1
  %355 = icmp eq i32 %350, %354
  br i1 %355, label %356, label %357

356:                                              ; preds = %349
  br label %411

357:                                              ; preds = %349
  %358 = load float, float* %10, align 4
  %359 = load float, float* %11, align 4
  %360 = fcmp olt float %358, %359
  br i1 %360, label %361, label %410

361:                                              ; preds = %357
  %362 = load float, float* %10, align 4
  %363 = fcmp oge float %362, 0.000000e+00
  br i1 %363, label %364, label %410

364:                                              ; preds = %361
  %365 = load float, float* %10, align 4
  %366 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %367 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %366, i32 0, i32 3
  %368 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %367, i32 0, i32 0
  %369 = load float, float* %368, align 8
  %370 = fcmp olt float %365, %369
  br i1 %370, label %371, label %409

371:                                              ; preds = %364
  %372 = load float, float* %10, align 4
  %373 = fcmp olt float %372, 0.000000e+00
  br i1 %373, label %374, label %375

374:                                              ; preds = %371
  store float 0.000000e+00, float* %10, align 4
  br label %375

375:                                              ; preds = %374, %371
  %376 = load %struct.TYPE_18__*, %struct.TYPE_18__** @CM_TraceThroughPatchCollide.cv, align 8
  %377 = icmp ne %struct.TYPE_18__* %376, null
  br i1 %377, label %380, label %378

378:                                              ; preds = %375
  %379 = call %struct.TYPE_18__* @Cvar_Get(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store %struct.TYPE_18__* %379, %struct.TYPE_18__** @CM_TraceThroughPatchCollide.cv, align 8
  br label %380

380:                                              ; preds = %378, %375
  %381 = load %struct.TYPE_18__*, %struct.TYPE_18__** @CM_TraceThroughPatchCollide.cv, align 8
  %382 = icmp ne %struct.TYPE_18__* %381, null
  br i1 %382, label %383, label %391

383:                                              ; preds = %380
  %384 = load %struct.TYPE_18__*, %struct.TYPE_18__** @CM_TraceThroughPatchCollide.cv, align 8
  %385 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %384, i32 0, i32 0
  %386 = load i64, i64* %385, align 8
  %387 = icmp ne i64 %386, 0
  br i1 %387, label %388, label %391

388:                                              ; preds = %383
  %389 = load %struct.patchCollide_s*, %struct.patchCollide_s** %4, align 8
  store %struct.patchCollide_s* %389, %struct.patchCollide_s** @debugPatchCollide, align 8
  %390 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  store %struct.TYPE_17__* %390, %struct.TYPE_17__** @debugFacet, align 8
  br label %391

391:                                              ; preds = %388, %383, %380
  %392 = load float, float* %10, align 4
  %393 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %394 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %393, i32 0, i32 3
  %395 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %394, i32 0, i32 0
  store float %392, float* %395, align 8
  %396 = getelementptr inbounds [4 x float], [4 x float]* %16, i64 0, i64 0
  %397 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %398 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %397, i32 0, i32 3
  %399 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %398, i32 0, i32 1
  %400 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %399, i32 0, i32 0
  %401 = load float*, float** %400, align 8
  %402 = call i32 @VectorCopy(float* %396, float* %401)
  %403 = getelementptr inbounds [4 x float], [4 x float]* %16, i64 0, i64 3
  %404 = load float, float* %403, align 4
  %405 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %406 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %405, i32 0, i32 3
  %407 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %406, i32 0, i32 1
  %408 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %407, i32 0, i32 1
  store float %404, float* %408, align 8
  br label %409

409:                                              ; preds = %391, %364
  br label %410

410:                                              ; preds = %409, %361, %357
  br label %411

411:                                              ; preds = %410, %356, %348, %174
  %412 = load i32, i32* %5, align 4
  %413 = add nsw i32 %412, 1
  store i32 %413, i32* %5, align 4
  %414 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %415 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %414, i32 1
  store %struct.TYPE_17__* %415, %struct.TYPE_17__** %14, align 8
  br label %57

416:                                              ; preds = %43, %49, %57
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @CM_BoundsIntersect(i32, i32, i32, i32) #2

declare dso_local i32 @CM_TracePointThroughPatchCollide(%struct.TYPE_15__*, %struct.patchCollide_s*) #2

declare dso_local i32 @VectorCopy(float*, float*) #2

declare dso_local float @DotProduct(float*, float*) #2

declare dso_local i32 @VectorSubtract(float*, float*, float*) #2

declare dso_local i32 @VectorAdd(float*, float*, float*) #2

declare dso_local i32 @CM_CheckFacetPlane(float*, float*, float*, float*, float*, i32*) #2

declare dso_local i32 @Vector4Copy(float*, float*) #2

declare dso_local i32 @VectorNegate(float*, float*) #2

declare dso_local i64 @fabs(float) #2

declare dso_local %struct.TYPE_18__* @Cvar_Get(i8*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
