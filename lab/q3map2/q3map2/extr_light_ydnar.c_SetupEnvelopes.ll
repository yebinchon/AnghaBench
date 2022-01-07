; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_light_ydnar.c_SetupEnvelopes.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_light_ydnar.c_SetupEnvelopes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { float, float, i32, i64, i64, float, i64*, i64*, i64*, i64*, float, float, i32, i64, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_11__ = type { i64, i64*, i64* }

@lights = common dso_local global %struct.TYPE_10__* null, align 8
@SYS_VRB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"--- SetupEnvelopes%s ---\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c" (fast)\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@numLights = common dso_local global i64 0, align 8
@numCulledLights = common dso_local global i64 0, align 8
@LIGHT_NEGATIVE = common dso_local global i32 0, align 4
@EMIT_SUN = common dso_local global i64 0, align 8
@MAX_WORLD_COORD = common dso_local global float 0.000000e+00, align 4
@MIN_WORLD_COORD = common dso_local global float 0.000000e+00, align 4
@LIGHT_EPSILON = common dso_local global i32 0, align 4
@LIGHT_NUDGE = common dso_local global i32 0, align 4
@LIGHT_FAST_TEMP = common dso_local global i32 0, align 4
@LIGHT_FAST = common dso_local global i32 0, align 4
@exactPointToPolygon = common dso_local global i64 0, align 8
@EMIT_AREA = common dso_local global i64 0, align 8
@LIGHT_ATTEN_DISTANCE = common dso_local global i32 0, align 4
@LIGHT_ATTEN_LINEAR = common dso_local global i32 0, align 4
@linearScale = common dso_local global float 0.000000e+00, align 4
@numBSPLeafs = common dso_local global i32 0, align 4
@bspLeafs = common dso_local global %struct.TYPE_11__* null, align 8
@qfalse = common dso_local global i64 0, align 8
@EMIT_SPOT = common dso_local global i64 0, align 8
@LIGHT_GRID = common dso_local global i32 0, align 4
@LIGHT_SURFACES = common dso_local global i32 0, align 4
@LS_NORMAL = common dso_local global i64 0, align 8
@qtrue = common dso_local global i32 0, align 4
@noCollapse = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"%9d total lights\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"%9d culled lights\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SetupEnvelopes(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca %struct.TYPE_10__**, align 8
  %15 = alloca %struct.TYPE_11__*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i64*, align 8
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca [256 x %struct.TYPE_10__*], align 16
  %23 = alloca float, align 4
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** @lights, align 8
  %25 = icmp eq %struct.TYPE_10__* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  br label %716

27:                                               ; preds = %2
  %28 = load i32, i32* @SYS_VRB, align 4
  %29 = load i64, i64* %4, align 8
  %30 = icmp ne i64 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %33 = call i32 @Sys_FPrintf(i32 %28, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %32)
  store i64 0, i64* @numLights, align 8
  store i64 0, i64* @numCulledLights, align 8
  store %struct.TYPE_10__** @lights, %struct.TYPE_10__*** %14, align 8
  br label %34

34:                                               ; preds = %636, %632, %27
  %35 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %14, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  %37 = icmp ne %struct.TYPE_10__* %36, null
  br i1 %37, label %38, label %652

38:                                               ; preds = %34
  %39 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %14, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  store %struct.TYPE_10__* %40, %struct.TYPE_10__** %12, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load float, float* %42, align 8
  %44 = fcmp olt float %43, 0.000000e+00
  br i1 %44, label %50, label %45

45:                                               ; preds = %38
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = load float, float* %47, align 4
  %49 = fcmp olt float %48, 0.000000e+00
  br i1 %49, label %50, label %64

50:                                               ; preds = %45, %38
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load float, float* %52, align 8
  %54 = fmul float %53, -1.000000e+00
  store float %54, float* %52, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = load float, float* %56, align 4
  %58 = fmul float %57, -1.000000e+00
  store float %58, float* %56, align 4
  %59 = load i32, i32* @LIGHT_NEGATIVE, align 4
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 8
  br label %64

64:                                               ; preds = %50, %45
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @EMIT_SUN, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %97

70:                                               ; preds = %64
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 4
  store i64 0, i64* %72, align 8
  %73 = load float, float* @MAX_WORLD_COORD, align 4
  %74 = fmul float %73, 8.000000e+00
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 5
  store float %74, float* %76, align 8
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 6
  %79 = load i64*, i64** %78, align 8
  %80 = load float, float* @MIN_WORLD_COORD, align 4
  %81 = fmul float %80, 8.000000e+00
  %82 = load float, float* @MIN_WORLD_COORD, align 4
  %83 = fmul float %82, 8.000000e+00
  %84 = load float, float* @MIN_WORLD_COORD, align 4
  %85 = fmul float %84, 8.000000e+00
  %86 = call i32 @VectorSet(i64* %79, float %81, float %83, float %85)
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 7
  %89 = load i64*, i64** %88, align 8
  %90 = load float, float* @MAX_WORLD_COORD, align 4
  %91 = fmul float %90, 8.000000e+00
  %92 = load float, float* @MAX_WORLD_COORD, align 4
  %93 = fmul float %92, 8.000000e+00
  %94 = load float, float* @MAX_WORLD_COORD, align 4
  %95 = fmul float %94, 8.000000e+00
  %96 = call i32 @VectorSet(i64* %89, float %91, float %93, float %95)
  br label %636

97:                                               ; preds = %64
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 8
  %100 = load i64*, i64** %99, align 8
  %101 = load i32, i32* @LIGHT_EPSILON, align 4
  %102 = call i8* @ClusterForPointExt(i64* %100, i32 %101)
  %103 = ptrtoint i8* %102 to i64
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 4
  store i64 %103, i64* %105, align 8
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 4
  %108 = load i64, i64* %107, align 8
  %109 = icmp slt i64 %108, 0
  br i1 %109, label %110, label %221

110:                                              ; preds = %97
  store i32 0, i32* %6, align 4
  br label %111

111:                                              ; preds = %217, %110
  %112 = load i32, i32* %6, align 4
  %113 = icmp slt i32 %112, 4
  br i1 %113, label %114, label %220

114:                                              ; preds = %111
  %115 = load i32, i32* %6, align 4
  %116 = ashr i32 %115, 1
  %117 = load i32, i32* %6, align 4
  %118 = and i32 %117, 1
  %119 = icmp ne i32 %118, 0
  %120 = zext i1 %119 to i64
  %121 = select i1 %119, i32 -1, i32 0
  %122 = xor i32 %116, %121
  %123 = load i32, i32* %6, align 4
  %124 = and i32 %123, 1
  %125 = add nsw i32 %122, %124
  store i32 %125, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %126

126:                                              ; preds = %213, %114
  %127 = load i32, i32* %7, align 4
  %128 = icmp slt i32 %127, 4
  br i1 %128, label %129, label %216

129:                                              ; preds = %126
  %130 = load i32, i32* %7, align 4
  %131 = ashr i32 %130, 1
  %132 = load i32, i32* %7, align 4
  %133 = and i32 %132, 1
  %134 = icmp ne i32 %133, 0
  %135 = zext i1 %134 to i64
  %136 = select i1 %134, i32 -1, i32 0
  %137 = xor i32 %131, %136
  %138 = load i32, i32* %7, align 4
  %139 = and i32 %138, 1
  %140 = add nsw i32 %137, %139
  store i32 %140, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %141

141:                                              ; preds = %209, %129
  %142 = load i32, i32* %8, align 4
  %143 = icmp slt i32 %142, 4
  br i1 %143, label %144, label %212

144:                                              ; preds = %141
  %145 = load i32, i32* %8, align 4
  %146 = ashr i32 %145, 1
  %147 = load i32, i32* %8, align 4
  %148 = and i32 %147, 1
  %149 = icmp ne i32 %148, 0
  %150 = zext i1 %149 to i64
  %151 = select i1 %149, i32 -1, i32 0
  %152 = xor i32 %146, %151
  %153 = load i32, i32* %8, align 4
  %154 = and i32 %153, 1
  %155 = add nsw i32 %152, %154
  store i32 %155, i32* %11, align 4
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 8
  %158 = load i64*, i64** %157, align 8
  %159 = getelementptr inbounds i64, i64* %158, i64 0
  %160 = load i64, i64* %159, align 8
  %161 = load i32, i32* @LIGHT_NUDGE, align 4
  %162 = load i32, i32* %9, align 4
  %163 = mul nsw i32 %161, %162
  %164 = sext i32 %163 to i64
  %165 = add nsw i64 %160, %164
  %166 = load i64*, i64** %16, align 8
  %167 = getelementptr inbounds i64, i64* %166, i64 0
  store i64 %165, i64* %167, align 8
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 8
  %170 = load i64*, i64** %169, align 8
  %171 = getelementptr inbounds i64, i64* %170, i64 1
  %172 = load i64, i64* %171, align 8
  %173 = load i32, i32* @LIGHT_NUDGE, align 4
  %174 = load i32, i32* %10, align 4
  %175 = mul nsw i32 %173, %174
  %176 = sext i32 %175 to i64
  %177 = add nsw i64 %172, %176
  %178 = load i64*, i64** %16, align 8
  %179 = getelementptr inbounds i64, i64* %178, i64 1
  store i64 %177, i64* %179, align 8
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 8
  %182 = load i64*, i64** %181, align 8
  %183 = getelementptr inbounds i64, i64* %182, i64 2
  %184 = load i64, i64* %183, align 8
  %185 = load i32, i32* @LIGHT_NUDGE, align 4
  %186 = load i32, i32* %11, align 4
  %187 = mul nsw i32 %185, %186
  %188 = sext i32 %187 to i64
  %189 = add nsw i64 %184, %188
  %190 = load i64*, i64** %16, align 8
  %191 = getelementptr inbounds i64, i64* %190, i64 2
  store i64 %189, i64* %191, align 8
  %192 = load i64*, i64** %16, align 8
  %193 = load i32, i32* @LIGHT_EPSILON, align 4
  %194 = call i8* @ClusterForPointExt(i64* %192, i32 %193)
  %195 = ptrtoint i8* %194 to i64
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i32 0, i32 4
  store i64 %195, i64* %197, align 8
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 4
  %200 = load i64, i64* %199, align 8
  %201 = icmp slt i64 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %144
  br label %209

203:                                              ; preds = %144
  %204 = load i64*, i64** %16, align 8
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 8
  %207 = load i64*, i64** %206, align 8
  %208 = call i32 @VectorCopy(i64* %204, i64* %207)
  br label %209

209:                                              ; preds = %203, %202
  %210 = load i32, i32* %8, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %8, align 4
  br label %141

212:                                              ; preds = %141
  br label %213

213:                                              ; preds = %212
  %214 = load i32, i32* %7, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %7, align 4
  br label %126

216:                                              ; preds = %126
  br label %217

217:                                              ; preds = %216
  %218 = load i32, i32* %6, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %6, align 4
  br label %111

220:                                              ; preds = %111
  br label %221

221:                                              ; preds = %220, %97
  %222 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 4
  %224 = load i64, i64* %223, align 8
  %225 = icmp sge i64 %224, 0
  br i1 %225, label %226, label %606

226:                                              ; preds = %221
  %227 = load i64, i64* %4, align 8
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %235

229:                                              ; preds = %226
  %230 = load i32, i32* @LIGHT_FAST_TEMP, align 4
  %231 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %232 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 8
  %234 = or i32 %233, %230
  store i32 %234, i32* %232, align 8
  br label %242

235:                                              ; preds = %226
  %236 = load i32, i32* @LIGHT_FAST_TEMP, align 4
  %237 = xor i32 %236, -1
  %238 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %239 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 8
  %241 = and i32 %240, %237
  store i32 %241, i32* %239, align 8
  br label %242

242:                                              ; preds = %235, %229
  %243 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %244 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %243, i32 0, i32 16
  %245 = load %struct.TYPE_9__*, %struct.TYPE_9__** %244, align 8
  %246 = icmp ne %struct.TYPE_9__* %245, null
  br i1 %246, label %247, label %263

247:                                              ; preds = %242
  %248 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %249 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %248, i32 0, i32 16
  %250 = load %struct.TYPE_9__*, %struct.TYPE_9__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %263

254:                                              ; preds = %247
  %255 = load i32, i32* @LIGHT_FAST, align 4
  %256 = load i32, i32* @LIGHT_FAST_TEMP, align 4
  %257 = or i32 %255, %256
  %258 = xor i32 %257, -1
  %259 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %260 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %259, i32 0, i32 2
  %261 = load i32, i32* %260, align 8
  %262 = and i32 %261, %258
  store i32 %262, i32* %260, align 8
  br label %263

263:                                              ; preds = %254, %247, %242
  %264 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %265 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %264, i32 0, i32 5
  store float 0.000000e+00, float* %265, align 8
  %266 = load i64, i64* @exactPointToPolygon, align 8
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %354

268:                                              ; preds = %263
  %269 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %270 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %269, i32 0, i32 3
  %271 = load i64, i64* %270, align 8
  %272 = load i64, i64* @EMIT_AREA, align 8
  %273 = icmp eq i64 %271, %272
  br i1 %273, label %274, label %354

274:                                              ; preds = %268
  %275 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %276 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %275, i32 0, i32 15
  %277 = load %struct.TYPE_10__*, %struct.TYPE_10__** %276, align 8
  %278 = icmp ne %struct.TYPE_10__* %277, null
  br i1 %278, label %279, label %354

279:                                              ; preds = %274
  %280 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %281 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %280, i32 0, i32 9
  %282 = load i64*, i64** %281, align 8
  %283 = load i64*, i64** %17, align 8
  %284 = call i32 @VectorScale(i64* %282, i32 -1, i64* %283)
  store float 1.000000e+02, float* %20, align 4
  br label %285

285:                                              ; preds = %331, %279
  %286 = load float, float* %20, align 4
  %287 = fcmp olt float %286, 1.300000e+05
  br i1 %287, label %288, label %293

288:                                              ; preds = %285
  %289 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %290 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %289, i32 0, i32 5
  %291 = load float, float* %290, align 8
  %292 = fcmp oeq float %291, 0.000000e+00
  br label %293

293:                                              ; preds = %288, %285
  %294 = phi i1 [ false, %285 ], [ %292, %288 ]
  br i1 %294, label %295, label %334

295:                                              ; preds = %293
  %296 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %297 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %296, i32 0, i32 8
  %298 = load i64*, i64** %297, align 8
  %299 = load float, float* %20, align 4
  %300 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %301 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %300, i32 0, i32 9
  %302 = load i64*, i64** %301, align 8
  %303 = load i64*, i64** %16, align 8
  %304 = call i32 @VectorMA(i64* %298, float %299, i64* %302, i64* %303)
  %305 = load i64*, i64** %16, align 8
  %306 = load i64*, i64** %17, align 8
  %307 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %308 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %307, i32 0, i32 15
  %309 = load %struct.TYPE_10__*, %struct.TYPE_10__** %308, align 8
  %310 = call float @PointToPolygonFormFactor(i64* %305, i64* %306, %struct.TYPE_10__* %309)
  store float %310, float* %23, align 4
  %311 = load float, float* %23, align 4
  %312 = fcmp olt float %311, 0.000000e+00
  br i1 %312, label %313, label %316

313:                                              ; preds = %295
  %314 = load float, float* %23, align 4
  %315 = fmul float %314, -1.000000e+00
  store float %315, float* %23, align 4
  br label %316

316:                                              ; preds = %313, %295
  %317 = load float, float* %23, align 4
  %318 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %319 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %318, i32 0, i32 1
  %320 = load float, float* %319, align 4
  %321 = fmul float %317, %320
  %322 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %323 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %322, i32 0, i32 10
  %324 = load float, float* %323, align 8
  %325 = fcmp ole float %321, %324
  br i1 %325, label %326, label %330

326:                                              ; preds = %316
  %327 = load float, float* %20, align 4
  %328 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %329 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %328, i32 0, i32 5
  store float %327, float* %329, align 8
  br label %330

330:                                              ; preds = %326, %316
  br label %331

331:                                              ; preds = %330
  %332 = load float, float* %20, align 4
  %333 = fadd float %332, 1.000000e+01
  store float %333, float* %20, align 4
  br label %285

334:                                              ; preds = %293
  %335 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %336 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %335, i32 0, i32 2
  %337 = load i32, i32* %336, align 8
  %338 = load i32, i32* @LIGHT_FAST, align 4
  %339 = and i32 %337, %338
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %353, label %341

341:                                              ; preds = %334
  %342 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %343 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %342, i32 0, i32 2
  %344 = load i32, i32* %343, align 8
  %345 = load i32, i32* @LIGHT_FAST_TEMP, align 4
  %346 = and i32 %344, %345
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %353, label %348

348:                                              ; preds = %341
  %349 = load float, float* @MAX_WORLD_COORD, align 4
  %350 = fmul float %349, 8.000000e+00
  %351 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %352 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %351, i32 0, i32 5
  store float %350, float* %352, align 8
  br label %353

353:                                              ; preds = %348, %341, %334
  br label %358

354:                                              ; preds = %274, %268, %263
  store float 0.000000e+00, float* %20, align 4
  %355 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %356 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %355, i32 0, i32 0
  %357 = load float, float* %356, align 8
  store float %357, float* %21, align 4
  br label %358

358:                                              ; preds = %354, %353
  %359 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %360 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %359, i32 0, i32 5
  %361 = load float, float* %360, align 8
  %362 = fcmp ole float %361, 0.000000e+00
  br i1 %362, label %363, label %409

363:                                              ; preds = %358
  %364 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %365 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %364, i32 0, i32 2
  %366 = load i32, i32* %365, align 8
  %367 = load i32, i32* @LIGHT_ATTEN_DISTANCE, align 4
  %368 = and i32 %366, %367
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %375, label %370

370:                                              ; preds = %363
  %371 = load float, float* @MAX_WORLD_COORD, align 4
  %372 = fmul float %371, 8.000000e+00
  %373 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %374 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %373, i32 0, i32 5
  store float %372, float* %374, align 8
  br label %408

375:                                              ; preds = %363
  %376 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %377 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %376, i32 0, i32 2
  %378 = load i32, i32* %377, align 8
  %379 = load i32, i32* @LIGHT_ATTEN_LINEAR, align 4
  %380 = and i32 %378, %379
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %382, label %396

382:                                              ; preds = %375
  %383 = load float, float* %21, align 4
  %384 = load float, float* @linearScale, align 4
  %385 = fmul float %383, %384
  %386 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %387 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %386, i32 0, i32 10
  %388 = load float, float* %387, align 8
  %389 = fsub float %385, %388
  %390 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %391 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %390, i32 0, i32 11
  %392 = load float, float* %391, align 4
  %393 = fdiv float %389, %392
  %394 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %395 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %394, i32 0, i32 5
  store float %393, float* %395, align 8
  br label %407

396:                                              ; preds = %375
  %397 = load float, float* %21, align 4
  %398 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %399 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %398, i32 0, i32 10
  %400 = load float, float* %399, align 8
  %401 = fdiv float %397, %400
  %402 = call float @sqrt(float %401)
  %403 = load float, float* %20, align 4
  %404 = fadd float %402, %403
  %405 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %406 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %405, i32 0, i32 5
  store float %404, float* %406, align 8
  br label %407

407:                                              ; preds = %396, %382
  br label %408

408:                                              ; preds = %407, %370
  br label %409

409:                                              ; preds = %408, %358
  %410 = load i64*, i64** %18, align 8
  %411 = load i64*, i64** %19, align 8
  %412 = call i32 @ClearBounds(i64* %410, i64* %411)
  store i32 0, i32* %5, align 4
  br label %413

413:                                              ; preds = %457, %409
  %414 = load i32, i32* %5, align 4
  %415 = load i32, i32* @numBSPLeafs, align 4
  %416 = icmp slt i32 %414, %415
  br i1 %416, label %417, label %460

417:                                              ; preds = %413
  %418 = load %struct.TYPE_11__*, %struct.TYPE_11__** @bspLeafs, align 8
  %419 = load i32, i32* %5, align 4
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %418, i64 %420
  store %struct.TYPE_11__* %421, %struct.TYPE_11__** %15, align 8
  %422 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %423 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %422, i32 0, i32 0
  %424 = load i64, i64* %423, align 8
  %425 = icmp slt i64 %424, 0
  br i1 %425, label %426, label %427

426:                                              ; preds = %417
  br label %457

427:                                              ; preds = %417
  %428 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %429 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %428, i32 0, i32 4
  %430 = load i64, i64* %429, align 8
  %431 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %432 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %431, i32 0, i32 0
  %433 = load i64, i64* %432, align 8
  %434 = call i64 @ClusterVisible(i64 %430, i64 %433)
  %435 = load i64, i64* @qfalse, align 8
  %436 = icmp eq i64 %434, %435
  br i1 %436, label %437, label %438

437:                                              ; preds = %427
  br label %457

438:                                              ; preds = %427
  %439 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %440 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %439, i32 0, i32 1
  %441 = load i64*, i64** %440, align 8
  %442 = load i64*, i64** %16, align 8
  %443 = call i32 @VectorCopy(i64* %441, i64* %442)
  %444 = load i64*, i64** %16, align 8
  %445 = load i64*, i64** %18, align 8
  %446 = load i64*, i64** %19, align 8
  %447 = call i32 @AddPointToBounds(i64* %444, i64* %445, i64* %446)
  %448 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %449 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %448, i32 0, i32 2
  %450 = load i64*, i64** %449, align 8
  %451 = load i64*, i64** %16, align 8
  %452 = call i32 @VectorCopy(i64* %450, i64* %451)
  %453 = load i64*, i64** %16, align 8
  %454 = load i64*, i64** %18, align 8
  %455 = load i64*, i64** %19, align 8
  %456 = call i32 @AddPointToBounds(i64* %453, i64* %454, i64* %455)
  br label %457

457:                                              ; preds = %438, %437, %426
  %458 = load i32, i32* %5, align 4
  %459 = add nsw i32 %458, 1
  store i32 %459, i32* %5, align 4
  br label %413

460:                                              ; preds = %413
  store i32 0, i32* %5, align 4
  br label %461

461:                                              ; preds = %500, %460
  %462 = load i32, i32* %5, align 4
  %463 = icmp slt i32 %462, 3
  br i1 %463, label %464, label %503

464:                                              ; preds = %461
  %465 = load i64*, i64** %18, align 8
  %466 = load i32, i32* %5, align 4
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds i64, i64* %465, i64 %467
  %469 = load i64, i64* %468, align 8
  %470 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %471 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %470, i32 0, i32 8
  %472 = load i64*, i64** %471, align 8
  %473 = load i32, i32* %5, align 4
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds i64, i64* %472, i64 %474
  %476 = load i64, i64* %475, align 8
  %477 = icmp sgt i64 %469, %476
  br i1 %477, label %492, label %478

478:                                              ; preds = %464
  %479 = load i64*, i64** %19, align 8
  %480 = load i32, i32* %5, align 4
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds i64, i64* %479, i64 %481
  %483 = load i64, i64* %482, align 8
  %484 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %485 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %484, i32 0, i32 8
  %486 = load i64*, i64** %485, align 8
  %487 = load i32, i32* %5, align 4
  %488 = sext i32 %487 to i64
  %489 = getelementptr inbounds i64, i64* %486, i64 %488
  %490 = load i64, i64* %489, align 8
  %491 = icmp slt i64 %483, %490
  br i1 %491, label %492, label %499

492:                                              ; preds = %478, %464
  %493 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %494 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %493, i32 0, i32 8
  %495 = load i64*, i64** %494, align 8
  %496 = load i64*, i64** %18, align 8
  %497 = load i64*, i64** %19, align 8
  %498 = call i32 @AddPointToBounds(i64* %495, i64* %496, i64* %497)
  br label %499

499:                                              ; preds = %492, %478
  br label %500

500:                                              ; preds = %499
  %501 = load i32, i32* %5, align 4
  %502 = add nsw i32 %501, 1
  store i32 %502, i32* %5, align 4
  br label %461

503:                                              ; preds = %461
  %504 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %505 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %504, i32 0, i32 3
  %506 = load i64, i64* %505, align 8
  %507 = load i64, i64* @EMIT_AREA, align 8
  %508 = icmp eq i64 %506, %507
  br i1 %508, label %515, label %509

509:                                              ; preds = %503
  %510 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %511 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %510, i32 0, i32 3
  %512 = load i64, i64* %511, align 8
  %513 = load i64, i64* @EMIT_SPOT, align 8
  %514 = icmp eq i64 %512, %513
  br i1 %514, label %515, label %525

515:                                              ; preds = %509, %503
  %516 = load i64*, i64** %18, align 8
  %517 = load i64*, i64** %19, align 8
  %518 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %519 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %518, i32 0, i32 8
  %520 = load i64*, i64** %519, align 8
  %521 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %522 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %521, i32 0, i32 9
  %523 = load i64*, i64** %522, align 8
  %524 = call i32 @ChopBounds(i64* %516, i64* %517, i64* %520, i64* %523)
  br label %525

525:                                              ; preds = %515, %509
  %526 = load i64*, i64** %18, align 8
  %527 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %528 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %527, i32 0, i32 6
  %529 = load i64*, i64** %528, align 8
  %530 = call i32 @VectorCopy(i64* %526, i64* %529)
  %531 = load i64*, i64** %19, align 8
  %532 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %533 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %532, i32 0, i32 7
  %534 = load i64*, i64** %533, align 8
  %535 = call i32 @VectorCopy(i64* %531, i64* %534)
  %536 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %537 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %536, i32 0, i32 8
  %538 = load i64*, i64** %537, align 8
  %539 = load i64*, i64** %16, align 8
  %540 = call i32 @VectorScale(i64* %538, i32 2, i64* %539)
  %541 = load i64*, i64** %16, align 8
  %542 = load i64*, i64** %19, align 8
  %543 = load i64*, i64** %16, align 8
  %544 = call i32 @VectorSubtract(i64* %541, i64* %542, i64* %543)
  %545 = load i64*, i64** %16, align 8
  %546 = load i64*, i64** %18, align 8
  %547 = load i64*, i64** %19, align 8
  %548 = call i32 @AddPointToBounds(i64* %545, i64* %546, i64* %547)
  %549 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %550 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %549, i32 0, i32 8
  %551 = load i64*, i64** %550, align 8
  %552 = load i64*, i64** %16, align 8
  %553 = call i32 @VectorScale(i64* %551, i32 2, i64* %552)
  %554 = load i64*, i64** %16, align 8
  %555 = load i64*, i64** %18, align 8
  %556 = load i64*, i64** %16, align 8
  %557 = call i32 @VectorSubtract(i64* %554, i64* %555, i64* %556)
  %558 = load i64*, i64** %16, align 8
  %559 = load i64*, i64** %18, align 8
  %560 = load i64*, i64** %19, align 8
  %561 = call i32 @AddPointToBounds(i64* %558, i64* %559, i64* %560)
  %562 = load i64*, i64** %19, align 8
  %563 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %564 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %563, i32 0, i32 8
  %565 = load i64*, i64** %564, align 8
  %566 = load i64*, i64** %17, align 8
  %567 = call i32 @VectorSubtract(i64* %562, i64* %565, i64* %566)
  %568 = load i64*, i64** %17, align 8
  %569 = call i64 @VectorLength(i64* %568)
  %570 = sitofp i64 %569 to float
  store float %570, float* %20, align 4
  %571 = load float, float* %20, align 4
  %572 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %573 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %572, i32 0, i32 5
  %574 = load float, float* %573, align 8
  %575 = fcmp olt float %571, %574
  br i1 %575, label %576, label %580

576:                                              ; preds = %525
  %577 = load float, float* %20, align 4
  %578 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %579 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %578, i32 0, i32 5
  store float %577, float* %579, align 8
  br label %580

580:                                              ; preds = %576, %525
  %581 = load i64, i64* %3, align 8
  %582 = icmp ne i64 %581, 0
  br i1 %582, label %583, label %594

583:                                              ; preds = %580
  %584 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %585 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %584, i32 0, i32 2
  %586 = load i32, i32* %585, align 8
  %587 = load i32, i32* @LIGHT_GRID, align 4
  %588 = and i32 %586, %587
  %589 = icmp ne i32 %588, 0
  br i1 %589, label %593, label %590

590:                                              ; preds = %583
  %591 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %592 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %591, i32 0, i32 5
  store float 0.000000e+00, float* %592, align 8
  br label %593

593:                                              ; preds = %590, %583
  br label %605

594:                                              ; preds = %580
  %595 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %596 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %595, i32 0, i32 2
  %597 = load i32, i32* %596, align 8
  %598 = load i32, i32* @LIGHT_SURFACES, align 4
  %599 = and i32 %597, %598
  %600 = icmp ne i32 %599, 0
  br i1 %600, label %604, label %601

601:                                              ; preds = %594
  %602 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %603 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %602, i32 0, i32 5
  store float 0.000000e+00, float* %603, align 8
  br label %604

604:                                              ; preds = %601, %594
  br label %605

605:                                              ; preds = %604, %593
  br label %606

606:                                              ; preds = %605, %221
  %607 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %608 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %607, i32 0, i32 4
  %609 = load i64, i64* %608, align 8
  %610 = icmp slt i64 %609, 0
  br i1 %610, label %616, label %611

611:                                              ; preds = %606
  %612 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %613 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %612, i32 0, i32 5
  %614 = load float, float* %613, align 8
  %615 = fcmp ole float %614, 0.000000e+00
  br i1 %615, label %616, label %635

616:                                              ; preds = %611, %606
  %617 = load i64, i64* @numCulledLights, align 8
  %618 = add nsw i64 %617, 1
  store i64 %618, i64* @numCulledLights, align 8
  %619 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %620 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %619, i32 0, i32 14
  %621 = load %struct.TYPE_10__*, %struct.TYPE_10__** %620, align 8
  %622 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %14, align 8
  store %struct.TYPE_10__* %621, %struct.TYPE_10__** %622, align 8
  %623 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %624 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %623, i32 0, i32 15
  %625 = load %struct.TYPE_10__*, %struct.TYPE_10__** %624, align 8
  %626 = icmp ne %struct.TYPE_10__* %625, null
  br i1 %626, label %627, label %632

627:                                              ; preds = %616
  %628 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %629 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %628, i32 0, i32 15
  %630 = load %struct.TYPE_10__*, %struct.TYPE_10__** %629, align 8
  %631 = call i32 @free(%struct.TYPE_10__* %630)
  br label %632

632:                                              ; preds = %627, %616
  %633 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %634 = call i32 @free(%struct.TYPE_10__* %633)
  br label %34

635:                                              ; preds = %611
  br label %636

636:                                              ; preds = %635, %70
  %637 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %638 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %637, i32 0, i32 5
  %639 = load float, float* %638, align 8
  %640 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %641 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %640, i32 0, i32 5
  %642 = load float, float* %641, align 8
  %643 = fmul float %639, %642
  %644 = fptosi float %643 to i32
  %645 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %646 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %645, i32 0, i32 12
  store i32 %644, i32* %646, align 8
  %647 = load i64, i64* @numLights, align 8
  %648 = add nsw i64 %647, 1
  store i64 %648, i64* @numLights, align 8
  %649 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %14, align 8
  %650 = load %struct.TYPE_10__*, %struct.TYPE_10__** %649, align 8
  %651 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %650, i32 0, i32 14
  store %struct.TYPE_10__** %651, %struct.TYPE_10__*** %14, align 8
  br label %34

652:                                              ; preds = %34
  %653 = getelementptr inbounds [256 x %struct.TYPE_10__*], [256 x %struct.TYPE_10__*]* %22, i64 0, i64 0
  %654 = call i32 @memset(%struct.TYPE_10__** %653, i32 0, i32 2048)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %13, align 8
  %655 = load %struct.TYPE_10__*, %struct.TYPE_10__** @lights, align 8
  store %struct.TYPE_10__* %655, %struct.TYPE_10__** %12, align 8
  br label %656

656:                                              ; preds = %683, %652
  %657 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %658 = icmp ne %struct.TYPE_10__* %657, null
  br i1 %658, label %659, label %685

659:                                              ; preds = %656
  %660 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %661 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %660, i32 0, i32 14
  %662 = load %struct.TYPE_10__*, %struct.TYPE_10__** %661, align 8
  store %struct.TYPE_10__* %662, %struct.TYPE_10__** %13, align 8
  %663 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %664 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %663, i32 0, i32 13
  %665 = load i64, i64* %664, align 8
  %666 = getelementptr inbounds [256 x %struct.TYPE_10__*], [256 x %struct.TYPE_10__*]* %22, i64 0, i64 %665
  %667 = load %struct.TYPE_10__*, %struct.TYPE_10__** %666, align 8
  %668 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %669 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %668, i32 0, i32 14
  store %struct.TYPE_10__* %667, %struct.TYPE_10__** %669, align 8
  %670 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %671 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %672 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %671, i32 0, i32 13
  %673 = load i64, i64* %672, align 8
  %674 = getelementptr inbounds [256 x %struct.TYPE_10__*], [256 x %struct.TYPE_10__*]* %22, i64 0, i64 %673
  store %struct.TYPE_10__* %670, %struct.TYPE_10__** %674, align 8
  %675 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %676 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %675, i32 0, i32 13
  %677 = load i64, i64* %676, align 8
  %678 = load i64, i64* @LS_NORMAL, align 8
  %679 = icmp ne i64 %677, %678
  br i1 %679, label %680, label %682

680:                                              ; preds = %659
  %681 = load i32, i32* @qtrue, align 4
  store i32 %681, i32* @noCollapse, align 4
  br label %682

682:                                              ; preds = %680, %659
  br label %683

683:                                              ; preds = %682
  %684 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  store %struct.TYPE_10__* %684, %struct.TYPE_10__** %12, align 8
  br label %656

685:                                              ; preds = %656
  store %struct.TYPE_10__* null, %struct.TYPE_10__** @lights, align 8
  store i32 255, i32* %5, align 4
  br label %686

686:                                              ; preds = %708, %685
  %687 = load i32, i32* %5, align 4
  %688 = icmp sge i32 %687, 0
  br i1 %688, label %689, label %711

689:                                              ; preds = %686
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %13, align 8
  %690 = load i32, i32* %5, align 4
  %691 = sext i32 %690 to i64
  %692 = getelementptr inbounds [256 x %struct.TYPE_10__*], [256 x %struct.TYPE_10__*]* %22, i64 0, i64 %691
  %693 = load %struct.TYPE_10__*, %struct.TYPE_10__** %692, align 8
  store %struct.TYPE_10__* %693, %struct.TYPE_10__** %12, align 8
  br label %694

694:                                              ; preds = %705, %689
  %695 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %696 = icmp ne %struct.TYPE_10__* %695, null
  br i1 %696, label %697, label %707

697:                                              ; preds = %694
  %698 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %699 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %698, i32 0, i32 14
  %700 = load %struct.TYPE_10__*, %struct.TYPE_10__** %699, align 8
  store %struct.TYPE_10__* %700, %struct.TYPE_10__** %13, align 8
  %701 = load %struct.TYPE_10__*, %struct.TYPE_10__** @lights, align 8
  %702 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %703 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %702, i32 0, i32 14
  store %struct.TYPE_10__* %701, %struct.TYPE_10__** %703, align 8
  %704 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  store %struct.TYPE_10__* %704, %struct.TYPE_10__** @lights, align 8
  br label %705

705:                                              ; preds = %697
  %706 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  store %struct.TYPE_10__* %706, %struct.TYPE_10__** %12, align 8
  br label %694

707:                                              ; preds = %694
  br label %708

708:                                              ; preds = %707
  %709 = load i32, i32* %5, align 4
  %710 = add nsw i32 %709, -1
  store i32 %710, i32* %5, align 4
  br label %686

711:                                              ; preds = %686
  %712 = load i64, i64* @numLights, align 8
  %713 = call i32 @Sys_Printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i64 %712)
  %714 = load i64, i64* @numCulledLights, align 8
  %715 = call i32 @Sys_Printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i64 %714)
  br label %716

716:                                              ; preds = %711, %26
  ret void
}

declare dso_local i32 @Sys_FPrintf(i32, i8*, i8*) #1

declare dso_local i32 @VectorSet(i64*, float, float, float) #1

declare dso_local i8* @ClusterForPointExt(i64*, i32) #1

declare dso_local i32 @VectorCopy(i64*, i64*) #1

declare dso_local i32 @VectorScale(i64*, i32, i64*) #1

declare dso_local i32 @VectorMA(i64*, float, i64*, i64*) #1

declare dso_local float @PointToPolygonFormFactor(i64*, i64*, %struct.TYPE_10__*) #1

declare dso_local float @sqrt(float) #1

declare dso_local i32 @ClearBounds(i64*, i64*) #1

declare dso_local i64 @ClusterVisible(i64, i64) #1

declare dso_local i32 @AddPointToBounds(i64*, i64*, i64*) #1

declare dso_local i32 @ChopBounds(i64*, i64*, i64*, i64*) #1

declare dso_local i32 @VectorSubtract(i64*, i64*, i64*) #1

declare dso_local i64 @VectorLength(i64*) #1

declare dso_local i32 @free(%struct.TYPE_10__*) #1

declare dso_local i32 @memset(%struct.TYPE_10__**, i32, i32) #1

declare dso_local i32 @Sys_Printf(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
