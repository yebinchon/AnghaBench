; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_playerstate.c_CG_CheckLocalSounds.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_playerstate.c_CG_CheckLocalSounds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i32, i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i64, i32 }
%struct.TYPE_8__ = type { i32*, i32*, i64* }

@PERS_TEAM = common dso_local global i64 0, align 8
@PERS_HITS = common dso_local global i64 0, align 8
@cgs = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@CHAN_LOCAL_SOUND = common dso_local global i32 0, align 4
@STAT_HEALTH = common dso_local global i64 0, align 8
@cg = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@qfalse = common dso_local global i32 0, align 4
@PERS_CAPTURES = common dso_local global i64 0, align 8
@qtrue = common dso_local global i32 0, align 4
@PERS_IMPRESSIVE_COUNT = common dso_local global i64 0, align 8
@PERS_EXCELLENT_COUNT = common dso_local global i64 0, align 8
@PERS_GAUNTLET_FRAG_COUNT = common dso_local global i64 0, align 8
@PERS_DEFEND_COUNT = common dso_local global i64 0, align 8
@PERS_ASSIST_COUNT = common dso_local global i64 0, align 8
@PERS_PLAYEREVENTS = common dso_local global i64 0, align 8
@PLAYEREVENT_DENIEDREWARD = common dso_local global i32 0, align 4
@CHAN_ANNOUNCER = common dso_local global i32 0, align 4
@PLAYEREVENT_GAUNTLETREWARD = common dso_local global i32 0, align 4
@PLAYEREVENT_HOLYSHIT = common dso_local global i32 0, align 4
@GT_TEAM = common dso_local global i64 0, align 8
@PW_REDFLAG = common dso_local global i64 0, align 8
@PW_BLUEFLAG = common dso_local global i64 0, align 8
@PW_NEUTRALFLAG = common dso_local global i64 0, align 8
@PERS_RANK = common dso_local global i64 0, align 8
@RANK_TIED_FLAG = common dso_local global i32 0, align 4
@GT_CTF = common dso_local global i64 0, align 8
@PERS_ATTACKEE_ARMOR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CG_CheckLocalSounds(%struct.TYPE_8__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = load i64, i64* @PERS_TEAM, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i64, i64* @PERS_TEAM, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %14, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %609

23:                                               ; preds = %2
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* @PERS_HITS, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* @PERS_HITS, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = icmp sgt i32 %29, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %23
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 6, i32 28), align 4
  %39 = load i32, i32* @CHAN_LOCAL_SOUND, align 4
  %40 = call i32 @trap_S_StartLocalSound(i32 %38, i32 %39)
  br label %60

41:                                               ; preds = %23
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* @PERS_HITS, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* @PERS_HITS, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %47, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %41
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 6, i32 27), align 4
  %57 = load i32, i32* @CHAN_LOCAL_SOUND, align 4
  %58 = call i32 @trap_S_StartLocalSound(i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %55, %41
  br label %60

60:                                               ; preds = %59, %37
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i64, i64* @STAT_HEALTH, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i64, i64* @STAT_HEALTH, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = sub nsw i32 %72, 1
  %74 = icmp slt i32 %66, %73
  br i1 %74, label %75, label %93

75:                                               ; preds = %60
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i64, i64* @STAT_HEALTH, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %75
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = load i64, i64* @STAT_HEALTH, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = call i32 @CG_PainEvent(i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg, i32 0, i32 5), i64 %90)
  br label %92

92:                                               ; preds = %83, %75
  br label %93

93:                                               ; preds = %92, %60
  %94 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg, i32 0, i32 4), align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  br label %609

97:                                               ; preds = %93
  %98 = load i32, i32* @qfalse, align 4
  store i32 %98, i32* %6, align 4
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = load i64, i64* @PERS_CAPTURES, align 8
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = load i64, i64* @PERS_CAPTURES, align 8
  %109 = getelementptr inbounds i32, i32* %107, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %104, %110
  br i1 %111, label %112, label %123

112:                                              ; preds = %97
  %113 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 6, i32 26), align 4
  %114 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 6, i32 25), align 4
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = load i64, i64* @PERS_CAPTURES, align 8
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @pushReward(i32 %113, i32 %114, i32 %120)
  %122 = load i32, i32* @qtrue, align 4
  store i32 %122, i32* %6, align 4
  br label %123

123:                                              ; preds = %112, %97
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = load i64, i64* @PERS_IMPRESSIVE_COUNT, align 8
  %128 = getelementptr inbounds i32, i32* %126, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = load i64, i64* @PERS_IMPRESSIVE_COUNT, align 8
  %134 = getelementptr inbounds i32, i32* %132, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = icmp ne i32 %129, %135
  br i1 %136, label %137, label %149

137:                                              ; preds = %123
  %138 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 6, i32 23), align 4
  store i32 %138, i32* %7, align 4
  %139 = load i32, i32* %7, align 4
  %140 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 6, i32 22), align 4
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = load i64, i64* @PERS_IMPRESSIVE_COUNT, align 8
  %145 = getelementptr inbounds i32, i32* %143, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @pushReward(i32 %139, i32 %140, i32 %146)
  %148 = load i32, i32* @qtrue, align 4
  store i32 %148, i32* %6, align 4
  br label %149

149:                                              ; preds = %137, %123
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = load i64, i64* @PERS_EXCELLENT_COUNT, align 8
  %154 = getelementptr inbounds i32, i32* %152, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  %159 = load i64, i64* @PERS_EXCELLENT_COUNT, align 8
  %160 = getelementptr inbounds i32, i32* %158, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = icmp ne i32 %155, %161
  br i1 %162, label %163, label %175

163:                                              ; preds = %149
  %164 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 6, i32 20), align 4
  store i32 %164, i32* %7, align 4
  %165 = load i32, i32* %7, align 4
  %166 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 6, i32 19), align 4
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 0
  %169 = load i32*, i32** %168, align 8
  %170 = load i64, i64* @PERS_EXCELLENT_COUNT, align 8
  %171 = getelementptr inbounds i32, i32* %169, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @pushReward(i32 %165, i32 %166, i32 %172)
  %174 = load i32, i32* @qtrue, align 4
  store i32 %174, i32* %6, align 4
  br label %175

175:                                              ; preds = %163, %149
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = load i64, i64* @PERS_GAUNTLET_FRAG_COUNT, align 8
  %180 = getelementptr inbounds i32, i32* %178, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 0
  %184 = load i32*, i32** %183, align 8
  %185 = load i64, i64* @PERS_GAUNTLET_FRAG_COUNT, align 8
  %186 = getelementptr inbounds i32, i32* %184, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = icmp ne i32 %181, %187
  br i1 %188, label %189, label %201

189:                                              ; preds = %175
  %190 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 6, i32 11), align 4
  store i32 %190, i32* %7, align 4
  %191 = load i32, i32* %7, align 4
  %192 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 6, i32 17), align 4
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 0
  %195 = load i32*, i32** %194, align 8
  %196 = load i64, i64* @PERS_GAUNTLET_FRAG_COUNT, align 8
  %197 = getelementptr inbounds i32, i32* %195, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @pushReward(i32 %191, i32 %192, i32 %198)
  %200 = load i32, i32* @qtrue, align 4
  store i32 %200, i32* %6, align 4
  br label %201

201:                                              ; preds = %189, %175
  %202 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 0
  %204 = load i32*, i32** %203, align 8
  %205 = load i64, i64* @PERS_DEFEND_COUNT, align 8
  %206 = getelementptr inbounds i32, i32* %204, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 0
  %210 = load i32*, i32** %209, align 8
  %211 = load i64, i64* @PERS_DEFEND_COUNT, align 8
  %212 = getelementptr inbounds i32, i32* %210, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = icmp ne i32 %207, %213
  br i1 %214, label %215, label %226

215:                                              ; preds = %201
  %216 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 6, i32 16), align 4
  %217 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 6, i32 15), align 4
  %218 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 0
  %220 = load i32*, i32** %219, align 8
  %221 = load i64, i64* @PERS_DEFEND_COUNT, align 8
  %222 = getelementptr inbounds i32, i32* %220, i64 %221
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @pushReward(i32 %216, i32 %217, i32 %223)
  %225 = load i32, i32* @qtrue, align 4
  store i32 %225, i32* %6, align 4
  br label %226

226:                                              ; preds = %215, %201
  %227 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i32 0, i32 0
  %229 = load i32*, i32** %228, align 8
  %230 = load i64, i64* @PERS_ASSIST_COUNT, align 8
  %231 = getelementptr inbounds i32, i32* %229, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i32 0, i32 0
  %235 = load i32*, i32** %234, align 8
  %236 = load i64, i64* @PERS_ASSIST_COUNT, align 8
  %237 = getelementptr inbounds i32, i32* %235, i64 %236
  %238 = load i32, i32* %237, align 4
  %239 = icmp ne i32 %232, %238
  br i1 %239, label %240, label %251

240:                                              ; preds = %226
  %241 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 6, i32 14), align 4
  %242 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 6, i32 13), align 4
  %243 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %244 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %243, i32 0, i32 0
  %245 = load i32*, i32** %244, align 8
  %246 = load i64, i64* @PERS_ASSIST_COUNT, align 8
  %247 = getelementptr inbounds i32, i32* %245, i64 %246
  %248 = load i32, i32* %247, align 4
  %249 = call i32 @pushReward(i32 %241, i32 %242, i32 %248)
  %250 = load i32, i32* @qtrue, align 4
  store i32 %250, i32* %6, align 4
  br label %251

251:                                              ; preds = %240, %226
  %252 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i32 0, i32 0
  %254 = load i32*, i32** %253, align 8
  %255 = load i64, i64* @PERS_PLAYEREVENTS, align 8
  %256 = getelementptr inbounds i32, i32* %254, i64 %255
  %257 = load i32, i32* %256, align 4
  %258 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %259 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %258, i32 0, i32 0
  %260 = load i32*, i32** %259, align 8
  %261 = load i64, i64* @PERS_PLAYEREVENTS, align 8
  %262 = getelementptr inbounds i32, i32* %260, i64 %261
  %263 = load i32, i32* %262, align 4
  %264 = icmp ne i32 %257, %263
  br i1 %264, label %265, label %335

265:                                              ; preds = %251
  %266 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %267 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %266, i32 0, i32 0
  %268 = load i32*, i32** %267, align 8
  %269 = load i64, i64* @PERS_PLAYEREVENTS, align 8
  %270 = getelementptr inbounds i32, i32* %268, i64 %269
  %271 = load i32, i32* %270, align 4
  %272 = load i32, i32* @PLAYEREVENT_DENIEDREWARD, align 4
  %273 = and i32 %271, %272
  %274 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %275 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %274, i32 0, i32 0
  %276 = load i32*, i32** %275, align 8
  %277 = load i64, i64* @PERS_PLAYEREVENTS, align 8
  %278 = getelementptr inbounds i32, i32* %276, i64 %277
  %279 = load i32, i32* %278, align 4
  %280 = load i32, i32* @PLAYEREVENT_DENIEDREWARD, align 4
  %281 = and i32 %279, %280
  %282 = icmp ne i32 %273, %281
  br i1 %282, label %283, label %287

283:                                              ; preds = %265
  %284 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 6, i32 12), align 4
  %285 = load i32, i32* @CHAN_ANNOUNCER, align 4
  %286 = call i32 @trap_S_StartLocalSound(i32 %284, i32 %285)
  br label %333

287:                                              ; preds = %265
  %288 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %289 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %288, i32 0, i32 0
  %290 = load i32*, i32** %289, align 8
  %291 = load i64, i64* @PERS_PLAYEREVENTS, align 8
  %292 = getelementptr inbounds i32, i32* %290, i64 %291
  %293 = load i32, i32* %292, align 4
  %294 = load i32, i32* @PLAYEREVENT_GAUNTLETREWARD, align 4
  %295 = and i32 %293, %294
  %296 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %297 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %296, i32 0, i32 0
  %298 = load i32*, i32** %297, align 8
  %299 = load i64, i64* @PERS_PLAYEREVENTS, align 8
  %300 = getelementptr inbounds i32, i32* %298, i64 %299
  %301 = load i32, i32* %300, align 4
  %302 = load i32, i32* @PLAYEREVENT_GAUNTLETREWARD, align 4
  %303 = and i32 %301, %302
  %304 = icmp ne i32 %295, %303
  br i1 %304, label %305, label %309

305:                                              ; preds = %287
  %306 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 6, i32 11), align 4
  %307 = load i32, i32* @CHAN_ANNOUNCER, align 4
  %308 = call i32 @trap_S_StartLocalSound(i32 %306, i32 %307)
  br label %332

309:                                              ; preds = %287
  %310 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %311 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %310, i32 0, i32 0
  %312 = load i32*, i32** %311, align 8
  %313 = load i64, i64* @PERS_PLAYEREVENTS, align 8
  %314 = getelementptr inbounds i32, i32* %312, i64 %313
  %315 = load i32, i32* %314, align 4
  %316 = load i32, i32* @PLAYEREVENT_HOLYSHIT, align 4
  %317 = and i32 %315, %316
  %318 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %319 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %318, i32 0, i32 0
  %320 = load i32*, i32** %319, align 8
  %321 = load i64, i64* @PERS_PLAYEREVENTS, align 8
  %322 = getelementptr inbounds i32, i32* %320, i64 %321
  %323 = load i32, i32* %322, align 4
  %324 = load i32, i32* @PLAYEREVENT_HOLYSHIT, align 4
  %325 = and i32 %323, %324
  %326 = icmp ne i32 %317, %325
  br i1 %326, label %327, label %331

327:                                              ; preds = %309
  %328 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 6, i32 10), align 4
  %329 = load i32, i32* @CHAN_ANNOUNCER, align 4
  %330 = call i32 @trap_S_StartLocalSound(i32 %328, i32 %329)
  br label %331

331:                                              ; preds = %327, %309
  br label %332

332:                                              ; preds = %331, %305
  br label %333

333:                                              ; preds = %332, %283
  %334 = load i32, i32* @qtrue, align 4
  store i32 %334, i32* %6, align 4
  br label %335

335:                                              ; preds = %333, %251
  %336 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 0), align 8
  %337 = load i64, i64* @GT_TEAM, align 8
  %338 = icmp sgt i64 %336, %337
  br i1 %338, label %339, label %410

339:                                              ; preds = %335
  %340 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %341 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %340, i32 0, i32 2
  %342 = load i64*, i64** %341, align 8
  %343 = load i64, i64* @PW_REDFLAG, align 8
  %344 = getelementptr inbounds i64, i64* %342, i64 %343
  %345 = load i64, i64* %344, align 8
  %346 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %347 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %346, i32 0, i32 2
  %348 = load i64*, i64** %347, align 8
  %349 = load i64, i64* @PW_REDFLAG, align 8
  %350 = getelementptr inbounds i64, i64* %348, i64 %349
  %351 = load i64, i64* %350, align 8
  %352 = icmp ne i64 %345, %351
  br i1 %352, label %353, label %361

353:                                              ; preds = %339
  %354 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %355 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %354, i32 0, i32 2
  %356 = load i64*, i64** %355, align 8
  %357 = load i64, i64* @PW_REDFLAG, align 8
  %358 = getelementptr inbounds i64, i64* %356, i64 %357
  %359 = load i64, i64* %358, align 8
  %360 = icmp ne i64 %359, 0
  br i1 %360, label %405, label %361

361:                                              ; preds = %353, %339
  %362 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %363 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %362, i32 0, i32 2
  %364 = load i64*, i64** %363, align 8
  %365 = load i64, i64* @PW_BLUEFLAG, align 8
  %366 = getelementptr inbounds i64, i64* %364, i64 %365
  %367 = load i64, i64* %366, align 8
  %368 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %369 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %368, i32 0, i32 2
  %370 = load i64*, i64** %369, align 8
  %371 = load i64, i64* @PW_BLUEFLAG, align 8
  %372 = getelementptr inbounds i64, i64* %370, i64 %371
  %373 = load i64, i64* %372, align 8
  %374 = icmp ne i64 %367, %373
  br i1 %374, label %375, label %383

375:                                              ; preds = %361
  %376 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %377 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %376, i32 0, i32 2
  %378 = load i64*, i64** %377, align 8
  %379 = load i64, i64* @PW_BLUEFLAG, align 8
  %380 = getelementptr inbounds i64, i64* %378, i64 %379
  %381 = load i64, i64* %380, align 8
  %382 = icmp ne i64 %381, 0
  br i1 %382, label %405, label %383

383:                                              ; preds = %375, %361
  %384 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %385 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %384, i32 0, i32 2
  %386 = load i64*, i64** %385, align 8
  %387 = load i64, i64* @PW_NEUTRALFLAG, align 8
  %388 = getelementptr inbounds i64, i64* %386, i64 %387
  %389 = load i64, i64* %388, align 8
  %390 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %391 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %390, i32 0, i32 2
  %392 = load i64*, i64** %391, align 8
  %393 = load i64, i64* @PW_NEUTRALFLAG, align 8
  %394 = getelementptr inbounds i64, i64* %392, i64 %393
  %395 = load i64, i64* %394, align 8
  %396 = icmp ne i64 %389, %395
  br i1 %396, label %397, label %409

397:                                              ; preds = %383
  %398 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %399 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %398, i32 0, i32 2
  %400 = load i64*, i64** %399, align 8
  %401 = load i64, i64* @PW_NEUTRALFLAG, align 8
  %402 = getelementptr inbounds i64, i64* %400, i64 %401
  %403 = load i64, i64* %402, align 8
  %404 = icmp ne i64 %403, 0
  br i1 %404, label %405, label %409

405:                                              ; preds = %397, %375, %353
  %406 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 6, i32 9), align 4
  %407 = load i32, i32* @CHAN_ANNOUNCER, align 4
  %408 = call i32 @trap_S_StartLocalSound(i32 %406, i32 %407)
  br label %409

409:                                              ; preds = %405, %397, %383
  br label %410

410:                                              ; preds = %409, %335
  %411 = load i32, i32* %6, align 4
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %477, label %413

413:                                              ; preds = %410
  %414 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg, i32 0, i32 3), align 4
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %476, label %416

416:                                              ; preds = %413
  %417 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %418 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %417, i32 0, i32 0
  %419 = load i32*, i32** %418, align 8
  %420 = load i64, i64* @PERS_RANK, align 8
  %421 = getelementptr inbounds i32, i32* %419, i64 %420
  %422 = load i32, i32* %421, align 4
  %423 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %424 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %423, i32 0, i32 0
  %425 = load i32*, i32** %424, align 8
  %426 = load i64, i64* @PERS_RANK, align 8
  %427 = getelementptr inbounds i32, i32* %425, i64 %426
  %428 = load i32, i32* %427, align 4
  %429 = icmp ne i32 %422, %428
  br i1 %429, label %430, label %475

430:                                              ; preds = %416
  %431 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 0), align 8
  %432 = load i64, i64* @GT_TEAM, align 8
  %433 = icmp slt i64 %431, %432
  br i1 %433, label %434, label %474

434:                                              ; preds = %430
  %435 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %436 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %435, i32 0, i32 0
  %437 = load i32*, i32** %436, align 8
  %438 = load i64, i64* @PERS_RANK, align 8
  %439 = getelementptr inbounds i32, i32* %437, i64 %438
  %440 = load i32, i32* %439, align 4
  %441 = icmp eq i32 %440, 0
  br i1 %441, label %442, label %445

442:                                              ; preds = %434
  %443 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 6, i32 8), align 4
  %444 = call i32 @CG_AddBufferedSound(i32 %443)
  br label %473

445:                                              ; preds = %434
  %446 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %447 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %446, i32 0, i32 0
  %448 = load i32*, i32** %447, align 8
  %449 = load i64, i64* @PERS_RANK, align 8
  %450 = getelementptr inbounds i32, i32* %448, i64 %449
  %451 = load i32, i32* %450, align 4
  %452 = load i32, i32* @RANK_TIED_FLAG, align 4
  %453 = icmp eq i32 %451, %452
  br i1 %453, label %454, label %457

454:                                              ; preds = %445
  %455 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 6, i32 7), align 4
  %456 = call i32 @CG_AddBufferedSound(i32 %455)
  br label %472

457:                                              ; preds = %445
  %458 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %459 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %458, i32 0, i32 0
  %460 = load i32*, i32** %459, align 8
  %461 = load i64, i64* @PERS_RANK, align 8
  %462 = getelementptr inbounds i32, i32* %460, i64 %461
  %463 = load i32, i32* %462, align 4
  %464 = load i32, i32* @RANK_TIED_FLAG, align 4
  %465 = xor i32 %464, -1
  %466 = and i32 %463, %465
  %467 = icmp eq i32 %466, 0
  br i1 %467, label %468, label %471

468:                                              ; preds = %457
  %469 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 6, i32 6), align 4
  %470 = call i32 @CG_AddBufferedSound(i32 %469)
  br label %471

471:                                              ; preds = %468, %457
  br label %472

472:                                              ; preds = %471, %454
  br label %473

473:                                              ; preds = %472, %442
  br label %474

474:                                              ; preds = %473, %430
  br label %475

475:                                              ; preds = %474, %416
  br label %476

476:                                              ; preds = %475, %413
  br label %477

477:                                              ; preds = %476, %410
  %478 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 1), align 8
  %479 = icmp sgt i32 %478, 0
  br i1 %479, label %480, label %540

480:                                              ; preds = %477
  %481 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg, i32 0, i32 0), align 8
  %482 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 2), align 4
  %483 = sub nsw i32 %481, %482
  store i32 %483, i32* %8, align 4
  %484 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg, i32 0, i32 1), align 4
  %485 = and i32 %484, 4
  %486 = icmp ne i32 %485, 0
  br i1 %486, label %500, label %487

487:                                              ; preds = %480
  %488 = load i32, i32* %8, align 4
  %489 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 1), align 8
  %490 = mul nsw i32 %489, 60
  %491 = add nsw i32 %490, 2
  %492 = mul nsw i32 %491, 1000
  %493 = icmp sgt i32 %488, %492
  br i1 %493, label %494, label %500

494:                                              ; preds = %487
  %495 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg, i32 0, i32 1), align 4
  %496 = or i32 %495, 7
  store i32 %496, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg, i32 0, i32 1), align 4
  %497 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 6, i32 5), align 4
  %498 = load i32, i32* @CHAN_ANNOUNCER, align 4
  %499 = call i32 @trap_S_StartLocalSound(i32 %497, i32 %498)
  br label %539

500:                                              ; preds = %487, %480
  %501 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg, i32 0, i32 1), align 4
  %502 = and i32 %501, 2
  %503 = icmp ne i32 %502, 0
  br i1 %503, label %517, label %504

504:                                              ; preds = %500
  %505 = load i32, i32* %8, align 4
  %506 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 1), align 8
  %507 = sub nsw i32 %506, 1
  %508 = mul nsw i32 %507, 60
  %509 = mul nsw i32 %508, 1000
  %510 = icmp sgt i32 %505, %509
  br i1 %510, label %511, label %517

511:                                              ; preds = %504
  %512 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg, i32 0, i32 1), align 4
  %513 = or i32 %512, 3
  store i32 %513, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg, i32 0, i32 1), align 4
  %514 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 6, i32 4), align 4
  %515 = load i32, i32* @CHAN_ANNOUNCER, align 4
  %516 = call i32 @trap_S_StartLocalSound(i32 %514, i32 %515)
  br label %538

517:                                              ; preds = %504, %500
  %518 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 1), align 8
  %519 = icmp sgt i32 %518, 5
  br i1 %519, label %520, label %537

520:                                              ; preds = %517
  %521 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg, i32 0, i32 1), align 4
  %522 = and i32 %521, 1
  %523 = icmp ne i32 %522, 0
  br i1 %523, label %537, label %524

524:                                              ; preds = %520
  %525 = load i32, i32* %8, align 4
  %526 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 1), align 8
  %527 = sub nsw i32 %526, 5
  %528 = mul nsw i32 %527, 60
  %529 = mul nsw i32 %528, 1000
  %530 = icmp sgt i32 %525, %529
  br i1 %530, label %531, label %537

531:                                              ; preds = %524
  %532 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg, i32 0, i32 1), align 4
  %533 = or i32 %532, 1
  store i32 %533, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg, i32 0, i32 1), align 4
  %534 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 6, i32 3), align 4
  %535 = load i32, i32* @CHAN_ANNOUNCER, align 4
  %536 = call i32 @trap_S_StartLocalSound(i32 %534, i32 %535)
  br label %537

537:                                              ; preds = %531, %524, %520, %517
  br label %538

538:                                              ; preds = %537, %511
  br label %539

539:                                              ; preds = %538, %494
  br label %540

540:                                              ; preds = %539, %477
  %541 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 3), align 8
  %542 = icmp sgt i32 %541, 0
  br i1 %542, label %543, label %609

543:                                              ; preds = %540
  %544 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 0), align 8
  %545 = load i64, i64* @GT_CTF, align 8
  %546 = icmp slt i64 %544, %545
  br i1 %546, label %547, label %609

547:                                              ; preds = %543
  %548 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 4), align 4
  store i32 %548, i32* %5, align 4
  %549 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 0), align 8
  %550 = load i64, i64* @GT_TEAM, align 8
  %551 = icmp eq i64 %549, %550
  br i1 %551, label %552, label %558

552:                                              ; preds = %547
  %553 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 5), align 8
  %554 = load i32, i32* %5, align 4
  %555 = icmp sgt i32 %553, %554
  br i1 %555, label %556, label %558

556:                                              ; preds = %552
  %557 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 5), align 8
  store i32 %557, i32* %5, align 4
  br label %558

558:                                              ; preds = %556, %552, %547
  %559 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg, i32 0, i32 2), align 8
  %560 = and i32 %559, 4
  %561 = icmp ne i32 %560, 0
  br i1 %561, label %572, label %562

562:                                              ; preds = %558
  %563 = load i32, i32* %5, align 4
  %564 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 3), align 8
  %565 = sub nsw i32 %564, 1
  %566 = icmp eq i32 %563, %565
  br i1 %566, label %567, label %572

567:                                              ; preds = %562
  %568 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg, i32 0, i32 2), align 8
  %569 = or i32 %568, 7
  store i32 %569, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg, i32 0, i32 2), align 8
  %570 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 6, i32 2), align 4
  %571 = call i32 @CG_AddBufferedSound(i32 %570)
  br label %608

572:                                              ; preds = %562, %558
  %573 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 3), align 8
  %574 = icmp sgt i32 %573, 2
  br i1 %574, label %575, label %589

575:                                              ; preds = %572
  %576 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg, i32 0, i32 2), align 8
  %577 = and i32 %576, 2
  %578 = icmp ne i32 %577, 0
  br i1 %578, label %589, label %579

579:                                              ; preds = %575
  %580 = load i32, i32* %5, align 4
  %581 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 3), align 8
  %582 = sub nsw i32 %581, 2
  %583 = icmp eq i32 %580, %582
  br i1 %583, label %584, label %589

584:                                              ; preds = %579
  %585 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg, i32 0, i32 2), align 8
  %586 = or i32 %585, 3
  store i32 %586, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg, i32 0, i32 2), align 8
  %587 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 6, i32 1), align 4
  %588 = call i32 @CG_AddBufferedSound(i32 %587)
  br label %607

589:                                              ; preds = %579, %575, %572
  %590 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 3), align 8
  %591 = icmp sgt i32 %590, 3
  br i1 %591, label %592, label %606

592:                                              ; preds = %589
  %593 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg, i32 0, i32 2), align 8
  %594 = and i32 %593, 1
  %595 = icmp ne i32 %594, 0
  br i1 %595, label %606, label %596

596:                                              ; preds = %592
  %597 = load i32, i32* %5, align 4
  %598 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 3), align 8
  %599 = sub nsw i32 %598, 3
  %600 = icmp eq i32 %597, %599
  br i1 %600, label %601, label %606

601:                                              ; preds = %596
  %602 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg, i32 0, i32 2), align 8
  %603 = or i32 %602, 1
  store i32 %603, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg, i32 0, i32 2), align 8
  %604 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 6, i32 0), align 4
  %605 = call i32 @CG_AddBufferedSound(i32 %604)
  br label %606

606:                                              ; preds = %601, %596, %592, %589
  br label %607

607:                                              ; preds = %606, %584
  br label %608

608:                                              ; preds = %607, %567
  br label %609

609:                                              ; preds = %22, %96, %608, %543, %540
  ret void
}

declare dso_local i32 @trap_S_StartLocalSound(i32, i32) #1

declare dso_local i32 @CG_PainEvent(i32*, i64) #1

declare dso_local i32 @pushReward(i32, i32, i32) #1

declare dso_local i32 @CG_AddBufferedSound(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
