; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_scoreboard.c_CG_DrawClientScore.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_scoreboard.c_CG_DrawClientScore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i64, %struct.TYPE_12__, %struct.TYPE_14__* }
%struct.TYPE_12__ = type { i32, i32, i32* }
%struct.TYPE_14__ = type { i32, i32, i32, i64, i64, i32, i32, i32 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_17__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i64*, i32* }
%struct.TYPE_13__ = type { i64, i32, i32, i32 }

@cgs = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@.str = private unnamed_addr constant [23 x i8] c"Bad score->client: %i\0A\00", align 1
@SB_BOTICON_X = common dso_local global i32 0, align 4
@SB_RATING_WIDTH = common dso_local global i32 0, align 4
@SB_HEAD_X = common dso_local global i32 0, align 4
@PW_NEUTRALFLAG = common dso_local global i32 0, align 4
@BIGCHAR_HEIGHT = common dso_local global i32 0, align 4
@TEAM_FREE = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@PW_REDFLAG = common dso_local global i32 0, align 4
@TEAM_RED = common dso_local global i32 0, align 4
@PW_BLUEFLAG = common dso_local global i32 0, align 4
@TEAM_BLUE = common dso_local global i32 0, align 4
@cg_drawIcons = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@GT_TOURNAMENT = common dso_local global i64 0, align 8
@SMALLCHAR_HEIGHT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"%i/%i\00", align 1
@YAW = common dso_local global i64 0, align 8
@ICON_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c" connecting    %s\00", align 1
@TEAM_SPECTATOR = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [18 x i8] c" SPECT %3i %4i %s\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"%5i %4i %4i %s\00", align 1
@cg = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@qtrue = common dso_local global i32 0, align 4
@localClient = common dso_local global i32 0, align 4
@PERS_TEAM = common dso_local global i64 0, align 8
@GT_TEAM = common dso_local global i64 0, align 8
@PERS_RANK = common dso_local global i64 0, align 8
@RANK_TIED_FLAG = common dso_local global i32 0, align 4
@SB_SCORELINE_X = common dso_local global i32 0, align 4
@BIGCHAR_WIDTH = common dso_local global i32 0, align 4
@STAT_CLIENTS_READY = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [6 x i8] c"READY\00", align 1
@TEAMTASK_DEFENSE = common dso_local global i64 0, align 8
@TEAMTASK_NONE = common dso_local global i64 0, align 8
@TEAMTASK_OFFENSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_13__*, float*, float, i64)* @CG_DrawClientScore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_DrawClientScore(i32 %0, %struct.TYPE_13__* %1, float* %2, float %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float, align 4
  %10 = alloca i64, align 8
  %11 = alloca [1024 x i8], align 16
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [4 x float], align 16
  %17 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %7, align 8
  store float* %2, float** %8, align 8
  store float %3, float* %9, align 4
  store i64 %4, i64* %10, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ult i64 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %5
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cgs, i32 0, i32 0), align 8
  %27 = icmp uge i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %22, %5
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @Com_Printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %31)
  br label %438

33:                                               ; preds = %22
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cgs, i32 0, i32 3), align 8
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i64 %37
  store %struct.TYPE_14__* %38, %struct.TYPE_14__** %13, align 8
  %39 = load i32, i32* @SB_BOTICON_X, align 4
  %40 = load i32, i32* @SB_RATING_WIDTH, align 4
  %41 = sdiv i32 %40, 2
  %42 = add nsw i32 %39, %41
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* @SB_HEAD_X, align 4
  %44 = load i32, i32* @SB_RATING_WIDTH, align 4
  %45 = sdiv i32 %44, 2
  %46 = add nsw i32 %43, %45
  store i32 %46, i32* %15, align 4
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @PW_NEUTRALFLAG, align 4
  %51 = shl i32 1, %50
  %52 = and i32 %49, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %74

54:                                               ; preds = %33
  %55 = load i64, i64* %10, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %54
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @BIGCHAR_HEIGHT, align 4
  %61 = sub nsw i32 32, %60
  %62 = sdiv i32 %61, 2
  %63 = sub nsw i32 %59, %62
  %64 = load i32, i32* @TEAM_FREE, align 4
  %65 = load i32, i32* @qfalse, align 4
  %66 = call i32 @CG_DrawFlagModel(i32 %58, i32 %63, i32 32, i32 32, i32 %64, i32 %65)
  br label %73

67:                                               ; preds = %54
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @TEAM_FREE, align 4
  %71 = load i32, i32* @qfalse, align 4
  %72 = call i32 @CG_DrawFlagModel(i32 %68, i32 %69, i32 16, i32 16, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %67, %57
  br label %248

74:                                               ; preds = %33
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @PW_REDFLAG, align 4
  %79 = shl i32 1, %78
  %80 = and i32 %77, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %102

82:                                               ; preds = %74
  %83 = load i64, i64* %10, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %82
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* @BIGCHAR_HEIGHT, align 4
  %89 = sub nsw i32 32, %88
  %90 = sdiv i32 %89, 2
  %91 = sub nsw i32 %87, %90
  %92 = load i32, i32* @TEAM_RED, align 4
  %93 = load i32, i32* @qfalse, align 4
  %94 = call i32 @CG_DrawFlagModel(i32 %86, i32 %91, i32 32, i32 32, i32 %92, i32 %93)
  br label %101

95:                                               ; preds = %82
  %96 = load i32, i32* %14, align 4
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* @TEAM_RED, align 4
  %99 = load i32, i32* @qfalse, align 4
  %100 = call i32 @CG_DrawFlagModel(i32 %96, i32 %97, i32 16, i32 16, i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %95, %85
  br label %247

102:                                              ; preds = %74
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @PW_BLUEFLAG, align 4
  %107 = shl i32 1, %106
  %108 = and i32 %105, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %130

110:                                              ; preds = %102
  %111 = load i64, i64* %10, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %123

113:                                              ; preds = %110
  %114 = load i32, i32* %14, align 4
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* @BIGCHAR_HEIGHT, align 4
  %117 = sub nsw i32 32, %116
  %118 = sdiv i32 %117, 2
  %119 = sub nsw i32 %115, %118
  %120 = load i32, i32* @TEAM_BLUE, align 4
  %121 = load i32, i32* @qfalse, align 4
  %122 = call i32 @CG_DrawFlagModel(i32 %114, i32 %119, i32 32, i32 32, i32 %120, i32 %121)
  br label %129

123:                                              ; preds = %110
  %124 = load i32, i32* %14, align 4
  %125 = load i32, i32* %6, align 4
  %126 = load i32, i32* @TEAM_BLUE, align 4
  %127 = load i32, i32* @qfalse, align 4
  %128 = call i32 @CG_DrawFlagModel(i32 %124, i32 %125, i32 16, i32 16, i32 %126, i32 %127)
  br label %129

129:                                              ; preds = %123, %113
  br label %246

130:                                              ; preds = %102
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = icmp sgt i32 %133, 0
  br i1 %134, label %135, label %176

135:                                              ; preds = %130
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = icmp sle i32 %138, 5
  br i1 %139, label %140, label %176

140:                                              ; preds = %135
  %141 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @cg_drawIcons, i32 0, i32 0), align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %175

143:                                              ; preds = %140
  %144 = load i64, i64* %10, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %162

146:                                              ; preds = %143
  %147 = load i32, i32* %14, align 4
  %148 = load i32, i32* %6, align 4
  %149 = load i32, i32* @BIGCHAR_HEIGHT, align 4
  %150 = sub nsw i32 32, %149
  %151 = sdiv i32 %150, 2
  %152 = sub nsw i32 %148, %151
  %153 = load i32*, i32** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cgs, i32 0, i32 2, i32 2), align 8
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = sub nsw i32 %156, 1
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %153, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @CG_DrawPic(i32 %147, i32 %152, i32 32, i32 32, i32 %160)
  br label %174

162:                                              ; preds = %143
  %163 = load i32, i32* %14, align 4
  %164 = load i32, i32* %6, align 4
  %165 = load i32*, i32** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cgs, i32 0, i32 2, i32 2), align 8
  %166 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = sub nsw i32 %168, 1
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %165, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @CG_DrawPic(i32 %163, i32 %164, i32 16, i32 16, i32 %172)
  br label %174

174:                                              ; preds = %162, %146
  br label %175

175:                                              ; preds = %174, %140
  br label %207

176:                                              ; preds = %135, %130
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = icmp slt i32 %179, 100
  br i1 %180, label %181, label %206

181:                                              ; preds = %176
  %182 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = call i32 (i8*, i32, i8*, i32, ...) @Com_sprintf(i8* %182, i32 1024, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %185)
  %187 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cgs, i32 0, i32 1), align 8
  %188 = load i64, i64* @GT_TOURNAMENT, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %190, label %199

190:                                              ; preds = %181
  %191 = load i32, i32* %14, align 4
  %192 = load i32, i32* %6, align 4
  %193 = load i32, i32* @SMALLCHAR_HEIGHT, align 4
  %194 = sdiv i32 %193, 2
  %195 = sub nsw i32 %192, %194
  %196 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %197 = load float*, float** %8, align 8
  %198 = call i32 @CG_DrawSmallStringColor(i32 %191, i32 %195, i8* %196, float* %197)
  br label %205

199:                                              ; preds = %181
  %200 = load i32, i32* %14, align 4
  %201 = load i32, i32* %6, align 4
  %202 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %203 = load float*, float** %8, align 8
  %204 = call i32 @CG_DrawSmallStringColor(i32 %200, i32 %201, i8* %202, float* %203)
  br label %205

205:                                              ; preds = %199, %190
  br label %206

206:                                              ; preds = %205, %176
  br label %207

207:                                              ; preds = %206, %175
  %208 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cgs, i32 0, i32 1), align 8
  %209 = load i64, i64* @GT_TOURNAMENT, align 8
  %210 = icmp eq i64 %208, %209
  br i1 %210, label %211, label %245

211:                                              ; preds = %207
  %212 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %213 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %214 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %213, i32 0, i32 7
  %215 = load i32, i32* %214, align 8
  %216 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %217 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %216, i32 0, i32 6
  %218 = load i32, i32* %217, align 4
  %219 = call i32 (i8*, i32, i8*, i32, ...) @Com_sprintf(i8* %212, i32 1024, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %215, i32 %218)
  %220 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %221 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 8
  %223 = icmp slt i32 %222, 100
  br i1 %223, label %224, label %238

224:                                              ; preds = %211
  %225 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %226 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %238, label %229

229:                                              ; preds = %224
  %230 = load i32, i32* %14, align 4
  %231 = load i32, i32* %6, align 4
  %232 = load i32, i32* @SMALLCHAR_HEIGHT, align 4
  %233 = sdiv i32 %232, 2
  %234 = add nsw i32 %231, %233
  %235 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %236 = load float*, float** %8, align 8
  %237 = call i32 @CG_DrawSmallStringColor(i32 %230, i32 %234, i8* %235, float* %236)
  br label %244

238:                                              ; preds = %224, %211
  %239 = load i32, i32* %14, align 4
  %240 = load i32, i32* %6, align 4
  %241 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %242 = load float*, float** %8, align 8
  %243 = call i32 @CG_DrawSmallStringColor(i32 %239, i32 %240, i8* %241, float* %242)
  br label %244

244:                                              ; preds = %238, %229
  br label %245

245:                                              ; preds = %244, %207
  br label %246

246:                                              ; preds = %245, %129
  br label %247

247:                                              ; preds = %246, %101
  br label %248

248:                                              ; preds = %247, %73
  %249 = load i32*, i32** %12, align 8
  %250 = call i32 @VectorClear(i32* %249)
  %251 = load i32*, i32** %12, align 8
  %252 = load i64, i64* @YAW, align 8
  %253 = getelementptr inbounds i32, i32* %251, i64 %252
  store i32 180, i32* %253, align 4
  %254 = load i64, i64* %10, align 8
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %271

256:                                              ; preds = %248
  %257 = load i32, i32* %15, align 4
  %258 = load i32, i32* %6, align 4
  %259 = load i32, i32* @ICON_SIZE, align 4
  %260 = load i32, i32* @BIGCHAR_HEIGHT, align 4
  %261 = sub nsw i32 %259, %260
  %262 = sdiv i32 %261, 2
  %263 = sub nsw i32 %258, %262
  %264 = load i32, i32* @ICON_SIZE, align 4
  %265 = load i32, i32* @ICON_SIZE, align 4
  %266 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %267 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %266, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = load i32*, i32** %12, align 8
  %270 = call i32 @CG_DrawHead(i32 %257, i32 %263, i32 %264, i32 %265, i64 %268, i32* %269)
  br label %279

271:                                              ; preds = %248
  %272 = load i32, i32* %15, align 4
  %273 = load i32, i32* %6, align 4
  %274 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %275 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = load i32*, i32** %12, align 8
  %278 = call i32 @CG_DrawHead(i32 %272, i32 %273, i32 16, i32 16, i64 %276, i32* %277)
  br label %279

279:                                              ; preds = %271, %256
  %280 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %281 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 8
  %283 = icmp eq i32 %282, -1
  br i1 %283, label %284, label %290

284:                                              ; preds = %279
  %285 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %286 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %287 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %286, i32 0, i32 5
  %288 = load i32, i32* %287, align 8
  %289 = call i32 (i8*, i32, i8*, i32, ...) @Com_sprintf(i8* %285, i32 1024, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %288)
  br label %324

290:                                              ; preds = %279
  %291 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %292 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %291, i32 0, i32 4
  %293 = load i64, i64* %292, align 8
  %294 = load i64, i64* @TEAM_SPECTATOR, align 8
  %295 = icmp eq i64 %293, %294
  br i1 %295, label %296, label %308

296:                                              ; preds = %290
  %297 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %298 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %299 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 8
  %301 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %302 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %301, i32 0, i32 2
  %303 = load i32, i32* %302, align 4
  %304 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %305 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %304, i32 0, i32 5
  %306 = load i32, i32* %305, align 8
  %307 = call i32 (i8*, i32, i8*, i32, ...) @Com_sprintf(i8* %297, i32 1024, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %300, i32 %303, i32 %306)
  br label %323

308:                                              ; preds = %290
  %309 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %310 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %311 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %310, i32 0, i32 3
  %312 = load i32, i32* %311, align 8
  %313 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %314 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 8
  %316 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %317 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %316, i32 0, i32 2
  %318 = load i32, i32* %317, align 4
  %319 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %320 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %319, i32 0, i32 5
  %321 = load i32, i32* %320, align 8
  %322 = call i32 (i8*, i32, i8*, i32, ...) @Com_sprintf(i8* %309, i32 1024, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %312, i32 %315, i32 %318, i32 %321)
  br label %323

323:                                              ; preds = %308, %296
  br label %324

324:                                              ; preds = %323, %284
  %325 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %326 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %325, i32 0, i32 0
  %327 = load i64, i64* %326, align 8
  %328 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cg, i32 0, i32 0), align 8
  %329 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %328, i32 0, i32 0
  %330 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %329, i32 0, i32 0
  %331 = load i64, i64* %330, align 8
  %332 = icmp eq i64 %327, %331
  br i1 %332, label %333, label %410

333:                                              ; preds = %324
  %334 = load i32, i32* @qtrue, align 4
  store i32 %334, i32* @localClient, align 4
  %335 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cg, i32 0, i32 0), align 8
  %336 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %335, i32 0, i32 0
  %337 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %336, i32 0, i32 1
  %338 = load i64*, i64** %337, align 8
  %339 = load i64, i64* @PERS_TEAM, align 8
  %340 = getelementptr inbounds i64, i64* %338, i64 %339
  %341 = load i64, i64* %340, align 8
  %342 = load i64, i64* @TEAM_SPECTATOR, align 8
  %343 = icmp eq i64 %341, %342
  br i1 %343, label %348, label %344

344:                                              ; preds = %333
  %345 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cgs, i32 0, i32 1), align 8
  %346 = load i64, i64* @GT_TEAM, align 8
  %347 = icmp sge i64 %345, %346
  br i1 %347, label %348, label %349

348:                                              ; preds = %344, %333
  store i32 -1, i32* %17, align 4
  br label %362

349:                                              ; preds = %344
  %350 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cg, i32 0, i32 0), align 8
  %351 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %350, i32 0, i32 0
  %352 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %351, i32 0, i32 1
  %353 = load i64*, i64** %352, align 8
  %354 = load i64, i64* @PERS_RANK, align 8
  %355 = getelementptr inbounds i64, i64* %353, i64 %354
  %356 = load i64, i64* %355, align 8
  %357 = load i32, i32* @RANK_TIED_FLAG, align 4
  %358 = xor i32 %357, -1
  %359 = sext i32 %358 to i64
  %360 = and i64 %356, %359
  %361 = trunc i64 %360 to i32
  store i32 %361, i32* %17, align 4
  br label %362

362:                                              ; preds = %349, %348
  %363 = load i32, i32* %17, align 4
  %364 = icmp eq i32 %363, 0
  br i1 %364, label %365, label %369

365:                                              ; preds = %362
  %366 = getelementptr inbounds [4 x float], [4 x float]* %16, i64 0, i64 0
  store float 0.000000e+00, float* %366, align 16
  %367 = getelementptr inbounds [4 x float], [4 x float]* %16, i64 0, i64 1
  store float 0.000000e+00, float* %367, align 4
  %368 = getelementptr inbounds [4 x float], [4 x float]* %16, i64 0, i64 2
  store float 0x3FE6666660000000, float* %368, align 8
  br label %389

369:                                              ; preds = %362
  %370 = load i32, i32* %17, align 4
  %371 = icmp eq i32 %370, 1
  br i1 %371, label %372, label %376

372:                                              ; preds = %369
  %373 = getelementptr inbounds [4 x float], [4 x float]* %16, i64 0, i64 0
  store float 0x3FE6666660000000, float* %373, align 16
  %374 = getelementptr inbounds [4 x float], [4 x float]* %16, i64 0, i64 1
  store float 0.000000e+00, float* %374, align 4
  %375 = getelementptr inbounds [4 x float], [4 x float]* %16, i64 0, i64 2
  store float 0.000000e+00, float* %375, align 8
  br label %388

376:                                              ; preds = %369
  %377 = load i32, i32* %17, align 4
  %378 = icmp eq i32 %377, 2
  br i1 %378, label %379, label %383

379:                                              ; preds = %376
  %380 = getelementptr inbounds [4 x float], [4 x float]* %16, i64 0, i64 0
  store float 0x3FE6666660000000, float* %380, align 16
  %381 = getelementptr inbounds [4 x float], [4 x float]* %16, i64 0, i64 1
  store float 0x3FE6666660000000, float* %381, align 4
  %382 = getelementptr inbounds [4 x float], [4 x float]* %16, i64 0, i64 2
  store float 0.000000e+00, float* %382, align 8
  br label %387

383:                                              ; preds = %376
  %384 = getelementptr inbounds [4 x float], [4 x float]* %16, i64 0, i64 0
  store float 0x3FE6666660000000, float* %384, align 16
  %385 = getelementptr inbounds [4 x float], [4 x float]* %16, i64 0, i64 1
  store float 0x3FE6666660000000, float* %385, align 4
  %386 = getelementptr inbounds [4 x float], [4 x float]* %16, i64 0, i64 2
  store float 0x3FE6666660000000, float* %386, align 8
  br label %387

387:                                              ; preds = %383, %379
  br label %388

388:                                              ; preds = %387, %372
  br label %389

389:                                              ; preds = %388, %365
  %390 = load float, float* %9, align 4
  %391 = fpext float %390 to double
  %392 = fmul double %391, 0x3FE6666666666666
  %393 = fptrunc double %392 to float
  %394 = getelementptr inbounds [4 x float], [4 x float]* %16, i64 0, i64 3
  store float %393, float* %394, align 4
  %395 = load i32, i32* @SB_SCORELINE_X, align 4
  %396 = load i32, i32* @BIGCHAR_WIDTH, align 4
  %397 = add nsw i32 %395, %396
  %398 = load i32, i32* @SB_RATING_WIDTH, align 4
  %399 = sdiv i32 %398, 2
  %400 = add nsw i32 %397, %399
  %401 = load i32, i32* %6, align 4
  %402 = load i32, i32* @SB_SCORELINE_X, align 4
  %403 = sub nsw i32 640, %402
  %404 = load i32, i32* @BIGCHAR_WIDTH, align 4
  %405 = sub nsw i32 %403, %404
  %406 = load i32, i32* @BIGCHAR_HEIGHT, align 4
  %407 = add nsw i32 %406, 1
  %408 = getelementptr inbounds [4 x float], [4 x float]* %16, i64 0, i64 0
  %409 = call i32 @CG_FillRect(i32 %400, i32 %401, i32 %405, i32 %407, float* %408)
  br label %410

410:                                              ; preds = %389, %324
  %411 = load i32, i32* @SB_SCORELINE_X, align 4
  %412 = load i32, i32* @SB_RATING_WIDTH, align 4
  %413 = sdiv i32 %412, 2
  %414 = add nsw i32 %411, %413
  %415 = load i32, i32* %6, align 4
  %416 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %417 = load float, float* %9, align 4
  %418 = call i32 @CG_DrawBigString(i32 %414, i32 %415, i8* %416, float %417)
  %419 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cg, i32 0, i32 0), align 8
  %420 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %419, i32 0, i32 0
  %421 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %420, i32 0, i32 2
  %422 = load i32*, i32** %421, align 8
  %423 = load i64, i64* @STAT_CLIENTS_READY, align 8
  %424 = getelementptr inbounds i32, i32* %422, i64 %423
  %425 = load i32, i32* %424, align 4
  %426 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %427 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %426, i32 0, i32 0
  %428 = load i64, i64* %427, align 8
  %429 = trunc i64 %428 to i32
  %430 = shl i32 1, %429
  %431 = and i32 %425, %430
  %432 = icmp ne i32 %431, 0
  br i1 %432, label %433, label %438

433:                                              ; preds = %410
  %434 = load i32, i32* %14, align 4
  %435 = load i32, i32* %6, align 4
  %436 = load float*, float** %8, align 8
  %437 = call i32 @CG_DrawBigStringColor(i32 %434, i32 %435, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), float* %436)
  br label %438

438:                                              ; preds = %28, %433, %410
  ret void
}

declare dso_local i32 @Com_Printf(i8*, i64) #1

declare dso_local i32 @CG_DrawFlagModel(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @CG_DrawPic(i32, i32, i32, i32, i32) #1

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i32, ...) #1

declare dso_local i32 @CG_DrawSmallStringColor(i32, i32, i8*, float*) #1

declare dso_local i32 @VectorClear(i32*) #1

declare dso_local i32 @CG_DrawHead(i32, i32, i32, i32, i64, i32*) #1

declare dso_local i32 @CG_FillRect(i32, i32, i32, i32, float*) #1

declare dso_local i32 @CG_DrawBigString(i32, i32, i8*, float) #1

declare dso_local i32 @CG_DrawBigStringColor(i32, i32, i8*, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
