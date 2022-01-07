; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_servercmds.c_CG_ConfigStringModified.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_servercmds.c_CG_ConfigStringModified.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i8, i8, i8, i32*, i32*, %struct.TYPE_4__, i32*, i8**, i8**, i8**, i8**, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i8* }

@cgs = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@CS_MUSIC = common dso_local global i32 0, align 4
@CS_SERVERINFO = common dso_local global i32 0, align 4
@CS_WARMUP = common dso_local global i32 0, align 4
@CS_SCORES1 = common dso_local global i32 0, align 4
@CS_SCORES2 = common dso_local global i32 0, align 4
@CS_LEVEL_START_TIME = common dso_local global i32 0, align 4
@CS_VOTE_TIME = common dso_local global i32 0, align 4
@qtrue = common dso_local global i8* null, align 8
@CS_VOTE_YES = common dso_local global i32 0, align 4
@CS_VOTE_NO = common dso_local global i32 0, align 4
@CS_VOTE_STRING = common dso_local global i32 0, align 4
@CS_TEAMVOTE_TIME = common dso_local global i32 0, align 4
@CS_TEAMVOTE_YES = common dso_local global i32 0, align 4
@CS_TEAMVOTE_NO = common dso_local global i32 0, align 4
@CS_TEAMVOTE_STRING = common dso_local global i32 0, align 4
@CS_INTERMISSION = common dso_local global i32 0, align 4
@cg = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@CS_MODELS = common dso_local global i32 0, align 4
@MAX_MODELS = common dso_local global i32 0, align 4
@CS_SOUNDS = common dso_local global i32 0, align 4
@MAX_SOUNDS = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@CS_PLAYERS = common dso_local global i32 0, align 4
@MAX_CLIENTS = common dso_local global i32 0, align 4
@CS_FLAGSTATUS = common dso_local global i32 0, align 4
@GT_CTF = common dso_local global i64 0, align 8
@CS_SHADERSTATE = common dso_local global i32 0, align 4
@CHAN_ANNOUNCER = common dso_local global i32 0, align 4
@GT_1FCTF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @CG_ConfigStringModified to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_ConfigStringModified() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = call i8* @CG_Argv(i32 1)
  %4 = call i8* @atoi(i8* %3)
  %5 = ptrtoint i8* %4 to i32
  store i32 %5, i32* %2, align 4
  %6 = call i32 @trap_GetGameState(i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cgs, i32 0, i32 20))
  %7 = load i32, i32* %2, align 4
  %8 = call i8* @CG_ConfigString(i32 %7)
  store i8* %8, i8** %1, align 8
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @CS_MUSIC, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %0
  %13 = call i32 (...) @CG_StartMusic()
  br label %289

14:                                               ; preds = %0
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @CS_SERVERINFO, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = call i32 (...) @CG_ParseServerinfo()
  br label %288

20:                                               ; preds = %14
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @CS_WARMUP, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = call i32 (...) @CG_ParseWarmup()
  br label %287

26:                                               ; preds = %20
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* @CS_SCORES1, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i8*, i8** %1, align 8
  %32 = call i8* @atoi(i8* %31)
  store i8* %32, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cgs, i32 0, i32 19), align 8
  br label %286

33:                                               ; preds = %26
  %34 = load i32, i32* %2, align 4
  %35 = load i32, i32* @CS_SCORES2, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i8*, i8** %1, align 8
  %39 = call i8* @atoi(i8* %38)
  store i8* %39, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cgs, i32 0, i32 18), align 8
  br label %285

40:                                               ; preds = %33
  %41 = load i32, i32* %2, align 4
  %42 = load i32, i32* @CS_LEVEL_START_TIME, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i8*, i8** %1, align 8
  %46 = call i8* @atoi(i8* %45)
  store i8* %46, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cgs, i32 0, i32 17), align 8
  br label %284

47:                                               ; preds = %40
  %48 = load i32, i32* %2, align 4
  %49 = load i32, i32* @CS_VOTE_TIME, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load i8*, i8** %1, align 8
  %53 = call i8* @atoi(i8* %52)
  store i8* %53, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cgs, i32 0, i32 16), align 8
  %54 = load i8*, i8** @qtrue, align 8
  store i8* %54, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cgs, i32 0, i32 13), align 8
  br label %283

55:                                               ; preds = %47
  %56 = load i32, i32* %2, align 4
  %57 = load i32, i32* @CS_VOTE_YES, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load i8*, i8** %1, align 8
  %61 = call i8* @atoi(i8* %60)
  store i8* %61, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cgs, i32 0, i32 15), align 8
  %62 = load i8*, i8** @qtrue, align 8
  store i8* %62, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cgs, i32 0, i32 13), align 8
  br label %282

63:                                               ; preds = %55
  %64 = load i32, i32* %2, align 4
  %65 = load i32, i32* @CS_VOTE_NO, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load i8*, i8** %1, align 8
  %69 = call i8* @atoi(i8* %68)
  store i8* %69, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cgs, i32 0, i32 14), align 8
  %70 = load i8*, i8** @qtrue, align 8
  store i8* %70, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cgs, i32 0, i32 13), align 8
  br label %281

71:                                               ; preds = %63
  %72 = load i32, i32* %2, align 4
  %73 = load i32, i32* @CS_VOTE_STRING, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cgs, i32 0, i32 12), align 8
  %77 = load i8*, i8** %1, align 8
  %78 = call i32 @Q_strncpyz(i32 %76, i8* %77, i32 4)
  br label %280

79:                                               ; preds = %71
  %80 = load i32, i32* %2, align 4
  %81 = load i32, i32* @CS_TEAMVOTE_TIME, align 4
  %82 = icmp sge i32 %80, %81
  br i1 %82, label %83, label %104

83:                                               ; preds = %79
  %84 = load i32, i32* %2, align 4
  %85 = load i32, i32* @CS_TEAMVOTE_TIME, align 4
  %86 = add nsw i32 %85, 1
  %87 = icmp sle i32 %84, %86
  br i1 %87, label %88, label %104

88:                                               ; preds = %83
  %89 = load i8*, i8** %1, align 8
  %90 = call i8* @atoi(i8* %89)
  %91 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cgs, i32 0, i32 11), align 8
  %92 = load i32, i32* %2, align 4
  %93 = load i32, i32* @CS_TEAMVOTE_TIME, align 4
  %94 = sub nsw i32 %92, %93
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8*, i8** %91, i64 %95
  store i8* %90, i8** %96, align 8
  %97 = load i8*, i8** @qtrue, align 8
  %98 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cgs, i32 0, i32 8), align 8
  %99 = load i32, i32* %2, align 4
  %100 = load i32, i32* @CS_TEAMVOTE_TIME, align 4
  %101 = sub nsw i32 %99, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8*, i8** %98, i64 %102
  store i8* %97, i8** %103, align 8
  br label %279

104:                                              ; preds = %83, %79
  %105 = load i32, i32* %2, align 4
  %106 = load i32, i32* @CS_TEAMVOTE_YES, align 4
  %107 = icmp sge i32 %105, %106
  br i1 %107, label %108, label %129

108:                                              ; preds = %104
  %109 = load i32, i32* %2, align 4
  %110 = load i32, i32* @CS_TEAMVOTE_YES, align 4
  %111 = add nsw i32 %110, 1
  %112 = icmp sle i32 %109, %111
  br i1 %112, label %113, label %129

113:                                              ; preds = %108
  %114 = load i8*, i8** %1, align 8
  %115 = call i8* @atoi(i8* %114)
  %116 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cgs, i32 0, i32 10), align 8
  %117 = load i32, i32* %2, align 4
  %118 = load i32, i32* @CS_TEAMVOTE_YES, align 4
  %119 = sub nsw i32 %117, %118
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8*, i8** %116, i64 %120
  store i8* %115, i8** %121, align 8
  %122 = load i8*, i8** @qtrue, align 8
  %123 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cgs, i32 0, i32 8), align 8
  %124 = load i32, i32* %2, align 4
  %125 = load i32, i32* @CS_TEAMVOTE_YES, align 4
  %126 = sub nsw i32 %124, %125
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8*, i8** %123, i64 %127
  store i8* %122, i8** %128, align 8
  br label %278

129:                                              ; preds = %108, %104
  %130 = load i32, i32* %2, align 4
  %131 = load i32, i32* @CS_TEAMVOTE_NO, align 4
  %132 = icmp sge i32 %130, %131
  br i1 %132, label %133, label %154

133:                                              ; preds = %129
  %134 = load i32, i32* %2, align 4
  %135 = load i32, i32* @CS_TEAMVOTE_NO, align 4
  %136 = add nsw i32 %135, 1
  %137 = icmp sle i32 %134, %136
  br i1 %137, label %138, label %154

138:                                              ; preds = %133
  %139 = load i8*, i8** %1, align 8
  %140 = call i8* @atoi(i8* %139)
  %141 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cgs, i32 0, i32 9), align 8
  %142 = load i32, i32* %2, align 4
  %143 = load i32, i32* @CS_TEAMVOTE_NO, align 4
  %144 = sub nsw i32 %142, %143
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8*, i8** %141, i64 %145
  store i8* %140, i8** %146, align 8
  %147 = load i8*, i8** @qtrue, align 8
  %148 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cgs, i32 0, i32 8), align 8
  %149 = load i32, i32* %2, align 4
  %150 = load i32, i32* @CS_TEAMVOTE_NO, align 4
  %151 = sub nsw i32 %149, %150
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8*, i8** %148, i64 %152
  store i8* %147, i8** %153, align 8
  br label %277

154:                                              ; preds = %133, %129
  %155 = load i32, i32* %2, align 4
  %156 = load i32, i32* @CS_TEAMVOTE_STRING, align 4
  %157 = icmp sge i32 %155, %156
  br i1 %157, label %158, label %173

158:                                              ; preds = %154
  %159 = load i32, i32* %2, align 4
  %160 = load i32, i32* @CS_TEAMVOTE_STRING, align 4
  %161 = add nsw i32 %160, 1
  %162 = icmp sle i32 %159, %161
  br i1 %162, label %163, label %173

163:                                              ; preds = %158
  %164 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cgs, i32 0, i32 7), align 8
  %165 = load i32, i32* %2, align 4
  %166 = load i32, i32* @CS_TEAMVOTE_STRING, align 4
  %167 = sub nsw i32 %165, %166
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %164, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = load i8*, i8** %1, align 8
  %172 = call i32 @Q_strncpyz(i32 %170, i8* %171, i32 4)
  br label %276

173:                                              ; preds = %158, %154
  %174 = load i32, i32* %2, align 4
  %175 = load i32, i32* @CS_INTERMISSION, align 4
  %176 = icmp eq i32 %174, %175
  br i1 %176, label %177, label %180

177:                                              ; preds = %173
  %178 = load i8*, i8** %1, align 8
  %179 = call i8* @atoi(i8* %178)
  store i8* %179, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 0), align 8
  br label %275

180:                                              ; preds = %173
  %181 = load i32, i32* %2, align 4
  %182 = load i32, i32* @CS_MODELS, align 4
  %183 = icmp sge i32 %181, %182
  br i1 %183, label %184, label %199

184:                                              ; preds = %180
  %185 = load i32, i32* %2, align 4
  %186 = load i32, i32* @CS_MODELS, align 4
  %187 = load i32, i32* @MAX_MODELS, align 4
  %188 = add nsw i32 %186, %187
  %189 = icmp slt i32 %185, %188
  br i1 %189, label %190, label %199

190:                                              ; preds = %184
  %191 = load i8*, i8** %1, align 8
  %192 = call i32 @trap_R_RegisterModel(i8* %191)
  %193 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cgs, i32 0, i32 5), align 8
  %194 = load i32, i32* %2, align 4
  %195 = load i32, i32* @CS_MODELS, align 4
  %196 = sub nsw i32 %194, %195
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %193, i64 %197
  store i32 %192, i32* %198, align 4
  br label %274

199:                                              ; preds = %184, %180
  %200 = load i32, i32* %2, align 4
  %201 = load i32, i32* @CS_SOUNDS, align 4
  %202 = icmp sge i32 %200, %201
  br i1 %202, label %203, label %226

203:                                              ; preds = %199
  %204 = load i32, i32* %2, align 4
  %205 = load i32, i32* @CS_SOUNDS, align 4
  %206 = load i32, i32* @MAX_SOUNDS, align 4
  %207 = add nsw i32 %205, %206
  %208 = icmp slt i32 %204, %207
  br i1 %208, label %209, label %226

209:                                              ; preds = %203
  %210 = load i8*, i8** %1, align 8
  %211 = getelementptr inbounds i8, i8* %210, i64 0
  %212 = load i8, i8* %211, align 1
  %213 = sext i8 %212 to i32
  %214 = icmp ne i32 %213, 42
  br i1 %214, label %215, label %225

215:                                              ; preds = %209
  %216 = load i8*, i8** %1, align 8
  %217 = load i32, i32* @qfalse, align 4
  %218 = call i32 @trap_S_RegisterSound(i8* %216, i32 %217)
  %219 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cgs, i32 0, i32 4), align 8
  %220 = load i32, i32* %2, align 4
  %221 = load i32, i32* @CS_SOUNDS, align 4
  %222 = sub nsw i32 %220, %221
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %219, i64 %223
  store i32 %218, i32* %224, align 4
  br label %225

225:                                              ; preds = %215, %209
  br label %273

226:                                              ; preds = %203, %199
  %227 = load i32, i32* %2, align 4
  %228 = load i32, i32* @CS_PLAYERS, align 4
  %229 = icmp sge i32 %227, %228
  br i1 %229, label %230, label %242

230:                                              ; preds = %226
  %231 = load i32, i32* %2, align 4
  %232 = load i32, i32* @CS_PLAYERS, align 4
  %233 = load i32, i32* @MAX_CLIENTS, align 4
  %234 = add nsw i32 %232, %233
  %235 = icmp slt i32 %231, %234
  br i1 %235, label %236, label %242

236:                                              ; preds = %230
  %237 = load i32, i32* %2, align 4
  %238 = load i32, i32* @CS_PLAYERS, align 4
  %239 = sub nsw i32 %237, %238
  %240 = call i32 @CG_NewClientInfo(i32 %239)
  %241 = call i32 (...) @CG_BuildSpectatorString()
  br label %272

242:                                              ; preds = %230, %226
  %243 = load i32, i32* %2, align 4
  %244 = load i32, i32* @CS_FLAGSTATUS, align 4
  %245 = icmp eq i32 %243, %244
  br i1 %245, label %246, label %264

246:                                              ; preds = %242
  %247 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cgs, i32 0, i32 0), align 8
  %248 = load i64, i64* @GT_CTF, align 8
  %249 = icmp eq i64 %247, %248
  br i1 %249, label %250, label %263

250:                                              ; preds = %246
  %251 = load i8*, i8** %1, align 8
  %252 = getelementptr inbounds i8, i8* %251, i64 0
  %253 = load i8, i8* %252, align 1
  %254 = sext i8 %253 to i32
  %255 = sub nsw i32 %254, 48
  %256 = trunc i32 %255 to i8
  store i8 %256, i8* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cgs, i32 0, i32 1), align 8
  %257 = load i8*, i8** %1, align 8
  %258 = getelementptr inbounds i8, i8* %257, i64 1
  %259 = load i8, i8* %258, align 1
  %260 = sext i8 %259 to i32
  %261 = sub nsw i32 %260, 48
  %262 = trunc i32 %261 to i8
  store i8 %262, i8* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cgs, i32 0, i32 2), align 1
  br label %263

263:                                              ; preds = %250, %246
  br label %271

264:                                              ; preds = %242
  %265 = load i32, i32* %2, align 4
  %266 = load i32, i32* @CS_SHADERSTATE, align 4
  %267 = icmp eq i32 %265, %266
  br i1 %267, label %268, label %270

268:                                              ; preds = %264
  %269 = call i32 (...) @CG_ShaderStateChanged()
  br label %270

270:                                              ; preds = %268, %264
  br label %271

271:                                              ; preds = %270, %263
  br label %272

272:                                              ; preds = %271, %236
  br label %273

273:                                              ; preds = %272, %225
  br label %274

274:                                              ; preds = %273, %190
  br label %275

275:                                              ; preds = %274, %177
  br label %276

276:                                              ; preds = %275, %163
  br label %277

277:                                              ; preds = %276, %138
  br label %278

278:                                              ; preds = %277, %113
  br label %279

279:                                              ; preds = %278, %88
  br label %280

280:                                              ; preds = %279, %75
  br label %281

281:                                              ; preds = %280, %67
  br label %282

282:                                              ; preds = %281, %59
  br label %283

283:                                              ; preds = %282, %51
  br label %284

284:                                              ; preds = %283, %44
  br label %285

285:                                              ; preds = %284, %37
  br label %286

286:                                              ; preds = %285, %30
  br label %287

287:                                              ; preds = %286, %24
  br label %288

288:                                              ; preds = %287, %18
  br label %289

289:                                              ; preds = %288, %12
  ret void
}

declare dso_local i8* @atoi(i8*) #1

declare dso_local i8* @CG_Argv(i32) #1

declare dso_local i32 @trap_GetGameState(i32*) #1

declare dso_local i8* @CG_ConfigString(i32) #1

declare dso_local i32 @CG_StartMusic(...) #1

declare dso_local i32 @CG_ParseServerinfo(...) #1

declare dso_local i32 @CG_ParseWarmup(...) #1

declare dso_local i32 @Q_strncpyz(i32, i8*, i32) #1

declare dso_local i32 @trap_R_RegisterModel(i8*) #1

declare dso_local i32 @trap_S_RegisterSound(i8*, i32) #1

declare dso_local i32 @CG_NewClientInfo(i32) #1

declare dso_local i32 @CG_BuildSpectatorString(...) #1

declare dso_local i32 @CG_ShaderStateChanged(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
