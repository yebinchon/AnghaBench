; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_cm_patch.c_CM_DrawDebugSurface.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_cm_patch.c_CM_DrawDebugSurface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i64 }
%struct.TYPE_14__ = type { i32, float**, %struct.TYPE_12__*, %struct.TYPE_15__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32*, i32*, i32 }
%struct.TYPE_13__ = type { i32, float** }

@CM_DrawDebugSurface.cv = internal global %struct.TYPE_16__* null, align 8
@CM_DrawDebugSurface.cv2 = internal global %struct.TYPE_16__* null, align 8
@.str = private unnamed_addr constant [15 x i8] c"r_debugSurface\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@debugPatchCollide = common dso_local global %struct.TYPE_14__* null, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"cm_debugSize\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@qfalse = common dso_local global i32 0, align 4
@vec3_origin = common dso_local global i32 0, align 4
@debugFacet = common dso_local global %struct.TYPE_15__* null, align 8
@.str.4 = private unnamed_addr constant [39 x i8] c"winding chopped away by border planes\0A\00", align 1
@debugBlockPoints = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CM_DrawDebugSurface(void (i32, i32, float*)* %0) #0 {
  %2 = alloca void (i32, i32, float*)*, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [4 x float], align 16
  %15 = alloca float*, align 8
  %16 = alloca float*, align 8
  %17 = alloca float*, align 8
  %18 = alloca float*, align 8
  %19 = alloca [3 x float*], align 16
  store void (i32, i32, float*)* %0, void (i32, i32, float*)** %2, align 8
  store float* inttoptr (i64 -15 to float*), float** %15, align 8
  store float* inttoptr (i64 15 to float*), float** %16, align 8
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** @CM_DrawDebugSurface.cv2, align 8
  %21 = icmp ne %struct.TYPE_16__* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %1
  %23 = call %struct.TYPE_16__* @Cvar_Get(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store %struct.TYPE_16__* %23, %struct.TYPE_16__** @CM_DrawDebugSurface.cv2, align 8
  br label %24

24:                                               ; preds = %22, %1
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** @CM_DrawDebugSurface.cv2, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 1
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load void (i32, i32, float*)*, void (i32, i32, float*)** %2, align 8
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** @CM_DrawDebugSurface.cv2, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @BotDrawDebugPolygons(void (i32, i32, float*)* %30, i32 %33)
  br label %378

35:                                               ; preds = %24
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** @debugPatchCollide, align 8
  %37 = icmp ne %struct.TYPE_14__* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  br label %378

39:                                               ; preds = %35
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** @CM_DrawDebugSurface.cv, align 8
  %41 = icmp ne %struct.TYPE_16__* %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = call %struct.TYPE_16__* @Cvar_Get(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 0)
  store %struct.TYPE_16__* %43, %struct.TYPE_16__** @CM_DrawDebugSurface.cv, align 8
  br label %44

44:                                               ; preds = %42, %39
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** @debugPatchCollide, align 8
  store %struct.TYPE_14__* %45, %struct.TYPE_14__** %3, align 8
  store i32 0, i32* %6, align 4
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 3
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %47, align 8
  store %struct.TYPE_15__* %48, %struct.TYPE_15__** %4, align 8
  br label %49

49:                                               ; preds = %330, %44
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %335

55:                                               ; preds = %49
  store i32 0, i32* %8, align 4
  br label %56

56:                                               ; preds = %326, %55
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 1
  %62 = icmp slt i32 %57, %61
  br i1 %62, label %63, label %329

63:                                               ; preds = %56
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %84

69:                                               ; preds = %63
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %11, align 4
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %13, align 4
  br label %89

84:                                               ; preds = %63
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* @qfalse, align 4
  store i32 %88, i32* %13, align 4
  br label %89

89:                                               ; preds = %84, %69
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 2
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %91, align 8
  %93 = load i32, i32* %11, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds [4 x float], [4 x float]* %14, i64 0, i64 0
  %99 = call i32 @Vector4Copy(i32 %97, float* %98)
  %100 = load i32, i32* %13, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %89
  %103 = load i32, i32* @vec3_origin, align 4
  %104 = getelementptr inbounds [4 x float], [4 x float]* %14, i64 0, i64 0
  %105 = getelementptr inbounds [4 x float], [4 x float]* %14, i64 0, i64 0
  %106 = call i32 @VectorSubtract(i32 %103, float* %104, float* %105)
  %107 = getelementptr inbounds [4 x float], [4 x float]* %14, i64 0, i64 3
  %108 = load float, float* %107, align 4
  %109 = fneg float %108
  %110 = getelementptr inbounds [4 x float], [4 x float]* %14, i64 0, i64 3
  store float %109, float* %110, align 4
  br label %111

111:                                              ; preds = %102, %89
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** @CM_DrawDebugSurface.cv, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = sitofp i64 %114 to float
  %116 = getelementptr inbounds [4 x float], [4 x float]* %14, i64 0, i64 3
  %117 = load float, float* %116, align 4
  %118 = fadd float %117, %115
  store float %118, float* %116, align 4
  store i32 0, i32* %9, align 4
  br label %119

119:                                              ; preds = %149, %111
  %120 = load i32, i32* %9, align 4
  %121 = icmp slt i32 %120, 3
  br i1 %121, label %122, label %152

122:                                              ; preds = %119
  %123 = load i32, i32* %9, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [4 x float], [4 x float]* %14, i64 0, i64 %124
  %126 = load float, float* %125, align 4
  %127 = fcmp ogt float %126, 0.000000e+00
  br i1 %127, label %128, label %138

128:                                              ; preds = %122
  %129 = load float*, float** %16, align 8
  %130 = load i32, i32* %9, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds float, float* %129, i64 %131
  %133 = load float, float* %132, align 4
  %134 = load float*, float** %17, align 8
  %135 = load i32, i32* %9, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds float, float* %134, i64 %136
  store float %133, float* %137, align 4
  br label %148

138:                                              ; preds = %122
  %139 = load float*, float** %15, align 8
  %140 = load i32, i32* %9, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds float, float* %139, i64 %141
  %143 = load float, float* %142, align 4
  %144 = load float*, float** %17, align 8
  %145 = load i32, i32* %9, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds float, float* %144, i64 %146
  store float %143, float* %147, align 4
  br label %148

148:                                              ; preds = %138, %128
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %9, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %9, align 4
  br label %119

152:                                              ; preds = %119
  %153 = getelementptr inbounds [4 x float], [4 x float]* %14, i64 0, i64 0
  %154 = load float*, float** %18, align 8
  %155 = call i32 @VectorNegate(float* %153, float* %154)
  %156 = load float*, float** %17, align 8
  %157 = load float*, float** %18, align 8
  %158 = call i32 @DotProduct(float* %156, float* %157)
  %159 = call i64 @fabs(i32 %158)
  %160 = sitofp i64 %159 to float
  %161 = getelementptr inbounds [4 x float], [4 x float]* %14, i64 0, i64 3
  %162 = load float, float* %161, align 4
  %163 = fadd float %162, %160
  store float %163, float* %161, align 4
  %164 = getelementptr inbounds [4 x float], [4 x float]* %14, i64 0, i64 0
  %165 = getelementptr inbounds [4 x float], [4 x float]* %14, i64 0, i64 3
  %166 = load float, float* %165, align 4
  %167 = call %struct.TYPE_13__* @BaseWindingForPlane(float* %164, float %166)
  store %struct.TYPE_13__* %167, %struct.TYPE_13__** %5, align 8
  store i32 0, i32* %7, align 4
  br label %168

168:                                              ; preds = %290, %152
  %169 = load i32, i32* %7, align 4
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = add nsw i32 %172, 1
  %174 = icmp slt i32 %169, %173
  br i1 %174, label %175, label %178

175:                                              ; preds = %168
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %177 = icmp ne %struct.TYPE_13__* %176, null
  br label %178

178:                                              ; preds = %175, %168
  %179 = phi i1 [ false, %168 ], [ %177, %175 ]
  br i1 %179, label %180, label %293

180:                                              ; preds = %178
  %181 = load i32, i32* %7, align 4
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = icmp slt i32 %181, %184
  br i1 %185, label %186, label %201

186:                                              ; preds = %180
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %187, i32 0, i32 1
  %189 = load i32*, i32** %188, align 8
  %190 = load i32, i32* %7, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  %193 = load i32, i32* %192, align 4
  store i32 %193, i32* %10, align 4
  %194 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %194, i32 0, i32 2
  %196 = load i32*, i32** %195, align 8
  %197 = load i32, i32* %7, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %196, i64 %198
  %200 = load i32, i32* %199, align 4
  store i32 %200, i32* %12, align 4
  br label %206

201:                                              ; preds = %180
  %202 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 8
  store i32 %204, i32* %10, align 4
  %205 = load i32, i32* @qfalse, align 4
  store i32 %205, i32* %12, align 4
  br label %206

206:                                              ; preds = %201, %186
  %207 = load i32, i32* %10, align 4
  %208 = load i32, i32* %11, align 4
  %209 = icmp eq i32 %207, %208
  br i1 %209, label %210, label %211

210:                                              ; preds = %206
  br label %290

211:                                              ; preds = %206
  %212 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %212, i32 0, i32 2
  %214 = load %struct.TYPE_12__*, %struct.TYPE_12__** %213, align 8
  %215 = load i32, i32* %10, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %214, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = getelementptr inbounds [4 x float], [4 x float]* %14, i64 0, i64 0
  %221 = call i32 @Vector4Copy(i32 %219, float* %220)
  %222 = load i32, i32* %12, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %233, label %224

224:                                              ; preds = %211
  %225 = load i32, i32* @vec3_origin, align 4
  %226 = getelementptr inbounds [4 x float], [4 x float]* %14, i64 0, i64 0
  %227 = getelementptr inbounds [4 x float], [4 x float]* %14, i64 0, i64 0
  %228 = call i32 @VectorSubtract(i32 %225, float* %226, float* %227)
  %229 = getelementptr inbounds [4 x float], [4 x float]* %14, i64 0, i64 3
  %230 = load float, float* %229, align 4
  %231 = fneg float %230
  %232 = getelementptr inbounds [4 x float], [4 x float]* %14, i64 0, i64 3
  store float %231, float* %232, align 4
  br label %233

233:                                              ; preds = %224, %211
  %234 = load %struct.TYPE_16__*, %struct.TYPE_16__** @CM_DrawDebugSurface.cv, align 8
  %235 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %234, i32 0, i32 1
  %236 = load i64, i64* %235, align 8
  %237 = sitofp i64 %236 to float
  %238 = getelementptr inbounds [4 x float], [4 x float]* %14, i64 0, i64 3
  %239 = load float, float* %238, align 4
  %240 = fsub float %239, %237
  store float %240, float* %238, align 4
  store i32 0, i32* %9, align 4
  br label %241

241:                                              ; preds = %271, %233
  %242 = load i32, i32* %9, align 4
  %243 = icmp slt i32 %242, 3
  br i1 %243, label %244, label %274

244:                                              ; preds = %241
  %245 = load i32, i32* %9, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds [4 x float], [4 x float]* %14, i64 0, i64 %246
  %248 = load float, float* %247, align 4
  %249 = fcmp ogt float %248, 0.000000e+00
  br i1 %249, label %250, label %260

250:                                              ; preds = %244
  %251 = load float*, float** %16, align 8
  %252 = load i32, i32* %9, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds float, float* %251, i64 %253
  %255 = load float, float* %254, align 4
  %256 = load float*, float** %17, align 8
  %257 = load i32, i32* %9, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds float, float* %256, i64 %258
  store float %255, float* %259, align 4
  br label %270

260:                                              ; preds = %244
  %261 = load float*, float** %15, align 8
  %262 = load i32, i32* %9, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds float, float* %261, i64 %263
  %265 = load float, float* %264, align 4
  %266 = load float*, float** %17, align 8
  %267 = load i32, i32* %9, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds float, float* %266, i64 %268
  store float %265, float* %269, align 4
  br label %270

270:                                              ; preds = %260, %250
  br label %271

271:                                              ; preds = %270
  %272 = load i32, i32* %9, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %9, align 4
  br label %241

274:                                              ; preds = %241
  %275 = getelementptr inbounds [4 x float], [4 x float]* %14, i64 0, i64 0
  %276 = load float*, float** %18, align 8
  %277 = call i32 @VectorNegate(float* %275, float* %276)
  %278 = load float*, float** %17, align 8
  %279 = load float*, float** %18, align 8
  %280 = call i32 @DotProduct(float* %278, float* %279)
  %281 = call i64 @fabs(i32 %280)
  %282 = sitofp i64 %281 to float
  %283 = getelementptr inbounds [4 x float], [4 x float]* %14, i64 0, i64 3
  %284 = load float, float* %283, align 4
  %285 = fsub float %284, %282
  store float %285, float* %283, align 4
  %286 = getelementptr inbounds [4 x float], [4 x float]* %14, i64 0, i64 0
  %287 = getelementptr inbounds [4 x float], [4 x float]* %14, i64 0, i64 3
  %288 = load float, float* %287, align 4
  %289 = call i32 @ChopWindingInPlace(%struct.TYPE_13__** %5, float* %286, float %288, float 0x3FB99999A0000000)
  br label %290

290:                                              ; preds = %274, %210
  %291 = load i32, i32* %7, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %7, align 4
  br label %168

293:                                              ; preds = %178
  %294 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %295 = icmp ne %struct.TYPE_13__* %294, null
  br i1 %295, label %296, label %323

296:                                              ; preds = %293
  %297 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %298 = load %struct.TYPE_15__*, %struct.TYPE_15__** @debugFacet, align 8
  %299 = icmp eq %struct.TYPE_15__* %297, %298
  br i1 %299, label %300, label %310

300:                                              ; preds = %296
  %301 = load void (i32, i32, float*)*, void (i32, i32, float*)** %2, align 8
  %302 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %303 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %306 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %305, i32 0, i32 1
  %307 = load float**, float*** %306, align 8
  %308 = getelementptr inbounds float*, float** %307, i64 0
  %309 = load float*, float** %308, align 8
  call void %301(i32 4, i32 %304, float* %309)
  br label %320

310:                                              ; preds = %296
  %311 = load void (i32, i32, float*)*, void (i32, i32, float*)** %2, align 8
  %312 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %313 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %316 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %315, i32 0, i32 1
  %317 = load float**, float*** %316, align 8
  %318 = getelementptr inbounds float*, float** %317, i64 0
  %319 = load float*, float** %318, align 8
  call void %311(i32 1, i32 %314, float* %319)
  br label %320

320:                                              ; preds = %310, %300
  %321 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %322 = call i32 @FreeWinding(%struct.TYPE_13__* %321)
  br label %325

323:                                              ; preds = %293
  %324 = call i32 @Com_Printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  br label %325

325:                                              ; preds = %323, %320
  br label %326

326:                                              ; preds = %325
  %327 = load i32, i32* %8, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %8, align 4
  br label %56

329:                                              ; preds = %56
  br label %330

330:                                              ; preds = %329
  %331 = load i32, i32* %6, align 4
  %332 = add nsw i32 %331, 1
  store i32 %332, i32* %6, align 4
  %333 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %334 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %333, i32 1
  store %struct.TYPE_15__* %334, %struct.TYPE_15__** %4, align 8
  br label %49

335:                                              ; preds = %49
  %336 = load i32*, i32** @debugBlockPoints, align 8
  %337 = getelementptr inbounds i32, i32* %336, i64 0
  %338 = load i32, i32* %337, align 4
  %339 = getelementptr inbounds [3 x float*], [3 x float*]* %19, i64 0, i64 0
  %340 = load float*, float** %339, align 16
  %341 = call i32 @VectorCopy(i32 %338, float* %340)
  %342 = load i32*, i32** @debugBlockPoints, align 8
  %343 = getelementptr inbounds i32, i32* %342, i64 1
  %344 = load i32, i32* %343, align 4
  %345 = getelementptr inbounds [3 x float*], [3 x float*]* %19, i64 0, i64 1
  %346 = load float*, float** %345, align 8
  %347 = call i32 @VectorCopy(i32 %344, float* %346)
  %348 = load i32*, i32** @debugBlockPoints, align 8
  %349 = getelementptr inbounds i32, i32* %348, i64 2
  %350 = load i32, i32* %349, align 4
  %351 = getelementptr inbounds [3 x float*], [3 x float*]* %19, i64 0, i64 2
  %352 = load float*, float** %351, align 16
  %353 = call i32 @VectorCopy(i32 %350, float* %352)
  %354 = load void (i32, i32, float*)*, void (i32, i32, float*)** %2, align 8
  %355 = getelementptr inbounds [3 x float*], [3 x float*]* %19, i64 0, i64 0
  %356 = load float*, float** %355, align 16
  call void %354(i32 2, i32 3, float* %356)
  %357 = load i32*, i32** @debugBlockPoints, align 8
  %358 = getelementptr inbounds i32, i32* %357, i64 2
  %359 = load i32, i32* %358, align 4
  %360 = getelementptr inbounds [3 x float*], [3 x float*]* %19, i64 0, i64 0
  %361 = load float*, float** %360, align 16
  %362 = call i32 @VectorCopy(i32 %359, float* %361)
  %363 = load i32*, i32** @debugBlockPoints, align 8
  %364 = getelementptr inbounds i32, i32* %363, i64 3
  %365 = load i32, i32* %364, align 4
  %366 = getelementptr inbounds [3 x float*], [3 x float*]* %19, i64 0, i64 1
  %367 = load float*, float** %366, align 8
  %368 = call i32 @VectorCopy(i32 %365, float* %367)
  %369 = load i32*, i32** @debugBlockPoints, align 8
  %370 = getelementptr inbounds i32, i32* %369, i64 0
  %371 = load i32, i32* %370, align 4
  %372 = getelementptr inbounds [3 x float*], [3 x float*]* %19, i64 0, i64 2
  %373 = load float*, float** %372, align 16
  %374 = call i32 @VectorCopy(i32 %371, float* %373)
  %375 = load void (i32, i32, float*)*, void (i32, i32, float*)** %2, align 8
  %376 = getelementptr inbounds [3 x float*], [3 x float*]* %19, i64 0, i64 0
  %377 = load float*, float** %376, align 16
  call void %375(i32 2, i32 3, float* %377)
  br label %378

378:                                              ; preds = %335, %38, %29
  ret void
}

declare dso_local %struct.TYPE_16__* @Cvar_Get(i8*, i8*, i32) #1

declare dso_local i32 @BotDrawDebugPolygons(void (i32, i32, float*)*, i32) #1

declare dso_local i32 @Vector4Copy(i32, float*) #1

declare dso_local i32 @VectorSubtract(i32, float*, float*) #1

declare dso_local i32 @VectorNegate(float*, float*) #1

declare dso_local i64 @fabs(i32) #1

declare dso_local i32 @DotProduct(float*, float*) #1

declare dso_local %struct.TYPE_13__* @BaseWindingForPlane(float*, float) #1

declare dso_local i32 @ChopWindingInPlace(%struct.TYPE_13__**, float*, float, float) #1

declare dso_local i32 @FreeWinding(%struct.TYPE_13__*) #1

declare dso_local i32 @Com_Printf(i8*) #1

declare dso_local i32 @VectorCopy(i32, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
