; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_ai_team.c_BotCTFOrders_EnemyFlagNotAtBase.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_ai_team.c_BotCTFOrders_EnemyFlagNotAtBase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }

@MAX_CLIENTS = common dso_local global i32 0, align 4
@MAX_NETNAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"cmd_defendbase\00", align 1
@VOICECHAT_DEFEND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"cmd_accompanyme\00", align 1
@VOICECHAT_FOLLOWME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"cmd_accompany\00", align 1
@VOICECHAT_FOLLOWFLAGCARRIER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"cmd_getflag\00", align 1
@VOICECHAT_GETFLAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BotCTFOrders_EnemyFlagNotAtBase(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %12 = load i32, i32* @MAX_CLIENTS, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = load i32, i32* @MAX_NETNAME, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %10, align 8
  %19 = load i32, i32* @MAX_NETNAME, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %11, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %23 = mul nuw i64 4, %13
  %24 = trunc i64 %23 to i32
  %25 = call i32 @BotSortTeamMatesByBaseTravelTime(%struct.TYPE_8__* %22, i32* %15, i32 %24)
  store i32 %25, i32* %3, align 4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @BotSortTeamMatesByTaskPreference(%struct.TYPE_8__* %26, i32* %15, i32 %27)
  %29 = load i32, i32* %3, align 4
  switch i32 %29, label %108 [
    i32 1, label %30
    i32 2, label %31
    i32 3, label %57
  ]

30:                                               ; preds = %1
  br label %309

31:                                               ; preds = %1
  %32 = getelementptr inbounds i32, i32* %15, i64 0
  %33 = load i32, i32* %32, align 16
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %33, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = getelementptr inbounds i32, i32* %15, i64 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %7, align 4
  br label %44

41:                                               ; preds = %31
  %42 = getelementptr inbounds i32, i32* %15, i64 0
  %43 = load i32, i32* %42, align 16
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %41, %38
  %45 = load i32, i32* %7, align 4
  %46 = trunc i64 %17 to i32
  %47 = call i32 @ClientName(i32 %45, i8* %18, i32 %46)
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %49 = call i32 (%struct.TYPE_8__*, i8*, i8*, i8*, ...) @BotAI_BotInitialChat(%struct.TYPE_8__* %48, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %18, i8* null)
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @BotSayTeamOrder(%struct.TYPE_8__* %50, i32 %51)
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @VOICECHAT_DEFEND, align 4
  %56 = call i32 @BotSayVoiceTeamOrder(%struct.TYPE_8__* %53, i32 %54, i32 %55)
  br label %309

57:                                               ; preds = %1
  %58 = getelementptr inbounds i32, i32* %15, i64 0
  %59 = load i32, i32* %58, align 16
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %59, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = getelementptr inbounds i32, i32* %15, i64 0
  %66 = load i32, i32* %65, align 16
  store i32 %66, i32* %7, align 4
  br label %70

67:                                               ; preds = %57
  %68 = getelementptr inbounds i32, i32* %15, i64 1
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %7, align 4
  br label %70

70:                                               ; preds = %67, %64
  %71 = load i32, i32* %7, align 4
  %72 = trunc i64 %17 to i32
  %73 = call i32 @ClientName(i32 %71, i8* %18, i32 %72)
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %75 = call i32 (%struct.TYPE_8__*, i8*, i8*, i8*, ...) @BotAI_BotInitialChat(%struct.TYPE_8__* %74, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %18, i8* null)
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @BotSayTeamOrder(%struct.TYPE_8__* %76, i32 %77)
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @VOICECHAT_DEFEND, align 4
  %82 = call i32 @BotSayVoiceTeamOrder(%struct.TYPE_8__* %79, i32 %80, i32 %81)
  %83 = getelementptr inbounds i32, i32* %15, i64 2
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %84, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %70
  %90 = getelementptr inbounds i32, i32* %15, i64 2
  %91 = load i32, i32* %90, align 8
  store i32 %91, i32* %7, align 4
  br label %95

92:                                               ; preds = %70
  %93 = getelementptr inbounds i32, i32* %15, i64 1
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %7, align 4
  br label %95

95:                                               ; preds = %92, %89
  %96 = load i32, i32* %7, align 4
  %97 = trunc i64 %17 to i32
  %98 = call i32 @ClientName(i32 %96, i8* %18, i32 %97)
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %100 = call i32 (%struct.TYPE_8__*, i8*, i8*, i8*, ...) @BotAI_BotInitialChat(%struct.TYPE_8__* %99, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %18, i8* null)
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @BotSayTeamOrder(%struct.TYPE_8__* %101, i32 %102)
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* @VOICECHAT_DEFEND, align 4
  %107 = call i32 @BotSayVoiceTeamOrder(%struct.TYPE_8__* %104, i32 %105, i32 %106)
  br label %309

108:                                              ; preds = %1
  %109 = load i32, i32* %3, align 4
  %110 = sitofp i32 %109 to float
  %111 = fptosi float %110 to i32
  %112 = sitofp i32 %111 to double
  %113 = fmul double %112, 6.000000e-01
  %114 = fadd double %113, 5.000000e-01
  %115 = fptosi double %114 to i32
  store i32 %115, i32* %4, align 4
  %116 = load i32, i32* %4, align 4
  %117 = icmp sgt i32 %116, 6
  br i1 %117, label %118, label %119

118:                                              ; preds = %108
  store i32 6, i32* %4, align 4
  br label %119

119:                                              ; preds = %118, %108
  %120 = load i32, i32* %3, align 4
  %121 = sitofp i32 %120 to float
  %122 = fptosi float %121 to i32
  %123 = sitofp i32 %122 to double
  %124 = fmul double %123, 3.000000e-01
  %125 = fadd double %124, 5.000000e-01
  %126 = fptosi double %125 to i32
  store i32 %126, i32* %5, align 4
  %127 = load i32, i32* %5, align 4
  %128 = icmp sgt i32 %127, 3
  br i1 %128, label %129, label %130

129:                                              ; preds = %119
  store i32 3, i32* %5, align 4
  br label %130

130:                                              ; preds = %129, %119
  store i32 0, i32* %6, align 4
  br label %131

131:                                              ; preds = %167, %130
  %132 = load i32, i32* %6, align 4
  %133 = load i32, i32* %4, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %135, label %170

135:                                              ; preds = %131
  %136 = load i32, i32* %6, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %15, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = icmp eq i32 %139, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %135
  br label %167

145:                                              ; preds = %135
  %146 = load i32, i32* %6, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %15, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = trunc i64 %17 to i32
  %151 = call i32 @ClientName(i32 %149, i8* %18, i32 %150)
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %153 = call i32 (%struct.TYPE_8__*, i8*, i8*, i8*, ...) @BotAI_BotInitialChat(%struct.TYPE_8__* %152, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %18, i8* null)
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %155 = load i32, i32* %6, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %15, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @BotSayTeamOrder(%struct.TYPE_8__* %154, i32 %158)
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %161 = load i32, i32* %6, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %15, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @VOICECHAT_DEFEND, align 4
  %166 = call i32 @BotSayVoiceTeamOrder(%struct.TYPE_8__* %160, i32 %164, i32 %165)
  br label %167

167:                                              ; preds = %145, %144
  %168 = load i32, i32* %6, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %6, align 4
  br label %131

170:                                              ; preds = %131
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = icmp ne i32 %173, -1
  br i1 %174, label %175, label %255

175:                                              ; preds = %170
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = trunc i64 %20 to i32
  %180 = call i32 @ClientName(i32 %178, i8* %21, i32 %179)
  store i32 0, i32* %6, align 4
  br label %181

181:                                              ; preds = %251, %175
  %182 = load i32, i32* %6, align 4
  %183 = load i32, i32* %5, align 4
  %184 = icmp slt i32 %182, %183
  br i1 %184, label %185, label %254

185:                                              ; preds = %181
  %186 = load i32, i32* %3, align 4
  %187 = load i32, i32* %6, align 4
  %188 = sub nsw i32 %186, %187
  %189 = sub nsw i32 %188, 1
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %15, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = icmp eq i32 %192, %195
  br i1 %196, label %197, label %198

197:                                              ; preds = %185
  br label %251

198:                                              ; preds = %185
  %199 = load i32, i32* %3, align 4
  %200 = load i32, i32* %6, align 4
  %201 = sub nsw i32 %199, %200
  %202 = sub nsw i32 %201, 1
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %15, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = trunc i64 %17 to i32
  %207 = call i32 @ClientName(i32 %205, i8* %18, i32 %206)
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = icmp eq i32 %210, %213
  br i1 %214, label %215, label %228

215:                                              ; preds = %198
  %216 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %217 = call i32 (%struct.TYPE_8__*, i8*, i8*, i8*, ...) @BotAI_BotInitialChat(%struct.TYPE_8__* %216, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %18, i8* null)
  %218 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %219 = load i32, i32* %3, align 4
  %220 = load i32, i32* %6, align 4
  %221 = sub nsw i32 %219, %220
  %222 = sub nsw i32 %221, 1
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %15, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* @VOICECHAT_FOLLOWME, align 4
  %227 = call i32 @BotSayVoiceTeamOrder(%struct.TYPE_8__* %218, i32 %225, i32 %226)
  br label %241

228:                                              ; preds = %198
  %229 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %230 = call i32 (%struct.TYPE_8__*, i8*, i8*, i8*, ...) @BotAI_BotInitialChat(%struct.TYPE_8__* %229, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %18, i8* %21, i8* null)
  %231 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %232 = load i32, i32* %3, align 4
  %233 = load i32, i32* %6, align 4
  %234 = sub nsw i32 %232, %233
  %235 = sub nsw i32 %234, 1
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %15, i64 %236
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* @VOICECHAT_FOLLOWFLAGCARRIER, align 4
  %240 = call i32 @BotSayVoiceTeamOrder(%struct.TYPE_8__* %231, i32 %238, i32 %239)
  br label %241

241:                                              ; preds = %228, %215
  %242 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %243 = load i32, i32* %3, align 4
  %244 = load i32, i32* %6, align 4
  %245 = sub nsw i32 %243, %244
  %246 = sub nsw i32 %245, 1
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %15, i64 %247
  %249 = load i32, i32* %248, align 4
  %250 = call i32 @BotSayTeamOrder(%struct.TYPE_8__* %242, i32 %249)
  br label %251

251:                                              ; preds = %241, %197
  %252 = load i32, i32* %6, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %6, align 4
  br label %181

254:                                              ; preds = %181
  br label %308

255:                                              ; preds = %170
  store i32 0, i32* %6, align 4
  br label %256

256:                                              ; preds = %304, %255
  %257 = load i32, i32* %6, align 4
  %258 = load i32, i32* %5, align 4
  %259 = icmp slt i32 %257, %258
  br i1 %259, label %260, label %307

260:                                              ; preds = %256
  %261 = load i32, i32* %3, align 4
  %262 = load i32, i32* %6, align 4
  %263 = sub nsw i32 %261, %262
  %264 = sub nsw i32 %263, 1
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %15, i64 %265
  %267 = load i32, i32* %266, align 4
  %268 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %269 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 4
  %271 = icmp eq i32 %267, %270
  br i1 %271, label %272, label %273

272:                                              ; preds = %260
  br label %304

273:                                              ; preds = %260
  %274 = load i32, i32* %3, align 4
  %275 = load i32, i32* %6, align 4
  %276 = sub nsw i32 %274, %275
  %277 = sub nsw i32 %276, 1
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i32, i32* %15, i64 %278
  %280 = load i32, i32* %279, align 4
  %281 = trunc i64 %17 to i32
  %282 = call i32 @ClientName(i32 %280, i8* %18, i32 %281)
  %283 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %284 = call i32 (%struct.TYPE_8__*, i8*, i8*, i8*, ...) @BotAI_BotInitialChat(%struct.TYPE_8__* %283, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %18, i8* null)
  %285 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %286 = load i32, i32* %3, align 4
  %287 = load i32, i32* %6, align 4
  %288 = sub nsw i32 %286, %287
  %289 = sub nsw i32 %288, 1
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i32, i32* %15, i64 %290
  %292 = load i32, i32* %291, align 4
  %293 = load i32, i32* @VOICECHAT_GETFLAG, align 4
  %294 = call i32 @BotSayVoiceTeamOrder(%struct.TYPE_8__* %285, i32 %292, i32 %293)
  %295 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %296 = load i32, i32* %3, align 4
  %297 = load i32, i32* %6, align 4
  %298 = sub nsw i32 %296, %297
  %299 = sub nsw i32 %298, 1
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i32, i32* %15, i64 %300
  %302 = load i32, i32* %301, align 4
  %303 = call i32 @BotSayTeamOrder(%struct.TYPE_8__* %295, i32 %302)
  br label %304

304:                                              ; preds = %273, %272
  %305 = load i32, i32* %6, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %6, align 4
  br label %256

307:                                              ; preds = %256
  br label %308

308:                                              ; preds = %307, %254
  br label %309

309:                                              ; preds = %308, %95, %44, %30
  %310 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %310)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @BotSortTeamMatesByBaseTravelTime(%struct.TYPE_8__*, i32*, i32) #2

declare dso_local i32 @BotSortTeamMatesByTaskPreference(%struct.TYPE_8__*, i32*, i32) #2

declare dso_local i32 @ClientName(i32, i8*, i32) #2

declare dso_local i32 @BotAI_BotInitialChat(%struct.TYPE_8__*, i8*, i8*, i8*, ...) #2

declare dso_local i32 @BotSayTeamOrder(%struct.TYPE_8__*, i32) #2

declare dso_local i32 @BotSayVoiceTeamOrder(%struct.TYPE_8__*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
