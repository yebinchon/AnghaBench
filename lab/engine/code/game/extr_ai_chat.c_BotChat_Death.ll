; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_ai_chat.c_BotChat_Death.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_ai_chat.c_BotChat_Death.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i64, i64, i64, i64, i32, i32, i32, i64 }

@bot_nochat = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@qfalse = common dso_local global i32 0, align 4
@TIME_BETWEENCHATTING = common dso_local global i64 0, align 8
@CHARACTERISTIC_CHAT_DEATH = common dso_local global i32 0, align 4
@gametype = common dso_local global i64 0, align 8
@GT_TOURNAMENT = common dso_local global i64 0, align 8
@bot_fastchat = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@MAX_CLIENTS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"[world]\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"death_teammate\00", align 1
@CHAT_TEAM = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@MOD_WATER = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"death_drown\00", align 1
@MOD_SLIME = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"death_slime\00", align 1
@MOD_LAVA = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"death_lava\00", align 1
@MOD_FALLING = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [15 x i8] c"death_cratered\00", align 1
@MOD_CRUSH = common dso_local global i64 0, align 8
@MOD_SUICIDE = common dso_local global i64 0, align 8
@MOD_TARGET_LASER = common dso_local global i64 0, align 8
@MOD_TRIGGER_HURT = common dso_local global i64 0, align 8
@MOD_UNKNOWN = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [14 x i8] c"death_suicide\00", align 1
@MOD_TELEFRAG = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [15 x i8] c"death_telefrag\00", align 1
@MOD_GAUNTLET = common dso_local global i64 0, align 8
@MOD_RAILGUN = common dso_local global i64 0, align 8
@MOD_BFG = common dso_local global i64 0, align 8
@MOD_BFG_SPLASH = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [15 x i8] c"death_gauntlet\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"death_rail\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"death_bfg\00", align 1
@CHARACTERISTIC_CHAT_INSULT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [13 x i8] c"death_insult\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"death_praise\00", align 1
@CHAT_ALL = common dso_local global i32 0, align 4
@MOD_KAMIKAZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BotChat_Death(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca [32 x i8], align 16
  %5 = alloca float, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @bot_nochat, i32 0, i32 0), align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @qfalse, align 4
  store i32 %9, i32* %2, align 4
  br label %309

10:                                               ; preds = %1
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i64 (...) @FloatTime()
  %15 = load i64, i64* @TIME_BETWEENCHATTING, align 8
  %16 = sub nsw i64 %14, %15
  %17 = icmp sgt i64 %13, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %10
  %19 = load i32, i32* @qfalse, align 4
  store i32 %19, i32* %2, align 4
  br label %309

20:                                               ; preds = %10
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @CHARACTERISTIC_CHAT_DEATH, align 4
  %25 = call double @trap_Characteristic_BFloat(i32 %23, i32 %24, i32 0, i32 1)
  %26 = fptrunc double %25 to float
  store float %26, float* %5, align 4
  %27 = load i64, i64* @gametype, align 8
  %28 = load i64, i64* @GT_TOURNAMENT, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  %31 = load i32, i32* @qfalse, align 4
  store i32 %31, i32* %2, align 4
  br label %309

32:                                               ; preds = %20
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @bot_fastchat, i32 0, i32 0), align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %32
  %36 = call double (...) @random()
  %37 = load float, float* %5, align 4
  %38 = fpext float %37 to double
  %39 = fcmp ogt double %36, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @qfalse, align 4
  store i32 %41, i32* %2, align 4
  br label %309

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %42, %32
  %44 = call i32 (...) @BotNumActivePlayers()
  %45 = icmp sle i32 %44, 1
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i32, i32* @qfalse, align 4
  store i32 %47, i32* %2, align 4
  br label %309

48:                                               ; preds = %43
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp sge i64 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %48
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @MAX_CLIENTS, align 8
  %58 = icmp slt i64 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %64 = call i32 @EasyClientName(i64 %62, i8* %63, i32 32)
  br label %68

65:                                               ; preds = %53, %48
  %66 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %67 = call i32 @strcpy(i8* %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %68

68:                                               ; preds = %65, %59
  %69 = call i64 (...) @TeamPlayIsOn()
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %95

71:                                               ; preds = %68
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = call i64 @BotSameTeam(%struct.TYPE_8__* %72, i64 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %95

78:                                               ; preds = %71
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %81, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %78
  %87 = load i32, i32* @qfalse, align 4
  store i32 %87, i32* %2, align 4
  br label %309

88:                                               ; preds = %78
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %90 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %91 = call i32 (%struct.TYPE_8__*, i8*, i8*, i32, ...) @BotAI_BotInitialChat(%struct.TYPE_8__* %89, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %90, i32 0)
  %92 = load i32, i32* @CHAT_TEAM, align 4
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 4
  store i32 %92, i32* %94, align 8
  br label %304

95:                                               ; preds = %71, %68
  %96 = call i64 (...) @TeamPlayIsOn()
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %95
  %99 = load i32, i32* @qtrue, align 4
  store i32 %99, i32* %2, align 4
  br label %309

100:                                              ; preds = %95
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @MOD_WATER, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %113

106:                                              ; preds = %100
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %109 = call i32 @BotRandomOpponentName(%struct.TYPE_8__* %108)
  %110 = sext i32 %109 to i64
  %111 = inttoptr i64 %110 to i8*
  %112 = call i32 (%struct.TYPE_8__*, i8*, i8*, i32, ...) @BotAI_BotInitialChat(%struct.TYPE_8__* %107, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %111, i32 0)
  br label %300

113:                                              ; preds = %100
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @MOD_SLIME, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %126

119:                                              ; preds = %113
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %122 = call i32 @BotRandomOpponentName(%struct.TYPE_8__* %121)
  %123 = sext i32 %122 to i64
  %124 = inttoptr i64 %123 to i8*
  %125 = call i32 (%struct.TYPE_8__*, i8*, i8*, i32, ...) @BotAI_BotInitialChat(%struct.TYPE_8__* %120, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %124, i32 0)
  br label %299

126:                                              ; preds = %113
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 3
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @MOD_LAVA, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %139

132:                                              ; preds = %126
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %135 = call i32 @BotRandomOpponentName(%struct.TYPE_8__* %134)
  %136 = sext i32 %135 to i64
  %137 = inttoptr i64 %136 to i8*
  %138 = call i32 (%struct.TYPE_8__*, i8*, i8*, i32, ...) @BotAI_BotInitialChat(%struct.TYPE_8__* %133, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %137, i32 0)
  br label %298

139:                                              ; preds = %126
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 3
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @MOD_FALLING, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %152

145:                                              ; preds = %139
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %148 = call i32 @BotRandomOpponentName(%struct.TYPE_8__* %147)
  %149 = sext i32 %148 to i64
  %150 = inttoptr i64 %149 to i8*
  %151 = call i32 (%struct.TYPE_8__*, i8*, i8*, i32, ...) @BotAI_BotInitialChat(%struct.TYPE_8__* %146, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* %150, i32 0)
  br label %297

152:                                              ; preds = %139
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 7
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %187, label %157

157:                                              ; preds = %152
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 3
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @MOD_CRUSH, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %187, label %163

163:                                              ; preds = %157
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 3
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @MOD_SUICIDE, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %187, label %169

169:                                              ; preds = %163
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 3
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @MOD_TARGET_LASER, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %187, label %175

175:                                              ; preds = %169
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 3
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @MOD_TRIGGER_HURT, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %187, label %181

181:                                              ; preds = %175
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 3
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @MOD_UNKNOWN, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %187, label %194

187:                                              ; preds = %181, %175, %169, %163, %157, %152
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %190 = call i32 @BotRandomOpponentName(%struct.TYPE_8__* %189)
  %191 = sext i32 %190 to i64
  %192 = inttoptr i64 %191 to i8*
  %193 = call i32 (%struct.TYPE_8__*, i8*, i8*, i32, ...) @BotAI_BotInitialChat(%struct.TYPE_8__* %188, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* %192, i32 0)
  br label %296

194:                                              ; preds = %181
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 3
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @MOD_TELEFRAG, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %200, label %204

200:                                              ; preds = %194
  %201 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %202 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %203 = call i32 (%struct.TYPE_8__*, i8*, i8*, i32, ...) @BotAI_BotInitialChat(%struct.TYPE_8__* %201, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8* %202, i32 0)
  br label %295

204:                                              ; preds = %194
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 3
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* @MOD_GAUNTLET, align 8
  %209 = icmp eq i64 %207, %208
  br i1 %209, label %228, label %210

210:                                              ; preds = %204
  %211 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 3
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @MOD_RAILGUN, align 8
  %215 = icmp eq i64 %213, %214
  br i1 %215, label %228, label %216

216:                                              ; preds = %210
  %217 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 3
  %219 = load i64, i64* %218, align 8
  %220 = load i64, i64* @MOD_BFG, align 8
  %221 = icmp eq i64 %219, %220
  br i1 %221, label %228, label %222

222:                                              ; preds = %216
  %223 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i32 0, i32 3
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* @MOD_BFG_SPLASH, align 8
  %227 = icmp eq i64 %225, %226
  br i1 %227, label %228, label %269

228:                                              ; preds = %222, %216, %210, %204
  %229 = call double (...) @random()
  %230 = fcmp olt double %229, 5.000000e-01
  br i1 %230, label %231, label %269

231:                                              ; preds = %228
  %232 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i32 0, i32 3
  %234 = load i64, i64* %233, align 8
  %235 = load i64, i64* @MOD_GAUNTLET, align 8
  %236 = icmp eq i64 %234, %235
  br i1 %236, label %237, label %245

237:                                              ; preds = %231
  %238 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %239 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %240 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %241 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %240, i32 0, i32 3
  %242 = load i64, i64* %241, align 8
  %243 = call i32 @BotWeaponNameForMeansOfDeath(i64 %242)
  %244 = call i32 (%struct.TYPE_8__*, i8*, i8*, i32, ...) @BotAI_BotInitialChat(%struct.TYPE_8__* %238, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8* %239, i32 %243, i8* null)
  br label %268

245:                                              ; preds = %231
  %246 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %247 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %246, i32 0, i32 3
  %248 = load i64, i64* %247, align 8
  %249 = load i64, i64* @MOD_RAILGUN, align 8
  %250 = icmp eq i64 %248, %249
  br i1 %250, label %251, label %259

251:                                              ; preds = %245
  %252 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %253 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %254 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %254, i32 0, i32 3
  %256 = load i64, i64* %255, align 8
  %257 = call i32 @BotWeaponNameForMeansOfDeath(i64 %256)
  %258 = call i32 (%struct.TYPE_8__*, i8*, i8*, i32, ...) @BotAI_BotInitialChat(%struct.TYPE_8__* %252, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8* %253, i32 %257, i8* null)
  br label %267

259:                                              ; preds = %245
  %260 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %261 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %262 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %263 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %262, i32 0, i32 3
  %264 = load i64, i64* %263, align 8
  %265 = call i32 @BotWeaponNameForMeansOfDeath(i64 %264)
  %266 = call i32 (%struct.TYPE_8__*, i8*, i8*, i32, ...) @BotAI_BotInitialChat(%struct.TYPE_8__* %260, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* %261, i32 %265, i8* null)
  br label %267

267:                                              ; preds = %259, %251
  br label %268

268:                                              ; preds = %267, %237
  br label %294

269:                                              ; preds = %228, %222
  %270 = call double (...) @random()
  %271 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %272 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %271, i32 0, i32 5
  %273 = load i32, i32* %272, align 4
  %274 = load i32, i32* @CHARACTERISTIC_CHAT_INSULT, align 4
  %275 = call double @trap_Characteristic_BFloat(i32 %273, i32 %274, i32 0, i32 1)
  %276 = fcmp olt double %270, %275
  br i1 %276, label %277, label %285

277:                                              ; preds = %269
  %278 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %279 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %280 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %281 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %280, i32 0, i32 3
  %282 = load i64, i64* %281, align 8
  %283 = call i32 @BotWeaponNameForMeansOfDeath(i64 %282)
  %284 = call i32 (%struct.TYPE_8__*, i8*, i8*, i32, ...) @BotAI_BotInitialChat(%struct.TYPE_8__* %278, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i8* %279, i32 %283, i8* null)
  br label %293

285:                                              ; preds = %269
  %286 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %287 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %288 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %289 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %288, i32 0, i32 3
  %290 = load i64, i64* %289, align 8
  %291 = call i32 @BotWeaponNameForMeansOfDeath(i64 %290)
  %292 = call i32 (%struct.TYPE_8__*, i8*, i8*, i32, ...) @BotAI_BotInitialChat(%struct.TYPE_8__* %286, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i8* %287, i32 %291, i8* null)
  br label %293

293:                                              ; preds = %285, %277
  br label %294

294:                                              ; preds = %293, %268
  br label %295

295:                                              ; preds = %294, %200
  br label %296

296:                                              ; preds = %295, %187
  br label %297

297:                                              ; preds = %296, %145
  br label %298

298:                                              ; preds = %297, %132
  br label %299

299:                                              ; preds = %298, %119
  br label %300

300:                                              ; preds = %299, %106
  %301 = load i32, i32* @CHAT_ALL, align 4
  %302 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %303 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %302, i32 0, i32 4
  store i32 %301, i32* %303, align 8
  br label %304

304:                                              ; preds = %300, %88
  %305 = call i64 (...) @FloatTime()
  %306 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %307 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %306, i32 0, i32 0
  store i64 %305, i64* %307, align 8
  %308 = load i32, i32* @qtrue, align 4
  store i32 %308, i32* %2, align 4
  br label %309

309:                                              ; preds = %304, %98, %86, %46, %40, %30, %18, %8
  %310 = load i32, i32* %2, align 4
  ret i32 %310
}

declare dso_local i64 @FloatTime(...) #1

declare dso_local double @trap_Characteristic_BFloat(i32, i32, i32, i32) #1

declare dso_local double @random(...) #1

declare dso_local i32 @BotNumActivePlayers(...) #1

declare dso_local i32 @EasyClientName(i64, i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i64 @TeamPlayIsOn(...) #1

declare dso_local i64 @BotSameTeam(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @BotAI_BotInitialChat(%struct.TYPE_8__*, i8*, i8*, i32, ...) #1

declare dso_local i32 @BotRandomOpponentName(%struct.TYPE_8__*) #1

declare dso_local i32 @BotWeaponNameForMeansOfDeath(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
