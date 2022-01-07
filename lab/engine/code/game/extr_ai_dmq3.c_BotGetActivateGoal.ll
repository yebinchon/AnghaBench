; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_ai_dmq3.c_BotGetActivateGoal.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_ai_dmq3.c_BotGetActivateGoal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64 }
%struct.TYPE_25__ = type { i32, i32, i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32, i32, %struct.TYPE_22__, i64 }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_26__ = type { i32, i32*, i32, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i64, i32 }
%struct.TYPE_27__ = type { i32, i32 }
%struct.TYPE_28__ = type { i32 }

@MAX_ACTIVATEAREAS = common dso_local global i32 0, align 4
@MAX_INFO_STRING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"*%d\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"model\00", align 1
@PRT_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"BotGetActivateGoal: no entity found with model %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"classname\00", align 1
@.str.4 = private unnamed_addr constant [59 x i8] c"BotGetActivateGoal: entity with model %s has no classname\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"func_door\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"health\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"spawnflags\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"origin\00", align 1
@ET_MOVER = common dso_local global i32 0, align 4
@AREACONTENTS_MOVER = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [12 x i8] c"func_button\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"targetname\00", align 1
@bot_developer = common dso_local global %struct.TYPE_21__ zeroinitializer, align 8
@.str.11 = private unnamed_addr constant [62 x i8] c"BotGetActivateGoal: entity with model \22%s\22 has no targetname\0A\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"target\00", align 1
@.str.13 = private unnamed_addr constant [48 x i8] c"BotGetActivateGoal: no entity with target \22%s\22\0A\00", align 1
@.str.14 = private unnamed_addr constant [62 x i8] c"BotGetActivateGoal: entity with target \22%s\22 has no classname\0A\00", align 1
@qfalse = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [17 x i8] c"trigger_multiple\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"func_timer\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"target_relay\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"target_delay\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BotGetActivateGoal(%struct.TYPE_25__* %0, i32 %1, %struct.TYPE_26__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [10 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca [128 x i8], align 16
  %19 = alloca [128 x i8], align 16
  %20 = alloca [128 x i8], align 16
  %21 = alloca float, align 4
  %22 = alloca [10 x [128 x i8]], align 16
  %23 = alloca %struct.TYPE_27__, align 4
  %24 = alloca %struct.TYPE_28__, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_26__* %2, %struct.TYPE_26__** %7, align 8
  %29 = load i32, i32* @MAX_ACTIVATEAREAS, align 4
  %30 = mul nsw i32 %29, 2
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %13, align 8
  %33 = alloca i32, i64 %31, align 16
  store i64 %31, i64* %14, align 8
  %34 = load i32, i32* @MAX_INFO_STRING, align 4
  %35 = zext i32 %34 to i64
  %36 = alloca i8, i64 %35, align 16
  store i64 %35, i64* %17, align 8
  %37 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %38 = call i32 @memset(%struct.TYPE_26__* %37, i32 0, i32 40)
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @BotEntityInfo(i32 %39, %struct.TYPE_27__* %23)
  %41 = trunc i64 %35 to i32
  %42 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %23, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @Com_sprintf(i8* %36, i32 %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = call i32 @trap_AAS_NextBSPEntity(i32 0)
  store i32 %45, i32* %9, align 4
  br label %46

46:                                               ; preds = %61, %3
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %64

49:                                               ; preds = %46
  %50 = load i32, i32* %9, align 4
  %51 = getelementptr inbounds [128 x i8], [128 x i8]* %18, i64 0, i64 0
  %52 = call i64 @trap_AAS_ValueForBSPEpairKey(i32 %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %51, i32 128)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %49
  br label %61

55:                                               ; preds = %49
  %56 = getelementptr inbounds [128 x i8], [128 x i8]* %18, i64 0, i64 0
  %57 = call i32 @strcmp(i8* %36, i8* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %55
  br label %64

60:                                               ; preds = %55
  br label %61

61:                                               ; preds = %60, %54
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @trap_AAS_NextBSPEntity(i32 %62)
  store i32 %63, i32* %9, align 4
  br label %46

64:                                               ; preds = %59, %46
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* @PRT_ERROR, align 4
  %69 = call i32 @BotAI_Print(i32 %68, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i8* %36)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %28, align 4
  br label %556

70:                                               ; preds = %64
  %71 = load i32, i32* %9, align 4
  %72 = getelementptr inbounds [128 x i8], [128 x i8]* %20, i64 0, i64 0
  %73 = call i64 @trap_AAS_ValueForBSPEpairKey(i32 %71, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %72, i32 128)
  %74 = getelementptr inbounds [128 x i8], [128 x i8]* %20, i64 0, i64 0
  %75 = load i8, i8* %74, align 16
  %76 = icmp ne i8 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %70
  %78 = load i32, i32* @PRT_ERROR, align 4
  %79 = call i32 @BotAI_Print(i32 %78, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0), i8* %36)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %28, align 4
  br label %556

80:                                               ; preds = %70
  %81 = getelementptr inbounds [128 x i8], [128 x i8]* %20, i64 0, i64 0
  %82 = call i32 @strcmp(i8* %81, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %242, label %84

84:                                               ; preds = %80
  %85 = load i32, i32* %9, align 4
  %86 = call i64 @trap_AAS_FloatForBSPEpairKey(i32 %85, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), float* %21)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %84
  %89 = load float, float* %21, align 4
  %90 = fcmp une float %89, 0.000000e+00
  br i1 %90, label %91, label %97

91:                                               ; preds = %88
  %92 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %93 = load i32, i32* %9, align 4
  %94 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %95 = call i32 @BotFuncDoorActivateGoal(%struct.TYPE_25__* %92, i32 %93, %struct.TYPE_26__* %94)
  %96 = load i32, i32* %9, align 4
  store i32 %96, i32* %4, align 4
  store i32 1, i32* %28, align 4
  br label %556

97:                                               ; preds = %88
  br label %98

98:                                               ; preds = %97, %84
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @trap_AAS_IntForBSPEpairKey(i32 %99, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32* %11)
  %101 = load i32, i32* %11, align 4
  %102 = and i32 %101, 1
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %98
  store i32 0, i32* %4, align 4
  store i32 1, i32* %28, align 4
  br label %556

105:                                              ; preds = %98
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* %25, align 4
  %108 = call i32 @trap_AAS_VectorForBSPEpairKey(i32 %106, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %105
  %111 = load i32, i32* %25, align 4
  %112 = call i32 @VectorClear(i32 %111)
  br label %113

113:                                              ; preds = %110, %105
  %114 = load i32, i32* %25, align 4
  %115 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %23, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @VectorCompare(i32 %114, i32 %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %113
  store i32 0, i32* %4, align 4
  store i32 1, i32* %28, align 4
  br label %556

120:                                              ; preds = %113
  %121 = load i32, i32* %9, align 4
  %122 = trunc i64 %35 to i32
  %123 = call i64 @trap_AAS_ValueForBSPEpairKey(i32 %121, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %36, i32 %122)
  %124 = load i8, i8* %36, align 16
  %125 = icmp ne i8 %124, 0
  br i1 %125, label %126, label %241

126:                                              ; preds = %120
  %127 = getelementptr inbounds i8, i8* %36, i64 1
  %128 = call i32 @atoi(i8* %127)
  store i32 %128, i32* %12, align 4
  %129 = load i32, i32* %12, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %240

131:                                              ; preds = %126
  %132 = load i32, i32* %12, align 4
  %133 = load i32, i32* @ET_MOVER, align 4
  %134 = load i32, i32* %26, align 4
  %135 = load i32, i32* %27, align 4
  %136 = call i32 @BotModelMinsMaxs(i32 %132, i32 %133, i32 0, i32 %134, i32 %135)
  %137 = load i32, i32* %26, align 4
  %138 = load i32, i32* %27, align 4
  %139 = load i32, i32* @MAX_ACTIVATEAREAS, align 4
  %140 = mul nsw i32 %139, 2
  %141 = call i32 @trap_AAS_BBoxAreas(i32 %137, i32 %138, i32* %33, i32 %140)
  store i32 %141, i32* %15, align 4
  store i32 0, i32* %8, align 4
  br label %142

142:                                              ; preds = %187, %131
  %143 = load i32, i32* %8, align 4
  %144 = load i32, i32* %15, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %190

146:                                              ; preds = %142
  %147 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @MAX_ACTIVATEAREAS, align 4
  %151 = icmp sge i32 %149, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %146
  br label %190

153:                                              ; preds = %146
  %154 = load i32, i32* %8, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %33, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = call i64 @trap_AAS_AreaReachability(i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %161, label %160

160:                                              ; preds = %153
  br label %187

161:                                              ; preds = %153
  %162 = load i32, i32* %8, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %33, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @trap_AAS_AreaInfo(i32 %165, %struct.TYPE_28__* %24)
  %167 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %24, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @AREACONTENTS_MOVER, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %186

172:                                              ; preds = %161
  %173 = load i32, i32* %8, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %33, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %177, i32 0, i32 1
  %179 = load i32*, i32** %178, align 8
  %180 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %181, align 8
  %184 = sext i32 %182 to i64
  %185 = getelementptr inbounds i32, i32* %179, i64 %184
  store i32 %176, i32* %185, align 4
  br label %186

186:                                              ; preds = %172, %161
  br label %187

187:                                              ; preds = %186, %160
  %188 = load i32, i32* %8, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %8, align 4
  br label %142

190:                                              ; preds = %152, %142
  store i32 0, i32* %8, align 4
  br label %191

191:                                              ; preds = %236, %190
  %192 = load i32, i32* %8, align 4
  %193 = load i32, i32* %15, align 4
  %194 = icmp slt i32 %192, %193
  br i1 %194, label %195, label %239

195:                                              ; preds = %191
  %196 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %197 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* @MAX_ACTIVATEAREAS, align 4
  %200 = icmp sge i32 %198, %199
  br i1 %200, label %201, label %202

201:                                              ; preds = %195
  br label %239

202:                                              ; preds = %195
  %203 = load i32, i32* %8, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %33, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = call i64 @trap_AAS_AreaReachability(i32 %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %202
  br label %236

210:                                              ; preds = %202
  %211 = load i32, i32* %8, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %33, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @trap_AAS_AreaInfo(i32 %214, %struct.TYPE_28__* %24)
  %216 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %24, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* @AREACONTENTS_MOVER, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %235

221:                                              ; preds = %210
  %222 = load i32, i32* %8, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %33, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %227 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %226, i32 0, i32 1
  %228 = load i32*, i32** %227, align 8
  %229 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %230 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %230, align 8
  %233 = sext i32 %231 to i64
  %234 = getelementptr inbounds i32, i32* %228, i64 %233
  store i32 %225, i32* %234, align 4
  br label %235

235:                                              ; preds = %221, %210
  br label %236

236:                                              ; preds = %235, %209
  %237 = load i32, i32* %8, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %8, align 4
  br label %191

239:                                              ; preds = %201, %191
  br label %240

240:                                              ; preds = %239, %126
  br label %241

241:                                              ; preds = %240, %120
  br label %242

242:                                              ; preds = %241, %80
  %243 = getelementptr inbounds [128 x i8], [128 x i8]* %20, i64 0, i64 0
  %244 = call i32 @strcmp(i8* %243, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %247, label %246

246:                                              ; preds = %242
  store i32 0, i32* %4, align 4
  store i32 1, i32* %28, align 4
  br label %556

247:                                              ; preds = %242
  %248 = load i32, i32* %9, align 4
  %249 = getelementptr inbounds [10 x [128 x i8]], [10 x [128 x i8]]* %22, i64 0, i64 0
  %250 = getelementptr inbounds [128 x i8], [128 x i8]* %249, i64 0, i64 0
  %251 = call i64 @trap_AAS_ValueForBSPEpairKey(i32 %248, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i8* %250, i32 128)
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %260, label %253

253:                                              ; preds = %247
  %254 = load i64, i64* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @bot_developer, i32 0, i32 0), align 8
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %259

256:                                              ; preds = %253
  %257 = load i32, i32* @PRT_ERROR, align 4
  %258 = call i32 @BotAI_Print(i32 %257, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.11, i64 0, i64 0), i8* %36)
  br label %259

259:                                              ; preds = %256, %253
  store i32 0, i32* %4, align 4
  store i32 1, i32* %28, align 4
  br label %556

260:                                              ; preds = %247
  %261 = call i32 @trap_AAS_NextBSPEntity(i32 0)
  %262 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 0
  store i32 %261, i32* %262, align 16
  store i32 0, i32* %8, align 4
  br label %263

263:                                              ; preds = %554, %525, %507, %480, %438, %414, %387, %345, %334, %316, %260
  %264 = load i32, i32* %8, align 4
  %265 = icmp sge i32 %264, 0
  br i1 %265, label %266, label %269

266:                                              ; preds = %263
  %267 = load i32, i32* %8, align 4
  %268 = icmp slt i32 %267, 10
  br label %269

269:                                              ; preds = %266, %263
  %270 = phi i1 [ false, %263 ], [ %268, %266 ]
  br i1 %270, label %271, label %555

271:                                              ; preds = %269
  %272 = load i32, i32* %8, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 %273
  %275 = load i32, i32* %274, align 4
  store i32 %275, i32* %9, align 4
  br label %276

276:                                              ; preds = %300, %271
  %277 = load i32, i32* %9, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %303

279:                                              ; preds = %276
  %280 = load i32, i32* %9, align 4
  %281 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i64 0, i64 0
  %282 = call i64 @trap_AAS_ValueForBSPEpairKey(i32 %280, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i8* %281, i32 128)
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %285, label %284

284:                                              ; preds = %279
  br label %300

285:                                              ; preds = %279
  %286 = load i32, i32* %8, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds [10 x [128 x i8]], [10 x [128 x i8]]* %22, i64 0, i64 %287
  %289 = getelementptr inbounds [128 x i8], [128 x i8]* %288, i64 0, i64 0
  %290 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i64 0, i64 0
  %291 = call i32 @strcmp(i8* %289, i8* %290)
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %299, label %293

293:                                              ; preds = %285
  %294 = load i32, i32* %9, align 4
  %295 = call i32 @trap_AAS_NextBSPEntity(i32 %294)
  %296 = load i32, i32* %8, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 %297
  store i32 %295, i32* %298, align 4
  br label %303

299:                                              ; preds = %285
  br label %300

300:                                              ; preds = %299, %284
  %301 = load i32, i32* %9, align 4
  %302 = call i32 @trap_AAS_NextBSPEntity(i32 %301)
  store i32 %302, i32* %9, align 4
  br label %276

303:                                              ; preds = %293, %276
  %304 = load i32, i32* %9, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %319, label %306

306:                                              ; preds = %303
  %307 = load i64, i64* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @bot_developer, i32 0, i32 0), align 8
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %316

309:                                              ; preds = %306
  %310 = load i32, i32* @PRT_ERROR, align 4
  %311 = load i32, i32* %8, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds [10 x [128 x i8]], [10 x [128 x i8]]* %22, i64 0, i64 %312
  %314 = getelementptr inbounds [128 x i8], [128 x i8]* %313, i64 0, i64 0
  %315 = call i32 @BotAI_Print(i32 %310, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13, i64 0, i64 0), i8* %314)
  br label %316

316:                                              ; preds = %309, %306
  %317 = load i32, i32* %8, align 4
  %318 = add nsw i32 %317, -1
  store i32 %318, i32* %8, align 4
  br label %263

319:                                              ; preds = %303
  %320 = load i32, i32* %9, align 4
  %321 = getelementptr inbounds [128 x i8], [128 x i8]* %20, i64 0, i64 0
  %322 = call i64 @trap_AAS_ValueForBSPEpairKey(i32 %320, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %321, i32 128)
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %335, label %324

324:                                              ; preds = %319
  %325 = load i64, i64* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @bot_developer, i32 0, i32 0), align 8
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %327, label %334

327:                                              ; preds = %324
  %328 = load i32, i32* @PRT_ERROR, align 4
  %329 = load i32, i32* %8, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds [10 x [128 x i8]], [10 x [128 x i8]]* %22, i64 0, i64 %330
  %332 = getelementptr inbounds [128 x i8], [128 x i8]* %331, i64 0, i64 0
  %333 = call i32 @BotAI_Print(i32 %328, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.14, i64 0, i64 0), i8* %332)
  br label %334

334:                                              ; preds = %327, %324
  br label %263

335:                                              ; preds = %319
  %336 = getelementptr inbounds [128 x i8], [128 x i8]* %20, i64 0, i64 0
  %337 = call i32 @strcmp(i8* %336, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %428, label %339

339:                                              ; preds = %335
  %340 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %341 = load i32, i32* %9, align 4
  %342 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %343 = call i32 @BotFuncButtonActivateGoal(%struct.TYPE_25__* %340, i32 %341, %struct.TYPE_26__* %342)
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %346, label %345

345:                                              ; preds = %339
  br label %263

346:                                              ; preds = %339
  %347 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %348 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %347, i32 0, i32 3
  %349 = load %struct.TYPE_24__*, %struct.TYPE_24__** %348, align 8
  %350 = icmp ne %struct.TYPE_24__* %349, null
  br i1 %350, label %351, label %388

351:                                              ; preds = %346
  %352 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %353 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %352, i32 0, i32 3
  %354 = load %struct.TYPE_24__*, %struct.TYPE_24__** %353, align 8
  %355 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %354, i32 0, i32 3
  %356 = load i64, i64* %355, align 8
  %357 = icmp ne i64 %356, 0
  br i1 %357, label %358, label %388

358:                                              ; preds = %351
  %359 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %360 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %359, i32 0, i32 3
  %361 = load %struct.TYPE_24__*, %struct.TYPE_24__** %360, align 8
  %362 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %361, i32 0, i32 2
  %363 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %362, i32 0, i32 0
  %364 = load i64, i64* %363, align 8
  %365 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %366 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %365, i32 0, i32 3
  %367 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %366, i32 0, i32 0
  %368 = load i64, i64* %367, align 8
  %369 = icmp eq i64 %364, %368
  br i1 %369, label %370, label %388

370:                                              ; preds = %358
  %371 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %372 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %371, i32 0, i32 3
  %373 = load %struct.TYPE_24__*, %struct.TYPE_24__** %372, align 8
  %374 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %373, i32 0, i32 0
  %375 = load i32, i32* %374, align 8
  %376 = call i32 (...) @FloatTime()
  %377 = icmp sgt i32 %375, %376
  br i1 %377, label %378, label %388

378:                                              ; preds = %370
  %379 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %380 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %379, i32 0, i32 3
  %381 = load %struct.TYPE_24__*, %struct.TYPE_24__** %380, align 8
  %382 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %381, i32 0, i32 1
  %383 = load i32, i32* %382, align 4
  %384 = call i32 (...) @FloatTime()
  %385 = sub nsw i32 %384, 2
  %386 = icmp slt i32 %383, %385
  br i1 %386, label %387, label %388

387:                                              ; preds = %378
  br label %263

388:                                              ; preds = %378, %370, %358, %351, %346
  %389 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %390 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %389, i32 0, i32 0
  %391 = load i32, i32* %390, align 8
  %392 = call i64 @trap_AAS_AreaReachability(i32 %391)
  %393 = icmp ne i64 %392, 0
  br i1 %393, label %394, label %426

394:                                              ; preds = %388
  %395 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %396 = load i32, i32* @qfalse, align 4
  %397 = call i32 @BotEnableActivateGoalAreas(%struct.TYPE_26__* %395, i32 %396)
  %398 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %399 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %398, i32 0, i32 0
  %400 = load i32, i32* %399, align 8
  %401 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %402 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %401, i32 0, i32 2
  %403 = load i32, i32* %402, align 8
  %404 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %405 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %404, i32 0, i32 3
  %406 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %405, i32 0, i32 1
  %407 = load i32, i32* %406, align 8
  %408 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %409 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %408, i32 0, i32 1
  %410 = load i32, i32* %409, align 4
  %411 = call i32 @trap_AAS_AreaTravelTimeToGoalArea(i32 %400, i32 %403, i32 %407, i32 %410)
  store i32 %411, i32* %16, align 4
  %412 = load i32, i32* %16, align 4
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %415, label %414

414:                                              ; preds = %394
  br label %263

415:                                              ; preds = %394
  %416 = call i32 (...) @FloatTime()
  %417 = sitofp i32 %416 to double
  %418 = load i32, i32* %16, align 4
  %419 = sitofp i32 %418 to double
  %420 = fmul double %419, 1.000000e-02
  %421 = fadd double %417, %420
  %422 = fadd double %421, 5.000000e+00
  %423 = fptosi double %422 to i32
  %424 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %425 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %424, i32 0, i32 2
  store i32 %423, i32* %425, align 8
  br label %426

426:                                              ; preds = %415, %388
  %427 = load i32, i32* %9, align 4
  store i32 %427, i32* %4, align 4
  store i32 1, i32* %28, align 4
  br label %556

428:                                              ; preds = %335
  %429 = getelementptr inbounds [128 x i8], [128 x i8]* %20, i64 0, i64 0
  %430 = call i32 @strcmp(i8* %429, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0))
  %431 = icmp ne i32 %430, 0
  br i1 %431, label %521, label %432

432:                                              ; preds = %428
  %433 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %434 = load i32, i32* %9, align 4
  %435 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %436 = call i32 @BotTriggerMultipleActivateGoal(%struct.TYPE_25__* %433, i32 %434, %struct.TYPE_26__* %435)
  %437 = icmp ne i32 %436, 0
  br i1 %437, label %439, label %438

438:                                              ; preds = %432
  br label %263

439:                                              ; preds = %432
  %440 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %441 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %440, i32 0, i32 3
  %442 = load %struct.TYPE_24__*, %struct.TYPE_24__** %441, align 8
  %443 = icmp ne %struct.TYPE_24__* %442, null
  br i1 %443, label %444, label %481

444:                                              ; preds = %439
  %445 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %446 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %445, i32 0, i32 3
  %447 = load %struct.TYPE_24__*, %struct.TYPE_24__** %446, align 8
  %448 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %447, i32 0, i32 3
  %449 = load i64, i64* %448, align 8
  %450 = icmp ne i64 %449, 0
  br i1 %450, label %451, label %481

451:                                              ; preds = %444
  %452 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %453 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %452, i32 0, i32 3
  %454 = load %struct.TYPE_24__*, %struct.TYPE_24__** %453, align 8
  %455 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %454, i32 0, i32 2
  %456 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %455, i32 0, i32 0
  %457 = load i64, i64* %456, align 8
  %458 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %459 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %458, i32 0, i32 3
  %460 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %459, i32 0, i32 0
  %461 = load i64, i64* %460, align 8
  %462 = icmp eq i64 %457, %461
  br i1 %462, label %463, label %481

463:                                              ; preds = %451
  %464 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %465 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %464, i32 0, i32 3
  %466 = load %struct.TYPE_24__*, %struct.TYPE_24__** %465, align 8
  %467 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %466, i32 0, i32 0
  %468 = load i32, i32* %467, align 8
  %469 = call i32 (...) @FloatTime()
  %470 = icmp sgt i32 %468, %469
  br i1 %470, label %471, label %481

471:                                              ; preds = %463
  %472 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %473 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %472, i32 0, i32 3
  %474 = load %struct.TYPE_24__*, %struct.TYPE_24__** %473, align 8
  %475 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %474, i32 0, i32 1
  %476 = load i32, i32* %475, align 4
  %477 = call i32 (...) @FloatTime()
  %478 = sub nsw i32 %477, 2
  %479 = icmp slt i32 %476, %478
  br i1 %479, label %480, label %481

480:                                              ; preds = %471
  br label %263

481:                                              ; preds = %471, %463, %451, %444, %439
  %482 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %483 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %482, i32 0, i32 0
  %484 = load i32, i32* %483, align 8
  %485 = call i64 @trap_AAS_AreaReachability(i32 %484)
  %486 = icmp ne i64 %485, 0
  br i1 %486, label %487, label %519

487:                                              ; preds = %481
  %488 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %489 = load i32, i32* @qfalse, align 4
  %490 = call i32 @BotEnableActivateGoalAreas(%struct.TYPE_26__* %488, i32 %489)
  %491 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %492 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %491, i32 0, i32 0
  %493 = load i32, i32* %492, align 8
  %494 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %495 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %494, i32 0, i32 2
  %496 = load i32, i32* %495, align 8
  %497 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %498 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %497, i32 0, i32 3
  %499 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %498, i32 0, i32 1
  %500 = load i32, i32* %499, align 8
  %501 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %502 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %501, i32 0, i32 1
  %503 = load i32, i32* %502, align 4
  %504 = call i32 @trap_AAS_AreaTravelTimeToGoalArea(i32 %493, i32 %496, i32 %500, i32 %503)
  store i32 %504, i32* %16, align 4
  %505 = load i32, i32* %16, align 4
  %506 = icmp ne i32 %505, 0
  br i1 %506, label %508, label %507

507:                                              ; preds = %487
  br label %263

508:                                              ; preds = %487
  %509 = call i32 (...) @FloatTime()
  %510 = sitofp i32 %509 to double
  %511 = load i32, i32* %16, align 4
  %512 = sitofp i32 %511 to double
  %513 = fmul double %512, 1.000000e-02
  %514 = fadd double %510, %513
  %515 = fadd double %514, 5.000000e+00
  %516 = fptosi double %515 to i32
  %517 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %518 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %517, i32 0, i32 2
  store i32 %516, i32* %518, align 8
  br label %519

519:                                              ; preds = %508, %481
  %520 = load i32, i32* %9, align 4
  store i32 %520, i32* %4, align 4
  store i32 1, i32* %28, align 4
  br label %556

521:                                              ; preds = %428
  %522 = getelementptr inbounds [128 x i8], [128 x i8]* %20, i64 0, i64 0
  %523 = call i32 @strcmp(i8* %522, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0))
  %524 = icmp ne i32 %523, 0
  br i1 %524, label %526, label %525

525:                                              ; preds = %521
  br label %263

526:                                              ; preds = %521
  %527 = getelementptr inbounds [128 x i8], [128 x i8]* %20, i64 0, i64 0
  %528 = call i32 @strcmp(i8* %527, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0))
  %529 = icmp ne i32 %528, 0
  br i1 %529, label %530, label %534

530:                                              ; preds = %526
  %531 = getelementptr inbounds [128 x i8], [128 x i8]* %20, i64 0, i64 0
  %532 = call i32 @strcmp(i8* %531, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0))
  %533 = icmp ne i32 %532, 0
  br i1 %533, label %551, label %534

534:                                              ; preds = %530, %526
  %535 = load i32, i32* %9, align 4
  %536 = load i32, i32* %8, align 4
  %537 = add nsw i32 %536, 1
  %538 = sext i32 %537 to i64
  %539 = getelementptr inbounds [10 x [128 x i8]], [10 x [128 x i8]]* %22, i64 0, i64 %538
  %540 = getelementptr inbounds [128 x i8], [128 x i8]* %539, i64 0, i64 0
  %541 = call i64 @trap_AAS_ValueForBSPEpairKey(i32 %535, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i8* %540, i32 128)
  %542 = icmp ne i64 %541, 0
  br i1 %542, label %543, label %550

543:                                              ; preds = %534
  %544 = load i32, i32* %8, align 4
  %545 = add nsw i32 %544, 1
  store i32 %545, i32* %8, align 4
  %546 = call i32 @trap_AAS_NextBSPEntity(i32 0)
  %547 = load i32, i32* %8, align 4
  %548 = sext i32 %547 to i64
  %549 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 %548
  store i32 %546, i32* %549, align 4
  br label %550

550:                                              ; preds = %543, %534
  br label %551

551:                                              ; preds = %550, %530
  br label %552

552:                                              ; preds = %551
  br label %553

553:                                              ; preds = %552
  br label %554

554:                                              ; preds = %553
  br label %263

555:                                              ; preds = %269
  store i32 0, i32* %4, align 4
  store i32 1, i32* %28, align 4
  br label %556

556:                                              ; preds = %555, %519, %426, %259, %246, %119, %104, %91, %77, %67
  %557 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %557)
  %558 = load i32, i32* %4, align 4
  ret i32 %558
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.TYPE_26__*, i32, i32) #2

declare dso_local i32 @BotEntityInfo(i32, %struct.TYPE_27__*) #2

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @trap_AAS_NextBSPEntity(i32) #2

declare dso_local i64 @trap_AAS_ValueForBSPEpairKey(i32, i8*, i8*, i32) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @BotAI_Print(i32, i8*, i8*) #2

declare dso_local i64 @trap_AAS_FloatForBSPEpairKey(i32, i8*, float*) #2

declare dso_local i32 @BotFuncDoorActivateGoal(%struct.TYPE_25__*, i32, %struct.TYPE_26__*) #2

declare dso_local i32 @trap_AAS_IntForBSPEpairKey(i32, i8*, i32*) #2

declare dso_local i32 @trap_AAS_VectorForBSPEpairKey(i32, i8*, i32) #2

declare dso_local i32 @VectorClear(i32) #2

declare dso_local i32 @VectorCompare(i32, i32) #2

declare dso_local i32 @atoi(i8*) #2

declare dso_local i32 @BotModelMinsMaxs(i32, i32, i32, i32, i32) #2

declare dso_local i32 @trap_AAS_BBoxAreas(i32, i32, i32*, i32) #2

declare dso_local i64 @trap_AAS_AreaReachability(i32) #2

declare dso_local i32 @trap_AAS_AreaInfo(i32, %struct.TYPE_28__*) #2

declare dso_local i32 @BotFuncButtonActivateGoal(%struct.TYPE_25__*, i32, %struct.TYPE_26__*) #2

declare dso_local i32 @FloatTime(...) #2

declare dso_local i32 @BotEnableActivateGoalAreas(%struct.TYPE_26__*, i32) #2

declare dso_local i32 @trap_AAS_AreaTravelTimeToGoalArea(i32, i32, i32, i32) #2

declare dso_local i32 @BotTriggerMultipleActivateGoal(%struct.TYPE_25__*, i32, %struct.TYPE_26__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
