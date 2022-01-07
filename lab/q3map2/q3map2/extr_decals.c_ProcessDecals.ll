; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_decals.c_ProcessDecals.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_decals.c_ProcessDecals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_15__*, i32, i32* }
%struct.TYPE_15__ = type { %struct.TYPE_15__*, i32, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }

@SYS_VRB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"--- ProcessDecals ---\0A\00", align 1
@numEntities = common dso_local global i32 0, align 4
@entities = common dso_local global %struct.TYPE_17__* null, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"classname\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"_decal\00", align 1
@SYS_WRN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [59 x i8] c"WARNING: Decal entity without any patch meshes, ignoring.\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"target\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"WARNING: Decal entity without a valid target, ignoring.\0A\00", align 1
@vec3_origin = common dso_local global i32 0, align 4
@patchSubdivisions = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"%9d decal projectors\0A\00", align 1
@numProjectors = common dso_local global i32 0, align 4
@PLANAR_EPSILON = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ProcessDecals() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [5 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_17__*, align 8
  %15 = alloca %struct.TYPE_17__*, align 8
  %16 = alloca %struct.TYPE_15__*, align 8
  %17 = alloca %struct.TYPE_16__*, align 8
  %18 = alloca %struct.TYPE_16__*, align 8
  %19 = alloca [4 x %struct.TYPE_18__*], align 16
  %20 = alloca i8*, align 8
  %21 = load i32, i32* @SYS_VRB, align 4
  %22 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %21, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %23

23:                                               ; preds = %318, %0
  %24 = load i32, i32* %1, align 4
  %25 = load i32, i32* @numEntities, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %321

27:                                               ; preds = %23
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** @entities, align 8
  %29 = load i32, i32* %1, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i64 %30
  store %struct.TYPE_17__* %31, %struct.TYPE_17__** %14, align 8
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %33 = call i8* @ValueForKey(%struct.TYPE_17__* %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i8* %33, i8** %20, align 8
  %34 = load i8*, i8** %20, align 8
  %35 = call i64 @Q_stricmp(i8* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  br label %318

38:                                               ; preds = %27
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %40, align 8
  %42 = icmp eq %struct.TYPE_15__* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load i32, i32* @SYS_WRN, align 4
  %45 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %44, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0))
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 2
  store i32* null, i32** %47, align 8
  br label %318

48:                                               ; preds = %38
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %50 = call i8* @ValueForKey(%struct.TYPE_17__* %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  store i8* %50, i8** %20, align 8
  %51 = load i8*, i8** %20, align 8
  %52 = call %struct.TYPE_17__* @FindTargetEntity(i8* %51)
  store %struct.TYPE_17__* %52, %struct.TYPE_17__** %15, align 8
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %54 = icmp eq %struct.TYPE_17__* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = load i32, i32* @SYS_WRN, align 4
  %57 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %56, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0))
  br label %318

58:                                               ; preds = %48
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %60, align 8
  store %struct.TYPE_15__* %61, %struct.TYPE_15__** %16, align 8
  br label %62

62:                                               ; preds = %313, %58
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %64 = icmp ne %struct.TYPE_15__* %63, null
  br i1 %64, label %65, label %317

65:                                               ; preds = %62
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @vec3_origin, align 4
  %70 = call i64 @VectorCompare(i32 %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %84

72:                                               ; preds = %65
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @VectorAdd(i32 %75, i32 %78, i32 %79)
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @VectorScale(i32 %81, float 5.000000e-01, i32 %82)
  br label %90

84:                                               ; preds = %65
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @VectorCopy(i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %84, %72
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %12, align 4
  %95 = call i32 @VectorCopy(i32 %93, i32 %94)
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* %13, align 4
  %99 = call i32 @VectorSubtract(i32 %96, i32 %97, i32 %98)
  %100 = load i32, i32* %13, align 4
  %101 = load float*, float** %9, align 8
  %102 = call float @VectorNormalize(i32 %100, float* %101)
  store float %102, float* %8, align 4
  %103 = load i32, i32* %11, align 4
  %104 = load float*, float** %9, align 8
  %105 = call float @DotProduct(i32 %103, float* %104)
  %106 = load float*, float** %9, align 8
  %107 = getelementptr inbounds float, float* %106, i64 3
  store float %105, float* %107, align 4
  %108 = load float, float* %8, align 4
  %109 = fcmp ogt float %108, 1.250000e-01
  br i1 %109, label %110, label %307

110:                                              ; preds = %90
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @patchSubdivisions, align 4
  %115 = call i32 @IterationsForCurve(i32 %113, i32 %114)
  store i32 %115, i32* %7, align 4
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %7, align 4
  %120 = call %struct.TYPE_16__* @SubdivideMesh2(i32 %118, i32 %119)
  store %struct.TYPE_16__* %120, %struct.TYPE_16__** %18, align 8
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %122 = bitcast %struct.TYPE_16__* %121 to { i64, %struct.TYPE_18__* }*
  %123 = getelementptr inbounds { i64, %struct.TYPE_18__* }, { i64, %struct.TYPE_18__* }* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds { i64, %struct.TYPE_18__* }, { i64, %struct.TYPE_18__* }* %122, i32 0, i32 1
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %125, align 8
  %127 = call i32 @PutMeshOnCurve(i64 %124, %struct.TYPE_18__* %126)
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %129 = call %struct.TYPE_16__* @RemoveLinearMeshColumnsRows(%struct.TYPE_16__* %128)
  store %struct.TYPE_16__* %129, %struct.TYPE_16__** %17, align 8
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %131 = call i32 @FreeMesh(%struct.TYPE_16__* %130)
  store i32 0, i32* %2, align 4
  br label %132

132:                                              ; preds = %163, %110
  %133 = load i32, i32* %2, align 4
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = mul nsw i32 %136, %139
  %141 = icmp slt i32 %133, %140
  br i1 %141, label %142, label %166

142:                                              ; preds = %132
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 2
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %144, align 8
  %146 = load i32, i32* %2, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 2
  %156 = load %struct.TYPE_18__*, %struct.TYPE_18__** %155, align 8
  %157 = load i32, i32* %2, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @VectorAdd(i32 %150, i32 %153, i32 %161)
  br label %163

163:                                              ; preds = %142
  %164 = load i32, i32* %2, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %2, align 4
  br label %132

166:                                              ; preds = %132
  store i32 0, i32* %4, align 4
  br label %167

167:                                              ; preds = %301, %166
  %168 = load i32, i32* %4, align 4
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = sub nsw i32 %171, 1
  %173 = icmp slt i32 %168, %172
  br i1 %173, label %174, label %304

174:                                              ; preds = %167
  store i32 0, i32* %3, align 4
  br label %175

175:                                              ; preds = %297, %174
  %176 = load i32, i32* %3, align 4
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = sub nsw i32 %179, 1
  %181 = icmp slt i32 %176, %180
  br i1 %181, label %182, label %300

182:                                              ; preds = %175
  %183 = load i32, i32* %3, align 4
  %184 = load i32, i32* %4, align 4
  %185 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = mul nsw i32 %184, %187
  %189 = add nsw i32 %183, %188
  %190 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  store i32 %189, i32* %190, align 16
  %191 = load i32, i32* %3, align 4
  %192 = load i32, i32* %4, align 4
  %193 = add nsw i32 %192, 1
  %194 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %195 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = mul nsw i32 %193, %196
  %198 = add nsw i32 %191, %197
  %199 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 1
  store i32 %198, i32* %199, align 4
  %200 = load i32, i32* %3, align 4
  %201 = add nsw i32 %200, 1
  %202 = load i32, i32* %4, align 4
  %203 = add nsw i32 %202, 1
  %204 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %205 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = mul nsw i32 %203, %206
  %208 = add nsw i32 %201, %207
  %209 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 2
  store i32 %208, i32* %209, align 8
  %210 = load i32, i32* %3, align 4
  %211 = add nsw i32 %210, 1
  %212 = load i32, i32* %4, align 4
  %213 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = mul nsw i32 %212, %215
  %217 = add nsw i32 %211, %216
  %218 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 3
  store i32 %217, i32* %218, align 4
  %219 = load i32, i32* %3, align 4
  %220 = load i32, i32* %4, align 4
  %221 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %222 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = mul nsw i32 %220, %223
  %225 = add nsw i32 %219, %224
  %226 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 4
  store i32 %225, i32* %226, align 16
  %227 = load i32, i32* %3, align 4
  %228 = load i32, i32* %4, align 4
  %229 = add nsw i32 %227, %228
  %230 = and i32 %229, 1
  store i32 %230, i32* %6, align 4
  %231 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %232 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %231, i32 0, i32 2
  %233 = load %struct.TYPE_18__*, %struct.TYPE_18__** %232, align 8
  %234 = load i32, i32* %6, align 4
  %235 = add nsw i32 %234, 0
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 %236
  %238 = load i32, i32* %237, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %233, i64 %239
  %241 = getelementptr inbounds [4 x %struct.TYPE_18__*], [4 x %struct.TYPE_18__*]* %19, i64 0, i64 0
  store %struct.TYPE_18__* %240, %struct.TYPE_18__** %241, align 16
  %242 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %243 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %242, i32 0, i32 2
  %244 = load %struct.TYPE_18__*, %struct.TYPE_18__** %243, align 8
  %245 = load i32, i32* %6, align 4
  %246 = add nsw i32 %245, 1
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 %247
  %249 = load i32, i32* %248, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %244, i64 %250
  %252 = getelementptr inbounds [4 x %struct.TYPE_18__*], [4 x %struct.TYPE_18__*]* %19, i64 0, i64 1
  store %struct.TYPE_18__* %251, %struct.TYPE_18__** %252, align 8
  %253 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %254 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %253, i32 0, i32 2
  %255 = load %struct.TYPE_18__*, %struct.TYPE_18__** %254, align 8
  %256 = load i32, i32* %6, align 4
  %257 = add nsw i32 %256, 2
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 %258
  %260 = load i32, i32* %259, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %255, i64 %261
  %263 = getelementptr inbounds [4 x %struct.TYPE_18__*], [4 x %struct.TYPE_18__*]* %19, i64 0, i64 2
  store %struct.TYPE_18__* %262, %struct.TYPE_18__** %263, align 16
  %264 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %265 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %264, i32 0, i32 2
  %266 = load %struct.TYPE_18__*, %struct.TYPE_18__** %265, align 8
  %267 = load i32, i32* %6, align 4
  %268 = add nsw i32 %267, 3
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 %269
  %271 = load i32, i32* %270, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %266, i64 %272
  %274 = getelementptr inbounds [4 x %struct.TYPE_18__*], [4 x %struct.TYPE_18__*]* %19, i64 0, i64 3
  store %struct.TYPE_18__* %273, %struct.TYPE_18__** %274, align 8
  %275 = load float*, float** %10, align 8
  %276 = getelementptr inbounds float, float* %275, i64 0
  store float 0.000000e+00, float* %276, align 4
  %277 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %278 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 8
  %280 = load float*, float** %9, align 8
  %281 = load float, float* %8, align 4
  %282 = getelementptr inbounds [4 x %struct.TYPE_18__*], [4 x %struct.TYPE_18__*]* %19, i64 0, i64 0
  %283 = call i32 @MakeDecalProjector(i32 %279, float* %280, float %281, i32 3, %struct.TYPE_18__** %282)
  %284 = getelementptr inbounds [4 x %struct.TYPE_18__*], [4 x %struct.TYPE_18__*]* %19, i64 0, i64 2
  %285 = load %struct.TYPE_18__*, %struct.TYPE_18__** %284, align 16
  %286 = getelementptr inbounds [4 x %struct.TYPE_18__*], [4 x %struct.TYPE_18__*]* %19, i64 0, i64 1
  store %struct.TYPE_18__* %285, %struct.TYPE_18__** %286, align 8
  %287 = getelementptr inbounds [4 x %struct.TYPE_18__*], [4 x %struct.TYPE_18__*]* %19, i64 0, i64 3
  %288 = load %struct.TYPE_18__*, %struct.TYPE_18__** %287, align 8
  %289 = getelementptr inbounds [4 x %struct.TYPE_18__*], [4 x %struct.TYPE_18__*]* %19, i64 0, i64 2
  store %struct.TYPE_18__* %288, %struct.TYPE_18__** %289, align 16
  %290 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %291 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 8
  %293 = load float*, float** %9, align 8
  %294 = load float, float* %8, align 4
  %295 = getelementptr inbounds [4 x %struct.TYPE_18__*], [4 x %struct.TYPE_18__*]* %19, i64 0, i64 0
  %296 = call i32 @MakeDecalProjector(i32 %292, float* %293, float %294, i32 3, %struct.TYPE_18__** %295)
  br label %297

297:                                              ; preds = %182
  %298 = load i32, i32* %3, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* %3, align 4
  br label %175

300:                                              ; preds = %175
  br label %301

301:                                              ; preds = %300
  %302 = load i32, i32* %4, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %4, align 4
  br label %167

304:                                              ; preds = %167
  %305 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %306 = call i32 @free(%struct.TYPE_16__* %305)
  br label %307

307:                                              ; preds = %304, %90
  %308 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %309 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %308, i32 0, i32 0
  %310 = load %struct.TYPE_15__*, %struct.TYPE_15__** %309, align 8
  %311 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %312 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %311, i32 0, i32 0
  store %struct.TYPE_15__* %310, %struct.TYPE_15__** %312, align 8
  br label %313

313:                                              ; preds = %307
  %314 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %315 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %314, i32 0, i32 0
  %316 = load %struct.TYPE_15__*, %struct.TYPE_15__** %315, align 8
  store %struct.TYPE_15__* %316, %struct.TYPE_15__** %16, align 8
  br label %62

317:                                              ; preds = %62
  br label %318

318:                                              ; preds = %317, %55, %43, %37
  %319 = load i32, i32* %1, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %1, align 4
  br label %23

321:                                              ; preds = %23
  %322 = load i32, i32* @SYS_VRB, align 4
  %323 = load i32, i32* @numProjectors, align 4
  %324 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %322, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %323)
  ret void
}

declare dso_local i32 @Sys_FPrintf(i32, i8*, ...) #1

declare dso_local i8* @ValueForKey(%struct.TYPE_17__*, i8*) #1

declare dso_local i64 @Q_stricmp(i8*, i8*) #1

declare dso_local %struct.TYPE_17__* @FindTargetEntity(i8*) #1

declare dso_local i64 @VectorCompare(i32, i32) #1

declare dso_local i32 @VectorAdd(i32, i32, i32) #1

declare dso_local i32 @VectorScale(i32, float, i32) #1

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local i32 @VectorSubtract(i32, i32, i32) #1

declare dso_local float @VectorNormalize(i32, float*) #1

declare dso_local float @DotProduct(i32, float*) #1

declare dso_local i32 @IterationsForCurve(i32, i32) #1

declare dso_local %struct.TYPE_16__* @SubdivideMesh2(i32, i32) #1

declare dso_local i32 @PutMeshOnCurve(i64, %struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_16__* @RemoveLinearMeshColumnsRows(%struct.TYPE_16__*) #1

declare dso_local i32 @FreeMesh(%struct.TYPE_16__*) #1

declare dso_local i32 @MakeDecalProjector(i32, float*, float, i32, %struct.TYPE_18__**) #1

declare dso_local i32 @free(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
