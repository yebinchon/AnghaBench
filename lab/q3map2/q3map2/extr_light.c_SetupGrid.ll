; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_light.c_SetupGrid.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_light.c_SetupGrid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { float*, float* }
%struct.TYPE_7__ = type { float**, i8** }

@noGridLighting = common dso_local global i64 0, align 8
@entities = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"gridsize\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%f %f %f\00", align 1
@gridSize = common dso_local global float* null, align 8
@MAX_MAP_LIGHTGRID = common dso_local global i32 0, align 4
@numRawGridPoints = common dso_local global i32 0, align 4
@bspModels = common dso_local global %struct.TYPE_8__* null, align 8
@gridMins = common dso_local global float* null, align 8
@gridBounds = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"Grid size = { %1.0f, %1.0f, %1.0f }\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"%.0f %.0f %.0f\00", align 1
@SYS_VRB = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"Storing adjusted grid size\0A\00", align 1
@numBSPGridPoints = common dso_local global i32 0, align 4
@rawGridPoints = common dso_local global %struct.TYPE_7__* null, align 8
@bspGridPoints = common dso_local global %struct.TYPE_7__* null, align 8
@ambientColor = common dso_local global float* null, align 8
@LS_NORMAL = common dso_local global i8* null, align 8
@MAX_LIGHTMAPS = common dso_local global i32 0, align 4
@LS_NONE = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [17 x i8] c"%9d grid points\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SetupGrid() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca float*, align 8
  %4 = alloca float*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [64 x i8], align 16
  %7 = load i64, i64* @noGridLighting, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  br label %306

10:                                               ; preds = %0
  %11 = load i32*, i32** @entities, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = call i8* @ValueForKey(i32* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i8* %13, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %10
  %20 = load i8*, i8** %5, align 8
  %21 = load float*, float** @gridSize, align 8
  %22 = getelementptr inbounds float, float* %21, i64 0
  %23 = load float*, float** @gridSize, align 8
  %24 = getelementptr inbounds float, float* %23, i64 1
  %25 = load float*, float** @gridSize, align 8
  %26 = getelementptr inbounds float, float* %25, i64 2
  %27 = call i32 @sscanf(i8* %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), float* %22, float* %24, float* %26)
  br label %28

28:                                               ; preds = %19, %10
  %29 = load float*, float** @gridSize, align 8
  %30 = load float*, float** %4, align 8
  %31 = call i32 @VectorCopy(float* %29, float* %30)
  store i32 0, i32* %1, align 4
  br label %32

32:                                               ; preds = %56, %28
  %33 = load i32, i32* %1, align 4
  %34 = icmp slt i32 %33, 3
  br i1 %34, label %35, label %59

35:                                               ; preds = %32
  %36 = load float*, float** @gridSize, align 8
  %37 = load i32, i32* %1, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds float, float* %36, i64 %38
  %40 = load float, float* %39, align 4
  %41 = fcmp oge float %40, 8.000000e+00
  br i1 %41, label %42, label %49

42:                                               ; preds = %35
  %43 = load float*, float** @gridSize, align 8
  %44 = load i32, i32* %1, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds float, float* %43, i64 %45
  %47 = load float, float* %46, align 4
  %48 = call float @floor(float %47)
  br label %50

49:                                               ; preds = %35
  br label %50

50:                                               ; preds = %49, %42
  %51 = phi float [ %48, %42 ], [ 8.000000e+00, %49 ]
  %52 = load float*, float** @gridSize, align 8
  %53 = load i32, i32* %1, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds float, float* %52, i64 %54
  store float %51, float* %55, align 4
  br label %56

56:                                               ; preds = %50
  %57 = load i32, i32* %1, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %1, align 4
  br label %32

59:                                               ; preds = %32
  %60 = load i32, i32* @MAX_MAP_LIGHTGRID, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* @numRawGridPoints, align 4
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %171, %59
  %63 = load i32, i32* @numRawGridPoints, align 4
  %64 = load i32, i32* @MAX_MAP_LIGHTGRID, align 4
  %65 = icmp sgt i32 %63, %64
  br i1 %65, label %66, label %172

66:                                               ; preds = %62
  store i32 0, i32* %1, align 4
  br label %67

67:                                               ; preds = %144, %66
  %68 = load i32, i32* %1, align 4
  %69 = icmp slt i32 %68, 3
  br i1 %69, label %70, label %147

70:                                               ; preds = %67
  %71 = load float*, float** @gridSize, align 8
  %72 = load i32, i32* %1, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds float, float* %71, i64 %73
  %75 = load float, float* %74, align 4
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** @bspModels, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i64 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load float*, float** %78, align 8
  %80 = load i32, i32* %1, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds float, float* %79, i64 %81
  %83 = load float, float* %82, align 4
  %84 = load float*, float** @gridSize, align 8
  %85 = load i32, i32* %1, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds float, float* %84, i64 %86
  %88 = load float, float* %87, align 4
  %89 = fdiv float %83, %88
  %90 = call float @ceil(float %89)
  %91 = fmul float %75, %90
  %92 = load float*, float** @gridMins, align 8
  %93 = load i32, i32* %1, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds float, float* %92, i64 %94
  store float %91, float* %95, align 4
  %96 = load float*, float** @gridSize, align 8
  %97 = load i32, i32* %1, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds float, float* %96, i64 %98
  %100 = load float, float* %99, align 4
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** @bspModels, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i64 0
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  %104 = load float*, float** %103, align 8
  %105 = load i32, i32* %1, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds float, float* %104, i64 %106
  %108 = load float, float* %107, align 4
  %109 = load float*, float** @gridSize, align 8
  %110 = load i32, i32* %1, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds float, float* %109, i64 %111
  %113 = load float, float* %112, align 4
  %114 = fdiv float %108, %113
  %115 = call float @floor(float %114)
  %116 = fmul float %100, %115
  %117 = load float*, float** %3, align 8
  %118 = load i32, i32* %1, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds float, float* %117, i64 %119
  store float %116, float* %120, align 4
  %121 = load float*, float** %3, align 8
  %122 = load i32, i32* %1, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds float, float* %121, i64 %123
  %125 = load float, float* %124, align 4
  %126 = load float*, float** @gridMins, align 8
  %127 = load i32, i32* %1, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds float, float* %126, i64 %128
  %130 = load float, float* %129, align 4
  %131 = fsub float %125, %130
  %132 = load float*, float** @gridSize, align 8
  %133 = load i32, i32* %1, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds float, float* %132, i64 %134
  %136 = load float, float* %135, align 4
  %137 = fdiv float %131, %136
  %138 = fadd float %137, 1.000000e+00
  %139 = fptosi float %138 to i32
  %140 = load i32*, i32** @gridBounds, align 8
  %141 = load i32, i32* %1, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  store i32 %139, i32* %143, align 4
  br label %144

144:                                              ; preds = %70
  %145 = load i32, i32* %1, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %1, align 4
  br label %67

147:                                              ; preds = %67
  %148 = load i32*, i32** @gridBounds, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32*, i32** @gridBounds, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 1
  %153 = load i32, i32* %152, align 4
  %154 = mul nsw i32 %150, %153
  %155 = load i32*, i32** @gridBounds, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 2
  %157 = load i32, i32* %156, align 4
  %158 = mul nsw i32 %154, %157
  store i32 %158, i32* @numRawGridPoints, align 4
  %159 = load i32, i32* @numRawGridPoints, align 4
  %160 = load i32, i32* @MAX_MAP_LIGHTGRID, align 4
  %161 = icmp sgt i32 %159, %160
  br i1 %161, label %162, label %171

162:                                              ; preds = %147
  %163 = load float*, float** @gridSize, align 8
  %164 = load i32, i32* %2, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %2, align 4
  %166 = srem i32 %164, 3
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds float, float* %163, i64 %167
  %169 = load float, float* %168, align 4
  %170 = fadd float %169, 1.600000e+01
  store float %170, float* %168, align 4
  br label %171

171:                                              ; preds = %162, %147
  br label %62

172:                                              ; preds = %62
  %173 = load float*, float** @gridSize, align 8
  %174 = getelementptr inbounds float, float* %173, i64 0
  %175 = load float, float* %174, align 4
  %176 = fptosi float %175 to i32
  %177 = load float*, float** @gridSize, align 8
  %178 = getelementptr inbounds float, float* %177, i64 1
  %179 = load float, float* %178, align 4
  %180 = fpext float %179 to double
  %181 = load float*, float** @gridSize, align 8
  %182 = getelementptr inbounds float, float* %181, i64 2
  %183 = load float, float* %182, align 4
  %184 = fpext float %183 to double
  %185 = call i32 (i8*, i32, ...) @Sys_Printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %176, double %180, double %184)
  %186 = load float*, float** @gridSize, align 8
  %187 = load float*, float** %4, align 8
  %188 = call i32 @VectorCompare(float* %186, float* %187)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %208, label %190

190:                                              ; preds = %172
  %191 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %192 = load float*, float** @gridSize, align 8
  %193 = getelementptr inbounds float, float* %192, i64 0
  %194 = load float, float* %193, align 4
  %195 = load float*, float** @gridSize, align 8
  %196 = getelementptr inbounds float, float* %195, i64 1
  %197 = load float, float* %196, align 4
  %198 = load float*, float** @gridSize, align 8
  %199 = getelementptr inbounds float, float* %198, i64 2
  %200 = load float, float* %199, align 4
  %201 = call i32 @sprintf(i8* %191, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), float %194, float %197, float %200)
  %202 = load i32*, i32** @entities, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 0
  %204 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %205 = call i32 @SetKeyValue(i32* %203, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %204)
  %206 = load i32, i32* @SYS_VRB, align 4
  %207 = call i32 @Sys_FPrintf(i32 %206, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %208

208:                                              ; preds = %190, %172
  %209 = load i32, i32* @numRawGridPoints, align 4
  store i32 %209, i32* @numBSPGridPoints, align 4
  %210 = load i32, i32* @numRawGridPoints, align 4
  %211 = sext i32 %210 to i64
  %212 = mul i64 %211, 16
  %213 = trunc i64 %212 to i32
  %214 = call %struct.TYPE_7__* @safe_malloc(i32 %213)
  store %struct.TYPE_7__* %214, %struct.TYPE_7__** @rawGridPoints, align 8
  %215 = load %struct.TYPE_7__*, %struct.TYPE_7__** @rawGridPoints, align 8
  %216 = load i32, i32* @numRawGridPoints, align 4
  %217 = sext i32 %216 to i64
  %218 = mul i64 %217, 16
  %219 = trunc i64 %218 to i32
  %220 = call i32 @memset(%struct.TYPE_7__* %215, i32 0, i32 %219)
  %221 = load %struct.TYPE_7__*, %struct.TYPE_7__** @bspGridPoints, align 8
  %222 = icmp ne %struct.TYPE_7__* %221, null
  br i1 %222, label %223, label %226

223:                                              ; preds = %208
  %224 = load %struct.TYPE_7__*, %struct.TYPE_7__** @bspGridPoints, align 8
  %225 = call i32 @free(%struct.TYPE_7__* %224)
  br label %226

226:                                              ; preds = %223, %208
  %227 = load i32, i32* @numBSPGridPoints, align 4
  %228 = sext i32 %227 to i64
  %229 = mul i64 %228, 16
  %230 = trunc i64 %229 to i32
  %231 = call %struct.TYPE_7__* @safe_malloc(i32 %230)
  store %struct.TYPE_7__* %231, %struct.TYPE_7__** @bspGridPoints, align 8
  %232 = load %struct.TYPE_7__*, %struct.TYPE_7__** @bspGridPoints, align 8
  %233 = load i32, i32* @numBSPGridPoints, align 4
  %234 = sext i32 %233 to i64
  %235 = mul i64 %234, 16
  %236 = trunc i64 %235 to i32
  %237 = call i32 @memset(%struct.TYPE_7__* %232, i32 0, i32 %236)
  store i32 0, i32* %1, align 4
  br label %238

238:                                              ; preds = %300, %226
  %239 = load i32, i32* %1, align 4
  %240 = load i32, i32* @numRawGridPoints, align 4
  %241 = icmp slt i32 %239, %240
  br i1 %241, label %242, label %303

242:                                              ; preds = %238
  %243 = load float*, float** @ambientColor, align 8
  %244 = load %struct.TYPE_7__*, %struct.TYPE_7__** @rawGridPoints, align 8
  %245 = load i32, i32* %1, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %244, i64 %246
  %248 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %247, i32 0, i32 0
  %249 = load float**, float*** %248, align 8
  %250 = load i32, i32* %2, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds float*, float** %249, i64 %251
  %253 = load float*, float** %252, align 8
  %254 = call i32 @VectorCopy(float* %243, float* %253)
  %255 = load i8*, i8** @LS_NORMAL, align 8
  %256 = load %struct.TYPE_7__*, %struct.TYPE_7__** @rawGridPoints, align 8
  %257 = load i32, i32* %1, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %256, i64 %258
  %260 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %259, i32 0, i32 1
  %261 = load i8**, i8*** %260, align 8
  %262 = getelementptr inbounds i8*, i8** %261, i64 0
  store i8* %255, i8** %262, align 8
  %263 = load i8*, i8** @LS_NORMAL, align 8
  %264 = load %struct.TYPE_7__*, %struct.TYPE_7__** @bspGridPoints, align 8
  %265 = load i32, i32* %1, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %264, i64 %266
  %268 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %267, i32 0, i32 1
  %269 = load i8**, i8*** %268, align 8
  %270 = getelementptr inbounds i8*, i8** %269, i64 0
  store i8* %263, i8** %270, align 8
  store i32 1, i32* %2, align 4
  br label %271

271:                                              ; preds = %296, %242
  %272 = load i32, i32* %2, align 4
  %273 = load i32, i32* @MAX_LIGHTMAPS, align 4
  %274 = icmp slt i32 %272, %273
  br i1 %274, label %275, label %299

275:                                              ; preds = %271
  %276 = load i8*, i8** @LS_NONE, align 8
  %277 = load %struct.TYPE_7__*, %struct.TYPE_7__** @rawGridPoints, align 8
  %278 = load i32, i32* %1, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %277, i64 %279
  %281 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %280, i32 0, i32 1
  %282 = load i8**, i8*** %281, align 8
  %283 = load i32, i32* %2, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i8*, i8** %282, i64 %284
  store i8* %276, i8** %285, align 8
  %286 = load i8*, i8** @LS_NONE, align 8
  %287 = load %struct.TYPE_7__*, %struct.TYPE_7__** @bspGridPoints, align 8
  %288 = load i32, i32* %1, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %287, i64 %289
  %291 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %290, i32 0, i32 1
  %292 = load i8**, i8*** %291, align 8
  %293 = load i32, i32* %2, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i8*, i8** %292, i64 %294
  store i8* %286, i8** %295, align 8
  br label %296

296:                                              ; preds = %275
  %297 = load i32, i32* %2, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %2, align 4
  br label %271

299:                                              ; preds = %271
  br label %300

300:                                              ; preds = %299
  %301 = load i32, i32* %1, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %1, align 4
  br label %238

303:                                              ; preds = %238
  %304 = load i32, i32* @numRawGridPoints, align 4
  %305 = call i32 (i8*, i32, ...) @Sys_Printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %304)
  br label %306

306:                                              ; preds = %303, %9
  ret void
}

declare dso_local i8* @ValueForKey(i32*, i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, float*, float*, float*) #1

declare dso_local i32 @VectorCopy(float*, float*) #1

declare dso_local float @floor(float) #1

declare dso_local float @ceil(float) #1

declare dso_local i32 @Sys_Printf(i8*, i32, ...) #1

declare dso_local i32 @VectorCompare(float*, float*) #1

declare dso_local i32 @sprintf(i8*, i8*, float, float, float) #1

declare dso_local i32 @SetKeyValue(i32*, i8*, i8*) #1

declare dso_local i32 @Sys_FPrintf(i32, i8*) #1

declare dso_local %struct.TYPE_7__* @safe_malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
