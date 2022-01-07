; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_ai_dmnet.c_AINode_Battle_Retreat.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_ai_dmnet.c_AINode_Battle_Retreat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_44__ = type { i64 }
%struct.TYPE_45__ = type { i64 }
%struct.TYPE_43__ = type { i64 }
%struct.TYPE_40__ = type { i64, i32, float, i32*, i32, float, float, i32*, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32 }
%struct.TYPE_42__ = type { i32* }
%struct.TYPE_41__ = type { i32, i32*, i32*, i32, i64 }

@.str = private unnamed_addr constant [25 x i8] c"battle retreat: observer\00", align 1
@qfalse = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"battle retreat: intermission\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"battle retreat: bot dead\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"battle retreat: no enemy\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"battle retreat: enemy dead\00", align 1
@TFL_DEFAULT = common dso_local global i32 0, align 4
@bot_grapple = common dso_local global %struct.TYPE_44__ zeroinitializer, align 8
@TFL_GRAPPLEHOOK = common dso_local global i32 0, align 4
@TFL_LAVA = common dso_local global i32 0, align 4
@TFL_SLIME = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"battle retreat: wants to chase\00", align 1
@MAX_CLIENTS = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [27 x i8] c"battle retreat: lost enemy\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"battle retreat: another enemy\00", align 1
@qtrue = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [27 x i8] c"battle retreat: no way out\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"battle retreat: nbg\00", align 1
@MOVERESULT_MOVEMENTVIEW = common dso_local global i32 0, align 4
@MOVERESULT_SWIMVIEW = common dso_local global i32 0, align 4
@MOVERESULT_MOVEMENTVIEWSET = common dso_local global i32 0, align 4
@BFL_IDEALVIEWSET = common dso_local global i32 0, align 4
@CHARACTERISTIC_ATTACK_SKILL = common dso_local global i32 0, align 4
@MOVERESULT_MOVEMENTWEAPON = common dso_local global i32 0, align 4
@GT_1FCTF = common dso_local global i64 0, align 8
@GT_CTF = common dso_local global i64 0, align 8
@GT_HARVESTER = common dso_local global i64 0, align 8
@PRT_MESSAGE = common dso_local global i32 0, align 4
@blueobelisk = common dso_local global %struct.TYPE_45__ zeroinitializer, align 8
@gametype = common dso_local global i64 0, align 8
@redobelisk = common dso_local global %struct.TYPE_43__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AINode_Battle_Retreat(%struct.TYPE_40__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_40__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_42__, align 8
  %6 = alloca %struct.TYPE_41__, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_40__* %0, %struct.TYPE_40__** %3, align 8
  %12 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %13 = call i64 @BotIsObserver(%struct.TYPE_40__* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %17 = call i32 @AIEnter_Observer(%struct.TYPE_40__* %16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @qfalse, align 4
  store i32 %18, i32* %2, align 4
  br label %355

19:                                               ; preds = %1
  %20 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %21 = call i64 @BotIntermission(%struct.TYPE_40__* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %25 = call i32 @AIEnter_Intermission(%struct.TYPE_40__* %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @qfalse, align 4
  store i32 %26, i32* %2, align 4
  br label %355

27:                                               ; preds = %19
  %28 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %29 = call i64 @BotIsDead(%struct.TYPE_40__* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %33 = call i32 @AIEnter_Respawn(%struct.TYPE_40__* %32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %34 = load i32, i32* @qfalse, align 4
  store i32 %34, i32* %2, align 4
  br label %355

35:                                               ; preds = %27
  %36 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %42 = call i32 @AIEnter_Seek_LTG(%struct.TYPE_40__* %41, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %43 = load i32, i32* @qfalse, align 4
  store i32 %43, i32* %2, align 4
  br label %355

44:                                               ; preds = %35
  %45 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @BotEntityInfo(i64 %47, %struct.TYPE_42__* %5)
  %49 = call i64 @EntityIsDead(%struct.TYPE_42__* %5)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %53 = call i32 @AIEnter_Seek_LTG(%struct.TYPE_40__* %52, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %54 = load i32, i32* @qfalse, align 4
  store i32 %54, i32* %2, align 4
  br label %355

55:                                               ; preds = %44
  %56 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %57 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = trunc i64 %59 to i32
  %61 = call i64 @BotFindEnemy(%struct.TYPE_40__* %56, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  br label %64

64:                                               ; preds = %63, %55
  %65 = load i32, i32* @TFL_DEFAULT, align 4
  %66 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 8
  %68 = load i64, i64* getelementptr inbounds (%struct.TYPE_44__, %struct.TYPE_44__* @bot_grapple, i32 0, i32 0), align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %64
  %71 = load i32, i32* @TFL_GRAPPLEHOOK, align 4
  %72 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 8
  br label %76

76:                                               ; preds = %70, %64
  %77 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %78 = call i64 @BotInLavaOrSlime(%struct.TYPE_40__* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %76
  %81 = load i32, i32* @TFL_LAVA, align 4
  %82 = load i32, i32* @TFL_SLIME, align 4
  %83 = or i32 %81, %82
  %84 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 8
  br label %88

88:                                               ; preds = %80, %76
  %89 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %90 = call i32 @BotMapScripts(%struct.TYPE_40__* %89)
  %91 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %92 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = trunc i64 %94 to i32
  %96 = call i32 @BotUpdateBattleInventory(%struct.TYPE_40__* %91, i32 %95)
  %97 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %98 = call i64 @BotWantsToChase(%struct.TYPE_40__* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %88
  %101 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %101, i32 0, i32 17
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @trap_BotEmptyGoalStack(i32 %103)
  %105 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %106 = call i32 @AIEnter_Battle_Chase(%struct.TYPE_40__* %105, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %107 = load i32, i32* @qfalse, align 4
  store i32 %107, i32* %2, align 4
  br label %355

108:                                              ; preds = %88
  %109 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %109, i32 0, i32 16
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %112, i32 0, i32 15
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %115, i32 0, i32 14
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = trunc i64 %120 to i32
  %122 = call i64 @BotEntityVisible(i32 %111, i32 %114, i32 %117, i32 360, i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %157

124:                                              ; preds = %108
  %125 = call float (...) @FloatTime()
  %126 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %126, i32 0, i32 2
  store float %125, float* %127, align 4
  %128 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %5, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = load i32*, i32** %7, align 8
  %131 = call i32 @VectorCopy(i32* %129, i32* %130)
  %132 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @MAX_CLIENTS, align 8
  %136 = icmp sge i64 %134, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %124
  br label %138

138:                                              ; preds = %137, %124
  %139 = load i32*, i32** %7, align 8
  %140 = call i32 @BotPointAreaNum(i32* %139)
  store i32 %140, i32* %11, align 4
  %141 = load i32, i32* %11, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %156

143:                                              ; preds = %138
  %144 = load i32, i32* %11, align 4
  %145 = call i64 @trap_AAS_AreaReachability(i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %156

147:                                              ; preds = %143
  %148 = load i32*, i32** %7, align 8
  %149 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %149, i32 0, i32 3
  %151 = load i32*, i32** %150, align 8
  %152 = call i32 @VectorCopy(i32* %148, i32* %151)
  %153 = load i32, i32* %11, align 4
  %154 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %154, i32 0, i32 4
  store i32 %153, i32* %155, align 8
  br label %156

156:                                              ; preds = %147, %143, %138
  br label %157

157:                                              ; preds = %156, %108
  %158 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %158, i32 0, i32 2
  %160 = load float, float* %159, align 4
  %161 = call float (...) @FloatTime()
  %162 = fsub float %161, 4.000000e+00
  %163 = fcmp olt float %160, %162
  br i1 %163, label %164, label %168

164:                                              ; preds = %157
  %165 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %166 = call i32 @AIEnter_Seek_LTG(%struct.TYPE_40__* %165, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  %167 = load i32, i32* @qfalse, align 4
  store i32 %167, i32* %2, align 4
  br label %355

168:                                              ; preds = %157
  %169 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %169, i32 0, i32 2
  %171 = load float, float* %170, align 4
  %172 = call float (...) @FloatTime()
  %173 = fcmp olt float %171, %172
  br i1 %173, label %174, label %183

174:                                              ; preds = %168
  %175 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %176 = call i64 @BotFindEnemy(%struct.TYPE_40__* %175, i32 -1)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %174
  %179 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %180 = call i32 @AIEnter_Battle_Fight(%struct.TYPE_40__* %179, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  %181 = load i32, i32* @qfalse, align 4
  store i32 %181, i32* %2, align 4
  br label %355

182:                                              ; preds = %174
  br label %183

183:                                              ; preds = %182, %168
  br label %184

184:                                              ; preds = %183
  %185 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %186 = load i32, i32* @qtrue, align 4
  %187 = call i32 @BotTeamGoals(%struct.TYPE_40__* %185, i32 %186)
  %188 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %189 = call i32 @BotBattleUseItems(%struct.TYPE_40__* %188)
  %190 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %191 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* @qtrue, align 4
  %195 = call i32 @BotLongTermGoal(%struct.TYPE_40__* %190, i32 %193, i32 %194, i32* %4)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %201, label %197

197:                                              ; preds = %184
  %198 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %199 = call i32 @AIEnter_Battle_SuicidalFight(%struct.TYPE_40__* %198, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  %200 = load i32, i32* @qfalse, align 4
  store i32 %200, i32* %2, align 4
  br label %355

201:                                              ; preds = %184
  %202 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %202, i32 0, i32 5
  %204 = load float, float* %203, align 4
  %205 = call float (...) @FloatTime()
  %206 = fcmp olt float %204, %205
  br i1 %206, label %207, label %235

207:                                              ; preds = %201
  %208 = call float (...) @FloatTime()
  %209 = fadd float %208, 1.000000e+00
  %210 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %210, i32 0, i32 5
  store float %209, float* %211, align 4
  store float 1.500000e+02, float* %10, align 4
  %212 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %213 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 8
  %216 = load float, float* %10, align 4
  %217 = call i64 @BotNearbyGoal(%struct.TYPE_40__* %212, i32 %215, i32* %4, float %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %234

219:                                              ; preds = %207
  %220 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %220, i32 0, i32 11
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @trap_BotResetLastAvoidReach(i32 %222)
  %224 = call float (...) @FloatTime()
  %225 = load float, float* %10, align 4
  %226 = fdiv float %225, 1.000000e+02
  %227 = fadd float %224, %226
  %228 = fadd float %227, 1.000000e+00
  %229 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %230 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %229, i32 0, i32 6
  store float %228, float* %230, align 8
  %231 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %232 = call i32 @AIEnter_Battle_NBG(%struct.TYPE_40__* %231, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  %233 = load i32, i32* @qfalse, align 4
  store i32 %233, i32* %2, align 4
  br label %355

234:                                              ; preds = %207
  br label %235

235:                                              ; preds = %234, %201
  %236 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %237 = call i32 @BotSetupForMovement(%struct.TYPE_40__* %236)
  %238 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %239 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %238, i32 0, i32 11
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %242 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 8
  %244 = call i32 @trap_BotMoveToGoal(%struct.TYPE_41__* %6, i32 %240, i32* %4, i32 %243)
  %245 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %6, i32 0, i32 4
  %246 = load i64, i64* %245, align 8
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %255

248:                                              ; preds = %235
  %249 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %250 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %249, i32 0, i32 11
  %251 = load i32, i32* %250, align 4
  %252 = call i32 @trap_BotResetAvoidReach(i32 %251)
  %253 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %254 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %253, i32 0, i32 13
  store i64 0, i64* %254, align 8
  br label %255

255:                                              ; preds = %248, %235
  %256 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %257 = load i32, i32* @qfalse, align 4
  %258 = call i32 @BotAIBlocked(%struct.TYPE_40__* %256, %struct.TYPE_41__* %6, i32 %257)
  %259 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %260 = call i32 @BotChooseWeapon(%struct.TYPE_40__* %259)
  %261 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %6, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = load i32, i32* @MOVERESULT_MOVEMENTVIEW, align 4
  %264 = load i32, i32* @MOVERESULT_SWIMVIEW, align 4
  %265 = or i32 %263, %264
  %266 = and i32 %262, %265
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %275

268:                                              ; preds = %255
  %269 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %6, i32 0, i32 1
  %270 = load i32*, i32** %269, align 8
  %271 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %272 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %271, i32 0, i32 7
  %273 = load i32*, i32** %272, align 8
  %274 = call i32 @VectorCopy(i32* %270, i32* %273)
  br label %340

275:                                              ; preds = %255
  %276 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %6, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = load i32, i32* @MOVERESULT_MOVEMENTVIEWSET, align 4
  %279 = and i32 %277, %278
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %339, label %281

281:                                              ; preds = %275
  %282 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %283 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %282, i32 0, i32 8
  %284 = load i32, i32* %283, align 8
  %285 = load i32, i32* @BFL_IDEALVIEWSET, align 4
  %286 = and i32 %284, %285
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %339, label %288

288:                                              ; preds = %281
  %289 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %290 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %289, i32 0, i32 12
  %291 = load i32, i32* %290, align 8
  %292 = load i32, i32* @CHARACTERISTIC_ATTACK_SKILL, align 4
  %293 = call float @trap_Characteristic_BFloat(i32 %291, i32 %292, i32 0, i32 1)
  store float %293, float* %9, align 4
  %294 = load float, float* %9, align 4
  %295 = fpext float %294 to double
  %296 = fcmp ogt double %295, 3.000000e-01
  br i1 %296, label %297, label %300

297:                                              ; preds = %288
  %298 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %299 = call i32 @BotAimAtEnemy(%struct.TYPE_40__* %298)
  br label %338

300:                                              ; preds = %288
  %301 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %302 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %301, i32 0, i32 11
  %303 = load i32, i32* %302, align 4
  %304 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %305 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 8
  %307 = load i32*, i32** %7, align 8
  %308 = call i64 @trap_BotMovementViewTarget(i32 %303, i32* %4, i32 %306, i32 300, i32* %307)
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %322

310:                                              ; preds = %300
  %311 = load i32*, i32** %7, align 8
  %312 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %313 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %312, i32 0, i32 10
  %314 = load i32, i32* %313, align 8
  %315 = load i32*, i32** %8, align 8
  %316 = call i32 @VectorSubtract(i32* %311, i32 %314, i32* %315)
  %317 = load i32*, i32** %8, align 8
  %318 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %319 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %318, i32 0, i32 7
  %320 = load i32*, i32** %319, align 8
  %321 = call i32 @vectoangles(i32* %317, i32* %320)
  br label %329

322:                                              ; preds = %300
  %323 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %6, i32 0, i32 2
  %324 = load i32*, i32** %323, align 8
  %325 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %326 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %325, i32 0, i32 7
  %327 = load i32*, i32** %326, align 8
  %328 = call i32 @vectoangles(i32* %324, i32* %327)
  br label %329

329:                                              ; preds = %322, %310
  %330 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %331 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %330, i32 0, i32 7
  %332 = load i32*, i32** %331, align 8
  %333 = getelementptr inbounds i32, i32* %332, i64 2
  %334 = load i32, i32* %333, align 4
  %335 = sitofp i32 %334 to double
  %336 = fmul double %335, 5.000000e-01
  %337 = fptosi double %336 to i32
  store i32 %337, i32* %333, align 4
  br label %338

338:                                              ; preds = %329, %297
  br label %339

339:                                              ; preds = %338, %281, %275
  br label %340

340:                                              ; preds = %339, %268
  %341 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %6, i32 0, i32 0
  %342 = load i32, i32* %341, align 8
  %343 = load i32, i32* @MOVERESULT_MOVEMENTWEAPON, align 4
  %344 = and i32 %342, %343
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %351

346:                                              ; preds = %340
  %347 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %6, i32 0, i32 3
  %348 = load i32, i32* %347, align 8
  %349 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %350 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %349, i32 0, i32 9
  store i32 %348, i32* %350, align 4
  br label %351

351:                                              ; preds = %346, %340
  %352 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %353 = call i32 @BotCheckAttack(%struct.TYPE_40__* %352)
  %354 = load i32, i32* @qtrue, align 4
  store i32 %354, i32* %2, align 4
  br label %355

355:                                              ; preds = %351, %219, %197, %178, %164, %100, %51, %40, %31, %23, %15
  %356 = load i32, i32* %2, align 4
  ret i32 %356
}

declare dso_local i64 @BotIsObserver(%struct.TYPE_40__*) #1

declare dso_local i32 @AIEnter_Observer(%struct.TYPE_40__*, i8*) #1

declare dso_local i64 @BotIntermission(%struct.TYPE_40__*) #1

declare dso_local i32 @AIEnter_Intermission(%struct.TYPE_40__*, i8*) #1

declare dso_local i64 @BotIsDead(%struct.TYPE_40__*) #1

declare dso_local i32 @AIEnter_Respawn(%struct.TYPE_40__*, i8*) #1

declare dso_local i32 @AIEnter_Seek_LTG(%struct.TYPE_40__*, i8*) #1

declare dso_local i32 @BotEntityInfo(i64, %struct.TYPE_42__*) #1

declare dso_local i64 @EntityIsDead(%struct.TYPE_42__*) #1

declare dso_local i64 @BotFindEnemy(%struct.TYPE_40__*, i32) #1

declare dso_local i64 @BotInLavaOrSlime(%struct.TYPE_40__*) #1

declare dso_local i32 @BotMapScripts(%struct.TYPE_40__*) #1

declare dso_local i32 @BotUpdateBattleInventory(%struct.TYPE_40__*, i32) #1

declare dso_local i64 @BotWantsToChase(%struct.TYPE_40__*) #1

declare dso_local i32 @trap_BotEmptyGoalStack(i32) #1

declare dso_local i32 @AIEnter_Battle_Chase(%struct.TYPE_40__*, i8*) #1

declare dso_local i64 @BotEntityVisible(i32, i32, i32, i32, i32) #1

declare dso_local float @FloatTime(...) #1

declare dso_local i32 @VectorCopy(i32*, i32*) #1

declare dso_local i32 @BotPointAreaNum(i32*) #1

declare dso_local i64 @trap_AAS_AreaReachability(i32) #1

declare dso_local i32 @AIEnter_Battle_Fight(%struct.TYPE_40__*, i8*) #1

declare dso_local i32 @BotTeamGoals(%struct.TYPE_40__*, i32) #1

declare dso_local i32 @BotBattleUseItems(%struct.TYPE_40__*) #1

declare dso_local i32 @BotLongTermGoal(%struct.TYPE_40__*, i32, i32, i32*) #1

declare dso_local i32 @AIEnter_Battle_SuicidalFight(%struct.TYPE_40__*, i8*) #1

declare dso_local i64 @BotNearbyGoal(%struct.TYPE_40__*, i32, i32*, float) #1

declare dso_local i32 @trap_BotResetLastAvoidReach(i32) #1

declare dso_local i32 @AIEnter_Battle_NBG(%struct.TYPE_40__*, i8*) #1

declare dso_local i32 @BotSetupForMovement(%struct.TYPE_40__*) #1

declare dso_local i32 @trap_BotMoveToGoal(%struct.TYPE_41__*, i32, i32*, i32) #1

declare dso_local i32 @trap_BotResetAvoidReach(i32) #1

declare dso_local i32 @BotAIBlocked(%struct.TYPE_40__*, %struct.TYPE_41__*, i32) #1

declare dso_local i32 @BotChooseWeapon(%struct.TYPE_40__*) #1

declare dso_local float @trap_Characteristic_BFloat(i32, i32, i32, i32) #1

declare dso_local i32 @BotAimAtEnemy(%struct.TYPE_40__*) #1

declare dso_local i64 @trap_BotMovementViewTarget(i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @VectorSubtract(i32*, i32, i32*) #1

declare dso_local i32 @vectoangles(i32*, i32*) #1

declare dso_local i32 @BotCheckAttack(%struct.TYPE_40__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
