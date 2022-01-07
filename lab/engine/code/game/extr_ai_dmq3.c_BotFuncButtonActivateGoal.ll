; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_ai_dmq3.c_BotFuncButtonActivateGoal.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_ai_dmq3.c_BotFuncButtonActivateGoal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64*, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i64*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i64*, i32, i64*, i64*, i64, i64 }
%struct.TYPE_9__ = type { double, i32 }

@qfalse = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"model\00", align 1
@ET_MOVER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"lip\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"angle\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"health\00", align 1
@qtrue = common dso_local global i32 0, align 4
@MASK_SHOT = common dso_local global i32 0, align 4
@PRESENCE_CROUCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BotFuncButtonActivateGoal(%struct.TYPE_10__* %0, i32 %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [10 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [128 x i8], align 16
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca i64*, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i64*, align 8
  %22 = alloca i64*, align 8
  %23 = alloca i64*, align 8
  %24 = alloca [10 x i64*], align 16
  %25 = alloca i64*, align 8
  %26 = alloca i64*, align 8
  %27 = alloca i64*, align 8
  %28 = alloca i64*, align 8
  %29 = alloca i64*, align 8
  %30 = alloca i64*, align 8
  %31 = alloca i64*, align 8
  %32 = alloca %struct.TYPE_9__, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %7, align 8
  store i64* inttoptr (i64 1 to i64*), i64** %30, align 8
  store i64* inttoptr (i64 -1 to i64*), i64** %31, align 8
  %33 = load i32, i32* @qfalse, align 4
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  %38 = load i64*, i64** %37, align 8
  %39 = call i32 @VectorClear(i64* %38)
  %40 = load i32, i32* %6, align 4
  %41 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  %42 = call i32 @trap_AAS_ValueForBSPEpairKey(i32 %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %41, i32 128)
  %43 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  %44 = load i8, i8* %43, align 16
  %45 = icmp ne i8 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %3
  %47 = load i32, i32* @qfalse, align 4
  store i32 %47, i32* %4, align 4
  br label %603

48:                                               ; preds = %3
  %49 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  %51 = call i32 @atoi(i8* %50)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %48
  %55 = load i32, i32* @qfalse, align 4
  store i32 %55, i32* %4, align 4
  br label %603

56:                                               ; preds = %48
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @ET_MOVER, align 4
  %59 = load i64*, i64** %21, align 8
  %60 = load i64*, i64** %22, align 8
  %61 = call i32 @BotModelMinsMaxs(i32 %57, i32 %58, i32 0, i64* %59, i64* %60)
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @trap_AAS_FloatForBSPEpairKey(i32 %62, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), float* %14)
  %64 = load float, float* %14, align 4
  %65 = fcmp une float %64, 0.000000e+00
  br i1 %65, label %67, label %66

66:                                               ; preds = %56
  store float 4.000000e+00, float* %14, align 4
  br label %67

67:                                               ; preds = %66, %56
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @trap_AAS_FloatForBSPEpairKey(i32 %68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), float* %17)
  %70 = load i64*, i64** %23, align 8
  %71 = load float, float* %17, align 4
  %72 = fptosi float %71 to i32
  %73 = call i32 @VectorSet(i64* %70, i32 0, i32 %72, i32 0)
  %74 = load i64*, i64** %23, align 8
  %75 = load i64*, i64** %25, align 8
  %76 = call i32 @BotSetMovedir(i64* %74, i64* %75)
  %77 = load i64*, i64** %22, align 8
  %78 = load i64*, i64** %21, align 8
  %79 = load i64*, i64** %18, align 8
  %80 = call i32 @VectorSubtract(i64* %77, i64* %78, i64* %79)
  %81 = load i64*, i64** %21, align 8
  %82 = load i64*, i64** %22, align 8
  %83 = load i64*, i64** %26, align 8
  %84 = call i32 @VectorAdd(i64* %81, i64* %82, i64* %83)
  %85 = load i64*, i64** %26, align 8
  %86 = load i64*, i64** %26, align 8
  %87 = call i32 @VectorScale(i64* %85, double 5.000000e-01, i64* %86)
  %88 = load i64*, i64** %25, align 8
  %89 = getelementptr inbounds i64, i64* %88, i64 0
  %90 = load i64, i64* %89, align 8
  %91 = call float @fabs(i64 %90)
  %92 = load i64*, i64** %18, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 0
  %94 = load i64, i64* %93, align 8
  %95 = sitofp i64 %94 to float
  %96 = fmul float %91, %95
  %97 = load i64*, i64** %25, align 8
  %98 = getelementptr inbounds i64, i64* %97, i64 1
  %99 = load i64, i64* %98, align 8
  %100 = call float @fabs(i64 %99)
  %101 = load i64*, i64** %18, align 8
  %102 = getelementptr inbounds i64, i64* %101, i64 1
  %103 = load i64, i64* %102, align 8
  %104 = sitofp i64 %103 to float
  %105 = fmul float %100, %104
  %106 = fadd float %96, %105
  %107 = load i64*, i64** %25, align 8
  %108 = getelementptr inbounds i64, i64* %107, i64 2
  %109 = load i64, i64* %108, align 8
  %110 = call float @fabs(i64 %109)
  %111 = load i64*, i64** %18, align 8
  %112 = getelementptr inbounds i64, i64* %111, i64 2
  %113 = load i64, i64* %112, align 8
  %114 = sitofp i64 %113 to float
  %115 = fmul float %110, %114
  %116 = fadd float %106, %115
  store float %116, float* %15, align 4
  %117 = load float, float* %15, align 4
  %118 = fpext float %117 to double
  %119 = fmul double %118, 5.000000e-01
  %120 = fptrunc double %119 to float
  store float %120, float* %15, align 4
  %121 = load i32, i32* %6, align 4
  %122 = call i32 @trap_AAS_FloatForBSPEpairKey(i32 %121, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), float* %16)
  %123 = load float, float* %16, align 4
  %124 = fcmp une float %123, 0.000000e+00
  br i1 %124, label %125, label %400

125:                                              ; preds = %67
  %126 = load i64*, i64** %26, align 8
  %127 = load float, float* %15, align 4
  %128 = fneg float %127
  %129 = load i64*, i64** %25, align 8
  %130 = load i64*, i64** %27, align 8
  %131 = call i32 @VectorMA(i64* %126, float %128, i64* %129, i64* %130)
  %132 = load i64*, i64** %27, align 8
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 1
  %135 = load i64*, i64** %134, align 8
  %136 = call i32 @VectorCopy(i64* %132, i64* %135)
  %137 = load i32, i32* @qtrue, align 4
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 8
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 8
  %143 = load i64*, i64** %27, align 8
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @MASK_SHOT, align 4
  %148 = call i32 @BotAI_Trace(%struct.TYPE_9__* %32, i32 %142, i32* null, i32* null, i64* %143, i32 %146, i32 %147)
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %150 = load double, double* %149, align 8
  %151 = fcmp oge double %150, 1.000000e+00
  br i1 %151, label %157, label %152

152:                                              ; preds = %125
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* %12, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %193

157:                                              ; preds = %152, %125
  %158 = load i32, i32* %12, align 4
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 0
  store i32 %158, i32* %161, align 8
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 6
  store i64 0, i64* %164, align 8
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 5
  store i64 0, i64* %167, align 8
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 0
  %170 = load i64*, i64** %169, align 8
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 1
  %174 = load i64*, i64** %173, align 8
  %175 = call i32 @VectorCopy(i64* %170, i64* %174)
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 2
  store i32 %178, i32* %181, align 8
  %182 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 2
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 3
  %185 = load i64*, i64** %184, align 8
  %186 = call i32 @VectorSet(i64* %185, i32 -8, i32 -8, i32 -8)
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 2
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 4
  %190 = load i64*, i64** %189, align 8
  %191 = call i32 @VectorSet(i64* %190, i32 8, i32 8, i32 8)
  %192 = load i32, i32* @qtrue, align 4
  store i32 %192, i32* %4, align 4
  br label %603

193:                                              ; preds = %152
  %194 = load i32, i32* @PRESENCE_CROUCH, align 4
  %195 = load i64*, i64** %28, align 8
  %196 = load i64*, i64** %29, align 8
  %197 = call i32 @trap_AAS_PresenceTypeBoundingBox(i32 %194, i64* %195, i64* %196)
  store i32 0, i32* %8, align 4
  br label %198

198:                                              ; preds = %241, %193
  %199 = load i32, i32* %8, align 4
  %200 = icmp slt i32 %199, 3
  br i1 %200, label %201, label %244

201:                                              ; preds = %198
  %202 = load i64*, i64** %25, align 8
  %203 = load i32, i32* %8, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i64, i64* %202, i64 %204
  %206 = load i64, i64* %205, align 8
  %207 = icmp slt i64 %206, 0
  br i1 %207, label %208, label %224

208:                                              ; preds = %201
  %209 = load i64*, i64** %25, align 8
  %210 = load i32, i32* %8, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i64, i64* %209, i64 %211
  %213 = load i64, i64* %212, align 8
  %214 = call float @fabs(i64 %213)
  %215 = load i64*, i64** %29, align 8
  %216 = load i32, i32* %8, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i64, i64* %215, i64 %217
  %219 = load i64, i64* %218, align 8
  %220 = call float @fabs(i64 %219)
  %221 = fmul float %214, %220
  %222 = load float, float* %15, align 4
  %223 = fadd float %222, %221
  store float %223, float* %15, align 4
  br label %240

224:                                              ; preds = %201
  %225 = load i64*, i64** %25, align 8
  %226 = load i32, i32* %8, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i64, i64* %225, i64 %227
  %229 = load i64, i64* %228, align 8
  %230 = call float @fabs(i64 %229)
  %231 = load i64*, i64** %28, align 8
  %232 = load i32, i32* %8, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i64, i64* %231, i64 %233
  %235 = load i64, i64* %234, align 8
  %236 = call float @fabs(i64 %235)
  %237 = fmul float %230, %236
  %238 = load float, float* %15, align 4
  %239 = fadd float %238, %237
  store float %239, float* %15, align 4
  br label %240

240:                                              ; preds = %224, %208
  br label %241

241:                                              ; preds = %240
  %242 = load i32, i32* %8, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %8, align 4
  br label %198

244:                                              ; preds = %198
  %245 = load i64*, i64** %26, align 8
  %246 = load float, float* %15, align 4
  %247 = fneg float %246
  %248 = load i64*, i64** %25, align 8
  %249 = load i64*, i64** %27, align 8
  %250 = call i32 @VectorMA(i64* %245, float %247, i64* %248, i64* %249)
  %251 = load i64*, i64** %27, align 8
  %252 = load i64*, i64** %19, align 8
  %253 = call i32 @VectorCopy(i64* %251, i64* %252)
  %254 = load i64*, i64** %19, align 8
  %255 = getelementptr inbounds i64, i64* %254, i64 2
  %256 = load i64, i64* %255, align 8
  %257 = add nsw i64 %256, 24
  store i64 %257, i64* %255, align 8
  %258 = load i64*, i64** %19, align 8
  %259 = load i64*, i64** %20, align 8
  %260 = call i32 @VectorCopy(i64* %258, i64* %259)
  %261 = load i64*, i64** %20, align 8
  %262 = getelementptr inbounds i64, i64* %261, i64 2
  %263 = load i64, i64* %262, align 8
  %264 = sub nsw i64 %263, 512
  store i64 %264, i64* %262, align 8
  %265 = load i64*, i64** %19, align 8
  %266 = load i64*, i64** %20, align 8
  %267 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 0
  %268 = getelementptr inbounds [10 x i64*], [10 x i64*]* %24, i64 0, i64 0
  %269 = call i32 @trap_AAS_TraceAreas(i64* %265, i64* %266, i32* %267, i64** %268, i32 10)
  store i32 %269, i32* %10, align 4
  %270 = load i32, i32* %10, align 4
  %271 = sub nsw i32 %270, 1
  store i32 %271, i32* %8, align 4
  br label %272

272:                                              ; preds = %284, %244
  %273 = load i32, i32* %8, align 4
  %274 = icmp sge i32 %273, 0
  br i1 %274, label %275, label %287

275:                                              ; preds = %272
  %276 = load i32, i32* %8, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 %277
  %279 = load i32, i32* %278, align 4
  %280 = call i64 @trap_AAS_AreaReachability(i32 %279)
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %283

282:                                              ; preds = %275
  br label %287

283:                                              ; preds = %275
  br label %284

284:                                              ; preds = %283
  %285 = load i32, i32* %8, align 4
  %286 = add nsw i32 %285, -1
  store i32 %286, i32* %8, align 4
  br label %272

287:                                              ; preds = %282, %272
  %288 = load i32, i32* %8, align 4
  %289 = icmp slt i32 %288, 0
  br i1 %289, label %290, label %291

290:                                              ; preds = %287
  br label %291

291:                                              ; preds = %290, %287
  %292 = load i32, i32* %8, align 4
  %293 = icmp sge i32 %292, 0
  br i1 %293, label %294, label %397

294:                                              ; preds = %291
  %295 = load i32, i32* %8, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds [10 x i64*], [10 x i64*]* %24, i64 0, i64 %296
  %298 = load i64*, i64** %297, align 8
  %299 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %300 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %299, i32 0, i32 2
  %301 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %300, i32 0, i32 1
  %302 = load i64*, i64** %301, align 8
  %303 = call i32 @VectorCopy(i64* %298, i64* %302)
  %304 = load i32, i32* %8, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 %305
  %307 = load i32, i32* %306, align 4
  %308 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %309 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %308, i32 0, i32 2
  %310 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %309, i32 0, i32 2
  store i32 %307, i32* %310, align 8
  %311 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %312 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %311, i32 0, i32 2
  %313 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %312, i32 0, i32 3
  %314 = load i64*, i64** %313, align 8
  %315 = call i32 @VectorSet(i64* %314, i32 8, i32 8, i32 8)
  %316 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %317 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %316, i32 0, i32 2
  %318 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %317, i32 0, i32 4
  %319 = load i64*, i64** %318, align 8
  %320 = call i32 @VectorSet(i64* %319, i32 -8, i32 -8, i32 -8)
  store i32 0, i32* %8, align 4
  br label %321

321:                                              ; preds = %382, %294
  %322 = load i32, i32* %8, align 4
  %323 = icmp slt i32 %322, 3
  br i1 %323, label %324, label %385

324:                                              ; preds = %321
  %325 = load i64*, i64** %25, align 8
  %326 = load i32, i32* %8, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i64, i64* %325, i64 %327
  %329 = load i64, i64* %328, align 8
  %330 = icmp slt i64 %329, 0
  br i1 %330, label %331, label %356

331:                                              ; preds = %324
  %332 = load i64*, i64** %25, align 8
  %333 = load i32, i32* %8, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i64, i64* %332, i64 %334
  %336 = load i64, i64* %335, align 8
  %337 = call float @fabs(i64 %336)
  %338 = load i64*, i64** %31, align 8
  %339 = load i32, i32* %8, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds i64, i64* %338, i64 %340
  %342 = load i64, i64* %341, align 8
  %343 = call float @fabs(i64 %342)
  %344 = fmul float %337, %343
  %345 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %346 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %345, i32 0, i32 2
  %347 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %346, i32 0, i32 4
  %348 = load i64*, i64** %347, align 8
  %349 = load i32, i32* %8, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i64, i64* %348, i64 %350
  %352 = load i64, i64* %351, align 8
  %353 = sitofp i64 %352 to float
  %354 = fadd float %353, %344
  %355 = fptosi float %354 to i64
  store i64 %355, i64* %351, align 8
  br label %381

356:                                              ; preds = %324
  %357 = load i64*, i64** %25, align 8
  %358 = load i32, i32* %8, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds i64, i64* %357, i64 %359
  %361 = load i64, i64* %360, align 8
  %362 = call float @fabs(i64 %361)
  %363 = load i64*, i64** %30, align 8
  %364 = load i32, i32* %8, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i64, i64* %363, i64 %365
  %367 = load i64, i64* %366, align 8
  %368 = call float @fabs(i64 %367)
  %369 = fmul float %362, %368
  %370 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %371 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %370, i32 0, i32 2
  %372 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %371, i32 0, i32 3
  %373 = load i64*, i64** %372, align 8
  %374 = load i32, i32* %8, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds i64, i64* %373, i64 %375
  %377 = load i64, i64* %376, align 8
  %378 = sitofp i64 %377 to float
  %379 = fadd float %378, %369
  %380 = fptosi float %379 to i64
  store i64 %380, i64* %376, align 8
  br label %381

381:                                              ; preds = %356, %331
  br label %382

382:                                              ; preds = %381
  %383 = load i32, i32* %8, align 4
  %384 = add nsw i32 %383, 1
  store i32 %384, i32* %8, align 4
  br label %321

385:                                              ; preds = %321
  %386 = load i32, i32* %12, align 4
  %387 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %388 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %387, i32 0, i32 2
  %389 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %388, i32 0, i32 0
  store i32 %386, i32* %389, align 8
  %390 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %391 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %390, i32 0, i32 2
  %392 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %391, i32 0, i32 6
  store i64 0, i64* %392, align 8
  %393 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %394 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %393, i32 0, i32 2
  %395 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %394, i32 0, i32 5
  store i64 0, i64* %395, align 8
  %396 = load i32, i32* @qtrue, align 4
  store i32 %396, i32* %4, align 4
  br label %603

397:                                              ; preds = %291
  br label %398

398:                                              ; preds = %397
  %399 = load i32, i32* @qfalse, align 4
  store i32 %399, i32* %4, align 4
  br label %603

400:                                              ; preds = %67
  %401 = load i32, i32* @PRESENCE_CROUCH, align 4
  %402 = load i64*, i64** %28, align 8
  %403 = load i64*, i64** %29, align 8
  %404 = call i32 @trap_AAS_PresenceTypeBoundingBox(i32 %401, i64* %402, i64* %403)
  store i32 0, i32* %8, align 4
  br label %405

405:                                              ; preds = %448, %400
  %406 = load i32, i32* %8, align 4
  %407 = icmp slt i32 %406, 3
  br i1 %407, label %408, label %451

408:                                              ; preds = %405
  %409 = load i64*, i64** %25, align 8
  %410 = load i32, i32* %8, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds i64, i64* %409, i64 %411
  %413 = load i64, i64* %412, align 8
  %414 = icmp slt i64 %413, 0
  br i1 %414, label %415, label %431

415:                                              ; preds = %408
  %416 = load i64*, i64** %25, align 8
  %417 = load i32, i32* %8, align 4
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds i64, i64* %416, i64 %418
  %420 = load i64, i64* %419, align 8
  %421 = call float @fabs(i64 %420)
  %422 = load i64*, i64** %29, align 8
  %423 = load i32, i32* %8, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds i64, i64* %422, i64 %424
  %426 = load i64, i64* %425, align 8
  %427 = call float @fabs(i64 %426)
  %428 = fmul float %421, %427
  %429 = load float, float* %15, align 4
  %430 = fadd float %429, %428
  store float %430, float* %15, align 4
  br label %447

431:                                              ; preds = %408
  %432 = load i64*, i64** %25, align 8
  %433 = load i32, i32* %8, align 4
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds i64, i64* %432, i64 %434
  %436 = load i64, i64* %435, align 8
  %437 = call float @fabs(i64 %436)
  %438 = load i64*, i64** %28, align 8
  %439 = load i32, i32* %8, align 4
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds i64, i64* %438, i64 %440
  %442 = load i64, i64* %441, align 8
  %443 = call float @fabs(i64 %442)
  %444 = fmul float %437, %443
  %445 = load float, float* %15, align 4
  %446 = fadd float %445, %444
  store float %446, float* %15, align 4
  br label %447

447:                                              ; preds = %431, %415
  br label %448

448:                                              ; preds = %447
  %449 = load i32, i32* %8, align 4
  %450 = add nsw i32 %449, 1
  store i32 %450, i32* %8, align 4
  br label %405

451:                                              ; preds = %405
  %452 = load i64*, i64** %26, align 8
  %453 = load float, float* %15, align 4
  %454 = fneg float %453
  %455 = load i64*, i64** %25, align 8
  %456 = load i64*, i64** %27, align 8
  %457 = call i32 @VectorMA(i64* %452, float %454, i64* %455, i64* %456)
  %458 = load i64*, i64** %27, align 8
  %459 = load i64*, i64** %19, align 8
  %460 = call i32 @VectorCopy(i64* %458, i64* %459)
  %461 = load i64*, i64** %19, align 8
  %462 = getelementptr inbounds i64, i64* %461, i64 2
  %463 = load i64, i64* %462, align 8
  %464 = add nsw i64 %463, 24
  store i64 %464, i64* %462, align 8
  %465 = load i64*, i64** %19, align 8
  %466 = load i64*, i64** %20, align 8
  %467 = call i32 @VectorCopy(i64* %465, i64* %466)
  %468 = load i64*, i64** %20, align 8
  %469 = getelementptr inbounds i64, i64* %468, i64 2
  %470 = load i64, i64* %469, align 8
  %471 = sub nsw i64 %470, 100
  store i64 %471, i64* %469, align 8
  %472 = load i64*, i64** %19, align 8
  %473 = load i64*, i64** %20, align 8
  %474 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 0
  %475 = call i32 @trap_AAS_TraceAreas(i64* %472, i64* %473, i32* %474, i64** null, i32 10)
  store i32 %475, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %476

476:                                              ; preds = %489, %451
  %477 = load i32, i32* %8, align 4
  %478 = load i32, i32* %10, align 4
  %479 = icmp slt i32 %477, %478
  br i1 %479, label %480, label %492

480:                                              ; preds = %476
  %481 = load i32, i32* %8, align 4
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 %482
  %484 = load i32, i32* %483, align 4
  %485 = call i64 @trap_AAS_AreaReachability(i32 %484)
  %486 = icmp ne i64 %485, 0
  br i1 %486, label %487, label %488

487:                                              ; preds = %480
  br label %492

488:                                              ; preds = %480
  br label %489

489:                                              ; preds = %488
  %490 = load i32, i32* %8, align 4
  %491 = add nsw i32 %490, 1
  store i32 %491, i32* %8, align 4
  br label %476

492:                                              ; preds = %487, %476
  %493 = load i32, i32* %8, align 4
  %494 = load i32, i32* %10, align 4
  %495 = icmp slt i32 %493, %494
  br i1 %495, label %496, label %600

496:                                              ; preds = %492
  %497 = load i64*, i64** %26, align 8
  %498 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %499 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %498, i32 0, i32 2
  %500 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %499, i32 0, i32 1
  %501 = load i64*, i64** %500, align 8
  %502 = call i32 @VectorCopy(i64* %497, i64* %501)
  %503 = load i32, i32* %8, align 4
  %504 = sext i32 %503 to i64
  %505 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 %504
  %506 = load i32, i32* %505, align 4
  %507 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %508 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %507, i32 0, i32 2
  %509 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %508, i32 0, i32 2
  store i32 %506, i32* %509, align 8
  %510 = load i64*, i64** %21, align 8
  %511 = load i64*, i64** %26, align 8
  %512 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %513 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %512, i32 0, i32 2
  %514 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %513, i32 0, i32 3
  %515 = load i64*, i64** %514, align 8
  %516 = call i32 @VectorSubtract(i64* %510, i64* %511, i64* %515)
  %517 = load i64*, i64** %22, align 8
  %518 = load i64*, i64** %26, align 8
  %519 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %520 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %519, i32 0, i32 2
  %521 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %520, i32 0, i32 4
  %522 = load i64*, i64** %521, align 8
  %523 = call i32 @VectorSubtract(i64* %517, i64* %518, i64* %522)
  store i32 0, i32* %8, align 4
  br label %524

524:                                              ; preds = %585, %496
  %525 = load i32, i32* %8, align 4
  %526 = icmp slt i32 %525, 3
  br i1 %526, label %527, label %588

527:                                              ; preds = %524
  %528 = load i64*, i64** %25, align 8
  %529 = load i32, i32* %8, align 4
  %530 = sext i32 %529 to i64
  %531 = getelementptr inbounds i64, i64* %528, i64 %530
  %532 = load i64, i64* %531, align 8
  %533 = icmp slt i64 %532, 0
  br i1 %533, label %534, label %559

534:                                              ; preds = %527
  %535 = load i64*, i64** %25, align 8
  %536 = load i32, i32* %8, align 4
  %537 = sext i32 %536 to i64
  %538 = getelementptr inbounds i64, i64* %535, i64 %537
  %539 = load i64, i64* %538, align 8
  %540 = call float @fabs(i64 %539)
  %541 = load i64*, i64** %31, align 8
  %542 = load i32, i32* %8, align 4
  %543 = sext i32 %542 to i64
  %544 = getelementptr inbounds i64, i64* %541, i64 %543
  %545 = load i64, i64* %544, align 8
  %546 = call float @fabs(i64 %545)
  %547 = fmul float %540, %546
  %548 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %549 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %548, i32 0, i32 2
  %550 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %549, i32 0, i32 4
  %551 = load i64*, i64** %550, align 8
  %552 = load i32, i32* %8, align 4
  %553 = sext i32 %552 to i64
  %554 = getelementptr inbounds i64, i64* %551, i64 %553
  %555 = load i64, i64* %554, align 8
  %556 = sitofp i64 %555 to float
  %557 = fadd float %556, %547
  %558 = fptosi float %557 to i64
  store i64 %558, i64* %554, align 8
  br label %584

559:                                              ; preds = %527
  %560 = load i64*, i64** %25, align 8
  %561 = load i32, i32* %8, align 4
  %562 = sext i32 %561 to i64
  %563 = getelementptr inbounds i64, i64* %560, i64 %562
  %564 = load i64, i64* %563, align 8
  %565 = call float @fabs(i64 %564)
  %566 = load i64*, i64** %30, align 8
  %567 = load i32, i32* %8, align 4
  %568 = sext i32 %567 to i64
  %569 = getelementptr inbounds i64, i64* %566, i64 %568
  %570 = load i64, i64* %569, align 8
  %571 = call float @fabs(i64 %570)
  %572 = fmul float %565, %571
  %573 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %574 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %573, i32 0, i32 2
  %575 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %574, i32 0, i32 3
  %576 = load i64*, i64** %575, align 8
  %577 = load i32, i32* %8, align 4
  %578 = sext i32 %577 to i64
  %579 = getelementptr inbounds i64, i64* %576, i64 %578
  %580 = load i64, i64* %579, align 8
  %581 = sitofp i64 %580 to float
  %582 = fadd float %581, %572
  %583 = fptosi float %582 to i64
  store i64 %583, i64* %579, align 8
  br label %584

584:                                              ; preds = %559, %534
  br label %585

585:                                              ; preds = %584
  %586 = load i32, i32* %8, align 4
  %587 = add nsw i32 %586, 1
  store i32 %587, i32* %8, align 4
  br label %524

588:                                              ; preds = %524
  %589 = load i32, i32* %12, align 4
  %590 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %591 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %590, i32 0, i32 2
  %592 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %591, i32 0, i32 0
  store i32 %589, i32* %592, align 8
  %593 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %594 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %593, i32 0, i32 2
  %595 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %594, i32 0, i32 6
  store i64 0, i64* %595, align 8
  %596 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %597 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %596, i32 0, i32 2
  %598 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %597, i32 0, i32 5
  store i64 0, i64* %598, align 8
  %599 = load i32, i32* @qtrue, align 4
  store i32 %599, i32* %4, align 4
  br label %603

600:                                              ; preds = %492
  br label %601

601:                                              ; preds = %600
  %602 = load i32, i32* @qfalse, align 4
  store i32 %602, i32* %4, align 4
  br label %603

603:                                              ; preds = %601, %588, %398, %385, %157, %54, %46
  %604 = load i32, i32* %4, align 4
  ret i32 %604
}

declare dso_local i32 @VectorClear(i64*) #1

declare dso_local i32 @trap_AAS_ValueForBSPEpairKey(i32, i8*, i8*, i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @BotModelMinsMaxs(i32, i32, i32, i64*, i64*) #1

declare dso_local i32 @trap_AAS_FloatForBSPEpairKey(i32, i8*, float*) #1

declare dso_local i32 @VectorSet(i64*, i32, i32, i32) #1

declare dso_local i32 @BotSetMovedir(i64*, i64*) #1

declare dso_local i32 @VectorSubtract(i64*, i64*, i64*) #1

declare dso_local i32 @VectorAdd(i64*, i64*, i64*) #1

declare dso_local i32 @VectorScale(i64*, double, i64*) #1

declare dso_local float @fabs(i64) #1

declare dso_local i32 @VectorMA(i64*, float, i64*, i64*) #1

declare dso_local i32 @VectorCopy(i64*, i64*) #1

declare dso_local i32 @BotAI_Trace(%struct.TYPE_9__*, i32, i32*, i32*, i64*, i32, i32) #1

declare dso_local i32 @trap_AAS_PresenceTypeBoundingBox(i32, i64*, i64*) #1

declare dso_local i32 @trap_AAS_TraceAreas(i64*, i64*, i32*, i64**, i32) #1

declare dso_local i64 @trap_AAS_AreaReachability(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
