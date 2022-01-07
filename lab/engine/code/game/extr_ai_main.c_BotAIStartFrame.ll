; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_ai_main.c_BotAIStartFrame.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_ai_main.c_BotAIStartFrame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_33__ = type { i32 }
%struct.TYPE_25__ = type { i32, %struct.TYPE_34__, i32, i32 }
%struct.TYPE_34__ = type { i32, i64, i64, i64, i64 }
%struct.TYPE_31__ = type { i64, %struct.TYPE_28__*, %struct.TYPE_29__, %struct.TYPE_30__, i32 }
%struct.TYPE_28__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i64 }
%struct.TYPE_29__ = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_30__ = type { i32, i64, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_32__ = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@BotAIStartFrame.local_time = internal global i32 0, align 4
@BotAIStartFrame.botlib_residual = internal global i32 0, align 4
@BotAIStartFrame.lastbotthink_time = internal global i32 0, align 4
@bot_rocketjump = common dso_local global %struct.TYPE_33__ zeroinitializer, align 4
@bot_grapple = common dso_local global %struct.TYPE_33__ zeroinitializer, align 4
@bot_fastchat = common dso_local global %struct.TYPE_33__ zeroinitializer, align 4
@bot_nochat = common dso_local global %struct.TYPE_33__ zeroinitializer, align 4
@bot_testrchat = common dso_local global %struct.TYPE_33__ zeroinitializer, align 4
@bot_thinktime = common dso_local global %struct.TYPE_33__ zeroinitializer, align 4
@bot_memorydump = common dso_local global %struct.TYPE_33__ zeroinitializer, align 4
@bot_saveroutingcache = common dso_local global %struct.TYPE_33__ zeroinitializer, align 4
@bot_pause = common dso_local global %struct.TYPE_33__ zeroinitializer, align 4
@bot_report = common dso_local global %struct.TYPE_33__ zeroinitializer, align 4
@MAX_CLIENTS = common dso_local global i32 0, align 4
@botstates = common dso_local global %struct.TYPE_25__** null, align 8
@g_entities = common dso_local global %struct.TYPE_31__* null, align 8
@CON_CONNECTED = common dso_local global i64 0, align 8
@qtrue = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"memorydump\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"bot_memorydump\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"saveroutingcache\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"bot_saveroutingcache\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"bot_thinktime\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"200\00", align 1
@qfalse = common dso_local global i32 0, align 4
@MAX_GENTITIES = common dso_local global i32 0, align 4
@SVF_NOCLIENT = common dso_local global i32 0, align 4
@ET_MISSILE = common dso_local global i64 0, align 8
@WP_GRAPPLING_HOOK = common dso_local global i64 0, align 8
@ET_EVENTS = common dso_local global i64 0, align 8
@SOLID_BSP = common dso_local global i32 0, align 4
@SOLID_BBOX = common dso_local global i32 0, align 4
@floattime = common dso_local global i32 0, align 4
@CONTENTS_TRIGGER = common dso_local global i64 0, align 8
@ProximityMine_Trigger = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BotAIStartFrame(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_31__*, align 8
  %6 = alloca %struct.TYPE_32__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = call i32 (...) @G_CheckBotSpawn()
  %10 = call i32 @trap_Cvar_Update(%struct.TYPE_33__* @bot_rocketjump)
  %11 = call i32 @trap_Cvar_Update(%struct.TYPE_33__* @bot_grapple)
  %12 = call i32 @trap_Cvar_Update(%struct.TYPE_33__* @bot_fastchat)
  %13 = call i32 @trap_Cvar_Update(%struct.TYPE_33__* @bot_nochat)
  %14 = call i32 @trap_Cvar_Update(%struct.TYPE_33__* @bot_testrchat)
  %15 = call i32 @trap_Cvar_Update(%struct.TYPE_33__* @bot_thinktime)
  %16 = call i32 @trap_Cvar_Update(%struct.TYPE_33__* @bot_memorydump)
  %17 = call i32 @trap_Cvar_Update(%struct.TYPE_33__* @bot_saveroutingcache)
  %18 = call i32 @trap_Cvar_Update(%struct.TYPE_33__* @bot_pause)
  %19 = call i32 @trap_Cvar_Update(%struct.TYPE_33__* @bot_report)
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_33__, %struct.TYPE_33__* @bot_report, i32 0, i32 0), align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = call i32 (...) @BotUpdateInfoConfigStrings()
  br label %24

24:                                               ; preds = %22, %1
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_33__, %struct.TYPE_33__* @bot_pause, i32 0, i32 0), align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %118

27:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %113, %27
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @MAX_CLIENTS, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %116

32:                                               ; preds = %28
  %33 = load %struct.TYPE_25__**, %struct.TYPE_25__*** @botstates, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %33, i64 %35
  %37 = load %struct.TYPE_25__*, %struct.TYPE_25__** %36, align 8
  %38 = icmp ne %struct.TYPE_25__* %37, null
  br i1 %38, label %39, label %48

39:                                               ; preds = %32
  %40 = load %struct.TYPE_25__**, %struct.TYPE_25__*** @botstates, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %40, i64 %42
  %44 = load %struct.TYPE_25__*, %struct.TYPE_25__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %39, %32
  br label %113

49:                                               ; preds = %39
  %50 = load %struct.TYPE_31__*, %struct.TYPE_31__** @g_entities, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_28__*, %struct.TYPE_28__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @CON_CONNECTED, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %49
  br label %113

62:                                               ; preds = %49
  %63 = load %struct.TYPE_25__**, %struct.TYPE_25__*** @botstates, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %63, i64 %65
  %67 = load %struct.TYPE_25__*, %struct.TYPE_25__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %68, i32 0, i32 4
  store i64 0, i64* %69, align 8
  %70 = load %struct.TYPE_25__**, %struct.TYPE_25__*** @botstates, align 8
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %70, i64 %72
  %74 = load %struct.TYPE_25__*, %struct.TYPE_25__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %75, i32 0, i32 3
  store i64 0, i64* %76, align 8
  %77 = load %struct.TYPE_25__**, %struct.TYPE_25__*** @botstates, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %77, i64 %79
  %81 = load %struct.TYPE_25__*, %struct.TYPE_25__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %82, i32 0, i32 2
  store i64 0, i64* %83, align 8
  %84 = load %struct.TYPE_25__**, %struct.TYPE_25__*** @botstates, align 8
  %85 = load i32, i32* %4, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %84, i64 %86
  %88 = load %struct.TYPE_25__*, %struct.TYPE_25__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %89, i32 0, i32 1
  store i64 0, i64* %90, align 8
  %91 = load i32, i32* %3, align 4
  %92 = load %struct.TYPE_25__**, %struct.TYPE_25__*** @botstates, align 8
  %93 = load i32, i32* %4, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %92, i64 %94
  %96 = load %struct.TYPE_25__*, %struct.TYPE_25__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %97, i32 0, i32 0
  store i32 %91, i32* %98, align 8
  %99 = load %struct.TYPE_25__**, %struct.TYPE_25__*** @botstates, align 8
  %100 = load i32, i32* %4, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %99, i64 %101
  %103 = load %struct.TYPE_25__*, %struct.TYPE_25__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.TYPE_25__**, %struct.TYPE_25__*** @botstates, align 8
  %107 = load i32, i32* %4, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %106, i64 %108
  %110 = load %struct.TYPE_25__*, %struct.TYPE_25__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %110, i32 0, i32 1
  %112 = call i32 @trap_BotUserCommand(i32 %105, %struct.TYPE_34__* %111)
  br label %113

113:                                              ; preds = %62, %61, %48
  %114 = load i32, i32* %4, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %4, align 4
  br label %28

116:                                              ; preds = %28
  %117 = load i32, i32* @qtrue, align 4
  store i32 %117, i32* %2, align 4
  br label %510

118:                                              ; preds = %24
  %119 = load i32, i32* getelementptr inbounds (%struct.TYPE_33__, %struct.TYPE_33__* @bot_memorydump, i32 0, i32 0), align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %118
  %122 = call i32 @trap_BotLibVarSet(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %123 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %124

124:                                              ; preds = %121, %118
  %125 = load i32, i32* getelementptr inbounds (%struct.TYPE_33__, %struct.TYPE_33__* @bot_saveroutingcache, i32 0, i32 0), align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %124
  %128 = call i32 @trap_BotLibVarSet(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %129 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %130

130:                                              ; preds = %127, %124
  %131 = call i32 (...) @BotInterbreeding()
  %132 = load i32, i32* getelementptr inbounds (%struct.TYPE_33__, %struct.TYPE_33__* @bot_thinktime, i32 0, i32 0), align 4
  %133 = icmp sgt i32 %132, 200
  br i1 %133, label %134, label %136

134:                                              ; preds = %130
  %135 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  br label %136

136:                                              ; preds = %134, %130
  %137 = load i32, i32* getelementptr inbounds (%struct.TYPE_33__, %struct.TYPE_33__* @bot_thinktime, i32 0, i32 0), align 4
  %138 = load i32, i32* @BotAIStartFrame.lastbotthink_time, align 4
  %139 = icmp ne i32 %137, %138
  br i1 %139, label %140, label %143

140:                                              ; preds = %136
  %141 = load i32, i32* getelementptr inbounds (%struct.TYPE_33__, %struct.TYPE_33__* @bot_thinktime, i32 0, i32 0), align 4
  store i32 %141, i32* @BotAIStartFrame.lastbotthink_time, align 4
  %142 = call i32 (...) @BotScheduleBotThink()
  br label %143

143:                                              ; preds = %140, %136
  %144 = load i32, i32* %3, align 4
  %145 = load i32, i32* @BotAIStartFrame.local_time, align 4
  %146 = sub nsw i32 %144, %145
  store i32 %146, i32* %7, align 4
  %147 = load i32, i32* %3, align 4
  store i32 %147, i32* @BotAIStartFrame.local_time, align 4
  %148 = load i32, i32* %7, align 4
  %149 = load i32, i32* @BotAIStartFrame.botlib_residual, align 4
  %150 = add nsw i32 %149, %148
  store i32 %150, i32* @BotAIStartFrame.botlib_residual, align 4
  %151 = load i32, i32* %7, align 4
  %152 = load i32, i32* getelementptr inbounds (%struct.TYPE_33__, %struct.TYPE_33__* @bot_thinktime, i32 0, i32 0), align 4
  %153 = icmp sgt i32 %151, %152
  br i1 %153, label %154, label %156

154:                                              ; preds = %143
  %155 = load i32, i32* %7, align 4
  store i32 %155, i32* %8, align 4
  br label %158

156:                                              ; preds = %143
  %157 = load i32, i32* getelementptr inbounds (%struct.TYPE_33__, %struct.TYPE_33__* @bot_thinktime, i32 0, i32 0), align 4
  store i32 %157, i32* %8, align 4
  br label %158

158:                                              ; preds = %156, %154
  %159 = load i32, i32* @BotAIStartFrame.botlib_residual, align 4
  %160 = load i32, i32* %8, align 4
  %161 = icmp sge i32 %159, %160
  br i1 %161, label %162, label %368

162:                                              ; preds = %158
  %163 = load i32, i32* %8, align 4
  %164 = load i32, i32* @BotAIStartFrame.botlib_residual, align 4
  %165 = sub nsw i32 %164, %163
  store i32 %165, i32* @BotAIStartFrame.botlib_residual, align 4
  %166 = load i32, i32* %3, align 4
  %167 = sitofp i32 %166 to float
  %168 = fdiv float %167, 1.000000e+03
  %169 = call i32 @trap_BotLibStartFrame(float %168)
  %170 = call i32 (...) @trap_AAS_Initialized()
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %174, label %172

172:                                              ; preds = %162
  %173 = load i32, i32* @qfalse, align 4
  store i32 %173, i32* %2, align 4
  br label %510

174:                                              ; preds = %162
  store i32 0, i32* %4, align 4
  br label %175

175:                                              ; preds = %363, %174
  %176 = load i32, i32* %4, align 4
  %177 = load i32, i32* @MAX_GENTITIES, align 4
  %178 = icmp slt i32 %176, %177
  br i1 %178, label %179, label %366

179:                                              ; preds = %175
  %180 = load %struct.TYPE_31__*, %struct.TYPE_31__** @g_entities, align 8
  %181 = load i32, i32* %4, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %180, i64 %182
  store %struct.TYPE_31__* %183, %struct.TYPE_31__** %5, align 8
  %184 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %184, i32 0, i32 4
  %186 = load i32, i32* %185, align 8
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %191, label %188

188:                                              ; preds = %179
  %189 = load i32, i32* %4, align 4
  %190 = call i32 @trap_BotLibUpdateEntity(i32 %189, %struct.TYPE_32__* null)
  br label %363

191:                                              ; preds = %179
  %192 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %192, i32 0, i32 3
  %194 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %193, i32 0, i32 7
  %195 = load i32, i32* %194, align 8
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %200, label %197

197:                                              ; preds = %191
  %198 = load i32, i32* %4, align 4
  %199 = call i32 @trap_BotLibUpdateEntity(i32 %198, %struct.TYPE_32__* null)
  br label %363

200:                                              ; preds = %191
  %201 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %201, i32 0, i32 3
  %203 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* @SVF_NOCLIENT, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %200
  %209 = load i32, i32* %4, align 4
  %210 = call i32 @trap_BotLibUpdateEntity(i32 %209, %struct.TYPE_32__* null)
  br label %363

211:                                              ; preds = %200
  %212 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %212, i32 0, i32 2
  %214 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* @ET_MISSILE, align 8
  %217 = icmp eq i64 %215, %216
  br i1 %217, label %218, label %228

218:                                              ; preds = %211
  %219 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %219, i32 0, i32 2
  %221 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %220, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* @WP_GRAPPLING_HOOK, align 8
  %224 = icmp ne i64 %222, %223
  br i1 %224, label %225, label %228

225:                                              ; preds = %218
  %226 = load i32, i32* %4, align 4
  %227 = call i32 @trap_BotLibUpdateEntity(i32 %226, %struct.TYPE_32__* null)
  br label %363

228:                                              ; preds = %218, %211
  %229 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %229, i32 0, i32 2
  %231 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = load i64, i64* @ET_EVENTS, align 8
  %234 = icmp sgt i64 %232, %233
  br i1 %234, label %235, label %238

235:                                              ; preds = %228
  %236 = load i32, i32* %4, align 4
  %237 = call i32 @trap_BotLibUpdateEntity(i32 %236, %struct.TYPE_32__* null)
  br label %363

238:                                              ; preds = %228
  %239 = call i32 @memset(%struct.TYPE_32__* %6, i32 0, i32 80)
  %240 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %240, i32 0, i32 3
  %242 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %241, i32 0, i32 6
  %243 = load i32, i32* %242, align 4
  %244 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %6, i32 0, i32 17
  %245 = load i32, i32* %244, align 4
  %246 = call i32 @VectorCopy(i32 %243, i32 %245)
  %247 = load i32, i32* %4, align 4
  %248 = load i32, i32* @MAX_CLIENTS, align 4
  %249 = icmp slt i32 %247, %248
  br i1 %249, label %250, label %259

250:                                              ; preds = %238
  %251 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %252 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %251, i32 0, i32 2
  %253 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %252, i32 0, i32 13
  %254 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %6, i32 0, i32 16
  %257 = load i32, i32* %256, align 8
  %258 = call i32 @VectorCopy(i32 %255, i32 %257)
  br label %267

259:                                              ; preds = %238
  %260 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %261 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %260, i32 0, i32 3
  %262 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %261, i32 0, i32 5
  %263 = load i32, i32* %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %6, i32 0, i32 16
  %265 = load i32, i32* %264, align 8
  %266 = call i32 @VectorCopy(i32 %263, i32 %265)
  br label %267

267:                                              ; preds = %259, %250
  %268 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %269 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %268, i32 0, i32 2
  %270 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %269, i32 0, i32 12
  %271 = load i32, i32* %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %6, i32 0, i32 15
  %273 = load i32, i32* %272, align 4
  %274 = call i32 @VectorCopy(i32 %271, i32 %273)
  %275 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %276 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %275, i32 0, i32 3
  %277 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %276, i32 0, i32 4
  %278 = load i32, i32* %277, align 4
  %279 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %6, i32 0, i32 14
  %280 = load i32, i32* %279, align 8
  %281 = call i32 @VectorCopy(i32 %278, i32 %280)
  %282 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %283 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %282, i32 0, i32 3
  %284 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %283, i32 0, i32 3
  %285 = load i32, i32* %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %6, i32 0, i32 13
  %287 = load i32, i32* %286, align 4
  %288 = call i32 @VectorCopy(i32 %285, i32 %287)
  %289 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %290 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %289, i32 0, i32 2
  %291 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %290, i32 0, i32 0
  %292 = load i64, i64* %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %6, i32 0, i32 0
  store i64 %292, i64* %293, align 8
  %294 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %295 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %294, i32 0, i32 2
  %296 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %295, i32 0, i32 11
  %297 = load i32, i32* %296, align 4
  %298 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %6, i32 0, i32 12
  store i32 %297, i32* %298, align 8
  %299 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %300 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %299, i32 0, i32 3
  %301 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %300, i32 0, i32 2
  %302 = load i64, i64* %301, align 8
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %307

304:                                              ; preds = %267
  %305 = load i32, i32* @SOLID_BSP, align 4
  %306 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %6, i32 0, i32 11
  store i32 %305, i32* %306, align 4
  br label %310

307:                                              ; preds = %267
  %308 = load i32, i32* @SOLID_BBOX, align 4
  %309 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %6, i32 0, i32 11
  store i32 %308, i32* %309, align 4
  br label %310

310:                                              ; preds = %307, %304
  %311 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %312 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %311, i32 0, i32 2
  %313 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %312, i32 0, i32 10
  %314 = load i32, i32* %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %6, i32 0, i32 10
  store i32 %314, i32* %315, align 8
  %316 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %317 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %316, i32 0, i32 2
  %318 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %317, i32 0, i32 9
  %319 = load i32, i32* %318, align 4
  %320 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %6, i32 0, i32 9
  store i32 %319, i32* %320, align 4
  %321 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %322 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %321, i32 0, i32 2
  %323 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %322, i32 0, i32 8
  %324 = load i32, i32* %323, align 8
  %325 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %6, i32 0, i32 8
  store i32 %324, i32* %325, align 8
  %326 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %327 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %326, i32 0, i32 2
  %328 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %327, i32 0, i32 7
  %329 = load i32, i32* %328, align 4
  %330 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %6, i32 0, i32 7
  store i32 %329, i32* %330, align 4
  %331 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %332 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %331, i32 0, i32 2
  %333 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %332, i32 0, i32 6
  %334 = load i32, i32* %333, align 8
  %335 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %6, i32 0, i32 6
  store i32 %334, i32* %335, align 8
  %336 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %337 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %336, i32 0, i32 2
  %338 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %337, i32 0, i32 5
  %339 = load i32, i32* %338, align 4
  %340 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %6, i32 0, i32 5
  store i32 %339, i32* %340, align 4
  %341 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %342 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %341, i32 0, i32 2
  %343 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %342, i32 0, i32 4
  %344 = load i32, i32* %343, align 8
  %345 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %6, i32 0, i32 4
  store i32 %344, i32* %345, align 8
  %346 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %347 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %346, i32 0, i32 2
  %348 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %347, i32 0, i32 3
  %349 = load i32, i32* %348, align 4
  %350 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %6, i32 0, i32 3
  store i32 %349, i32* %350, align 4
  %351 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %352 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %351, i32 0, i32 2
  %353 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %352, i32 0, i32 2
  %354 = load i32, i32* %353, align 8
  %355 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %6, i32 0, i32 2
  store i32 %354, i32* %355, align 8
  %356 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %357 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %356, i32 0, i32 2
  %358 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %357, i32 0, i32 1
  %359 = load i64, i64* %358, align 8
  %360 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %6, i32 0, i32 1
  store i64 %359, i64* %360, align 8
  %361 = load i32, i32* %4, align 4
  %362 = call i32 @trap_BotLibUpdateEntity(i32 %361, %struct.TYPE_32__* %6)
  br label %363

363:                                              ; preds = %310, %235, %225, %208, %197, %188
  %364 = load i32, i32* %4, align 4
  %365 = add nsw i32 %364, 1
  store i32 %365, i32* %4, align 4
  br label %175

366:                                              ; preds = %175
  %367 = call i32 (...) @BotAIRegularUpdate()
  br label %368

368:                                              ; preds = %366, %158
  %369 = call i32 (...) @trap_AAS_Time()
  store i32 %369, i32* @floattime, align 4
  store i32 0, i32* %4, align 4
  br label %370

370:                                              ; preds = %444, %368
  %371 = load i32, i32* %4, align 4
  %372 = load i32, i32* @MAX_CLIENTS, align 4
  %373 = icmp slt i32 %371, %372
  br i1 %373, label %374, label %447

374:                                              ; preds = %370
  %375 = load %struct.TYPE_25__**, %struct.TYPE_25__*** @botstates, align 8
  %376 = load i32, i32* %4, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %375, i64 %377
  %379 = load %struct.TYPE_25__*, %struct.TYPE_25__** %378, align 8
  %380 = icmp ne %struct.TYPE_25__* %379, null
  br i1 %380, label %381, label %390

381:                                              ; preds = %374
  %382 = load %struct.TYPE_25__**, %struct.TYPE_25__*** @botstates, align 8
  %383 = load i32, i32* %4, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %382, i64 %384
  %386 = load %struct.TYPE_25__*, %struct.TYPE_25__** %385, align 8
  %387 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %386, i32 0, i32 3
  %388 = load i32, i32* %387, align 4
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %391, label %390

390:                                              ; preds = %381, %374
  br label %444

391:                                              ; preds = %381
  %392 = load i32, i32* %7, align 4
  %393 = load %struct.TYPE_25__**, %struct.TYPE_25__*** @botstates, align 8
  %394 = load i32, i32* %4, align 4
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %393, i64 %395
  %397 = load %struct.TYPE_25__*, %struct.TYPE_25__** %396, align 8
  %398 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %397, i32 0, i32 0
  %399 = load i32, i32* %398, align 8
  %400 = add nsw i32 %399, %392
  store i32 %400, i32* %398, align 8
  %401 = load %struct.TYPE_25__**, %struct.TYPE_25__*** @botstates, align 8
  %402 = load i32, i32* %4, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %401, i64 %403
  %405 = load %struct.TYPE_25__*, %struct.TYPE_25__** %404, align 8
  %406 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %405, i32 0, i32 0
  %407 = load i32, i32* %406, align 8
  %408 = load i32, i32* %8, align 4
  %409 = icmp sge i32 %407, %408
  br i1 %409, label %410, label %443

410:                                              ; preds = %391
  %411 = load i32, i32* %8, align 4
  %412 = load %struct.TYPE_25__**, %struct.TYPE_25__*** @botstates, align 8
  %413 = load i32, i32* %4, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %412, i64 %414
  %416 = load %struct.TYPE_25__*, %struct.TYPE_25__** %415, align 8
  %417 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %416, i32 0, i32 0
  %418 = load i32, i32* %417, align 8
  %419 = sub nsw i32 %418, %411
  store i32 %419, i32* %417, align 8
  %420 = call i32 (...) @trap_AAS_Initialized()
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %424, label %422

422:                                              ; preds = %410
  %423 = load i32, i32* @qfalse, align 4
  store i32 %423, i32* %2, align 4
  br label %510

424:                                              ; preds = %410
  %425 = load %struct.TYPE_31__*, %struct.TYPE_31__** @g_entities, align 8
  %426 = load i32, i32* %4, align 4
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %425, i64 %427
  %429 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %428, i32 0, i32 1
  %430 = load %struct.TYPE_28__*, %struct.TYPE_28__** %429, align 8
  %431 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %430, i32 0, i32 0
  %432 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %431, i32 0, i32 0
  %433 = load i64, i64* %432, align 8
  %434 = load i64, i64* @CON_CONNECTED, align 8
  %435 = icmp eq i64 %433, %434
  br i1 %435, label %436, label %442

436:                                              ; preds = %424
  %437 = load i32, i32* %4, align 4
  %438 = load i32, i32* %8, align 4
  %439 = sitofp i32 %438 to float
  %440 = fdiv float %439, 1.000000e+03
  %441 = call i32 @BotAI(i32 %437, float %440)
  br label %442

442:                                              ; preds = %436, %424
  br label %443

443:                                              ; preds = %442, %391
  br label %444

444:                                              ; preds = %443, %390
  %445 = load i32, i32* %4, align 4
  %446 = add nsw i32 %445, 1
  store i32 %446, i32* %4, align 4
  br label %370

447:                                              ; preds = %370
  store i32 0, i32* %4, align 4
  br label %448

448:                                              ; preds = %505, %447
  %449 = load i32, i32* %4, align 4
  %450 = load i32, i32* @MAX_CLIENTS, align 4
  %451 = icmp slt i32 %449, %450
  br i1 %451, label %452, label %508

452:                                              ; preds = %448
  %453 = load %struct.TYPE_25__**, %struct.TYPE_25__*** @botstates, align 8
  %454 = load i32, i32* %4, align 4
  %455 = sext i32 %454 to i64
  %456 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %453, i64 %455
  %457 = load %struct.TYPE_25__*, %struct.TYPE_25__** %456, align 8
  %458 = icmp ne %struct.TYPE_25__* %457, null
  br i1 %458, label %459, label %468

459:                                              ; preds = %452
  %460 = load %struct.TYPE_25__**, %struct.TYPE_25__*** @botstates, align 8
  %461 = load i32, i32* %4, align 4
  %462 = sext i32 %461 to i64
  %463 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %460, i64 %462
  %464 = load %struct.TYPE_25__*, %struct.TYPE_25__** %463, align 8
  %465 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %464, i32 0, i32 3
  %466 = load i32, i32* %465, align 4
  %467 = icmp ne i32 %466, 0
  br i1 %467, label %469, label %468

468:                                              ; preds = %459, %452
  br label %505

469:                                              ; preds = %459
  %470 = load %struct.TYPE_31__*, %struct.TYPE_31__** @g_entities, align 8
  %471 = load i32, i32* %4, align 4
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %470, i64 %472
  %474 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %473, i32 0, i32 1
  %475 = load %struct.TYPE_28__*, %struct.TYPE_28__** %474, align 8
  %476 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %475, i32 0, i32 0
  %477 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %476, i32 0, i32 0
  %478 = load i64, i64* %477, align 8
  %479 = load i64, i64* @CON_CONNECTED, align 8
  %480 = icmp ne i64 %478, %479
  br i1 %480, label %481, label %482

481:                                              ; preds = %469
  br label %505

482:                                              ; preds = %469
  %483 = load %struct.TYPE_25__**, %struct.TYPE_25__*** @botstates, align 8
  %484 = load i32, i32* %4, align 4
  %485 = sext i32 %484 to i64
  %486 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %483, i64 %485
  %487 = load %struct.TYPE_25__*, %struct.TYPE_25__** %486, align 8
  %488 = load i32, i32* %3, align 4
  %489 = load i32, i32* %7, align 4
  %490 = call i32 @BotUpdateInput(%struct.TYPE_25__* %487, i32 %488, i32 %489)
  %491 = load %struct.TYPE_25__**, %struct.TYPE_25__*** @botstates, align 8
  %492 = load i32, i32* %4, align 4
  %493 = sext i32 %492 to i64
  %494 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %491, i64 %493
  %495 = load %struct.TYPE_25__*, %struct.TYPE_25__** %494, align 8
  %496 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %495, i32 0, i32 2
  %497 = load i32, i32* %496, align 8
  %498 = load %struct.TYPE_25__**, %struct.TYPE_25__*** @botstates, align 8
  %499 = load i32, i32* %4, align 4
  %500 = sext i32 %499 to i64
  %501 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %498, i64 %500
  %502 = load %struct.TYPE_25__*, %struct.TYPE_25__** %501, align 8
  %503 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %502, i32 0, i32 1
  %504 = call i32 @trap_BotUserCommand(i32 %497, %struct.TYPE_34__* %503)
  br label %505

505:                                              ; preds = %482, %481, %468
  %506 = load i32, i32* %4, align 4
  %507 = add nsw i32 %506, 1
  store i32 %507, i32* %4, align 4
  br label %448

508:                                              ; preds = %448
  %509 = load i32, i32* @qtrue, align 4
  store i32 %509, i32* %2, align 4
  br label %510

510:                                              ; preds = %508, %422, %172, %116
  %511 = load i32, i32* %2, align 4
  ret i32 %511
}

declare dso_local i32 @G_CheckBotSpawn(...) #1

declare dso_local i32 @trap_Cvar_Update(%struct.TYPE_33__*) #1

declare dso_local i32 @BotUpdateInfoConfigStrings(...) #1

declare dso_local i32 @trap_BotUserCommand(i32, %struct.TYPE_34__*) #1

declare dso_local i32 @trap_BotLibVarSet(i8*, i8*) #1

declare dso_local i32 @trap_Cvar_Set(i8*, i8*) #1

declare dso_local i32 @BotInterbreeding(...) #1

declare dso_local i32 @BotScheduleBotThink(...) #1

declare dso_local i32 @trap_BotLibStartFrame(float) #1

declare dso_local i32 @trap_AAS_Initialized(...) #1

declare dso_local i32 @trap_BotLibUpdateEntity(i32, %struct.TYPE_32__*) #1

declare dso_local i32 @memset(%struct.TYPE_32__*, i32, i32) #1

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local i32 @BotAIRegularUpdate(...) #1

declare dso_local i32 @trap_AAS_Time(...) #1

declare dso_local i32 @BotAI(i32, float) #1

declare dso_local i32 @BotUpdateInput(%struct.TYPE_25__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
