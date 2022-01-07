; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_g_cmds.c_ClientCommand.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_g_cmds.c_ClientCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_33__ = type { %struct.TYPE_32__* }
%struct.TYPE_32__ = type { %struct.TYPE_31__ }
%struct.TYPE_31__ = type { i64, i64 }
%struct.TYPE_34__ = type { i64 }

@MAX_TOKEN_CHARS = common dso_local global i32 0, align 4
@g_entities = common dso_local global %struct.TYPE_33__* null, align 8
@CON_CONNECTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"team\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"say\00", align 1
@SAY_ALL = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"say_team\00", align 1
@SAY_TEAM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"tell\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"score\00", align 1
@level = common dso_local global %struct.TYPE_34__ zeroinitializer, align 8
@qtrue = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"give\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"god\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"notarget\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"noclip\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"kill\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"teamtask\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"levelshot\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"follow\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"follownext\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"followprev\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"where\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"callvote\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"vote\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"callteamvote\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"teamvote\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"gc\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"setviewpos\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"dm_pickup\00", align 1
@.str.24 = private unnamed_addr constant [24 x i8] c"print \22unknown cmd %s\0A\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ClientCommand(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_33__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* @MAX_TOKEN_CHARS, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %4, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %5, align 8
  %11 = load %struct.TYPE_33__*, %struct.TYPE_33__** @g_entities, align 8
  %12 = load i32, i32* %2, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %11, i64 %13
  store %struct.TYPE_33__* %14, %struct.TYPE_33__** %3, align 8
  %15 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %18 = icmp ne %struct.TYPE_32__* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %1
  %20 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_32__*, %struct.TYPE_32__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @CON_CONNECTED, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %51

28:                                               ; preds = %19, %1
  %29 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_32__*, %struct.TYPE_32__** %30, align 8
  %32 = icmp ne %struct.TYPE_32__* %31, null
  br i1 %32, label %33, label %50

33:                                               ; preds = %28
  %34 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_32__*, %struct.TYPE_32__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %33
  %42 = trunc i64 %8 to i32
  %43 = call i32 @trap_Argv(i32 0, i8* %10, i32 %42)
  %44 = call i64 @Q_stricmp(i8* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %48 = call i32 @Cmd_Team_f(%struct.TYPE_33__* %47)
  br label %49

49:                                               ; preds = %46, %41
  br label %50

50:                                               ; preds = %49, %33, %28
  store i32 1, i32* %6, align 4
  br label %233

51:                                               ; preds = %19
  %52 = trunc i64 %8 to i32
  %53 = call i32 @trap_Argv(i32 0, i8* %10, i32 %52)
  %54 = call i64 @Q_stricmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %58 = load i32, i32* @SAY_ALL, align 4
  %59 = load i32, i32* @qfalse, align 4
  %60 = call i32 @Cmd_Say_f(%struct.TYPE_33__* %57, i32 %58, i32 %59)
  store i32 1, i32* %6, align 4
  br label %233

61:                                               ; preds = %51
  %62 = call i64 @Q_stricmp(i8* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %66 = load i32, i32* @SAY_TEAM, align 4
  %67 = load i32, i32* @qfalse, align 4
  %68 = call i32 @Cmd_Say_f(%struct.TYPE_33__* %65, i32 %66, i32 %67)
  store i32 1, i32* %6, align 4
  br label %233

69:                                               ; preds = %61
  %70 = call i64 @Q_stricmp(i8* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %74 = call i32 @Cmd_Tell_f(%struct.TYPE_33__* %73)
  store i32 1, i32* %6, align 4
  br label %233

75:                                               ; preds = %69
  %76 = call i64 @Q_stricmp(i8* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %80 = call i32 @Cmd_Score_f(%struct.TYPE_33__* %79)
  store i32 1, i32* %6, align 4
  br label %233

81:                                               ; preds = %75
  %82 = load i64, i64* getelementptr inbounds (%struct.TYPE_34__, %struct.TYPE_34__* @level, i32 0, i32 0), align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %81
  %85 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %86 = load i32, i32* @qfalse, align 4
  %87 = load i32, i32* @qtrue, align 4
  %88 = call i32 @Cmd_Say_f(%struct.TYPE_33__* %85, i32 %86, i32 %87)
  store i32 1, i32* %6, align 4
  br label %233

89:                                               ; preds = %81
  %90 = call i64 @Q_stricmp(i8* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %94 = call i32 @Cmd_Give_f(%struct.TYPE_33__* %93)
  br label %232

95:                                               ; preds = %89
  %96 = call i64 @Q_stricmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %100 = call i32 @Cmd_God_f(%struct.TYPE_33__* %99)
  br label %231

101:                                              ; preds = %95
  %102 = call i64 @Q_stricmp(i8* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %106 = call i32 @Cmd_Notarget_f(%struct.TYPE_33__* %105)
  br label %230

107:                                              ; preds = %101
  %108 = call i64 @Q_stricmp(i8* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %112 = call i32 @Cmd_Noclip_f(%struct.TYPE_33__* %111)
  br label %229

113:                                              ; preds = %107
  %114 = call i64 @Q_stricmp(i8* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %118 = call i32 @Cmd_Kill_f(%struct.TYPE_33__* %117)
  br label %228

119:                                              ; preds = %113
  %120 = call i64 @Q_stricmp(i8* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %119
  %123 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %124 = call i32 @Cmd_TeamTask_f(%struct.TYPE_33__* %123)
  br label %227

125:                                              ; preds = %119
  %126 = call i64 @Q_stricmp(i8* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0))
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %125
  %129 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %130 = call i32 @Cmd_LevelShot_f(%struct.TYPE_33__* %129)
  br label %226

131:                                              ; preds = %125
  %132 = call i64 @Q_stricmp(i8* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %131
  %135 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %136 = call i32 @Cmd_Follow_f(%struct.TYPE_33__* %135)
  br label %225

137:                                              ; preds = %131
  %138 = call i64 @Q_stricmp(i8* %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0))
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %137
  %141 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %142 = call i32 @Cmd_FollowCycle_f(%struct.TYPE_33__* %141, i32 1)
  br label %224

143:                                              ; preds = %137
  %144 = call i64 @Q_stricmp(i8* %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0))
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %143
  %147 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %148 = call i32 @Cmd_FollowCycle_f(%struct.TYPE_33__* %147, i32 -1)
  br label %223

149:                                              ; preds = %143
  %150 = call i64 @Q_stricmp(i8* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %149
  %153 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %154 = call i32 @Cmd_Team_f(%struct.TYPE_33__* %153)
  br label %222

155:                                              ; preds = %149
  %156 = call i64 @Q_stricmp(i8* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %155
  %159 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %160 = call i32 @Cmd_Where_f(%struct.TYPE_33__* %159)
  br label %221

161:                                              ; preds = %155
  %162 = call i64 @Q_stricmp(i8* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0))
  %163 = icmp eq i64 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %161
  %165 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %166 = call i32 @Cmd_CallVote_f(%struct.TYPE_33__* %165)
  br label %220

167:                                              ; preds = %161
  %168 = call i64 @Q_stricmp(i8* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %167
  %171 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %172 = call i32 @Cmd_Vote_f(%struct.TYPE_33__* %171)
  br label %219

173:                                              ; preds = %167
  %174 = call i64 @Q_stricmp(i8* %10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0))
  %175 = icmp eq i64 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %173
  %177 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %178 = call i32 @Cmd_CallTeamVote_f(%struct.TYPE_33__* %177)
  br label %218

179:                                              ; preds = %173
  %180 = call i64 @Q_stricmp(i8* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0))
  %181 = icmp eq i64 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %179
  %183 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %184 = call i32 @Cmd_TeamVote_f(%struct.TYPE_33__* %183)
  br label %217

185:                                              ; preds = %179
  %186 = call i64 @Q_stricmp(i8* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0))
  %187 = icmp eq i64 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %185
  %189 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %190 = call i32 @Cmd_GameCommand_f(%struct.TYPE_33__* %189)
  br label %216

191:                                              ; preds = %185
  %192 = call i64 @Q_stricmp(i8* %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0))
  %193 = icmp eq i64 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %191
  %195 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %196 = call i32 @Cmd_SetViewpos_f(%struct.TYPE_33__* %195)
  br label %215

197:                                              ; preds = %191
  %198 = call i64 @Q_stricmp(i8* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0))
  %199 = icmp eq i64 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %197
  %201 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %202 = call i32 @Cmd_Stats_f(%struct.TYPE_33__* %201)
  br label %214

203:                                              ; preds = %197
  %204 = call i64 @Q_stricmp(i8* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0))
  %205 = icmp eq i64 %204, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %203
  %207 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %208 = call i32 @Cmd_Pickup_f(%struct.TYPE_33__* %207)
  br label %213

209:                                              ; preds = %203
  %210 = load i32, i32* %2, align 4
  %211 = call i32 @va(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.24, i64 0, i64 0), i8* %10)
  %212 = call i32 @trap_SendServerCommand(i32 %210, i32 %211)
  br label %213

213:                                              ; preds = %209, %206
  br label %214

214:                                              ; preds = %213, %200
  br label %215

215:                                              ; preds = %214, %194
  br label %216

216:                                              ; preds = %215, %188
  br label %217

217:                                              ; preds = %216, %182
  br label %218

218:                                              ; preds = %217, %176
  br label %219

219:                                              ; preds = %218, %170
  br label %220

220:                                              ; preds = %219, %164
  br label %221

221:                                              ; preds = %220, %158
  br label %222

222:                                              ; preds = %221, %152
  br label %223

223:                                              ; preds = %222, %146
  br label %224

224:                                              ; preds = %223, %140
  br label %225

225:                                              ; preds = %224, %134
  br label %226

226:                                              ; preds = %225, %128
  br label %227

227:                                              ; preds = %226, %122
  br label %228

228:                                              ; preds = %227, %116
  br label %229

229:                                              ; preds = %228, %110
  br label %230

230:                                              ; preds = %229, %104
  br label %231

231:                                              ; preds = %230, %98
  br label %232

232:                                              ; preds = %231, %92
  store i32 0, i32* %6, align 4
  br label %233

233:                                              ; preds = %232, %84, %78, %72, %64, %56, %50
  %234 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %234)
  %235 = load i32, i32* %6, align 4
  switch i32 %235, label %237 [
    i32 0, label %236
    i32 1, label %236
  ]

236:                                              ; preds = %233, %233
  ret void

237:                                              ; preds = %233
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @trap_Argv(i32, i8*, i32) #2

declare dso_local i64 @Q_stricmp(i8*, i8*) #2

declare dso_local i32 @Cmd_Team_f(%struct.TYPE_33__*) #2

declare dso_local i32 @Cmd_Say_f(%struct.TYPE_33__*, i32, i32) #2

declare dso_local i32 @Cmd_Tell_f(%struct.TYPE_33__*) #2

declare dso_local i32 @Cmd_Score_f(%struct.TYPE_33__*) #2

declare dso_local i32 @Cmd_Give_f(%struct.TYPE_33__*) #2

declare dso_local i32 @Cmd_God_f(%struct.TYPE_33__*) #2

declare dso_local i32 @Cmd_Notarget_f(%struct.TYPE_33__*) #2

declare dso_local i32 @Cmd_Noclip_f(%struct.TYPE_33__*) #2

declare dso_local i32 @Cmd_Kill_f(%struct.TYPE_33__*) #2

declare dso_local i32 @Cmd_TeamTask_f(%struct.TYPE_33__*) #2

declare dso_local i32 @Cmd_LevelShot_f(%struct.TYPE_33__*) #2

declare dso_local i32 @Cmd_Follow_f(%struct.TYPE_33__*) #2

declare dso_local i32 @Cmd_FollowCycle_f(%struct.TYPE_33__*, i32) #2

declare dso_local i32 @Cmd_Where_f(%struct.TYPE_33__*) #2

declare dso_local i32 @Cmd_CallVote_f(%struct.TYPE_33__*) #2

declare dso_local i32 @Cmd_Vote_f(%struct.TYPE_33__*) #2

declare dso_local i32 @Cmd_CallTeamVote_f(%struct.TYPE_33__*) #2

declare dso_local i32 @Cmd_TeamVote_f(%struct.TYPE_33__*) #2

declare dso_local i32 @Cmd_GameCommand_f(%struct.TYPE_33__*) #2

declare dso_local i32 @Cmd_SetViewpos_f(%struct.TYPE_33__*) #2

declare dso_local i32 @Cmd_Stats_f(%struct.TYPE_33__*) #2

declare dso_local i32 @Cmd_Pickup_f(%struct.TYPE_33__*) #2

declare dso_local i32 @trap_SendServerCommand(i32, i32) #2

declare dso_local i32 @va(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
