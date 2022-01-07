; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_newdraw.c_CG_OwnerDraw.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_newdraw.c_CG_OwnerDraw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_51__ = type { i64 }
%struct.TYPE_52__ = type { i32 }
%struct.TYPE_50__ = type { float, float, float, float }

@cg_drawStatus = common dso_local global %struct.TYPE_51__ zeroinitializer, align 8
@CG_SHOW_2DONLY = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@cg_currentSelectedPlayer = common dso_local global %struct.TYPE_52__ zeroinitializer, align 4
@numSortedTeamPlayers = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CG_OwnerDraw(float %0, float %1, float %2, float %3, float %4, float %5, i32 %6, i32 %7, i32 %8, float %9, float %10, i32 %11, i32 %12, i32 %13) #0 {
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca %struct.TYPE_50__, align 4
  store float %0, float* %15, align 4
  store float %1, float* %16, align 4
  store float %2, float* %17, align 4
  store float %3, float* %18, align 4
  store float %4, float* %19, align 4
  store float %5, float* %20, align 4
  store i32 %6, i32* %21, align 4
  store i32 %7, i32* %22, align 4
  store i32 %8, i32* %23, align 4
  store float %9, float* %24, align 4
  store float %10, float* %25, align 4
  store i32 %11, i32* %26, align 4
  store i32 %12, i32* %27, align 4
  store i32 %13, i32* %28, align 4
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_51__, %struct.TYPE_51__* @cg_drawStatus, i32 0, i32 0), align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %14
  br label %299

33:                                               ; preds = %14
  %34 = load float, float* %15, align 4
  %35 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %29, i32 0, i32 0
  store float %34, float* %35, align 4
  %36 = load float, float* %16, align 4
  %37 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %29, i32 0, i32 1
  store float %36, float* %37, align 4
  %38 = load float, float* %17, align 4
  %39 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %29, i32 0, i32 2
  store float %38, float* %39, align 4
  %40 = load float, float* %18, align 4
  %41 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %29, i32 0, i32 3
  store float %40, float* %41, align 4
  %42 = load i32, i32* %21, align 4
  switch i32 %42, label %298 [
    i32 156, label %43
    i32 155, label %48
    i32 154, label %51
    i32 159, label %57
    i32 158, label %62
    i32 157, label %65
    i32 139, label %71
    i32 129, label %77
    i32 128, label %83
    i32 134, label %89
    i32 140, label %91
    i32 138, label %97
    i32 136, label %103
    i32 137, label %109
    i32 133, label %114
    i32 135, label %116
    i32 151, label %121
    i32 149, label %126
    i32 147, label %132
    i32 150, label %138
    i32 141, label %144
    i32 174, label %150
    i32 142, label %156
    i32 175, label %161
    i32 178, label %166
    i32 176, label %168
    i32 177, label %171
    i32 145, label %176
    i32 143, label %178
    i32 144, label %181
    i32 165, label %186
    i32 164, label %192
    i32 161, label %198
    i32 148, label %200
    i32 130, label %205
    i32 171, label %208
    i32 182, label %210
    i32 146, label %216
    i32 153, label %218
    i32 152, label %221
    i32 181, label %224
    i32 180, label %229
    i32 183, label %234
    i32 167, label %239
    i32 168, label %245
    i32 162, label %251
    i32 184, label %257
    i32 179, label %257
    i32 170, label %257
    i32 169, label %257
    i32 163, label %257
    i32 160, label %257
    i32 166, label %257
    i32 172, label %257
    i32 132, label %263
    i32 131, label %268
    i32 173, label %280
    i32 186, label %286
    i32 185, label %292
  ]

43:                                               ; preds = %33
  %44 = load i32, i32* %22, align 4
  %45 = load i32, i32* @CG_SHOW_2DONLY, align 4
  %46 = and i32 %44, %45
  %47 = call i32 @CG_DrawPlayerArmorIcon(%struct.TYPE_50__* %29, i32 %46)
  br label %299

48:                                               ; preds = %33
  %49 = load i32, i32* @qtrue, align 4
  %50 = call i32 @CG_DrawPlayerArmorIcon(%struct.TYPE_50__* %29, i32 %49)
  br label %299

51:                                               ; preds = %33
  %52 = load float, float* %25, align 4
  %53 = load i32, i32* %26, align 4
  %54 = load i32, i32* %27, align 4
  %55 = load i32, i32* %28, align 4
  %56 = call i32 @CG_DrawPlayerArmorValue(%struct.TYPE_50__* %29, float %52, i32 %53, i32 %54, i32 %55)
  br label %299

57:                                               ; preds = %33
  %58 = load i32, i32* %22, align 4
  %59 = load i32, i32* @CG_SHOW_2DONLY, align 4
  %60 = and i32 %58, %59
  %61 = call i32 @CG_DrawPlayerAmmoIcon(%struct.TYPE_50__* %29, i32 %60)
  br label %299

62:                                               ; preds = %33
  %63 = load i32, i32* @qtrue, align 4
  %64 = call i32 @CG_DrawPlayerAmmoIcon(%struct.TYPE_50__* %29, i32 %63)
  br label %299

65:                                               ; preds = %33
  %66 = load float, float* %25, align 4
  %67 = load i32, i32* %26, align 4
  %68 = load i32, i32* %27, align 4
  %69 = load i32, i32* %28, align 4
  %70 = call i32 @CG_DrawPlayerAmmoValue(%struct.TYPE_50__* %29, float %66, i32 %67, i32 %68, i32 %69)
  br label %299

71:                                               ; preds = %33
  %72 = load i32, i32* %22, align 4
  %73 = load i32, i32* @CG_SHOW_2DONLY, align 4
  %74 = and i32 %72, %73
  %75 = load i32, i32* @qfalse, align 4
  %76 = call i32 @CG_DrawSelectedPlayerHead(%struct.TYPE_50__* %29, i32 %74, i32 %75)
  br label %299

77:                                               ; preds = %33
  %78 = load i32, i32* %22, align 4
  %79 = load i32, i32* @CG_SHOW_2DONLY, align 4
  %80 = and i32 %78, %79
  %81 = load i32, i32* @qtrue, align 4
  %82 = call i32 @CG_DrawSelectedPlayerHead(%struct.TYPE_50__* %29, i32 %80, i32 %81)
  br label %299

83:                                               ; preds = %33
  %84 = load float, float* %25, align 4
  %85 = load i32, i32* %26, align 4
  %86 = load i32, i32* @qtrue, align 4
  %87 = load i32, i32* %28, align 4
  %88 = call i32 @CG_DrawSelectedPlayerName(%struct.TYPE_50__* %29, float %84, i32 %85, i32 %86, i32 %87)
  br label %299

89:                                               ; preds = %33
  %90 = call i32 @CG_DrawSelectedPlayerStatus(%struct.TYPE_50__* %29)
  br label %299

91:                                               ; preds = %33
  %92 = load float, float* %25, align 4
  %93 = load i32, i32* %26, align 4
  %94 = load i32, i32* %27, align 4
  %95 = load i32, i32* %28, align 4
  %96 = call i32 @CG_DrawSelectedPlayerArmor(%struct.TYPE_50__* %29, float %92, i32 %93, i32 %94, i32 %95)
  br label %299

97:                                               ; preds = %33
  %98 = load float, float* %25, align 4
  %99 = load i32, i32* %26, align 4
  %100 = load i32, i32* %27, align 4
  %101 = load i32, i32* %28, align 4
  %102 = call i32 @CG_DrawSelectedPlayerHealth(%struct.TYPE_50__* %29, float %98, i32 %99, i32 %100, i32 %101)
  br label %299

103:                                              ; preds = %33
  %104 = load float, float* %25, align 4
  %105 = load i32, i32* %26, align 4
  %106 = load i32, i32* @qfalse, align 4
  %107 = load i32, i32* %28, align 4
  %108 = call i32 @CG_DrawSelectedPlayerName(%struct.TYPE_50__* %29, float %104, i32 %105, i32 %106, i32 %107)
  br label %299

109:                                              ; preds = %33
  %110 = load float, float* %25, align 4
  %111 = load i32, i32* %26, align 4
  %112 = load i32, i32* %28, align 4
  %113 = call i32 @CG_DrawSelectedPlayerLocation(%struct.TYPE_50__* %29, float %110, i32 %111, i32 %112)
  br label %299

114:                                              ; preds = %33
  %115 = call i32 @CG_DrawSelectedPlayerWeapon(%struct.TYPE_50__* %29)
  br label %299

116:                                              ; preds = %33
  %117 = load i32, i32* %22, align 4
  %118 = load i32, i32* @CG_SHOW_2DONLY, align 4
  %119 = and i32 %117, %118
  %120 = call i32 @CG_DrawSelectedPlayerPowerup(%struct.TYPE_50__* %29, i32 %119)
  br label %299

121:                                              ; preds = %33
  %122 = load i32, i32* %22, align 4
  %123 = load i32, i32* @CG_SHOW_2DONLY, align 4
  %124 = and i32 %122, %123
  %125 = call i32 @CG_DrawPlayerHead(%struct.TYPE_50__* %29, i32 %124)
  br label %299

126:                                              ; preds = %33
  %127 = load float, float* %25, align 4
  %128 = load i32, i32* %22, align 4
  %129 = load i32, i32* @CG_SHOW_2DONLY, align 4
  %130 = and i32 %128, %129
  %131 = call i32 @CG_DrawPlayerItem(%struct.TYPE_50__* %29, float %127, i32 %130)
  br label %299

132:                                              ; preds = %33
  %133 = load float, float* %25, align 4
  %134 = load i32, i32* %26, align 4
  %135 = load i32, i32* %27, align 4
  %136 = load i32, i32* %28, align 4
  %137 = call i32 @CG_DrawPlayerScore(%struct.TYPE_50__* %29, float %133, i32 %134, i32 %135, i32 %136)
  br label %299

138:                                              ; preds = %33
  %139 = load float, float* %25, align 4
  %140 = load i32, i32* %26, align 4
  %141 = load i32, i32* %27, align 4
  %142 = load i32, i32* %28, align 4
  %143 = call i32 @CG_DrawPlayerHealth(%struct.TYPE_50__* %29, float %139, i32 %140, i32 %141, i32 %142)
  br label %299

144:                                              ; preds = %33
  %145 = load float, float* %25, align 4
  %146 = load i32, i32* %26, align 4
  %147 = load i32, i32* %27, align 4
  %148 = load i32, i32* %28, align 4
  %149 = call i32 @CG_DrawRedScore(%struct.TYPE_50__* %29, float %145, i32 %146, i32 %147, i32 %148)
  br label %299

150:                                              ; preds = %33
  %151 = load float, float* %25, align 4
  %152 = load i32, i32* %26, align 4
  %153 = load i32, i32* %27, align 4
  %154 = load i32, i32* %28, align 4
  %155 = call i32 @CG_DrawBlueScore(%struct.TYPE_50__* %29, float %151, i32 %152, i32 %153, i32 %154)
  br label %299

156:                                              ; preds = %33
  %157 = load float, float* %25, align 4
  %158 = load i32, i32* %26, align 4
  %159 = load i32, i32* %28, align 4
  %160 = call i32 @CG_DrawRedName(%struct.TYPE_50__* %29, float %157, i32 %158, i32 %159)
  br label %299

161:                                              ; preds = %33
  %162 = load float, float* %25, align 4
  %163 = load i32, i32* %26, align 4
  %164 = load i32, i32* %28, align 4
  %165 = call i32 @CG_DrawBlueName(%struct.TYPE_50__* %29, float %162, i32 %163, i32 %164)
  br label %299

166:                                              ; preds = %33
  %167 = call i32 @CG_DrawBlueFlagHead(%struct.TYPE_50__* %29)
  br label %299

168:                                              ; preds = %33
  %169 = load i32, i32* %27, align 4
  %170 = call i32 @CG_DrawBlueFlagStatus(%struct.TYPE_50__* %29, i32 %169)
  br label %299

171:                                              ; preds = %33
  %172 = load float, float* %25, align 4
  %173 = load i32, i32* %26, align 4
  %174 = load i32, i32* %28, align 4
  %175 = call i32 @CG_DrawBlueFlagName(%struct.TYPE_50__* %29, float %172, i32 %173, i32 %174)
  br label %299

176:                                              ; preds = %33
  %177 = call i32 @CG_DrawRedFlagHead(%struct.TYPE_50__* %29)
  br label %299

178:                                              ; preds = %33
  %179 = load i32, i32* %27, align 4
  %180 = call i32 @CG_DrawRedFlagStatus(%struct.TYPE_50__* %29, i32 %179)
  br label %299

181:                                              ; preds = %33
  %182 = load float, float* %25, align 4
  %183 = load i32, i32* %26, align 4
  %184 = load i32, i32* %28, align 4
  %185 = call i32 @CG_DrawRedFlagName(%struct.TYPE_50__* %29, float %182, i32 %183, i32 %184)
  br label %299

186:                                              ; preds = %33
  %187 = load float, float* %25, align 4
  %188 = load i32, i32* %26, align 4
  %189 = load i32, i32* @qfalse, align 4
  %190 = load i32, i32* %28, align 4
  %191 = call i32 @CG_HarvesterSkulls(%struct.TYPE_50__* %29, float %187, i32 %188, i32 %189, i32 %190)
  br label %299

192:                                              ; preds = %33
  %193 = load float, float* %25, align 4
  %194 = load i32, i32* %26, align 4
  %195 = load i32, i32* @qtrue, align 4
  %196 = load i32, i32* %28, align 4
  %197 = call i32 @CG_HarvesterSkulls(%struct.TYPE_50__* %29, float %193, i32 %194, i32 %195, i32 %196)
  br label %299

198:                                              ; preds = %33
  %199 = call i32 @CG_OneFlagStatus(%struct.TYPE_50__* %29)
  br label %299

200:                                              ; preds = %33
  %201 = load float, float* %25, align 4
  %202 = load i32, i32* %26, align 4
  %203 = load i32, i32* %28, align 4
  %204 = call i32 @CG_DrawPlayerLocation(%struct.TYPE_50__* %29, float %201, i32 %202, i32 %203)
  br label %299

205:                                              ; preds = %33
  %206 = load i32, i32* %26, align 4
  %207 = call i32 @CG_DrawTeamColor(%struct.TYPE_50__* %29, i32 %206)
  br label %299

208:                                              ; preds = %33
  %209 = call i32 @CG_DrawCTFPowerUp(%struct.TYPE_50__* %29)
  br label %299

210:                                              ; preds = %33
  %211 = load i32, i32* %23, align 4
  %212 = load float, float* %24, align 4
  %213 = load float, float* %25, align 4
  %214 = load i32, i32* %26, align 4
  %215 = call i32 @CG_DrawAreaPowerUp(%struct.TYPE_50__* %29, i32 %211, float %212, float %213, i32 %214)
  br label %299

216:                                              ; preds = %33
  %217 = call i32 @CG_DrawPlayerStatus(%struct.TYPE_50__* %29)
  br label %299

218:                                              ; preds = %33
  %219 = load i32, i32* @qfalse, align 4
  %220 = call i32 @CG_DrawPlayerHasFlag(%struct.TYPE_50__* %29, i32 %219)
  br label %299

221:                                              ; preds = %33
  %222 = load i32, i32* @qtrue, align 4
  %223 = call i32 @CG_DrawPlayerHasFlag(%struct.TYPE_50__* %29, i32 %222)
  br label %299

224:                                              ; preds = %33
  %225 = load float, float* %25, align 4
  %226 = load i32, i32* %26, align 4
  %227 = load i32, i32* %27, align 4
  %228 = call i32 @CG_DrawAreaSystemChat(%struct.TYPE_50__* %29, float %225, i32 %226, i32 %227)
  br label %299

229:                                              ; preds = %33
  %230 = load float, float* %25, align 4
  %231 = load i32, i32* %26, align 4
  %232 = load i32, i32* %27, align 4
  %233 = call i32 @CG_DrawAreaTeamChat(%struct.TYPE_50__* %29, float %230, i32 %231, i32 %232)
  br label %299

234:                                              ; preds = %33
  %235 = load float, float* %25, align 4
  %236 = load i32, i32* %26, align 4
  %237 = load i32, i32* %27, align 4
  %238 = call i32 @CG_DrawAreaChat(%struct.TYPE_50__* %29, float %235, i32 %236, i32 %237)
  br label %299

239:                                              ; preds = %33
  %240 = load float, float* %25, align 4
  %241 = load i32, i32* %26, align 4
  %242 = load i32, i32* %27, align 4
  %243 = load i32, i32* %28, align 4
  %244 = call i32 @CG_DrawGameType(%struct.TYPE_50__* %29, float %240, i32 %241, i32 %242, i32 %243)
  br label %299

245:                                              ; preds = %33
  %246 = load float, float* %25, align 4
  %247 = load i32, i32* %26, align 4
  %248 = load i32, i32* %27, align 4
  %249 = load i32, i32* %28, align 4
  %250 = call i32 @CG_DrawGameStatus(%struct.TYPE_50__* %29, float %246, i32 %247, i32 %248, i32 %249)
  br label %299

251:                                              ; preds = %33
  %252 = load float, float* %25, align 4
  %253 = load i32, i32* %26, align 4
  %254 = load i32, i32* %27, align 4
  %255 = load i32, i32* %28, align 4
  %256 = call i32 @CG_DrawKiller(%struct.TYPE_50__* %29, float %252, i32 %253, i32 %254, i32 %255)
  br label %299

257:                                              ; preds = %33, %33, %33, %33, %33, %33, %33, %33
  %258 = load i32, i32* %21, align 4
  %259 = load float, float* %25, align 4
  %260 = load i32, i32* %26, align 4
  %261 = load i32, i32* %27, align 4
  %262 = call i32 @CG_DrawMedal(i32 %258, %struct.TYPE_50__* %29, float %259, i32 %260, i32 %261)
  br label %299

263:                                              ; preds = %33
  %264 = load float, float* %25, align 4
  %265 = load i32, i32* %26, align 4
  %266 = load i32, i32* %27, align 4
  %267 = call i32 @CG_DrawTeamSpectators(%struct.TYPE_50__* %29, float %264, i32 %265, i32 %266)
  br label %299

268:                                              ; preds = %33
  %269 = load i32, i32* getelementptr inbounds (%struct.TYPE_52__, %struct.TYPE_52__* @cg_currentSelectedPlayer, i32 0, i32 0), align 4
  %270 = load i32, i32* @numSortedTeamPlayers, align 4
  %271 = icmp eq i32 %269, %270
  br i1 %271, label %272, label %279

272:                                              ; preds = %268
  %273 = load float, float* %19, align 4
  %274 = load float, float* %20, align 4
  %275 = load float, float* %25, align 4
  %276 = load i32, i32* %26, align 4
  %277 = load i32, i32* %27, align 4
  %278 = call i32 @CG_DrawNewTeamInfo(%struct.TYPE_50__* %29, float %273, float %274, float %275, i32 %276, i32 %277)
  br label %279

279:                                              ; preds = %272, %268
  br label %299

280:                                              ; preds = %33
  %281 = load float, float* %25, align 4
  %282 = load i32, i32* %26, align 4
  %283 = load i32, i32* %27, align 4
  %284 = load i32, i32* %28, align 4
  %285 = call i32 @CG_DrawCapFragLimit(%struct.TYPE_50__* %29, float %281, i32 %282, i32 %283, i32 %284)
  br label %299

286:                                              ; preds = %33
  %287 = load float, float* %25, align 4
  %288 = load i32, i32* %26, align 4
  %289 = load i32, i32* %27, align 4
  %290 = load i32, i32* %28, align 4
  %291 = call i32 @CG_Draw1stPlace(%struct.TYPE_50__* %29, float %287, i32 %288, i32 %289, i32 %290)
  br label %299

292:                                              ; preds = %33
  %293 = load float, float* %25, align 4
  %294 = load i32, i32* %26, align 4
  %295 = load i32, i32* %27, align 4
  %296 = load i32, i32* %28, align 4
  %297 = call i32 @CG_Draw2ndPlace(%struct.TYPE_50__* %29, float %293, i32 %294, i32 %295, i32 %296)
  br label %299

298:                                              ; preds = %33
  br label %299

299:                                              ; preds = %32, %298, %292, %286, %280, %279, %263, %257, %251, %245, %239, %234, %229, %224, %221, %218, %216, %210, %208, %205, %200, %198, %192, %186, %181, %178, %176, %171, %168, %166, %161, %156, %150, %144, %138, %132, %126, %121, %116, %114, %109, %103, %97, %91, %89, %83, %77, %71, %65, %62, %57, %51, %48, %43
  ret void
}

declare dso_local i32 @CG_DrawPlayerArmorIcon(%struct.TYPE_50__*, i32) #1

declare dso_local i32 @CG_DrawPlayerArmorValue(%struct.TYPE_50__*, float, i32, i32, i32) #1

declare dso_local i32 @CG_DrawPlayerAmmoIcon(%struct.TYPE_50__*, i32) #1

declare dso_local i32 @CG_DrawPlayerAmmoValue(%struct.TYPE_50__*, float, i32, i32, i32) #1

declare dso_local i32 @CG_DrawSelectedPlayerHead(%struct.TYPE_50__*, i32, i32) #1

declare dso_local i32 @CG_DrawSelectedPlayerName(%struct.TYPE_50__*, float, i32, i32, i32) #1

declare dso_local i32 @CG_DrawSelectedPlayerStatus(%struct.TYPE_50__*) #1

declare dso_local i32 @CG_DrawSelectedPlayerArmor(%struct.TYPE_50__*, float, i32, i32, i32) #1

declare dso_local i32 @CG_DrawSelectedPlayerHealth(%struct.TYPE_50__*, float, i32, i32, i32) #1

declare dso_local i32 @CG_DrawSelectedPlayerLocation(%struct.TYPE_50__*, float, i32, i32) #1

declare dso_local i32 @CG_DrawSelectedPlayerWeapon(%struct.TYPE_50__*) #1

declare dso_local i32 @CG_DrawSelectedPlayerPowerup(%struct.TYPE_50__*, i32) #1

declare dso_local i32 @CG_DrawPlayerHead(%struct.TYPE_50__*, i32) #1

declare dso_local i32 @CG_DrawPlayerItem(%struct.TYPE_50__*, float, i32) #1

declare dso_local i32 @CG_DrawPlayerScore(%struct.TYPE_50__*, float, i32, i32, i32) #1

declare dso_local i32 @CG_DrawPlayerHealth(%struct.TYPE_50__*, float, i32, i32, i32) #1

declare dso_local i32 @CG_DrawRedScore(%struct.TYPE_50__*, float, i32, i32, i32) #1

declare dso_local i32 @CG_DrawBlueScore(%struct.TYPE_50__*, float, i32, i32, i32) #1

declare dso_local i32 @CG_DrawRedName(%struct.TYPE_50__*, float, i32, i32) #1

declare dso_local i32 @CG_DrawBlueName(%struct.TYPE_50__*, float, i32, i32) #1

declare dso_local i32 @CG_DrawBlueFlagHead(%struct.TYPE_50__*) #1

declare dso_local i32 @CG_DrawBlueFlagStatus(%struct.TYPE_50__*, i32) #1

declare dso_local i32 @CG_DrawBlueFlagName(%struct.TYPE_50__*, float, i32, i32) #1

declare dso_local i32 @CG_DrawRedFlagHead(%struct.TYPE_50__*) #1

declare dso_local i32 @CG_DrawRedFlagStatus(%struct.TYPE_50__*, i32) #1

declare dso_local i32 @CG_DrawRedFlagName(%struct.TYPE_50__*, float, i32, i32) #1

declare dso_local i32 @CG_HarvesterSkulls(%struct.TYPE_50__*, float, i32, i32, i32) #1

declare dso_local i32 @CG_OneFlagStatus(%struct.TYPE_50__*) #1

declare dso_local i32 @CG_DrawPlayerLocation(%struct.TYPE_50__*, float, i32, i32) #1

declare dso_local i32 @CG_DrawTeamColor(%struct.TYPE_50__*, i32) #1

declare dso_local i32 @CG_DrawCTFPowerUp(%struct.TYPE_50__*) #1

declare dso_local i32 @CG_DrawAreaPowerUp(%struct.TYPE_50__*, i32, float, float, i32) #1

declare dso_local i32 @CG_DrawPlayerStatus(%struct.TYPE_50__*) #1

declare dso_local i32 @CG_DrawPlayerHasFlag(%struct.TYPE_50__*, i32) #1

declare dso_local i32 @CG_DrawAreaSystemChat(%struct.TYPE_50__*, float, i32, i32) #1

declare dso_local i32 @CG_DrawAreaTeamChat(%struct.TYPE_50__*, float, i32, i32) #1

declare dso_local i32 @CG_DrawAreaChat(%struct.TYPE_50__*, float, i32, i32) #1

declare dso_local i32 @CG_DrawGameType(%struct.TYPE_50__*, float, i32, i32, i32) #1

declare dso_local i32 @CG_DrawGameStatus(%struct.TYPE_50__*, float, i32, i32, i32) #1

declare dso_local i32 @CG_DrawKiller(%struct.TYPE_50__*, float, i32, i32, i32) #1

declare dso_local i32 @CG_DrawMedal(i32, %struct.TYPE_50__*, float, i32, i32) #1

declare dso_local i32 @CG_DrawTeamSpectators(%struct.TYPE_50__*, float, i32, i32) #1

declare dso_local i32 @CG_DrawNewTeamInfo(%struct.TYPE_50__*, float, float, float, i32, i32) #1

declare dso_local i32 @CG_DrawCapFragLimit(%struct.TYPE_50__*, float, i32, i32, i32) #1

declare dso_local i32 @CG_Draw1stPlace(%struct.TYPE_50__*, float, i32, i32, i32) #1

declare dso_local i32 @CG_Draw2ndPlace(%struct.TYPE_50__*, float, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
