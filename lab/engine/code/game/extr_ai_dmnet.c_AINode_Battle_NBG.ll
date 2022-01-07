; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_ai_dmnet.c_AINode_Battle_NBG.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_ai_dmnet.c_AINode_Battle_NBG.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_35__ = type { i64 }
%struct.TYPE_36__ = type { i64 }
%struct.TYPE_34__ = type { i64 }
%struct.TYPE_31__ = type { i64, i32, i32*, i32, i64, i32*, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32 }
%struct.TYPE_33__ = type { i32* }
%struct.TYPE_32__ = type { i32, i32*, i32*, i32, i64 }

@.str = private unnamed_addr constant [21 x i8] c"battle nbg: observer\00", align 1
@qfalse = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"battle nbg: intermission\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"battle nbg: bot dead\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"battle nbg: no enemy\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"battle nbg: enemy dead\00", align 1
@TFL_DEFAULT = common dso_local global i32 0, align 4
@bot_grapple = common dso_local global %struct.TYPE_35__ zeroinitializer, align 8
@TFL_GRAPPLEHOOK = common dso_local global i32 0, align 4
@TFL_LAVA = common dso_local global i32 0, align 4
@TFL_SLIME = common dso_local global i32 0, align 4
@TFL_ROCKETJUMP = common dso_local global i32 0, align 4
@MAX_CLIENTS = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [21 x i8] c"battle nbg: time out\00", align 1
@MOVERESULT_MOVEMENTVIEW = common dso_local global i32 0, align 4
@MOVERESULT_SWIMVIEW = common dso_local global i32 0, align 4
@MOVERESULT_MOVEMENTVIEWSET = common dso_local global i32 0, align 4
@BFL_IDEALVIEWSET = common dso_local global i32 0, align 4
@CHARACTERISTIC_ATTACK_SKILL = common dso_local global i32 0, align 4
@MOVERESULT_MOVEMENTWEAPON = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@blueobelisk = common dso_local global %struct.TYPE_36__ zeroinitializer, align 8
@redobelisk = common dso_local global %struct.TYPE_34__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AINode_Battle_NBG(%struct.TYPE_31__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_31__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_33__, align 8
  %7 = alloca %struct.TYPE_32__, align 8
  %8 = alloca float, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %3, align 8
  %11 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %12 = call i64 @BotIsObserver(%struct.TYPE_31__* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %16 = call i32 @AIEnter_Observer(%struct.TYPE_31__* %15, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @qfalse, align 4
  store i32 %17, i32* %2, align 4
  br label %304

18:                                               ; preds = %1
  %19 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %20 = call i64 @BotIntermission(%struct.TYPE_31__* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %24 = call i32 @AIEnter_Intermission(%struct.TYPE_31__* %23, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* @qfalse, align 4
  store i32 %25, i32* %2, align 4
  br label %304

26:                                               ; preds = %18
  %27 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %28 = call i64 @BotIsDead(%struct.TYPE_31__* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %32 = call i32 @AIEnter_Respawn(%struct.TYPE_31__* %31, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %33 = load i32, i32* @qfalse, align 4
  store i32 %33, i32* %2, align 4
  br label %304

34:                                               ; preds = %26
  %35 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %41 = call i32 @AIEnter_Seek_NBG(%struct.TYPE_31__* %40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %42 = load i32, i32* @qfalse, align 4
  store i32 %42, i32* %2, align 4
  br label %304

43:                                               ; preds = %34
  %44 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @BotEntityInfo(i64 %46, %struct.TYPE_33__* %6)
  %48 = call i64 @EntityIsDead(%struct.TYPE_33__* %6)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %43
  %51 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %52 = call i32 @AIEnter_Seek_NBG(%struct.TYPE_31__* %51, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %53 = load i32, i32* @qfalse, align 4
  store i32 %53, i32* %2, align 4
  br label %304

54:                                               ; preds = %43
  %55 = load i32, i32* @TFL_DEFAULT, align 4
  %56 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 8
  %58 = load i64, i64* getelementptr inbounds (%struct.TYPE_35__, %struct.TYPE_35__* @bot_grapple, i32 0, i32 0), align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %54
  %61 = load i32, i32* @TFL_GRAPPLEHOOK, align 4
  %62 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 8
  br label %66

66:                                               ; preds = %60, %54
  %67 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %68 = call i64 @BotInLavaOrSlime(%struct.TYPE_31__* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %66
  %71 = load i32, i32* @TFL_LAVA, align 4
  %72 = load i32, i32* @TFL_SLIME, align 4
  %73 = or i32 %71, %72
  %74 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 8
  br label %78

78:                                               ; preds = %70, %66
  %79 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %80 = call i64 @BotCanAndWantsToRocketJump(%struct.TYPE_31__* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %78
  %83 = load i32, i32* @TFL_ROCKETJUMP, align 4
  %84 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 8
  br label %88

88:                                               ; preds = %82, %78
  %89 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %90 = call i32 @BotMapScripts(%struct.TYPE_31__* %89)
  %91 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %91, i32 0, i32 15
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %94, i32 0, i32 14
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %97, i32 0, i32 13
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i64 @BotEntityVisible(i32 %93, i32 %96, i32 %99, i32 360, i64 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %138

105:                                              ; preds = %88
  %106 = call i64 (...) @FloatTime()
  %107 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %107, i32 0, i32 12
  store i64 %106, i64* %108, align 8
  %109 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %6, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = load i32*, i32** %9, align 8
  %112 = call i32 @VectorCopy(i32* %110, i32* %111)
  %113 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @MAX_CLIENTS, align 8
  %117 = icmp sge i64 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %105
  br label %119

119:                                              ; preds = %118, %105
  %120 = load i32*, i32** %9, align 8
  %121 = call i32 @BotPointAreaNum(i32* %120)
  store i32 %121, i32* %4, align 4
  %122 = load i32, i32* %4, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %137

124:                                              ; preds = %119
  %125 = load i32, i32* %4, align 4
  %126 = call i64 @trap_AAS_AreaReachability(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %137

128:                                              ; preds = %124
  %129 = load i32*, i32** %9, align 8
  %130 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %130, i32 0, i32 2
  %132 = load i32*, i32** %131, align 8
  %133 = call i32 @VectorCopy(i32* %129, i32* %132)
  %134 = load i32, i32* %4, align 4
  %135 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %135, i32 0, i32 3
  store i32 %134, i32* %136, align 8
  br label %137

137:                                              ; preds = %128, %124, %119
  br label %138

138:                                              ; preds = %137, %88
  %139 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %139, i32 0, i32 11
  %141 = load i32, i32* %140, align 4
  %142 = call i64 @trap_BotGetTopGoal(i32 %141, i32* %5)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %147, label %144

144:                                              ; preds = %138
  %145 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %145, i32 0, i32 4
  store i64 0, i64* %146, align 8
  br label %155

147:                                              ; preds = %138
  %148 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %149 = call i64 @BotReachedGoal(%struct.TYPE_31__* %148, i32* %5)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %147
  %152 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %152, i32 0, i32 4
  store i64 0, i64* %153, align 8
  br label %154

154:                                              ; preds = %151, %147
  br label %155

155:                                              ; preds = %154, %144
  %156 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %156, i32 0, i32 4
  %158 = load i64, i64* %157, align 8
  %159 = call i64 (...) @FloatTime()
  %160 = icmp slt i64 %158, %159
  br i1 %160, label %161, label %179

161:                                              ; preds = %155
  %162 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %162, i32 0, i32 11
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @trap_BotPopGoal(i32 %164)
  %166 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %166, i32 0, i32 11
  %168 = load i32, i32* %167, align 4
  %169 = call i64 @trap_BotGetTopGoal(i32 %168, i32* %5)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %161
  %172 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %173 = call i32 @AIEnter_Battle_Retreat(%struct.TYPE_31__* %172, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  br label %177

174:                                              ; preds = %161
  %175 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %176 = call i32 @AIEnter_Battle_Fight(%struct.TYPE_31__* %175, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  br label %177

177:                                              ; preds = %174, %171
  %178 = load i32, i32* @qfalse, align 4
  store i32 %178, i32* %2, align 4
  br label %304

179:                                              ; preds = %155
  %180 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %181 = call i32 @BotSetupForMovement(%struct.TYPE_31__* %180)
  %182 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %182, i32 0, i32 9
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @trap_BotMoveToGoal(%struct.TYPE_32__* %7, i32 %184, i32* %5, i32 %187)
  %189 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %7, i32 0, i32 4
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %199

192:                                              ; preds = %179
  %193 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %193, i32 0, i32 9
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @trap_BotResetAvoidReach(i32 %195)
  %197 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %197, i32 0, i32 4
  store i64 0, i64* %198, align 8
  br label %199

199:                                              ; preds = %192, %179
  %200 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %201 = load i32, i32* @qfalse, align 4
  %202 = call i32 @BotAIBlocked(%struct.TYPE_31__* %200, %struct.TYPE_32__* %7, i32 %201)
  %203 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %204 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = call i32 @BotUpdateBattleInventory(%struct.TYPE_31__* %203, i64 %206)
  %208 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %209 = call i32 @BotChooseWeapon(%struct.TYPE_31__* %208)
  %210 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %7, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* @MOVERESULT_MOVEMENTVIEW, align 4
  %213 = load i32, i32* @MOVERESULT_SWIMVIEW, align 4
  %214 = or i32 %212, %213
  %215 = and i32 %211, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %224

217:                                              ; preds = %199
  %218 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %7, i32 0, i32 1
  %219 = load i32*, i32** %218, align 8
  %220 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %220, i32 0, i32 5
  %222 = load i32*, i32** %221, align 8
  %223 = call i32 @VectorCopy(i32* %219, i32* %222)
  br label %289

224:                                              ; preds = %199
  %225 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %7, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = load i32, i32* @MOVERESULT_MOVEMENTVIEWSET, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %288, label %230

230:                                              ; preds = %224
  %231 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %232 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %231, i32 0, i32 6
  %233 = load i32, i32* %232, align 8
  %234 = load i32, i32* @BFL_IDEALVIEWSET, align 4
  %235 = and i32 %233, %234
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %288, label %237

237:                                              ; preds = %230
  %238 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %239 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %238, i32 0, i32 10
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* @CHARACTERISTIC_ATTACK_SKILL, align 4
  %242 = call float @trap_Characteristic_BFloat(i32 %240, i32 %241, i32 0, i32 1)
  store float %242, float* %8, align 4
  %243 = load float, float* %8, align 4
  %244 = fpext float %243 to double
  %245 = fcmp ogt double %244, 3.000000e-01
  br i1 %245, label %246, label %249

246:                                              ; preds = %237
  %247 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %248 = call i32 @BotAimAtEnemy(%struct.TYPE_31__* %247)
  br label %287

249:                                              ; preds = %237
  %250 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %251 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %250, i32 0, i32 9
  %252 = load i32, i32* %251, align 4
  %253 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %254 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 8
  %256 = load i32*, i32** %9, align 8
  %257 = call i64 @trap_BotMovementViewTarget(i32 %252, i32* %5, i32 %255, i32 300, i32* %256)
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %271

259:                                              ; preds = %249
  %260 = load i32*, i32** %9, align 8
  %261 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %262 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %261, i32 0, i32 8
  %263 = load i32, i32* %262, align 8
  %264 = load i32*, i32** %10, align 8
  %265 = call i32 @VectorSubtract(i32* %260, i32 %263, i32* %264)
  %266 = load i32*, i32** %10, align 8
  %267 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %268 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %267, i32 0, i32 5
  %269 = load i32*, i32** %268, align 8
  %270 = call i32 @vectoangles(i32* %266, i32* %269)
  br label %278

271:                                              ; preds = %249
  %272 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %7, i32 0, i32 2
  %273 = load i32*, i32** %272, align 8
  %274 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %275 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %274, i32 0, i32 5
  %276 = load i32*, i32** %275, align 8
  %277 = call i32 @vectoangles(i32* %273, i32* %276)
  br label %278

278:                                              ; preds = %271, %259
  %279 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %280 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %279, i32 0, i32 5
  %281 = load i32*, i32** %280, align 8
  %282 = getelementptr inbounds i32, i32* %281, i64 2
  %283 = load i32, i32* %282, align 4
  %284 = sitofp i32 %283 to double
  %285 = fmul double %284, 5.000000e-01
  %286 = fptosi double %285 to i32
  store i32 %286, i32* %282, align 4
  br label %287

287:                                              ; preds = %278, %246
  br label %288

288:                                              ; preds = %287, %230, %224
  br label %289

289:                                              ; preds = %288, %217
  %290 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %7, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = load i32, i32* @MOVERESULT_MOVEMENTWEAPON, align 4
  %293 = and i32 %291, %292
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %300

295:                                              ; preds = %289
  %296 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %7, i32 0, i32 3
  %297 = load i32, i32* %296, align 8
  %298 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %299 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %298, i32 0, i32 7
  store i32 %297, i32* %299, align 4
  br label %300

300:                                              ; preds = %295, %289
  %301 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %302 = call i32 @BotCheckAttack(%struct.TYPE_31__* %301)
  %303 = load i32, i32* @qtrue, align 4
  store i32 %303, i32* %2, align 4
  br label %304

304:                                              ; preds = %300, %177, %50, %39, %30, %22, %14
  %305 = load i32, i32* %2, align 4
  ret i32 %305
}

declare dso_local i64 @BotIsObserver(%struct.TYPE_31__*) #1

declare dso_local i32 @AIEnter_Observer(%struct.TYPE_31__*, i8*) #1

declare dso_local i64 @BotIntermission(%struct.TYPE_31__*) #1

declare dso_local i32 @AIEnter_Intermission(%struct.TYPE_31__*, i8*) #1

declare dso_local i64 @BotIsDead(%struct.TYPE_31__*) #1

declare dso_local i32 @AIEnter_Respawn(%struct.TYPE_31__*, i8*) #1

declare dso_local i32 @AIEnter_Seek_NBG(%struct.TYPE_31__*, i8*) #1

declare dso_local i32 @BotEntityInfo(i64, %struct.TYPE_33__*) #1

declare dso_local i64 @EntityIsDead(%struct.TYPE_33__*) #1

declare dso_local i64 @BotInLavaOrSlime(%struct.TYPE_31__*) #1

declare dso_local i64 @BotCanAndWantsToRocketJump(%struct.TYPE_31__*) #1

declare dso_local i32 @BotMapScripts(%struct.TYPE_31__*) #1

declare dso_local i64 @BotEntityVisible(i32, i32, i32, i32, i64) #1

declare dso_local i64 @FloatTime(...) #1

declare dso_local i32 @VectorCopy(i32*, i32*) #1

declare dso_local i32 @BotPointAreaNum(i32*) #1

declare dso_local i64 @trap_AAS_AreaReachability(i32) #1

declare dso_local i64 @trap_BotGetTopGoal(i32, i32*) #1

declare dso_local i64 @BotReachedGoal(%struct.TYPE_31__*, i32*) #1

declare dso_local i32 @trap_BotPopGoal(i32) #1

declare dso_local i32 @AIEnter_Battle_Retreat(%struct.TYPE_31__*, i8*) #1

declare dso_local i32 @AIEnter_Battle_Fight(%struct.TYPE_31__*, i8*) #1

declare dso_local i32 @BotSetupForMovement(%struct.TYPE_31__*) #1

declare dso_local i32 @trap_BotMoveToGoal(%struct.TYPE_32__*, i32, i32*, i32) #1

declare dso_local i32 @trap_BotResetAvoidReach(i32) #1

declare dso_local i32 @BotAIBlocked(%struct.TYPE_31__*, %struct.TYPE_32__*, i32) #1

declare dso_local i32 @BotUpdateBattleInventory(%struct.TYPE_31__*, i64) #1

declare dso_local i32 @BotChooseWeapon(%struct.TYPE_31__*) #1

declare dso_local float @trap_Characteristic_BFloat(i32, i32, i32, i32) #1

declare dso_local i32 @BotAimAtEnemy(%struct.TYPE_31__*) #1

declare dso_local i64 @trap_BotMovementViewTarget(i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @VectorSubtract(i32*, i32, i32*) #1

declare dso_local i32 @vectoangles(i32*, i32*) #1

declare dso_local i32 @BotCheckAttack(%struct.TYPE_31__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
