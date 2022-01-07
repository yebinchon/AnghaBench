; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_view.c_CG_DrawActiveFrame.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_view.c_CG_DrawActiveFrame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i64*, i32, i64, i64, i32, %struct.TYPE_17__, %struct.TYPE_16__*, %struct.TYPE_14__, i32, i32, i32, i32, i64 }
%struct.TYPE_17__ = type { i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { i64*, i32*, i32 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_19__ = type { float }
%struct.TYPE_12__ = type { i64 }

@cg = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@qfalse = common dso_local global i32 0, align 4
@SNAPFLAG_NOT_ACTIVE = common dso_local global i32 0, align 4
@TEAM_SPECTATOR = common dso_local global i32 0, align 4
@cg_thirdPerson = common dso_local global %struct.TYPE_22__ zeroinitializer, align 8
@STAT_HEALTH = common dso_local global i64 0, align 8
@PERS_TEAM = common dso_local global i64 0, align 8
@TEAM_RED = common dso_local global i32 0, align 4
@cgs = common dso_local global %struct.TYPE_18__ zeroinitializer, align 4
@TEAM_BLUE = common dso_local global i32 0, align 4
@STEREO_RIGHT = common dso_local global i64 0, align 8
@cg_timescale = common dso_local global %struct.TYPE_21__ zeroinitializer, align 8
@cg_timescaleFadeEnd = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@cg_timescaleFadeSpeed = common dso_local global %struct.TYPE_19__ zeroinitializer, align 4
@.str = private unnamed_addr constant [10 x i8] c"timescale\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@cg_stats = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"cg.clientFrame:%i\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CG_DrawActiveFrame(i32 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 -1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cg, i32 0, i32 0), align 8
  %14 = load i64, i64* %7, align 8
  store i64 %14, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cg, i32 0, i32 13), align 8
  %15 = call i32 (...) @CG_UpdateCvars()
  %16 = call i32 (...) @BG_UpdateItems()
  %17 = load i64*, i64** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cg, i32 0, i32 1), align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %4
  %22 = load i64, i64* %8, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = call i32 (...) @CG_DrawInformation()
  br label %26

26:                                               ; preds = %24, %21
  br label %211

27:                                               ; preds = %4
  %28 = load i32, i32* @qfalse, align 4
  %29 = call i32 @trap_S_ClearLoopingSounds(i32 %28)
  %30 = call i32 (...) @trap_R_ClearScene()
  %31 = call i32 (...) @CG_ProcessSnapshots()
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cg, i32 0, i32 7), align 8
  %33 = icmp ne %struct.TYPE_16__* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %27
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cg, i32 0, i32 7), align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @SNAPFLAG_NOT_ACTIVE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %34, %27
  %42 = load i64, i64* %8, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  %45 = call i32 (...) @CG_DrawInformation()
  br label %46

46:                                               ; preds = %44, %41
  br label %211

47:                                               ; preds = %34
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cg, i32 0, i32 12), align 4
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cg, i32 0, i32 11), align 8
  %50 = call i32 @trap_SetUserCmdValue(i32 %48, i32 %49)
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cg, i32 0, i32 5), align 8
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cg, i32 0, i32 5), align 8
  %53 = call i32 (...) @CG_PredictPlayerState()
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @TEAM_SPECTATOR, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %71

57:                                               ; preds = %47
  %58 = load i64, i64* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @cg_thirdPerson, i32 0, i32 0), align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %69, label %60

60:                                               ; preds = %57
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cg, i32 0, i32 7), align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 0
  %64 = load i64*, i64** %63, align 8
  %65 = load i64, i64* @STAT_HEALTH, align 8
  %66 = getelementptr inbounds i64, i64* %64, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = icmp sle i64 %67, 0
  br label %69

69:                                               ; preds = %60, %57
  %70 = phi i1 [ true, %57 ], [ %68, %60 ]
  br label %71

71:                                               ; preds = %69, %47
  %72 = phi i1 [ false, %47 ], [ %70, %69 ]
  %73 = zext i1 %72 to i32
  store i32 %73, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cg, i32 0, i32 2), align 8
  %74 = call i32 (...) @CG_CalcViewValues()
  store i32 %74, i32* %9, align 4
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cg, i32 0, i32 7), align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i64, i64* @PERS_TEAM, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* @TEAM_RED, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %71
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @cgs, i32 0, i32 0), align 4
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @cgs, i32 0, i32 1), align 4
  store i32 %87, i32* %12, align 4
  br label %96

88:                                               ; preds = %71
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* @TEAM_BLUE, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  %93 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @cgs, i32 0, i32 0), align 4
  store i32 %93, i32* %12, align 4
  %94 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @cgs, i32 0, i32 1), align 4
  store i32 %94, i32* %11, align 4
  br label %95

95:                                               ; preds = %92, %88
  br label %96

96:                                               ; preds = %95, %85
  %97 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cg, i32 0, i32 6, i32 2), align 4
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* %12, align 4
  %100 = call i32 @dmlab_player_state(i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cg, i32 0, i32 9), i32 %97, i32 %98, i32 %99)
  %101 = load i64, i64* %8, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %96
  br label %211

104:                                              ; preds = %96
  %105 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cg, i32 0, i32 2), align 8
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %104
  %108 = call i32 (...) @CG_DamageBlendBlob()
  br label %109

109:                                              ; preds = %107, %104
  %110 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cg, i32 0, i32 10), align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %117, label %112

112:                                              ; preds = %109
  %113 = call i32 (...) @CG_AddPacketEntities()
  %114 = call i32 (...) @CG_AddMarks()
  %115 = call i32 (...) @CG_AddParticles()
  %116 = call i32 (...) @CG_AddLocalEntities()
  br label %117

117:                                              ; preds = %112, %109
  %118 = call i32 @CG_AddViewWeapon(i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cg, i32 0, i32 9))
  %119 = call i32 (...) @CG_PlayBufferedSounds()
  %120 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cg, i32 0, i32 8, i32 0), align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %117
  %123 = call i32 (...) @CG_AddTestModel()
  br label %124

124:                                              ; preds = %122, %117
  %125 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cg, i32 0, i32 0), align 8
  store i32 %125, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cg, i32 0, i32 6, i32 0), align 4
  %126 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cg, i32 0, i32 6, i32 3), align 4
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cg, i32 0, i32 7), align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @memcpy(i32 %126, i32 %129, i32 4)
  %131 = call i32 (...) @CG_PowerupTimerSounds()
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cg, i32 0, i32 7), align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cg, i32 0, i32 6, i32 2), align 4
  %137 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cg, i32 0, i32 6, i32 1), align 4
  %138 = load i32, i32* %9, align 4
  %139 = call i32 @trap_S_Respatialize(i32 %135, i32 %136, i32 %137, i32 %138)
  %140 = load i64, i64* %6, align 8
  %141 = load i64, i64* @STEREO_RIGHT, align 8
  %142 = icmp ne i64 %140, %141
  br i1 %142, label %143, label %155

143:                                              ; preds = %124
  %144 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cg, i32 0, i32 0), align 8
  %145 = sext i32 %144 to i64
  %146 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cg, i32 0, i32 4), align 8
  %147 = sub nsw i64 %145, %146
  store i64 %147, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cg, i32 0, i32 3), align 8
  %148 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cg, i32 0, i32 3), align 8
  %149 = icmp slt i64 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %143
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cg, i32 0, i32 3), align 8
  br label %151

151:                                              ; preds = %150, %143
  %152 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cg, i32 0, i32 0), align 8
  %153 = sext i32 %152 to i64
  store i64 %153, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cg, i32 0, i32 4), align 8
  %154 = call i32 (...) @CG_AddLagometerFrameInfo()
  br label %155

155:                                              ; preds = %151, %124
  %156 = load i64, i64* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @cg_timescale, i32 0, i32 0), align 8
  %157 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @cg_timescaleFadeEnd, i32 0, i32 0), align 8
  %158 = icmp ne i64 %156, %157
  br i1 %158, label %159, label %203

159:                                              ; preds = %155
  %160 = load i64, i64* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @cg_timescale, i32 0, i32 0), align 8
  %161 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @cg_timescaleFadeEnd, i32 0, i32 0), align 8
  %162 = icmp slt i64 %160, %161
  br i1 %162, label %163, label %179

163:                                              ; preds = %159
  %164 = load float, float* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cg_timescaleFadeSpeed, i32 0, i32 0), align 4
  %165 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cg, i32 0, i32 3), align 8
  %166 = sitofp i64 %165 to float
  %167 = fmul float %164, %166
  %168 = fdiv float %167, 1.000000e+03
  %169 = load i64, i64* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @cg_timescale, i32 0, i32 0), align 8
  %170 = sitofp i64 %169 to float
  %171 = fadd float %170, %168
  %172 = fptosi float %171 to i64
  store i64 %172, i64* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @cg_timescale, i32 0, i32 0), align 8
  %173 = load i64, i64* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @cg_timescale, i32 0, i32 0), align 8
  %174 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @cg_timescaleFadeEnd, i32 0, i32 0), align 8
  %175 = icmp sgt i64 %173, %174
  br i1 %175, label %176, label %178

176:                                              ; preds = %163
  %177 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @cg_timescaleFadeEnd, i32 0, i32 0), align 8
  store i64 %177, i64* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @cg_timescale, i32 0, i32 0), align 8
  br label %178

178:                                              ; preds = %176, %163
  br label %195

179:                                              ; preds = %159
  %180 = load float, float* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cg_timescaleFadeSpeed, i32 0, i32 0), align 4
  %181 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cg, i32 0, i32 3), align 8
  %182 = sitofp i64 %181 to float
  %183 = fmul float %180, %182
  %184 = fdiv float %183, 1.000000e+03
  %185 = load i64, i64* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @cg_timescale, i32 0, i32 0), align 8
  %186 = sitofp i64 %185 to float
  %187 = fsub float %186, %184
  %188 = fptosi float %187 to i64
  store i64 %188, i64* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @cg_timescale, i32 0, i32 0), align 8
  %189 = load i64, i64* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @cg_timescale, i32 0, i32 0), align 8
  %190 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @cg_timescaleFadeEnd, i32 0, i32 0), align 8
  %191 = icmp slt i64 %189, %190
  br i1 %191, label %192, label %194

192:                                              ; preds = %179
  %193 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @cg_timescaleFadeEnd, i32 0, i32 0), align 8
  store i64 %193, i64* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @cg_timescale, i32 0, i32 0), align 8
  br label %194

194:                                              ; preds = %192, %179
  br label %195

195:                                              ; preds = %194, %178
  %196 = load float, float* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cg_timescaleFadeSpeed, i32 0, i32 0), align 4
  %197 = fcmp une float %196, 0.000000e+00
  br i1 %197, label %198, label %202

198:                                              ; preds = %195
  %199 = load i64, i64* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @cg_timescale, i32 0, i32 0), align 8
  %200 = call i32 @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64 %199)
  %201 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %200)
  br label %202

202:                                              ; preds = %198, %195
  br label %203

203:                                              ; preds = %202, %155
  %204 = load i64, i64* %6, align 8
  %205 = call i32 @CG_DrawActive(i64 %204)
  %206 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg_stats, i32 0, i32 0), align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %203
  %209 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cg, i32 0, i32 5), align 8
  %210 = call i32 @CG_Printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %209)
  br label %211

211:                                              ; preds = %26, %46, %103, %208, %203
  ret void
}

declare dso_local i32 @CG_UpdateCvars(...) #1

declare dso_local i32 @BG_UpdateItems(...) #1

declare dso_local i32 @CG_DrawInformation(...) #1

declare dso_local i32 @trap_S_ClearLoopingSounds(i32) #1

declare dso_local i32 @trap_R_ClearScene(...) #1

declare dso_local i32 @CG_ProcessSnapshots(...) #1

declare dso_local i32 @trap_SetUserCmdValue(i32, i32) #1

declare dso_local i32 @CG_PredictPlayerState(...) #1

declare dso_local i32 @CG_CalcViewValues(...) #1

declare dso_local i32 @dmlab_player_state(i32*, i32, i32, i32) #1

declare dso_local i32 @CG_DamageBlendBlob(...) #1

declare dso_local i32 @CG_AddPacketEntities(...) #1

declare dso_local i32 @CG_AddMarks(...) #1

declare dso_local i32 @CG_AddParticles(...) #1

declare dso_local i32 @CG_AddLocalEntities(...) #1

declare dso_local i32 @CG_AddViewWeapon(i32*) #1

declare dso_local i32 @CG_PlayBufferedSounds(...) #1

declare dso_local i32 @CG_AddTestModel(...) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @CG_PowerupTimerSounds(...) #1

declare dso_local i32 @trap_S_Respatialize(i32, i32, i32, i32) #1

declare dso_local i32 @CG_AddLagometerFrameInfo(...) #1

declare dso_local i32 @trap_Cvar_Set(i8*, i32) #1

declare dso_local i32 @va(i8*, i64) #1

declare dso_local i32 @CG_DrawActive(i64) #1

declare dso_local i32 @CG_Printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
