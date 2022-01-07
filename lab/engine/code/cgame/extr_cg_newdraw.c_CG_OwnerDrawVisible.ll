; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_newdraw.c_CG_OwnerDrawVisible.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_newdraw.c_CG_OwnerDrawVisible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64, i64, i64, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32*, i64* }

@CG_SHOW_TEAMINFO = common dso_local global i32 0, align 4
@cg_currentSelectedPlayer = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@numSortedTeamPlayers = common dso_local global i64 0, align 8
@CG_SHOW_NOTEAMINFO = common dso_local global i32 0, align 4
@CG_SHOW_OTHERTEAMHASFLAG = common dso_local global i32 0, align 4
@CG_SHOW_YOURTEAMHASENEMYFLAG = common dso_local global i32 0, align 4
@CG_SHOW_BLUE_TEAM_HAS_REDFLAG = common dso_local global i32 0, align 4
@CG_SHOW_RED_TEAM_HAS_BLUEFLAG = common dso_local global i32 0, align 4
@cgs = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@FLAG_TAKEN = common dso_local global i64 0, align 8
@FLAG_TAKEN_RED = common dso_local global i64 0, align 8
@qtrue = common dso_local global i32 0, align 4
@FLAG_TAKEN_BLUE = common dso_local global i64 0, align 8
@qfalse = common dso_local global i32 0, align 4
@CG_SHOW_ANYTEAMGAME = common dso_local global i32 0, align 4
@GT_TEAM = common dso_local global i64 0, align 8
@CG_SHOW_ANYNONTEAMGAME = common dso_local global i32 0, align 4
@CG_SHOW_HARVESTER = common dso_local global i32 0, align 4
@GT_HARVESTER = common dso_local global i64 0, align 8
@CG_SHOW_ONEFLAG = common dso_local global i32 0, align 4
@GT_1FCTF = common dso_local global i64 0, align 8
@CG_SHOW_CTF = common dso_local global i32 0, align 4
@GT_CTF = common dso_local global i64 0, align 8
@CG_SHOW_OBELISK = common dso_local global i32 0, align 4
@GT_OBELISK = common dso_local global i64 0, align 8
@CG_SHOW_HEALTHCRITICAL = common dso_local global i32 0, align 4
@cg = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@STAT_HEALTH = common dso_local global i64 0, align 8
@CG_SHOW_HEALTHOK = common dso_local global i32 0, align 4
@CG_SHOW_SINGLEPLAYER = common dso_local global i32 0, align 4
@GT_SINGLE_PLAYER = common dso_local global i64 0, align 8
@CG_SHOW_TOURNAMENT = common dso_local global i32 0, align 4
@GT_TOURNAMENT = common dso_local global i64 0, align 8
@CG_SHOW_DURINGINCOMINGVOICE = common dso_local global i32 0, align 4
@CG_SHOW_IF_PLAYER_HAS_FLAG = common dso_local global i32 0, align 4
@PW_REDFLAG = common dso_local global i64 0, align 8
@PW_BLUEFLAG = common dso_local global i64 0, align 8
@PW_NEUTRALFLAG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CG_OwnerDrawVisible(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @CG_SHOW_TEAMINFO, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cg_currentSelectedPlayer, i32 0, i32 0), align 8
  %10 = load i64, i64* @numSortedTeamPlayers, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  store i32 %12, i32* %2, align 4
  br label %254

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @CG_SHOW_NOTEAMINFO, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cg_currentSelectedPlayer, i32 0, i32 0), align 8
  %20 = load i64, i64* @numSortedTeamPlayers, align 8
  %21 = icmp eq i64 %19, %20
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %2, align 4
  br label %254

24:                                               ; preds = %13
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @CG_SHOW_OTHERTEAMHASFLAG, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = call i32 (...) @CG_OtherTeamHasFlag()
  store i32 %30, i32* %2, align 4
  br label %254

31:                                               ; preds = %24
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @CG_SHOW_YOURTEAMHASENEMYFLAG, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = call i32 (...) @CG_YourTeamHasFlag()
  store i32 %37, i32* %2, align 4
  br label %254

38:                                               ; preds = %31
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @CG_SHOW_BLUE_TEAM_HAS_REDFLAG, align 4
  %41 = load i32, i32* @CG_SHOW_RED_TEAM_HAS_BLUEFLAG, align 4
  %42 = or i32 %40, %41
  %43 = and i32 %39, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %78

45:                                               ; preds = %38
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @CG_SHOW_BLUE_TEAM_HAS_REDFLAG, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %45
  %51 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cgs, i32 0, i32 0), align 8
  %52 = load i64, i64* @FLAG_TAKEN, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cgs, i32 0, i32 1), align 8
  %56 = load i64, i64* @FLAG_TAKEN_RED, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54, %50
  %59 = load i32, i32* @qtrue, align 4
  store i32 %59, i32* %2, align 4
  br label %254

60:                                               ; preds = %54, %45
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* @CG_SHOW_RED_TEAM_HAS_BLUEFLAG, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %60
  %66 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cgs, i32 0, i32 2), align 8
  %67 = load i64, i64* @FLAG_TAKEN, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %73, label %69

69:                                               ; preds = %65
  %70 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cgs, i32 0, i32 1), align 8
  %71 = load i64, i64* @FLAG_TAKEN_BLUE, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %69, %65
  %74 = load i32, i32* @qtrue, align 4
  store i32 %74, i32* %2, align 4
  br label %254

75:                                               ; preds = %69, %60
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* @qfalse, align 4
  store i32 %77, i32* %2, align 4
  br label %254

78:                                               ; preds = %38
  %79 = load i32, i32* %3, align 4
  %80 = load i32, i32* @CG_SHOW_ANYTEAMGAME, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %78
  %84 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cgs, i32 0, i32 3), align 8
  %85 = load i64, i64* @GT_TEAM, align 8
  %86 = icmp sge i64 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = load i32, i32* @qtrue, align 4
  store i32 %88, i32* %2, align 4
  br label %254

89:                                               ; preds = %83
  br label %90

90:                                               ; preds = %89, %78
  %91 = load i32, i32* %3, align 4
  %92 = load i32, i32* @CG_SHOW_ANYNONTEAMGAME, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %90
  %96 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cgs, i32 0, i32 3), align 8
  %97 = load i64, i64* @GT_TEAM, align 8
  %98 = icmp slt i64 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  %100 = load i32, i32* @qtrue, align 4
  store i32 %100, i32* %2, align 4
  br label %254

101:                                              ; preds = %95
  br label %102

102:                                              ; preds = %101, %90
  %103 = load i32, i32* %3, align 4
  %104 = load i32, i32* @CG_SHOW_HARVESTER, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %102
  %108 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cgs, i32 0, i32 3), align 8
  %109 = load i64, i64* @GT_HARVESTER, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %107
  %112 = load i32, i32* @qtrue, align 4
  store i32 %112, i32* %2, align 4
  br label %254

113:                                              ; preds = %107
  %114 = load i32, i32* @qfalse, align 4
  store i32 %114, i32* %2, align 4
  br label %254

115:                                              ; preds = %102
  %116 = load i32, i32* %3, align 4
  %117 = load i32, i32* @CG_SHOW_ONEFLAG, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %115
  %121 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cgs, i32 0, i32 3), align 8
  %122 = load i64, i64* @GT_1FCTF, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %120
  %125 = load i32, i32* @qtrue, align 4
  store i32 %125, i32* %2, align 4
  br label %254

126:                                              ; preds = %120
  %127 = load i32, i32* @qfalse, align 4
  store i32 %127, i32* %2, align 4
  br label %254

128:                                              ; preds = %115
  %129 = load i32, i32* %3, align 4
  %130 = load i32, i32* @CG_SHOW_CTF, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %128
  %134 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cgs, i32 0, i32 3), align 8
  %135 = load i64, i64* @GT_CTF, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %133
  %138 = load i32, i32* @qtrue, align 4
  store i32 %138, i32* %2, align 4
  br label %254

139:                                              ; preds = %133
  br label %140

140:                                              ; preds = %139, %128
  %141 = load i32, i32* %3, align 4
  %142 = load i32, i32* @CG_SHOW_OBELISK, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %153

145:                                              ; preds = %140
  %146 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cgs, i32 0, i32 3), align 8
  %147 = load i64, i64* @GT_OBELISK, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %151

149:                                              ; preds = %145
  %150 = load i32, i32* @qtrue, align 4
  store i32 %150, i32* %2, align 4
  br label %254

151:                                              ; preds = %145
  %152 = load i32, i32* @qfalse, align 4
  store i32 %152, i32* %2, align 4
  br label %254

153:                                              ; preds = %140
  %154 = load i32, i32* %3, align 4
  %155 = load i32, i32* @CG_SHOW_HEALTHCRITICAL, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %170

158:                                              ; preds = %153
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg, i32 0, i32 0), align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = load i64, i64* @STAT_HEALTH, align 8
  %164 = getelementptr inbounds i32, i32* %162, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = icmp slt i32 %165, 25
  br i1 %166, label %167, label %169

167:                                              ; preds = %158
  %168 = load i32, i32* @qtrue, align 4
  store i32 %168, i32* %2, align 4
  br label %254

169:                                              ; preds = %158
  br label %170

170:                                              ; preds = %169, %153
  %171 = load i32, i32* %3, align 4
  %172 = load i32, i32* @CG_SHOW_HEALTHOK, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %187

175:                                              ; preds = %170
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg, i32 0, i32 0), align 8
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 0
  %179 = load i32*, i32** %178, align 8
  %180 = load i64, i64* @STAT_HEALTH, align 8
  %181 = getelementptr inbounds i32, i32* %179, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = icmp sge i32 %182, 25
  br i1 %183, label %184, label %186

184:                                              ; preds = %175
  %185 = load i32, i32* @qtrue, align 4
  store i32 %185, i32* %2, align 4
  br label %254

186:                                              ; preds = %175
  br label %187

187:                                              ; preds = %186, %170
  %188 = load i32, i32* %3, align 4
  %189 = load i32, i32* @CG_SHOW_SINGLEPLAYER, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %199

192:                                              ; preds = %187
  %193 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cgs, i32 0, i32 3), align 8
  %194 = load i64, i64* @GT_SINGLE_PLAYER, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %196, label %198

196:                                              ; preds = %192
  %197 = load i32, i32* @qtrue, align 4
  store i32 %197, i32* %2, align 4
  br label %254

198:                                              ; preds = %192
  br label %199

199:                                              ; preds = %198, %187
  %200 = load i32, i32* %3, align 4
  %201 = load i32, i32* @CG_SHOW_TOURNAMENT, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %211

204:                                              ; preds = %199
  %205 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cgs, i32 0, i32 3), align 8
  %206 = load i64, i64* @GT_TOURNAMENT, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %208, label %210

208:                                              ; preds = %204
  %209 = load i32, i32* @qtrue, align 4
  store i32 %209, i32* %2, align 4
  br label %254

210:                                              ; preds = %204
  br label %211

211:                                              ; preds = %210, %199
  %212 = load i32, i32* %3, align 4
  %213 = load i32, i32* @CG_SHOW_DURINGINCOMINGVOICE, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %211
  br label %217

217:                                              ; preds = %216, %211
  %218 = load i32, i32* %3, align 4
  %219 = load i32, i32* @CG_SHOW_IF_PLAYER_HAS_FLAG, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %252

222:                                              ; preds = %217
  %223 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg, i32 0, i32 0), align 8
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 1
  %226 = load i64*, i64** %225, align 8
  %227 = load i64, i64* @PW_REDFLAG, align 8
  %228 = getelementptr inbounds i64, i64* %226, i64 %227
  %229 = load i64, i64* %228, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %249, label %231

231:                                              ; preds = %222
  %232 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg, i32 0, i32 0), align 8
  %233 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i32 0, i32 1
  %235 = load i64*, i64** %234, align 8
  %236 = load i64, i64* @PW_BLUEFLAG, align 8
  %237 = getelementptr inbounds i64, i64* %235, i64 %236
  %238 = load i64, i64* %237, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %249, label %240

240:                                              ; preds = %231
  %241 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg, i32 0, i32 0), align 8
  %242 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %242, i32 0, i32 1
  %244 = load i64*, i64** %243, align 8
  %245 = load i64, i64* @PW_NEUTRALFLAG, align 8
  %246 = getelementptr inbounds i64, i64* %244, i64 %245
  %247 = load i64, i64* %246, align 8
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %251

249:                                              ; preds = %240, %231, %222
  %250 = load i32, i32* @qtrue, align 4
  store i32 %250, i32* %2, align 4
  br label %254

251:                                              ; preds = %240
  br label %252

252:                                              ; preds = %251, %217
  %253 = load i32, i32* @qfalse, align 4
  store i32 %253, i32* %2, align 4
  br label %254

254:                                              ; preds = %252, %249, %208, %196, %184, %167, %151, %149, %137, %126, %124, %113, %111, %99, %87, %76, %73, %58, %36, %29, %18, %8
  %255 = load i32, i32* %2, align 4
  ret i32 %255
}

declare dso_local i32 @CG_OtherTeamHasFlag(...) #1

declare dso_local i32 @CG_YourTeamHasFlag(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
