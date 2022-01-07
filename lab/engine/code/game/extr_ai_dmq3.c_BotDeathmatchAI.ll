; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_ai_dmq3.c_BotDeathmatchAI.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_ai_dmq3.c_BotDeathmatchAI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, i32, %struct.TYPE_18__, i32, i32*, i32, i32, i32, i32, i64 (%struct.TYPE_19__*)*, i64, i64, i32, i32, i32 }
%struct.TYPE_18__ = type { i32* }

@MAX_INFO_STRING = common dso_local global i32 0, align 4
@CHARACTERISTIC_GENDER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"sex\00", align 1
@CHAT_GENDERMALE = common dso_local global i32 0, align 4
@CHAT_GENDERFEMALE = common dso_local global i32 0, align 4
@CHAT_GENDERLESS = common dso_local global i32 0, align 4
@INVENTORY_HEALTH = common dso_local global i64 0, align 8
@PERS_HITS = common dso_local global i64 0, align 8
@BFL_IDEALVIEWSET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"BotDeathmatchAI: no ai node\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"BotDeathmatchAI: chat enter game\00", align 1
@qtrue = common dso_local global i64 0, align 8
@MAX_NODESWITCHES = common dso_local global i32 0, align 4
@PRT_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"%s at %1.1f switched more than %d AI nodes\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BotDeathmatchAI(%struct.TYPE_19__* %0, float %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca float, align 4
  %5 = alloca [144 x i8], align 16
  %6 = alloca [144 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  store float %1, float* %4, align 4
  %11 = load i32, i32* @MAX_INFO_STRING, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %7, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %8, align 8
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %109

19:                                               ; preds = %2
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, -1
  store i64 %23, i64* %21, align 8
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  store i32 1, i32* %10, align 4
  br label %246

29:                                               ; preds = %19
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 14
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @CHARACTERISTIC_GENDER, align 4
  %34 = getelementptr inbounds [144 x i8], [144 x i8]* %5, i64 0, i64 0
  %35 = call i32 @trap_Characteristic_String(i32 %32, i32 %33, i8* %34, i32 144)
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 4
  %39 = trunc i64 %12 to i32
  %40 = call i32 @trap_GetUserinfo(i32 %38, i8* %14, i32 %39)
  %41 = getelementptr inbounds [144 x i8], [144 x i8]* %5, i64 0, i64 0
  %42 = call i32 @Info_SetValueForKey(i8* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %41)
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @trap_SetUserinfo(i32 %45, i8* %14)
  %47 = getelementptr inbounds [144 x i8], [144 x i8]* %5, i64 0, i64 0
  %48 = load i8, i8* %47, align 16
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 109
  br i1 %50, label %51, label %57

51:                                               ; preds = %29
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 13
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @CHAT_GENDERMALE, align 4
  %56 = call i32 @trap_BotSetChatGender(i32 %54, i32 %55)
  br label %75

57:                                               ; preds = %29
  %58 = getelementptr inbounds [144 x i8], [144 x i8]* %5, i64 0, i64 0
  %59 = load i8, i8* %58, align 16
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 102
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 13
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @CHAT_GENDERFEMALE, align 4
  %67 = call i32 @trap_BotSetChatGender(i32 %65, i32 %66)
  br label %74

68:                                               ; preds = %57
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 13
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @CHAT_GENDERLESS, align 4
  %73 = call i32 @trap_BotSetChatGender(i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %68, %62
  br label %75

75:                                               ; preds = %74, %51
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds [144 x i8], [144 x i8]* %6, i64 0, i64 0
  %80 = call i32 @ClientName(i32 %78, i8* %79, i32 144)
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 13
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds [144 x i8], [144 x i8]* %6, i64 0, i64 0
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @trap_BotSetChatName(i32 %83, i8* %84, i32 %87)
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 4
  %91 = load i32*, i32** %90, align 8
  %92 = load i64, i64* @INVENTORY_HEALTH, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 5
  store i32 %94, i32* %96, align 8
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load i64, i64* @PERS_HITS, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 3
  store i32 %103, i32* %105, align 8
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 0
  store i64 0, i64* %107, align 8
  %108 = call i32 (...) @BotSetupAlternativeRouteGoals()
  br label %109

109:                                              ; preds = %75, %2
  %110 = load i32, i32* @BFL_IDEALVIEWSET, align 4
  %111 = xor i32 %110, -1
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 12
  %114 = load i32, i32* %113, align 8
  %115 = and i32 %114, %111
  store i32 %115, i32* %113, align 8
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %117 = call i32 @BotIntermission(%struct.TYPE_19__* %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %128, label %119

119:                                              ; preds = %109
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %121 = call i32 @BotSetTeleportTime(%struct.TYPE_19__* %120)
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %123 = call i32 @BotUpdateInventory(%struct.TYPE_19__* %122)
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %125 = call i32 @BotCheckSnapshot(%struct.TYPE_19__* %124)
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %127 = call i32 @BotCheckAir(%struct.TYPE_19__* %126)
  br label %128

128:                                              ; preds = %119, %109
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %130 = call i32 @BotCheckConsoleMessages(%struct.TYPE_19__* %129)
  %131 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %132 = call i32 @BotIntermission(%struct.TYPE_19__* %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %141, label %134

134:                                              ; preds = %128
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %136 = call i32 @BotIsObserver(%struct.TYPE_19__* %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %141, label %138

138:                                              ; preds = %134
  %139 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %140 = call i32 @BotTeamAI(%struct.TYPE_19__* %139)
  br label %141

141:                                              ; preds = %138, %134, %128
  %142 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %142, i32 0, i32 9
  %144 = load i64 (%struct.TYPE_19__*)*, i64 (%struct.TYPE_19__*)** %143, align 8
  %145 = icmp ne i64 (%struct.TYPE_19__*)* %144, null
  br i1 %145, label %149, label %146

146:                                              ; preds = %141
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %148 = call i32 @AIEnter_Seek_LTG(%struct.TYPE_19__* %147, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %149

149:                                              ; preds = %146, %141
  %150 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %150, i32 0, i32 10
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %179, label %154

154:                                              ; preds = %149
  %155 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = call i32 (...) @FloatTime()
  %159 = sub nsw i32 %158, 8
  %160 = icmp sgt i32 %157, %159
  br i1 %160, label %161, label %179

161:                                              ; preds = %154
  %162 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %163 = call i64 @BotChat_EnterGame(%struct.TYPE_19__* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %175

165:                                              ; preds = %161
  %166 = call i32 (...) @FloatTime()
  %167 = sext i32 %166 to i64
  %168 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %169 = call i64 @BotChatTime(%struct.TYPE_19__* %168)
  %170 = add nsw i64 %167, %169
  %171 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %171, i32 0, i32 11
  store i64 %170, i64* %172, align 8
  %173 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %174 = call i32 @AIEnter_Stand(%struct.TYPE_19__* %173, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %175

175:                                              ; preds = %165, %161
  %176 = load i64, i64* @qtrue, align 8
  %177 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %177, i32 0, i32 10
  store i64 %176, i64* %178, align 8
  br label %179

179:                                              ; preds = %175, %154, %149
  %180 = call i32 (...) @BotResetNodeSwitches()
  store i32 0, i32* %9, align 4
  br label %181

181:                                              ; preds = %194, %179
  %182 = load i32, i32* %9, align 4
  %183 = load i32, i32* @MAX_NODESWITCHES, align 4
  %184 = icmp slt i32 %182, %183
  br i1 %184, label %185, label %197

185:                                              ; preds = %181
  %186 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %186, i32 0, i32 9
  %188 = load i64 (%struct.TYPE_19__*)*, i64 (%struct.TYPE_19__*)** %187, align 8
  %189 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %190 = call i64 %188(%struct.TYPE_19__* %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %185
  br label %197

193:                                              ; preds = %185
  br label %194

194:                                              ; preds = %193
  %195 = load i32, i32* %9, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %9, align 4
  br label %181

197:                                              ; preds = %192, %181
  %198 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %199 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %198, i32 0, i32 8
  %200 = load i32, i32* %199, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %203, label %202

202:                                              ; preds = %197
  store i32 1, i32* %10, align 4
  br label %246

203:                                              ; preds = %197
  %204 = load i32, i32* %9, align 4
  %205 = load i32, i32* @MAX_NODESWITCHES, align 4
  %206 = icmp sge i32 %204, %205
  br i1 %206, label %207, label %228

207:                                              ; preds = %203
  %208 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %208, i32 0, i32 7
  %210 = load i32, i32* %209, align 8
  %211 = call i32 @trap_BotDumpGoalStack(i32 %210)
  %212 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %212, i32 0, i32 7
  %214 = load i32, i32* %213, align 8
  %215 = call i32 @trap_BotDumpAvoidGoals(i32 %214)
  %216 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %217 = call i32 @BotDumpNodeSwitches(%struct.TYPE_19__* %216)
  %218 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %219 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %218, i32 0, i32 6
  %220 = load i32, i32* %219, align 4
  %221 = getelementptr inbounds [144 x i8], [144 x i8]* %6, i64 0, i64 0
  %222 = call i32 @ClientName(i32 %220, i8* %221, i32 144)
  %223 = load i32, i32* @PRT_ERROR, align 4
  %224 = getelementptr inbounds [144 x i8], [144 x i8]* %6, i64 0, i64 0
  %225 = call i32 (...) @FloatTime()
  %226 = load i32, i32* @MAX_NODESWITCHES, align 4
  %227 = call i32 @BotAI_Print(i32 %223, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i8* %224, i32 %225, i32 %226)
  br label %228

228:                                              ; preds = %207, %203
  %229 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %230 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %229, i32 0, i32 4
  %231 = load i32*, i32** %230, align 8
  %232 = load i64, i64* @INVENTORY_HEALTH, align 8
  %233 = getelementptr inbounds i32, i32* %231, i64 %232
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %236 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %235, i32 0, i32 5
  store i32 %234, i32* %236, align 8
  %237 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %238 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %237, i32 0, i32 2
  %239 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %238, i32 0, i32 0
  %240 = load i32*, i32** %239, align 8
  %241 = load i64, i64* @PERS_HITS, align 8
  %242 = getelementptr inbounds i32, i32* %240, i64 %241
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %245 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %244, i32 0, i32 3
  store i32 %243, i32* %245, align 8
  store i32 0, i32* %10, align 4
  br label %246

246:                                              ; preds = %228, %202, %28
  %247 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %247)
  %248 = load i32, i32* %10, align 4
  switch i32 %248, label %250 [
    i32 0, label %249
    i32 1, label %249
  ]

249:                                              ; preds = %246, %246
  ret void

250:                                              ; preds = %246
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @trap_Characteristic_String(i32, i32, i8*, i32) #2

declare dso_local i32 @trap_GetUserinfo(i32, i8*, i32) #2

declare dso_local i32 @Info_SetValueForKey(i8*, i8*, i8*) #2

declare dso_local i32 @trap_SetUserinfo(i32, i8*) #2

declare dso_local i32 @trap_BotSetChatGender(i32, i32) #2

declare dso_local i32 @ClientName(i32, i8*, i32) #2

declare dso_local i32 @trap_BotSetChatName(i32, i8*, i32) #2

declare dso_local i32 @BotSetupAlternativeRouteGoals(...) #2

declare dso_local i32 @BotIntermission(%struct.TYPE_19__*) #2

declare dso_local i32 @BotSetTeleportTime(%struct.TYPE_19__*) #2

declare dso_local i32 @BotUpdateInventory(%struct.TYPE_19__*) #2

declare dso_local i32 @BotCheckSnapshot(%struct.TYPE_19__*) #2

declare dso_local i32 @BotCheckAir(%struct.TYPE_19__*) #2

declare dso_local i32 @BotCheckConsoleMessages(%struct.TYPE_19__*) #2

declare dso_local i32 @BotIsObserver(%struct.TYPE_19__*) #2

declare dso_local i32 @BotTeamAI(%struct.TYPE_19__*) #2

declare dso_local i32 @AIEnter_Seek_LTG(%struct.TYPE_19__*, i8*) #2

declare dso_local i32 @FloatTime(...) #2

declare dso_local i64 @BotChat_EnterGame(%struct.TYPE_19__*) #2

declare dso_local i64 @BotChatTime(%struct.TYPE_19__*) #2

declare dso_local i32 @AIEnter_Stand(%struct.TYPE_19__*, i8*) #2

declare dso_local i32 @BotResetNodeSwitches(...) #2

declare dso_local i32 @trap_BotDumpGoalStack(i32) #2

declare dso_local i32 @trap_BotDumpAvoidGoals(i32) #2

declare dso_local i32 @BotDumpNodeSwitches(%struct.TYPE_19__*) #2

declare dso_local i32 @BotAI_Print(i32, i8*, i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
