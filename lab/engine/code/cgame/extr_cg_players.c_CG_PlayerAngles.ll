; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_players.c_CG_PlayerAngles.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_players.c_CG_PlayerAngles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { float }
%struct.TYPE_19__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64, i64 }
%struct.TYPE_18__ = type { %struct.TYPE_16__, %struct.TYPE_14__, i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32*, i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i32, i32, i8*, i8* }
%struct.TYPE_12__ = type { i32, i8* }

@CG_PlayerAngles.movementOffsets = internal global [8 x i32] [i32 0, i32 22, i32 45, i32 -22, i32 0, i32 22, i32 -45, i32 -22], align 16
@YAW = common dso_local global i64 0, align 8
@ANIM_TOGGLEBIT = common dso_local global i32 0, align 4
@LEGS_IDLE = common dso_local global i32 0, align 4
@TORSO_STAND = common dso_local global i32 0, align 4
@TORSO_STAND2 = common dso_local global i32 0, align 4
@qtrue = common dso_local global i8* null, align 8
@EF_DEAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Bad player movement angle\00", align 1
@cg_swingSpeed = common dso_local global %struct.TYPE_20__ zeroinitializer, align 4
@PITCH = common dso_local global i64 0, align 8
@MAX_CLIENTS = common dso_local global i32 0, align 4
@cgs = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@ROLL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*, i32**, i32**, i32**)* @CG_PlayerAngles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_PlayerAngles(%struct.TYPE_18__* %0, i32** %1, i32** %2, i32** %3) #0 {
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca float, align 4
  %13 = alloca i32*, align 8
  %14 = alloca float, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_17__*, align 8
  %18 = alloca [3 x i32*], align 16
  %19 = alloca float, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32** %2, i32*** %7, align 8
  store i32** %3, i32*** %8, align 8
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load i32*, i32** %11, align 8
  %24 = call i32 @VectorCopy(i32 %22, i32* %23)
  %25 = load i32*, i32** %11, align 8
  %26 = load i64, i64* @YAW, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @AngleMod(i32 %28)
  %30 = load i32*, i32** %11, align 8
  %31 = load i64, i64* @YAW, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  store i32 %29, i32* %32, align 4
  %33 = load i32*, i32** %9, align 8
  %34 = call i32 @VectorClear(i32* %33)
  %35 = load i32*, i32** %10, align 8
  %36 = call i32 @VectorClear(i32* %35)
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @ANIM_TOGGLEBIT, align 4
  %42 = xor i32 %41, -1
  %43 = and i32 %40, %42
  %44 = load i32, i32* @LEGS_IDLE, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %66, label %46

46:                                               ; preds = %4
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @ANIM_TOGGLEBIT, align 4
  %52 = xor i32 %51, -1
  %53 = and i32 %50, %52
  %54 = load i32, i32* @TORSO_STAND, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %82

56:                                               ; preds = %46
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @ANIM_TOGGLEBIT, align 4
  %62 = xor i32 %61, -1
  %63 = and i32 %60, %62
  %64 = load i32, i32* @TORSO_STAND2, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %82

66:                                               ; preds = %56, %4
  %67 = load i8*, i8** @qtrue, align 8
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 3
  store i8* %67, i8** %71, align 8
  %72 = load i8*, i8** @qtrue, align 8
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 2
  store i8* %72, i8** %76, align 8
  %77 = load i8*, i8** @qtrue, align 8
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 1
  store i8* %77, i8** %81, align 8
  br label %82

82:                                               ; preds = %66, %56, %46
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @EF_DEAD, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %82
  store i32 0, i32* %15, align 4
  br label %107

91:                                               ; preds = %82
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 3
  %95 = load i32*, i32** %94, align 8
  %96 = load i64, i64* @YAW, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %15, align 4
  %99 = load i32, i32* %15, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %91
  %102 = load i32, i32* %15, align 4
  %103 = icmp sgt i32 %102, 7
  br i1 %103, label %104, label %106

104:                                              ; preds = %101, %91
  %105 = call i32 @CG_Error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %106

106:                                              ; preds = %104, %101
  br label %107

107:                                              ; preds = %106, %90
  %108 = load i32*, i32** %11, align 8
  %109 = load i64, i64* @YAW, align 8
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %15, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [8 x i32], [8 x i32]* @CG_PlayerAngles.movementOffsets, i64 0, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %111, %115
  %117 = load i32*, i32** %9, align 8
  %118 = load i64, i64* @YAW, align 8
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  store i32 %116, i32* %119, align 4
  %120 = load i32*, i32** %11, align 8
  %121 = load i64, i64* @YAW, align 8
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = sitofp i32 %123 to double
  %125 = load i32, i32* %15, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [8 x i32], [8 x i32]* @CG_PlayerAngles.movementOffsets, i64 0, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = sitofp i32 %128 to double
  %130 = fmul double 2.500000e-01, %129
  %131 = fadd double %124, %130
  %132 = fptosi double %131 to i32
  %133 = load i32*, i32** %10, align 8
  %134 = load i64, i64* @YAW, align 8
  %135 = getelementptr inbounds i32, i32* %133, i64 %134
  store i32 %132, i32* %135, align 4
  %136 = load i32*, i32** %10, align 8
  %137 = load i64, i64* @YAW, align 8
  %138 = getelementptr inbounds i32, i32* %136, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = sitofp i32 %139 to float
  %141 = load float, float* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @cg_swingSpeed, i32 0, i32 0), align 4
  %142 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 3
  %150 = call i32 @CG_SwingAngles(float %140, i32 25, i32 90, float %141, i32* %145, i8** %149)
  %151 = load i32*, i32** %9, align 8
  %152 = load i64, i64* @YAW, align 8
  %153 = getelementptr inbounds i32, i32* %151, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = sitofp i32 %154 to float
  %156 = load float, float* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @cg_swingSpeed, i32 0, i32 0), align 4
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 1
  %165 = call i32 @CG_SwingAngles(float %155, i32 40, i32 90, float %156, i32* %160, i8** %164)
  %166 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load i32*, i32** %10, align 8
  %172 = load i64, i64* @YAW, align 8
  %173 = getelementptr inbounds i32, i32* %171, i64 %172
  store i32 %170, i32* %173, align 4
  %174 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load i32*, i32** %9, align 8
  %180 = load i64, i64* @YAW, align 8
  %181 = getelementptr inbounds i32, i32* %179, i64 %180
  store i32 %178, i32* %181, align 4
  %182 = load i32*, i32** %11, align 8
  %183 = load i64, i64* @PITCH, align 8
  %184 = getelementptr inbounds i32, i32* %182, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = icmp sgt i32 %185, 180
  br i1 %186, label %187, label %195

187:                                              ; preds = %107
  %188 = load i32*, i32** %11, align 8
  %189 = load i64, i64* @PITCH, align 8
  %190 = getelementptr inbounds i32, i32* %188, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = add nsw i32 -360, %191
  %193 = sitofp i32 %192 to float
  %194 = fmul float %193, 7.500000e-01
  store float %194, float* %12, align 4
  br label %202

195:                                              ; preds = %107
  %196 = load i32*, i32** %11, align 8
  %197 = load i64, i64* @PITCH, align 8
  %198 = getelementptr inbounds i32, i32* %196, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = sitofp i32 %199 to float
  %201 = fmul float %200, 7.500000e-01
  store float %201, float* %12, align 4
  br label %202

202:                                              ; preds = %195, %187
  %203 = load float, float* %12, align 4
  %204 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %206, i32 0, i32 1
  %208 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %210, i32 0, i32 2
  %212 = call i32 @CG_SwingAngles(float %203, i32 15, i32 30, float 0x3FB99999A0000000, i32* %207, i8** %211)
  %213 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = load i32*, i32** %10, align 8
  %219 = load i64, i64* @PITCH, align 8
  %220 = getelementptr inbounds i32, i32* %218, i64 %219
  store i32 %217, i32* %220, align 4
  %221 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %222, i32 0, i32 4
  %224 = load i32, i32* %223, align 8
  store i32 %224, i32* %16, align 4
  %225 = load i32, i32* %16, align 4
  %226 = icmp sge i32 %225, 0
  br i1 %226, label %227, label %245

227:                                              ; preds = %202
  %228 = load i32, i32* %16, align 4
  %229 = load i32, i32* @MAX_CLIENTS, align 4
  %230 = icmp slt i32 %228, %229
  br i1 %230, label %231, label %245

231:                                              ; preds = %227
  %232 = load %struct.TYPE_17__*, %struct.TYPE_17__** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cgs, i32 0, i32 0), align 8
  %233 = load i32, i32* %16, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %232, i64 %234
  store %struct.TYPE_17__* %235, %struct.TYPE_17__** %17, align 8
  %236 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %237 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %236, i32 0, i32 1
  %238 = load i64, i64* %237, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %244

240:                                              ; preds = %231
  %241 = load i32*, i32** %10, align 8
  %242 = load i64, i64* @PITCH, align 8
  %243 = getelementptr inbounds i32, i32* %241, i64 %242
  store i32 0, i32* %243, align 4
  br label %244

244:                                              ; preds = %240, %231
  br label %245

245:                                              ; preds = %244, %227, %202
  %246 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %247 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %247, i32 0, i32 5
  %249 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = load i32*, i32** %13, align 8
  %252 = call i32 @VectorCopy(i32 %250, i32* %251)
  %253 = load i32*, i32** %13, align 8
  %254 = call float @VectorNormalize(i32* %253)
  store float %254, float* %14, align 4
  %255 = load float, float* %14, align 4
  %256 = fcmp une float %255, 0.000000e+00
  br i1 %256, label %257, label %291

257:                                              ; preds = %245
  %258 = load float, float* %14, align 4
  %259 = fmul float %258, 0x3FA99999A0000000
  store float %259, float* %14, align 4
  %260 = load i32*, i32** %9, align 8
  %261 = getelementptr inbounds [3 x i32*], [3 x i32*]* %18, i64 0, i64 0
  %262 = call i32 @AnglesToAxis(i32* %260, i32** %261)
  %263 = load float, float* %14, align 4
  %264 = load i32*, i32** %13, align 8
  %265 = getelementptr inbounds [3 x i32*], [3 x i32*]* %18, i64 0, i64 1
  %266 = load i32*, i32** %265, align 8
  %267 = call float @DotProduct(i32* %264, i32* %266)
  %268 = fmul float %263, %267
  store float %268, float* %19, align 4
  %269 = load float, float* %19, align 4
  %270 = load i32*, i32** %9, align 8
  %271 = load i64, i64* @ROLL, align 8
  %272 = getelementptr inbounds i32, i32* %270, i64 %271
  %273 = load i32, i32* %272, align 4
  %274 = sitofp i32 %273 to float
  %275 = fsub float %274, %269
  %276 = fptosi float %275 to i32
  store i32 %276, i32* %272, align 4
  %277 = load float, float* %14, align 4
  %278 = load i32*, i32** %13, align 8
  %279 = getelementptr inbounds [3 x i32*], [3 x i32*]* %18, i64 0, i64 0
  %280 = load i32*, i32** %279, align 16
  %281 = call float @DotProduct(i32* %278, i32* %280)
  %282 = fmul float %277, %281
  store float %282, float* %19, align 4
  %283 = load float, float* %19, align 4
  %284 = load i32*, i32** %9, align 8
  %285 = load i64, i64* @PITCH, align 8
  %286 = getelementptr inbounds i32, i32* %284, i64 %285
  %287 = load i32, i32* %286, align 4
  %288 = sitofp i32 %287 to float
  %289 = fadd float %288, %283
  %290 = fptosi float %289 to i32
  store i32 %290, i32* %286, align 4
  br label %291

291:                                              ; preds = %257, %245
  %292 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %293 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %293, i32 0, i32 4
  %295 = load i32, i32* %294, align 8
  store i32 %295, i32* %16, align 4
  %296 = load i32, i32* %16, align 4
  %297 = icmp sge i32 %296, 0
  br i1 %297, label %298, label %326

298:                                              ; preds = %291
  %299 = load i32, i32* %16, align 4
  %300 = load i32, i32* @MAX_CLIENTS, align 4
  %301 = icmp slt i32 %299, %300
  br i1 %301, label %302, label %326

302:                                              ; preds = %298
  %303 = load %struct.TYPE_17__*, %struct.TYPE_17__** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cgs, i32 0, i32 0), align 8
  %304 = load i32, i32* %16, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %303, i64 %305
  store %struct.TYPE_17__* %306, %struct.TYPE_17__** %17, align 8
  %307 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %308 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %307, i32 0, i32 0
  %309 = load i64, i64* %308, align 8
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %311, label %325

311:                                              ; preds = %302
  %312 = load i32*, i32** %10, align 8
  %313 = load i64, i64* @YAW, align 8
  %314 = getelementptr inbounds i32, i32* %312, i64 %313
  %315 = load i32, i32* %314, align 4
  %316 = load i32*, i32** %9, align 8
  %317 = load i64, i64* @YAW, align 8
  %318 = getelementptr inbounds i32, i32* %316, i64 %317
  store i32 %315, i32* %318, align 4
  %319 = load i32*, i32** %9, align 8
  %320 = load i64, i64* @PITCH, align 8
  %321 = getelementptr inbounds i32, i32* %319, i64 %320
  store i32 0, i32* %321, align 4
  %322 = load i32*, i32** %9, align 8
  %323 = load i64, i64* @ROLL, align 8
  %324 = getelementptr inbounds i32, i32* %322, i64 %323
  store i32 0, i32* %324, align 4
  br label %325

325:                                              ; preds = %311, %302
  br label %326

326:                                              ; preds = %325, %298, %291
  %327 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %328 = load i32*, i32** %10, align 8
  %329 = call i32 @CG_AddPainTwitch(%struct.TYPE_18__* %327, i32* %328)
  %330 = load i32*, i32** %11, align 8
  %331 = load i32*, i32** %10, align 8
  %332 = load i32*, i32** %11, align 8
  %333 = call i32 @AnglesSubtract(i32* %330, i32* %331, i32* %332)
  %334 = load i32*, i32** %10, align 8
  %335 = load i32*, i32** %9, align 8
  %336 = load i32*, i32** %10, align 8
  %337 = call i32 @AnglesSubtract(i32* %334, i32* %335, i32* %336)
  %338 = load i32*, i32** %9, align 8
  %339 = load i32**, i32*** %6, align 8
  %340 = call i32 @AnglesToAxis(i32* %338, i32** %339)
  %341 = load i32*, i32** %10, align 8
  %342 = load i32**, i32*** %7, align 8
  %343 = call i32 @AnglesToAxis(i32* %341, i32** %342)
  %344 = load i32*, i32** %11, align 8
  %345 = load i32**, i32*** %8, align 8
  %346 = call i32 @AnglesToAxis(i32* %344, i32** %345)
  ret void
}

declare dso_local i32 @VectorCopy(i32, i32*) #1

declare dso_local i32 @AngleMod(i32) #1

declare dso_local i32 @VectorClear(i32*) #1

declare dso_local i32 @CG_Error(i8*) #1

declare dso_local i32 @CG_SwingAngles(float, i32, i32, float, i32*, i8**) #1

declare dso_local float @VectorNormalize(i32*) #1

declare dso_local i32 @AnglesToAxis(i32*, i32**) #1

declare dso_local float @DotProduct(i32*, i32*) #1

declare dso_local i32 @CG_AddPainTwitch(%struct.TYPE_18__*, i32*) #1

declare dso_local i32 @AnglesSubtract(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
