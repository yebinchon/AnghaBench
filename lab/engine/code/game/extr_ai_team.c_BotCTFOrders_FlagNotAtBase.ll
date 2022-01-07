; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_ai_team.c_BotCTFOrders_FlagNotAtBase.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_ai_team.c_BotCTFOrders_FlagNotAtBase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }

@MAX_CLIENTS = common dso_local global i32 0, align 4
@MAX_NETNAME = common dso_local global i32 0, align 4
@CTFS_AGRESSIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"cmd_defendbase\00", align 1
@VOICECHAT_DEFEND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"cmd_getflag\00", align 1
@VOICECHAT_GETFLAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BotCTFOrders_FlagNotAtBase(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %10 = load i32, i32* @MAX_CLIENTS, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = load i32, i32* @MAX_NETNAME, align 4
  %15 = zext i32 %14 to i64
  %16 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %18 = mul nuw i64 4, %11
  %19 = trunc i64 %18 to i32
  %20 = call i32 @BotSortTeamMatesByBaseTravelTime(%struct.TYPE_8__* %17, i32* %13, i32 %19)
  store i32 %20, i32* %3, align 4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @BotSortTeamMatesByTaskPreference(%struct.TYPE_8__* %21, i32* %13, i32 %22)
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @CTFS_AGRESSIVE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %200, label %30

30:                                               ; preds = %1
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %112 [
    i32 1, label %34
    i32 2, label %35
    i32 3, label %66
  ]

34:                                               ; preds = %30
  br label %199

35:                                               ; preds = %30
  %36 = getelementptr inbounds i32, i32* %13, i64 0
  %37 = load i32, i32* %36, align 16
  %38 = trunc i64 %15 to i32
  %39 = call i32 @ClientName(i32 %37, i8* %16, i32 %38)
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %41 = call i32 @BotAI_BotInitialChat(%struct.TYPE_8__* %40, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %16, i32* null)
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %43 = getelementptr inbounds i32, i32* %13, i64 0
  %44 = load i32, i32* %43, align 16
  %45 = call i32 @BotSayTeamOrder(%struct.TYPE_8__* %42, i32 %44)
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %47 = getelementptr inbounds i32, i32* %13, i64 0
  %48 = load i32, i32* %47, align 16
  %49 = load i32, i32* @VOICECHAT_DEFEND, align 4
  %50 = call i32 @BotSayVoiceTeamOrder(%struct.TYPE_8__* %46, i32 %48, i32 %49)
  %51 = getelementptr inbounds i32, i32* %13, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = trunc i64 %15 to i32
  %54 = call i32 @ClientName(i32 %52, i8* %16, i32 %53)
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %56 = call i32 @BotAI_BotInitialChat(%struct.TYPE_8__* %55, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %16, i32* null)
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %58 = getelementptr inbounds i32, i32* %13, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @BotSayTeamOrder(%struct.TYPE_8__* %57, i32 %59)
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %62 = getelementptr inbounds i32, i32* %13, i64 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @VOICECHAT_GETFLAG, align 4
  %65 = call i32 @BotSayVoiceTeamOrder(%struct.TYPE_8__* %61, i32 %63, i32 %64)
  br label %199

66:                                               ; preds = %30
  %67 = getelementptr inbounds i32, i32* %13, i64 0
  %68 = load i32, i32* %67, align 16
  %69 = trunc i64 %15 to i32
  %70 = call i32 @ClientName(i32 %68, i8* %16, i32 %69)
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %72 = call i32 @BotAI_BotInitialChat(%struct.TYPE_8__* %71, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %16, i32* null)
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %74 = getelementptr inbounds i32, i32* %13, i64 0
  %75 = load i32, i32* %74, align 16
  %76 = call i32 @BotSayTeamOrder(%struct.TYPE_8__* %73, i32 %75)
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %78 = getelementptr inbounds i32, i32* %13, i64 0
  %79 = load i32, i32* %78, align 16
  %80 = load i32, i32* @VOICECHAT_DEFEND, align 4
  %81 = call i32 @BotSayVoiceTeamOrder(%struct.TYPE_8__* %77, i32 %79, i32 %80)
  %82 = getelementptr inbounds i32, i32* %13, i64 1
  %83 = load i32, i32* %82, align 4
  %84 = trunc i64 %15 to i32
  %85 = call i32 @ClientName(i32 %83, i8* %16, i32 %84)
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %87 = call i32 @BotAI_BotInitialChat(%struct.TYPE_8__* %86, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %16, i32* null)
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %89 = getelementptr inbounds i32, i32* %13, i64 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @BotSayTeamOrder(%struct.TYPE_8__* %88, i32 %90)
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %93 = getelementptr inbounds i32, i32* %13, i64 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @VOICECHAT_GETFLAG, align 4
  %96 = call i32 @BotSayVoiceTeamOrder(%struct.TYPE_8__* %92, i32 %94, i32 %95)
  %97 = getelementptr inbounds i32, i32* %13, i64 2
  %98 = load i32, i32* %97, align 8
  %99 = trunc i64 %15 to i32
  %100 = call i32 @ClientName(i32 %98, i8* %16, i32 %99)
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %102 = call i32 @BotAI_BotInitialChat(%struct.TYPE_8__* %101, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %16, i32* null)
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %104 = getelementptr inbounds i32, i32* %13, i64 2
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @BotSayTeamOrder(%struct.TYPE_8__* %103, i32 %105)
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %108 = getelementptr inbounds i32, i32* %13, i64 2
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @VOICECHAT_GETFLAG, align 4
  %111 = call i32 @BotSayVoiceTeamOrder(%struct.TYPE_8__* %107, i32 %109, i32 %110)
  br label %199

112:                                              ; preds = %30
  %113 = load i32, i32* %3, align 4
  %114 = sitofp i32 %113 to float
  %115 = fptosi float %114 to i32
  %116 = sitofp i32 %115 to double
  %117 = fmul double %116, 3.000000e-01
  %118 = fadd double %117, 5.000000e-01
  %119 = fptosi double %118 to i32
  store i32 %119, i32* %4, align 4
  %120 = load i32, i32* %4, align 4
  %121 = icmp sgt i32 %120, 3
  br i1 %121, label %122, label %123

122:                                              ; preds = %112
  store i32 3, i32* %4, align 4
  br label %123

123:                                              ; preds = %122, %112
  %124 = load i32, i32* %3, align 4
  %125 = sitofp i32 %124 to float
  %126 = fptosi float %125 to i32
  %127 = sitofp i32 %126 to double
  %128 = fmul double %127, 6.000000e-01
  %129 = fadd double %128, 5.000000e-01
  %130 = fptosi double %129 to i32
  store i32 %130, i32* %5, align 4
  %131 = load i32, i32* %5, align 4
  %132 = icmp sgt i32 %131, 6
  br i1 %132, label %133, label %134

133:                                              ; preds = %123
  store i32 6, i32* %5, align 4
  br label %134

134:                                              ; preds = %133, %123
  store i32 0, i32* %6, align 4
  br label %135

135:                                              ; preds = %161, %134
  %136 = load i32, i32* %6, align 4
  %137 = load i32, i32* %4, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %164

139:                                              ; preds = %135
  %140 = load i32, i32* %6, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %13, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = trunc i64 %15 to i32
  %145 = call i32 @ClientName(i32 %143, i8* %16, i32 %144)
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %147 = call i32 @BotAI_BotInitialChat(%struct.TYPE_8__* %146, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %16, i32* null)
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %149 = load i32, i32* %6, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %13, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @BotSayTeamOrder(%struct.TYPE_8__* %148, i32 %152)
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %155 = load i32, i32* %6, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %13, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @VOICECHAT_DEFEND, align 4
  %160 = call i32 @BotSayVoiceTeamOrder(%struct.TYPE_8__* %154, i32 %158, i32 %159)
  br label %161

161:                                              ; preds = %139
  %162 = load i32, i32* %6, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %6, align 4
  br label %135

164:                                              ; preds = %135
  store i32 0, i32* %6, align 4
  br label %165

165:                                              ; preds = %195, %164
  %166 = load i32, i32* %6, align 4
  %167 = load i32, i32* %5, align 4
  %168 = icmp slt i32 %166, %167
  br i1 %168, label %169, label %198

169:                                              ; preds = %165
  %170 = load i32, i32* %3, align 4
  %171 = load i32, i32* %6, align 4
  %172 = sub nsw i32 %170, %171
  %173 = sub nsw i32 %172, 1
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %13, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = trunc i64 %15 to i32
  %178 = call i32 @ClientName(i32 %176, i8* %16, i32 %177)
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %180 = call i32 @BotAI_BotInitialChat(%struct.TYPE_8__* %179, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %16, i32* null)
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %182 = load i32, i32* %3, align 4
  %183 = load i32, i32* %6, align 4
  %184 = sub nsw i32 %182, %183
  %185 = sub nsw i32 %184, 1
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %13, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @BotSayTeamOrder(%struct.TYPE_8__* %181, i32 %188)
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %191 = getelementptr inbounds i32, i32* %13, i64 0
  %192 = load i32, i32* %191, align 16
  %193 = load i32, i32* @VOICECHAT_GETFLAG, align 4
  %194 = call i32 @BotSayVoiceTeamOrder(%struct.TYPE_8__* %190, i32 %192, i32 %193)
  br label %195

195:                                              ; preds = %169
  %196 = load i32, i32* %6, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %6, align 4
  br label %165

198:                                              ; preds = %165
  br label %199

199:                                              ; preds = %198, %66, %35, %34
  br label %375

200:                                              ; preds = %1
  %201 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  switch i32 %203, label %282 [
    i32 1, label %204
    i32 2, label %205
    i32 3, label %236
  ]

204:                                              ; preds = %200
  br label %374

205:                                              ; preds = %200
  %206 = getelementptr inbounds i32, i32* %13, i64 0
  %207 = load i32, i32* %206, align 16
  %208 = trunc i64 %15 to i32
  %209 = call i32 @ClientName(i32 %207, i8* %16, i32 %208)
  %210 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %211 = call i32 @BotAI_BotInitialChat(%struct.TYPE_8__* %210, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %16, i32* null)
  %212 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %213 = getelementptr inbounds i32, i32* %13, i64 0
  %214 = load i32, i32* %213, align 16
  %215 = call i32 @BotSayTeamOrder(%struct.TYPE_8__* %212, i32 %214)
  %216 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %217 = getelementptr inbounds i32, i32* %13, i64 0
  %218 = load i32, i32* %217, align 16
  %219 = load i32, i32* @VOICECHAT_GETFLAG, align 4
  %220 = call i32 @BotSayVoiceTeamOrder(%struct.TYPE_8__* %216, i32 %218, i32 %219)
  %221 = getelementptr inbounds i32, i32* %13, i64 1
  %222 = load i32, i32* %221, align 4
  %223 = trunc i64 %15 to i32
  %224 = call i32 @ClientName(i32 %222, i8* %16, i32 %223)
  %225 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %226 = call i32 @BotAI_BotInitialChat(%struct.TYPE_8__* %225, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %16, i32* null)
  %227 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %228 = getelementptr inbounds i32, i32* %13, i64 1
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @BotSayTeamOrder(%struct.TYPE_8__* %227, i32 %229)
  %231 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %232 = getelementptr inbounds i32, i32* %13, i64 1
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* @VOICECHAT_GETFLAG, align 4
  %235 = call i32 @BotSayVoiceTeamOrder(%struct.TYPE_8__* %231, i32 %233, i32 %234)
  br label %374

236:                                              ; preds = %200
  %237 = getelementptr inbounds i32, i32* %13, i64 0
  %238 = load i32, i32* %237, align 16
  %239 = trunc i64 %15 to i32
  %240 = call i32 @ClientName(i32 %238, i8* %16, i32 %239)
  %241 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %242 = call i32 @BotAI_BotInitialChat(%struct.TYPE_8__* %241, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %16, i32* null)
  %243 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %244 = getelementptr inbounds i32, i32* %13, i64 0
  %245 = load i32, i32* %244, align 16
  %246 = call i32 @BotSayTeamOrder(%struct.TYPE_8__* %243, i32 %245)
  %247 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %248 = getelementptr inbounds i32, i32* %13, i64 0
  %249 = load i32, i32* %248, align 16
  %250 = load i32, i32* @VOICECHAT_GETFLAG, align 4
  %251 = call i32 @BotSayVoiceTeamOrder(%struct.TYPE_8__* %247, i32 %249, i32 %250)
  %252 = getelementptr inbounds i32, i32* %13, i64 1
  %253 = load i32, i32* %252, align 4
  %254 = trunc i64 %15 to i32
  %255 = call i32 @ClientName(i32 %253, i8* %16, i32 %254)
  %256 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %257 = call i32 @BotAI_BotInitialChat(%struct.TYPE_8__* %256, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %16, i32* null)
  %258 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %259 = getelementptr inbounds i32, i32* %13, i64 1
  %260 = load i32, i32* %259, align 4
  %261 = call i32 @BotSayTeamOrder(%struct.TYPE_8__* %258, i32 %260)
  %262 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %263 = getelementptr inbounds i32, i32* %13, i64 1
  %264 = load i32, i32* %263, align 4
  %265 = load i32, i32* @VOICECHAT_GETFLAG, align 4
  %266 = call i32 @BotSayVoiceTeamOrder(%struct.TYPE_8__* %262, i32 %264, i32 %265)
  %267 = getelementptr inbounds i32, i32* %13, i64 2
  %268 = load i32, i32* %267, align 8
  %269 = trunc i64 %15 to i32
  %270 = call i32 @ClientName(i32 %268, i8* %16, i32 %269)
  %271 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %272 = call i32 @BotAI_BotInitialChat(%struct.TYPE_8__* %271, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %16, i32* null)
  %273 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %274 = getelementptr inbounds i32, i32* %13, i64 2
  %275 = load i32, i32* %274, align 8
  %276 = call i32 @BotSayTeamOrder(%struct.TYPE_8__* %273, i32 %275)
  %277 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %278 = getelementptr inbounds i32, i32* %13, i64 2
  %279 = load i32, i32* %278, align 8
  %280 = load i32, i32* @VOICECHAT_GETFLAG, align 4
  %281 = call i32 @BotSayVoiceTeamOrder(%struct.TYPE_8__* %277, i32 %279, i32 %280)
  br label %374

282:                                              ; preds = %200
  %283 = load i32, i32* %3, align 4
  %284 = sitofp i32 %283 to float
  %285 = fptosi float %284 to i32
  %286 = sitofp i32 %285 to double
  %287 = fmul double %286, 2.000000e-01
  %288 = fadd double %287, 5.000000e-01
  %289 = fptosi double %288 to i32
  store i32 %289, i32* %4, align 4
  %290 = load i32, i32* %4, align 4
  %291 = icmp sgt i32 %290, 2
  br i1 %291, label %292, label %293

292:                                              ; preds = %282
  store i32 2, i32* %4, align 4
  br label %293

293:                                              ; preds = %292, %282
  %294 = load i32, i32* %3, align 4
  %295 = sitofp i32 %294 to float
  %296 = fptosi float %295 to i32
  %297 = sitofp i32 %296 to double
  %298 = fmul double %297, 0x3FE6666666666666
  %299 = fadd double %298, 5.000000e-01
  %300 = fptosi double %299 to i32
  store i32 %300, i32* %5, align 4
  %301 = load i32, i32* %5, align 4
  %302 = icmp sgt i32 %301, 7
  br i1 %302, label %303, label %304

303:                                              ; preds = %293
  store i32 7, i32* %5, align 4
  br label %304

304:                                              ; preds = %303, %293
  store i32 0, i32* %6, align 4
  br label %305

305:                                              ; preds = %331, %304
  %306 = load i32, i32* %6, align 4
  %307 = load i32, i32* %4, align 4
  %308 = icmp slt i32 %306, %307
  br i1 %308, label %309, label %334

309:                                              ; preds = %305
  %310 = load i32, i32* %6, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i32, i32* %13, i64 %311
  %313 = load i32, i32* %312, align 4
  %314 = trunc i64 %15 to i32
  %315 = call i32 @ClientName(i32 %313, i8* %16, i32 %314)
  %316 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %317 = call i32 @BotAI_BotInitialChat(%struct.TYPE_8__* %316, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %16, i32* null)
  %318 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %319 = load i32, i32* %6, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i32, i32* %13, i64 %320
  %322 = load i32, i32* %321, align 4
  %323 = call i32 @BotSayTeamOrder(%struct.TYPE_8__* %318, i32 %322)
  %324 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %325 = load i32, i32* %6, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i32, i32* %13, i64 %326
  %328 = load i32, i32* %327, align 4
  %329 = load i32, i32* @VOICECHAT_DEFEND, align 4
  %330 = call i32 @BotSayVoiceTeamOrder(%struct.TYPE_8__* %324, i32 %328, i32 %329)
  br label %331

331:                                              ; preds = %309
  %332 = load i32, i32* %6, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %6, align 4
  br label %305

334:                                              ; preds = %305
  store i32 0, i32* %6, align 4
  br label %335

335:                                              ; preds = %370, %334
  %336 = load i32, i32* %6, align 4
  %337 = load i32, i32* %5, align 4
  %338 = icmp slt i32 %336, %337
  br i1 %338, label %339, label %373

339:                                              ; preds = %335
  %340 = load i32, i32* %3, align 4
  %341 = load i32, i32* %6, align 4
  %342 = sub nsw i32 %340, %341
  %343 = sub nsw i32 %342, 1
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i32, i32* %13, i64 %344
  %346 = load i32, i32* %345, align 4
  %347 = trunc i64 %15 to i32
  %348 = call i32 @ClientName(i32 %346, i8* %16, i32 %347)
  %349 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %350 = call i32 @BotAI_BotInitialChat(%struct.TYPE_8__* %349, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %16, i32* null)
  %351 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %352 = load i32, i32* %3, align 4
  %353 = load i32, i32* %6, align 4
  %354 = sub nsw i32 %352, %353
  %355 = sub nsw i32 %354, 1
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i32, i32* %13, i64 %356
  %358 = load i32, i32* %357, align 4
  %359 = call i32 @BotSayTeamOrder(%struct.TYPE_8__* %351, i32 %358)
  %360 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %361 = load i32, i32* %3, align 4
  %362 = load i32, i32* %6, align 4
  %363 = sub nsw i32 %361, %362
  %364 = sub nsw i32 %363, 1
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i32, i32* %13, i64 %365
  %367 = load i32, i32* %366, align 4
  %368 = load i32, i32* @VOICECHAT_GETFLAG, align 4
  %369 = call i32 @BotSayVoiceTeamOrder(%struct.TYPE_8__* %360, i32 %367, i32 %368)
  br label %370

370:                                              ; preds = %339
  %371 = load i32, i32* %6, align 4
  %372 = add nsw i32 %371, 1
  store i32 %372, i32* %6, align 4
  br label %335

373:                                              ; preds = %335
  br label %374

374:                                              ; preds = %373, %236, %205, %204
  br label %375

375:                                              ; preds = %374, %199
  %376 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %376)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @BotSortTeamMatesByBaseTravelTime(%struct.TYPE_8__*, i32*, i32) #2

declare dso_local i32 @BotSortTeamMatesByTaskPreference(%struct.TYPE_8__*, i32*, i32) #2

declare dso_local i32 @ClientName(i32, i8*, i32) #2

declare dso_local i32 @BotAI_BotInitialChat(%struct.TYPE_8__*, i8*, i8*, i32*) #2

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
