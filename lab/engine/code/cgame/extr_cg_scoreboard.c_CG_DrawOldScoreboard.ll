; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_scoreboard.c_CG_DrawOldScoreboard.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_scoreboard.c_CG_DrawOldScoreboard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64 }
%struct.TYPE_17__ = type { i32, i64*, i32, %struct.TYPE_18__*, %struct.TYPE_12__*, i64*, i32, %struct.TYPE_10__, i64, i64 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64*, i64 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }

@cg_paused = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@cg = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@qfalse = common dso_local global i32 0, align 4
@cg_showScoreboard = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@cgs = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@GT_SINGLE_PLAYER = common dso_local global i64 0, align 8
@PM_INTERMISSION = common dso_local global i64 0, align 8
@PM_DEAD = common dso_local global i64 0, align 8
@colorWhite = common dso_local global float* null, align 8
@FADE_TIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Tagged by %s\00", align 1
@BIGCHAR_WIDTH = common dso_local global i32 0, align 4
@SCREEN_WIDTH = common dso_local global i32 0, align 4
@GT_TEAM = common dso_local global i64 0, align 8
@PERS_TEAM = common dso_local global i64 0, align 8
@TEAM_SPECTATOR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"%s place with %i\00", align 1
@PERS_RANK = common dso_local global i64 0, align 8
@PERS_SCORE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"Teams are tied at %i\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Red leads %i to %i\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Blue leads %i to %i\00", align 1
@SB_HEADER = common dso_local global i32 0, align 4
@SB_SCORE_X = common dso_local global i64 0, align 8
@SB_RATING_WIDTH = common dso_local global i32 0, align 4
@SB_PING_X = common dso_local global i64 0, align 8
@SB_TIME_X = common dso_local global i64 0, align 8
@SB_NAME_X = common dso_local global i64 0, align 8
@SB_TOP = common dso_local global i32 0, align 4
@SB_MAXCLIENTS_NORMAL = common dso_local global i32 0, align 4
@SB_MAXCLIENTS_INTER = common dso_local global i32 0, align 4
@SB_INTER_HEIGHT = common dso_local global i32 0, align 4
@SB_NORMAL_HEIGHT = common dso_local global i32 0, align 4
@localClient = common dso_local global i32 0, align 4
@TEAM_RED = common dso_local global i64 0, align 8
@BIGCHAR_HEIGHT = common dso_local global i64 0, align 8
@TEAM_BLUE = common dso_local global i64 0, align 8
@TEAM_FREE = common dso_local global i64 0, align 8
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CG_DrawOldScoreboard() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca float*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @cg_paused, i32 0, i32 0), align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %0
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cg, i32 0, i32 0), align 8
  %18 = load i32, i32* @qfalse, align 4
  store i32 %18, i32* %1, align 4
  br label %465

19:                                               ; preds = %0
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg_showScoreboard, i32 0, i32 0), align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32, i32* @qfalse, align 4
  store i32 %23, i32* %1, align 4
  br label %465

24:                                               ; preds = %19
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cgs, i32 0, i32 0), align 8
  %26 = load i64, i64* @GT_SINGLE_PLAYER, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cg, i32 0, i32 7, i32 0), align 8
  %30 = load i64, i64* @PM_INTERMISSION, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cg, i32 0, i32 0), align 8
  %33 = load i32, i32* @qfalse, align 4
  store i32 %33, i32* %1, align 4
  br label %465

34:                                               ; preds = %28, %24
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cg, i32 0, i32 9), align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cg, i32 0, i32 8), align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* @qfalse, align 4
  store i32 %41, i32* %1, align 4
  br label %465

42:                                               ; preds = %37, %34
  %43 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cg, i32 0, i32 8), align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %42
  %46 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cg, i32 0, i32 7, i32 0), align 8
  %47 = load i64, i64* @PM_DEAD, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cg, i32 0, i32 7, i32 0), align 8
  %51 = load i64, i64* @PM_INTERMISSION, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49, %45, %42
  store float 1.000000e+00, float* %8, align 4
  %54 = load float*, float** @colorWhite, align 8
  store float* %54, float** %9, align 8
  br label %68

55:                                               ; preds = %49
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cg, i32 0, i32 6), align 8
  %57 = load i32, i32* @FADE_TIME, align 4
  %58 = call float* @CG_FadeColor(i32 %56, i32 %57)
  store float* %58, float** %9, align 8
  %59 = load float*, float** %9, align 8
  %60 = icmp ne float* %59, null
  br i1 %60, label %65, label %61

61:                                               ; preds = %55
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cg, i32 0, i32 0), align 8
  %62 = load i64*, i64** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cg, i32 0, i32 5), align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 0
  store i64 0, i64* %63, align 8
  %64 = load i32, i32* @qfalse, align 4
  store i32 %64, i32* %1, align 4
  br label %465

65:                                               ; preds = %55
  %66 = load float*, float** %9, align 8
  %67 = load float, float* %66, align 4
  store float %67, float* %8, align 4
  br label %68

68:                                               ; preds = %65, %53
  %69 = load i64*, i64** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cg, i32 0, i32 5), align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %90

73:                                               ; preds = %68
  %74 = load i64*, i64** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cg, i32 0, i32 5), align 8
  %75 = ptrtoint i64* %74 to i64
  %76 = call i8* (i8*, i64, ...) @va(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %75)
  store i8* %76, i8** %10, align 8
  %77 = load i8*, i8** %10, align 8
  %78 = call i32 @CG_DrawStrlen(i8* %77)
  %79 = load i32, i32* @BIGCHAR_WIDTH, align 4
  %80 = mul nsw i32 %78, %79
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* @SCREEN_WIDTH, align 4
  %82 = load i32, i32* %4, align 4
  %83 = sub nsw i32 %81, %82
  %84 = sdiv i32 %83, 2
  store i32 %84, i32* %2, align 4
  store i32 40, i32* %3, align 4
  %85 = load i32, i32* %2, align 4
  %86 = load i32, i32* %3, align 4
  %87 = load i8*, i8** %10, align 8
  %88 = load float, float* %8, align 4
  %89 = call i32 @CG_DrawBigString(i32 %85, i32 %86, i8* %87, float %88)
  br label %90

90:                                               ; preds = %73, %68
  %91 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cgs, i32 0, i32 0), align 8
  %92 = load i64, i64* @GT_TEAM, align 8
  %93 = icmp slt i64 %91, %92
  br i1 %93, label %94, label %136

94:                                               ; preds = %90
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cg, i32 0, i32 4), align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = load i64*, i64** %97, align 8
  %99 = load i64, i64* @PERS_TEAM, align 8
  %100 = getelementptr inbounds i64, i64* %98, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @TEAM_SPECTATOR, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %135

104:                                              ; preds = %94
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cg, i32 0, i32 4), align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  %108 = load i64*, i64** %107, align 8
  %109 = load i64, i64* @PERS_RANK, align 8
  %110 = getelementptr inbounds i64, i64* %108, i64 %109
  %111 = load i64, i64* %110, align 8
  %112 = add nsw i64 %111, 1
  %113 = call i64 @CG_PlaceString(i64 %112)
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cg, i32 0, i32 4), align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  %117 = load i64*, i64** %116, align 8
  %118 = load i64, i64* @PERS_SCORE, align 8
  %119 = getelementptr inbounds i64, i64* %117, i64 %118
  %120 = load i64, i64* %119, align 8
  %121 = call i8* (i8*, i64, ...) @va(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i64 %113, i64 %120)
  store i8* %121, i8** %10, align 8
  %122 = load i8*, i8** %10, align 8
  %123 = call i32 @CG_DrawStrlen(i8* %122)
  %124 = load i32, i32* @BIGCHAR_WIDTH, align 4
  %125 = mul nsw i32 %123, %124
  store i32 %125, i32* %4, align 4
  %126 = load i32, i32* @SCREEN_WIDTH, align 4
  %127 = load i32, i32* %4, align 4
  %128 = sub nsw i32 %126, %127
  %129 = sdiv i32 %128, 2
  store i32 %129, i32* %2, align 4
  store i32 60, i32* %3, align 4
  %130 = load i32, i32* %2, align 4
  %131 = load i32, i32* %3, align 4
  %132 = load i8*, i8** %10, align 8
  %133 = load float, float* %8, align 4
  %134 = call i32 @CG_DrawBigString(i32 %130, i32 %131, i8* %132, float %133)
  br label %135

135:                                              ; preds = %104, %94
  br label %188

136:                                              ; preds = %90
  %137 = load i64*, i64** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cg, i32 0, i32 1), align 8
  %138 = getelementptr inbounds i64, i64* %137, i64 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64*, i64** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cg, i32 0, i32 1), align 8
  %141 = getelementptr inbounds i64, i64* %140, i64 1
  %142 = load i64, i64* %141, align 8
  %143 = icmp eq i64 %139, %142
  br i1 %143, label %144, label %149

144:                                              ; preds = %136
  %145 = load i64*, i64** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cg, i32 0, i32 1), align 8
  %146 = getelementptr inbounds i64, i64* %145, i64 0
  %147 = load i64, i64* %146, align 8
  %148 = call i8* (i8*, i64, ...) @va(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i64 %147)
  store i8* %148, i8** %10, align 8
  br label %174

149:                                              ; preds = %136
  %150 = load i64*, i64** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cg, i32 0, i32 1), align 8
  %151 = getelementptr inbounds i64, i64* %150, i64 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64*, i64** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cg, i32 0, i32 1), align 8
  %154 = getelementptr inbounds i64, i64* %153, i64 1
  %155 = load i64, i64* %154, align 8
  %156 = icmp sge i64 %152, %155
  br i1 %156, label %157, label %165

157:                                              ; preds = %149
  %158 = load i64*, i64** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cg, i32 0, i32 1), align 8
  %159 = getelementptr inbounds i64, i64* %158, i64 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64*, i64** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cg, i32 0, i32 1), align 8
  %162 = getelementptr inbounds i64, i64* %161, i64 1
  %163 = load i64, i64* %162, align 8
  %164 = call i8* (i8*, i64, ...) @va(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i64 %160, i64 %163)
  store i8* %164, i8** %10, align 8
  br label %173

165:                                              ; preds = %149
  %166 = load i64*, i64** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cg, i32 0, i32 1), align 8
  %167 = getelementptr inbounds i64, i64* %166, i64 1
  %168 = load i64, i64* %167, align 8
  %169 = load i64*, i64** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cg, i32 0, i32 1), align 8
  %170 = getelementptr inbounds i64, i64* %169, i64 0
  %171 = load i64, i64* %170, align 8
  %172 = call i8* (i8*, i64, ...) @va(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i64 %168, i64 %171)
  store i8* %172, i8** %10, align 8
  br label %173

173:                                              ; preds = %165, %157
  br label %174

174:                                              ; preds = %173, %144
  %175 = load i8*, i8** %10, align 8
  %176 = call i32 @CG_DrawStrlen(i8* %175)
  %177 = load i32, i32* @BIGCHAR_WIDTH, align 4
  %178 = mul nsw i32 %176, %177
  store i32 %178, i32* %4, align 4
  %179 = load i32, i32* @SCREEN_WIDTH, align 4
  %180 = load i32, i32* %4, align 4
  %181 = sub nsw i32 %179, %180
  %182 = sdiv i32 %181, 2
  store i32 %182, i32* %2, align 4
  store i32 60, i32* %3, align 4
  %183 = load i32, i32* %2, align 4
  %184 = load i32, i32* %3, align 4
  %185 = load i8*, i8** %10, align 8
  %186 = load float, float* %8, align 4
  %187 = call i32 @CG_DrawBigString(i32 %183, i32 %184, i8* %185, float %186)
  br label %188

188:                                              ; preds = %174, %135
  %189 = load i32, i32* @SB_HEADER, align 4
  store i32 %189, i32* %3, align 4
  %190 = load i64, i64* @SB_SCORE_X, align 8
  %191 = load i32, i32* @SB_RATING_WIDTH, align 4
  %192 = sdiv i32 %191, 2
  %193 = sext i32 %192 to i64
  %194 = add nsw i64 %190, %193
  %195 = load i32, i32* %3, align 4
  %196 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cgs, i32 0, i32 1, i32 3), align 4
  %197 = call i32 @CG_DrawPic(i64 %194, i32 %195, i32 64, i32 32, i32 %196)
  %198 = load i64, i64* @SB_PING_X, align 8
  %199 = load i32, i32* @SB_RATING_WIDTH, align 4
  %200 = sdiv i32 %199, 2
  %201 = sext i32 %200 to i64
  %202 = sub nsw i64 %198, %201
  %203 = load i32, i32* %3, align 4
  %204 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cgs, i32 0, i32 1, i32 2), align 8
  %205 = call i32 @CG_DrawPic(i64 %202, i32 %203, i32 64, i32 32, i32 %204)
  %206 = load i64, i64* @SB_TIME_X, align 8
  %207 = load i32, i32* @SB_RATING_WIDTH, align 4
  %208 = sdiv i32 %207, 2
  %209 = sext i32 %208 to i64
  %210 = sub nsw i64 %206, %209
  %211 = load i32, i32* %3, align 4
  %212 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cgs, i32 0, i32 1, i32 1), align 4
  %213 = call i32 @CG_DrawPic(i64 %210, i32 %211, i32 64, i32 32, i32 %212)
  %214 = load i64, i64* @SB_NAME_X, align 8
  %215 = load i32, i32* @SB_RATING_WIDTH, align 4
  %216 = sdiv i32 %215, 2
  %217 = sext i32 %216 to i64
  %218 = sub nsw i64 %214, %217
  %219 = load i32, i32* %3, align 4
  %220 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cgs, i32 0, i32 1, i32 0), align 8
  %221 = call i32 @CG_DrawPic(i64 %218, i32 %219, i32 64, i32 32, i32 %220)
  %222 = load i32, i32* @SB_TOP, align 4
  store i32 %222, i32* %3, align 4
  %223 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cg, i32 0, i32 2), align 8
  %224 = load i32, i32* @SB_MAXCLIENTS_NORMAL, align 4
  %225 = icmp sgt i32 %223, %224
  br i1 %225, label %226, label %229

226:                                              ; preds = %188
  %227 = load i32, i32* @SB_MAXCLIENTS_INTER, align 4
  store i32 %227, i32* %11, align 4
  %228 = load i32, i32* @SB_INTER_HEIGHT, align 4
  store i32 %228, i32* %12, align 4
  store i32 8, i32* %13, align 4
  store i32 16, i32* %14, align 4
  br label %232

229:                                              ; preds = %188
  %230 = load i32, i32* @SB_MAXCLIENTS_NORMAL, align 4
  store i32 %230, i32* %11, align 4
  %231 = load i32, i32* @SB_NORMAL_HEIGHT, align 4
  store i32 %231, i32* %12, align 4
  store i32 16, i32* %13, align 4
  store i32 16, i32* %14, align 4
  br label %232

232:                                              ; preds = %229, %226
  %233 = load i32, i32* @qfalse, align 4
  store i32 %233, i32* @localClient, align 4
  %234 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cgs, i32 0, i32 0), align 8
  %235 = load i64, i64* @GT_TEAM, align 8
  %236 = icmp sge i64 %234, %235
  br i1 %236, label %237, label %384

237:                                              ; preds = %232
  %238 = load i32, i32* %12, align 4
  %239 = sdiv i32 %238, 2
  %240 = load i32, i32* %3, align 4
  %241 = add nsw i32 %240, %239
  store i32 %241, i32* %3, align 4
  %242 = load i64*, i64** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cg, i32 0, i32 1), align 8
  %243 = getelementptr inbounds i64, i64* %242, i64 0
  %244 = load i64, i64* %243, align 8
  %245 = load i64*, i64** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cg, i32 0, i32 1), align 8
  %246 = getelementptr inbounds i64, i64* %245, i64 1
  %247 = load i64, i64* %246, align 8
  %248 = icmp sge i64 %244, %247
  br i1 %248, label %249, label %308

249:                                              ; preds = %237
  %250 = load i32, i32* %3, align 4
  %251 = load i64, i64* @TEAM_RED, align 8
  %252 = load float, float* %8, align 4
  %253 = load i32, i32* %11, align 4
  %254 = load i32, i32* %12, align 4
  %255 = call i32 @CG_TeamScoreboard(i32 %250, i64 %251, float %252, i32 %253, i32 %254)
  store i32 %255, i32* %6, align 4
  %256 = load i32, i32* %3, align 4
  %257 = load i32, i32* %13, align 4
  %258 = sub nsw i32 %256, %257
  %259 = load i32, i32* %6, align 4
  %260 = load i32, i32* %12, align 4
  %261 = mul nsw i32 %259, %260
  %262 = load i32, i32* %14, align 4
  %263 = add nsw i32 %261, %262
  %264 = load i64, i64* @TEAM_RED, align 8
  %265 = call i32 @CG_DrawTeamBackground(i32 0, i32 %258, i32 640, i32 %263, float 0x3FD51EB860000000, i64 %264)
  %266 = load i32, i32* %6, align 4
  %267 = load i32, i32* %12, align 4
  %268 = mul nsw i32 %266, %267
  %269 = sext i32 %268 to i64
  %270 = load i64, i64* @BIGCHAR_HEIGHT, align 8
  %271 = add nsw i64 %269, %270
  %272 = load i32, i32* %3, align 4
  %273 = sext i32 %272 to i64
  %274 = add nsw i64 %273, %271
  %275 = trunc i64 %274 to i32
  store i32 %275, i32* %3, align 4
  %276 = load i32, i32* %6, align 4
  %277 = load i32, i32* %11, align 4
  %278 = sub nsw i32 %277, %276
  store i32 %278, i32* %11, align 4
  %279 = load i32, i32* %3, align 4
  %280 = load i64, i64* @TEAM_BLUE, align 8
  %281 = load float, float* %8, align 4
  %282 = load i32, i32* %11, align 4
  %283 = load i32, i32* %12, align 4
  %284 = call i32 @CG_TeamScoreboard(i32 %279, i64 %280, float %281, i32 %282, i32 %283)
  store i32 %284, i32* %7, align 4
  %285 = load i32, i32* %3, align 4
  %286 = load i32, i32* %13, align 4
  %287 = sub nsw i32 %285, %286
  %288 = load i32, i32* %7, align 4
  %289 = load i32, i32* %12, align 4
  %290 = mul nsw i32 %288, %289
  %291 = load i32, i32* %14, align 4
  %292 = add nsw i32 %290, %291
  %293 = load i64, i64* @TEAM_BLUE, align 8
  %294 = call i32 @CG_DrawTeamBackground(i32 0, i32 %287, i32 640, i32 %292, float 0x3FD51EB860000000, i64 %293)
  %295 = load i32, i32* %7, align 4
  %296 = load i32, i32* %12, align 4
  %297 = mul nsw i32 %295, %296
  %298 = sext i32 %297 to i64
  %299 = load i64, i64* @BIGCHAR_HEIGHT, align 8
  %300 = add nsw i64 %298, %299
  %301 = load i32, i32* %3, align 4
  %302 = sext i32 %301 to i64
  %303 = add nsw i64 %302, %300
  %304 = trunc i64 %303 to i32
  store i32 %304, i32* %3, align 4
  %305 = load i32, i32* %7, align 4
  %306 = load i32, i32* %11, align 4
  %307 = sub nsw i32 %306, %305
  store i32 %307, i32* %11, align 4
  br label %367

308:                                              ; preds = %237
  %309 = load i32, i32* %3, align 4
  %310 = load i64, i64* @TEAM_BLUE, align 8
  %311 = load float, float* %8, align 4
  %312 = load i32, i32* %11, align 4
  %313 = load i32, i32* %12, align 4
  %314 = call i32 @CG_TeamScoreboard(i32 %309, i64 %310, float %311, i32 %312, i32 %313)
  store i32 %314, i32* %6, align 4
  %315 = load i32, i32* %3, align 4
  %316 = load i32, i32* %13, align 4
  %317 = sub nsw i32 %315, %316
  %318 = load i32, i32* %6, align 4
  %319 = load i32, i32* %12, align 4
  %320 = mul nsw i32 %318, %319
  %321 = load i32, i32* %14, align 4
  %322 = add nsw i32 %320, %321
  %323 = load i64, i64* @TEAM_BLUE, align 8
  %324 = call i32 @CG_DrawTeamBackground(i32 0, i32 %317, i32 640, i32 %322, float 0x3FD51EB860000000, i64 %323)
  %325 = load i32, i32* %6, align 4
  %326 = load i32, i32* %12, align 4
  %327 = mul nsw i32 %325, %326
  %328 = sext i32 %327 to i64
  %329 = load i64, i64* @BIGCHAR_HEIGHT, align 8
  %330 = add nsw i64 %328, %329
  %331 = load i32, i32* %3, align 4
  %332 = sext i32 %331 to i64
  %333 = add nsw i64 %332, %330
  %334 = trunc i64 %333 to i32
  store i32 %334, i32* %3, align 4
  %335 = load i32, i32* %6, align 4
  %336 = load i32, i32* %11, align 4
  %337 = sub nsw i32 %336, %335
  store i32 %337, i32* %11, align 4
  %338 = load i32, i32* %3, align 4
  %339 = load i64, i64* @TEAM_RED, align 8
  %340 = load float, float* %8, align 4
  %341 = load i32, i32* %11, align 4
  %342 = load i32, i32* %12, align 4
  %343 = call i32 @CG_TeamScoreboard(i32 %338, i64 %339, float %340, i32 %341, i32 %342)
  store i32 %343, i32* %7, align 4
  %344 = load i32, i32* %3, align 4
  %345 = load i32, i32* %13, align 4
  %346 = sub nsw i32 %344, %345
  %347 = load i32, i32* %7, align 4
  %348 = load i32, i32* %12, align 4
  %349 = mul nsw i32 %347, %348
  %350 = load i32, i32* %14, align 4
  %351 = add nsw i32 %349, %350
  %352 = load i64, i64* @TEAM_RED, align 8
  %353 = call i32 @CG_DrawTeamBackground(i32 0, i32 %346, i32 640, i32 %351, float 0x3FD51EB860000000, i64 %352)
  %354 = load i32, i32* %7, align 4
  %355 = load i32, i32* %12, align 4
  %356 = mul nsw i32 %354, %355
  %357 = sext i32 %356 to i64
  %358 = load i64, i64* @BIGCHAR_HEIGHT, align 8
  %359 = add nsw i64 %357, %358
  %360 = load i32, i32* %3, align 4
  %361 = sext i32 %360 to i64
  %362 = add nsw i64 %361, %359
  %363 = trunc i64 %362 to i32
  store i32 %363, i32* %3, align 4
  %364 = load i32, i32* %7, align 4
  %365 = load i32, i32* %11, align 4
  %366 = sub nsw i32 %365, %364
  store i32 %366, i32* %11, align 4
  br label %367

367:                                              ; preds = %308, %249
  %368 = load i32, i32* %3, align 4
  %369 = load i64, i64* @TEAM_SPECTATOR, align 8
  %370 = load float, float* %8, align 4
  %371 = load i32, i32* %11, align 4
  %372 = load i32, i32* %12, align 4
  %373 = call i32 @CG_TeamScoreboard(i32 %368, i64 %369, float %370, i32 %371, i32 %372)
  store i32 %373, i32* %6, align 4
  %374 = load i32, i32* %6, align 4
  %375 = load i32, i32* %12, align 4
  %376 = mul nsw i32 %374, %375
  %377 = sext i32 %376 to i64
  %378 = load i64, i64* @BIGCHAR_HEIGHT, align 8
  %379 = add nsw i64 %377, %378
  %380 = load i32, i32* %3, align 4
  %381 = sext i32 %380 to i64
  %382 = add nsw i64 %381, %379
  %383 = trunc i64 %382 to i32
  store i32 %383, i32* %3, align 4
  br label %419

384:                                              ; preds = %232
  %385 = load i32, i32* %3, align 4
  %386 = load i64, i64* @TEAM_FREE, align 8
  %387 = load float, float* %8, align 4
  %388 = load i32, i32* %11, align 4
  %389 = load i32, i32* %12, align 4
  %390 = call i32 @CG_TeamScoreboard(i32 %385, i64 %386, float %387, i32 %388, i32 %389)
  store i32 %390, i32* %6, align 4
  %391 = load i32, i32* %6, align 4
  %392 = load i32, i32* %12, align 4
  %393 = mul nsw i32 %391, %392
  %394 = sext i32 %393 to i64
  %395 = load i64, i64* @BIGCHAR_HEIGHT, align 8
  %396 = add nsw i64 %394, %395
  %397 = load i32, i32* %3, align 4
  %398 = sext i32 %397 to i64
  %399 = add nsw i64 %398, %396
  %400 = trunc i64 %399 to i32
  store i32 %400, i32* %3, align 4
  %401 = load i32, i32* %3, align 4
  %402 = load i64, i64* @TEAM_SPECTATOR, align 8
  %403 = load float, float* %8, align 4
  %404 = load i32, i32* %11, align 4
  %405 = load i32, i32* %6, align 4
  %406 = sub nsw i32 %404, %405
  %407 = load i32, i32* %12, align 4
  %408 = call i32 @CG_TeamScoreboard(i32 %401, i64 %402, float %403, i32 %406, i32 %407)
  store i32 %408, i32* %7, align 4
  %409 = load i32, i32* %7, align 4
  %410 = load i32, i32* %12, align 4
  %411 = mul nsw i32 %409, %410
  %412 = sext i32 %411 to i64
  %413 = load i64, i64* @BIGCHAR_HEIGHT, align 8
  %414 = add nsw i64 %412, %413
  %415 = load i32, i32* %3, align 4
  %416 = sext i32 %415 to i64
  %417 = add nsw i64 %416, %414
  %418 = trunc i64 %417 to i32
  store i32 %418, i32* %3, align 4
  br label %419

419:                                              ; preds = %384, %367
  %420 = load i32, i32* @localClient, align 4
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %457, label %422

422:                                              ; preds = %419
  store i32 0, i32* %5, align 4
  br label %423

423:                                              ; preds = %453, %422
  %424 = load i32, i32* %5, align 4
  %425 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cg, i32 0, i32 2), align 8
  %426 = icmp slt i32 %424, %425
  br i1 %426, label %427, label %456

427:                                              ; preds = %423
  %428 = load %struct.TYPE_18__*, %struct.TYPE_18__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cg, i32 0, i32 3), align 8
  %429 = load i32, i32* %5, align 4
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %428, i64 %430
  %432 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %431, i32 0, i32 0
  %433 = load i64, i64* %432, align 8
  %434 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cg, i32 0, i32 4), align 8
  %435 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %434, i32 0, i32 0
  %436 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %435, i32 0, i32 1
  %437 = load i64, i64* %436, align 8
  %438 = icmp eq i64 %433, %437
  br i1 %438, label %439, label %452

439:                                              ; preds = %427
  %440 = load i32, i32* %3, align 4
  %441 = load %struct.TYPE_18__*, %struct.TYPE_18__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cg, i32 0, i32 3), align 8
  %442 = load i32, i32* %5, align 4
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %441, i64 %443
  %445 = load float*, float** %9, align 8
  %446 = load float, float* %8, align 4
  %447 = load i32, i32* %12, align 4
  %448 = load i32, i32* @SB_NORMAL_HEIGHT, align 4
  %449 = icmp eq i32 %447, %448
  %450 = zext i1 %449 to i32
  %451 = call i32 @CG_DrawClientScore(i32 %440, %struct.TYPE_18__* %444, float* %445, float %446, i32 %450)
  br label %456

452:                                              ; preds = %427
  br label %453

453:                                              ; preds = %452
  %454 = load i32, i32* %5, align 4
  %455 = add nsw i32 %454, 1
  store i32 %455, i32* %5, align 4
  br label %423

456:                                              ; preds = %439, %423
  br label %457

457:                                              ; preds = %456, %419
  %458 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cg, i32 0, i32 0), align 8
  %459 = add nsw i32 %458, 1
  store i32 %459, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cg, i32 0, i32 0), align 8
  %460 = icmp sgt i32 %459, 10
  br i1 %460, label %461, label %463

461:                                              ; preds = %457
  %462 = call i32 (...) @CG_LoadDeferredPlayers()
  br label %463

463:                                              ; preds = %461, %457
  %464 = load i32, i32* @qtrue, align 4
  store i32 %464, i32* %1, align 4
  br label %465

465:                                              ; preds = %463, %61, %40, %32, %22, %17
  %466 = load i32, i32* %1, align 4
  ret i32 %466
}

declare dso_local float* @CG_FadeColor(i32, i32) #1

declare dso_local i8* @va(i8*, i64, ...) #1

declare dso_local i32 @CG_DrawStrlen(i8*) #1

declare dso_local i32 @CG_DrawBigString(i32, i32, i8*, float) #1

declare dso_local i64 @CG_PlaceString(i64) #1

declare dso_local i32 @CG_DrawPic(i64, i32, i32, i32, i32) #1

declare dso_local i32 @CG_TeamScoreboard(i32, i64, float, i32, i32) #1

declare dso_local i32 @CG_DrawTeamBackground(i32, i32, i32, i32, float, i64) #1

declare dso_local i32 @CG_DrawClientScore(i32, %struct.TYPE_18__*, float*, float, i32) #1

declare dso_local i32 @CG_LoadDeferredPlayers(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
