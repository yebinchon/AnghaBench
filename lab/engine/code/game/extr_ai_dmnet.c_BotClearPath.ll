; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_ai_dmnet.c_BotClearPath.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_ai_dmnet.c_BotClearPath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i32, i64*, i32, i32, i32, i32, %struct.TYPE_13__, i64*, i32, i64 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { double, i64 }
%struct.TYPE_14__ = type { i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32* }

@MOVERESULT_MOVEMENTVIEW = common dso_local global i32 0, align 4
@MOVERESULT_MOVEMENTWEAPON = common dso_local global i32 0, align 4
@MASK_SHOT = common dso_local global i32 0, align 4
@MOVERESULT_BLOCKEDBYAVOIDSPOT = common dso_local global i32 0, align 4
@INVENTORY_PLASMAGUN = common dso_local global i64 0, align 8
@INVENTORY_CELLS = common dso_local global i64 0, align 8
@WEAPONINDEX_PLASMAGUN = common dso_local global i32 0, align 4
@INVENTORY_ROCKETLAUNCHER = common dso_local global i64 0, align 8
@INVENTORY_ROCKETS = common dso_local global i64 0, align 8
@WEAPONINDEX_ROCKET_LAUNCHER = common dso_local global i32 0, align 4
@INVENTORY_BFG10K = common dso_local global i64 0, align 8
@INVENTORY_BFGAMMO = common dso_local global i64 0, align 8
@WEAPONINDEX_BFG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BotClearPath(%struct.TYPE_16__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_15__, align 8
  %12 = alloca %struct.TYPE_14__, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %4, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 10
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %121

17:                                               ; preds = %2
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @MOVERESULT_MOVEMENTVIEW, align 4
  %22 = load i32, i32* @MOVERESULT_MOVEMENTWEAPON, align 4
  %23 = or i32 %21, %22
  %24 = and i32 %20, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %120, label %26

26:                                               ; preds = %17
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 10
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @BotAI_GetEntityState(i64 %29, %struct.TYPE_14__* %12)
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = call i32 @VectorCopy(i32* %33, i32* %34)
  %36 = load i32*, i32** %9, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 2
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 8
  store i32 %39, i32* %37, align 4
  %40 = load i32*, i32** %9, align 8
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = call i32 @VectorSubtract(i32* %40, i32 %43, i32* %44)
  %46 = load i32*, i32** %10, align 8
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @vectoangles(i32* %46, i32 %49)
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %52 = call i32 @BotSelectActivateWeapon(%struct.TYPE_16__* %51)
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %59, label %62

59:                                               ; preds = %26
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 1
  store i32 0, i32* %61, align 4
  br label %62

62:                                               ; preds = %59, %26
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %119

67:                                               ; preds = %62
  %68 = load i32, i32* @MOVERESULT_MOVEMENTWEAPON, align 4
  %69 = load i32, i32* @MOVERESULT_MOVEMENTVIEW, align 4
  %70 = or i32 %68, %69
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 7
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %78, %81
  br i1 %82, label %83, label %118

83:                                               ; preds = %67
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 6
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @InFieldOfVision(i32 %86, i32 20, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %117

92:                                               ; preds = %83
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 8
  %96 = load i32*, i32** %9, align 8
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @MASK_SHOT, align 4
  %101 = call i32 @BotAI_Trace(%struct.TYPE_15__* %11, i32 %95, i32* null, i32* null, i32* %96, i32 %99, i32 %100)
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %103 = load double, double* %102, align 8
  %104 = fcmp oge double %103, 1.000000e+00
  br i1 %104, label %111, label %105

105:                                              ; preds = %92
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp eq i64 %107, %109
  br i1 %110, label %111, label %116

111:                                              ; preds = %105, %92
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @trap_EA_Attack(i32 %114)
  br label %116

116:                                              ; preds = %111, %105
  br label %117

117:                                              ; preds = %116, %83
  br label %118

118:                                              ; preds = %117, %67
  br label %119

119:                                              ; preds = %118, %62
  br label %120

120:                                              ; preds = %119, %17
  br label %121

121:                                              ; preds = %120, %2
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @MOVERESULT_BLOCKEDBYAVOIDSPOT, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %121
  %129 = call i64 (...) @FloatTime()
  %130 = add nsw i64 %129, 5
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 0
  store i64 %130, i64* %132, align 8
  br label %133

133:                                              ; preds = %128, %121
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = call i64 (...) @FloatTime()
  %138 = icmp sgt i64 %136, %137
  br i1 %138, label %139, label %339

139:                                              ; preds = %133
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @MOVERESULT_MOVEMENTVIEW, align 4
  %144 = load i32, i32* @MOVERESULT_MOVEMENTWEAPON, align 4
  %145 = or i32 %143, %144
  %146 = and i32 %142, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %339, label %148

148:                                              ; preds = %139
  store float 3.000000e+02, float* %8, align 4
  store i32 -1, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %149

149:                                              ; preds = %181, %148
  %150 = load i32, i32* %5, align 4
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = icmp slt i32 %150, %153
  br i1 %154, label %155, label %184

155:                                              ; preds = %149
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 8
  %158 = load i64*, i64** %157, align 8
  %159 = load i32, i32* %5, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i64, i64* %158, i64 %160
  %162 = load i64, i64* %161, align 8
  %163 = call i32 @BotAI_GetEntityState(i64 %162, %struct.TYPE_14__* %12)
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 0
  %166 = load i32*, i32** %165, align 8
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i32 0, i32 9
  %169 = load i32, i32* %168, align 8
  %170 = load i32*, i32** %10, align 8
  %171 = call i32 @VectorSubtract(i32* %166, i32 %169, i32* %170)
  %172 = load i32*, i32** %10, align 8
  %173 = call float @VectorLength(i32* %172)
  store float %173, float* %7, align 4
  %174 = load float, float* %7, align 4
  %175 = load float, float* %8, align 4
  %176 = fcmp olt float %174, %175
  br i1 %176, label %177, label %180

177:                                              ; preds = %155
  %178 = load float, float* %7, align 4
  store float %178, float* %8, align 4
  %179 = load i32, i32* %5, align 4
  store i32 %179, i32* %6, align 4
  br label %180

180:                                              ; preds = %177, %155
  br label %181

181:                                              ; preds = %180
  %182 = load i32, i32* %5, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %5, align 4
  br label %149

184:                                              ; preds = %149
  %185 = load i32, i32* %6, align 4
  %186 = icmp ne i32 %185, -1
  br i1 %186, label %187, label %338

187:                                              ; preds = %184
  %188 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %188, i32 0, i32 8
  %190 = load i64*, i64** %189, align 8
  %191 = load i32, i32* %6, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i64, i64* %190, i64 %192
  %194 = load i64, i64* %193, align 8
  %195 = call i32 @BotAI_GetEntityState(i64 %194, %struct.TYPE_14__* %12)
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 0
  %198 = load i32*, i32** %197, align 8
  %199 = load i32*, i32** %9, align 8
  %200 = call i32 @VectorCopy(i32* %198, i32* %199)
  %201 = load i32*, i32** %9, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 2
  %203 = load i32, i32* %202, align 4
  %204 = add nsw i32 %203, 2
  store i32 %204, i32* %202, align 4
  %205 = load i32*, i32** %9, align 8
  %206 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %207 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %206, i32 0, i32 5
  %208 = load i32, i32* %207, align 8
  %209 = load i32*, i32** %10, align 8
  %210 = call i32 @VectorSubtract(i32* %205, i32 %208, i32* %209)
  %211 = load i32*, i32** %10, align 8
  %212 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @vectoangles(i32* %211, i32 %214)
  %216 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %217 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %216, i32 0, i32 2
  %218 = load i64*, i64** %217, align 8
  %219 = load i64, i64* @INVENTORY_PLASMAGUN, align 8
  %220 = getelementptr inbounds i64, i64* %218, i64 %219
  %221 = load i64, i64* %220, align 8
  %222 = icmp sgt i64 %221, 0
  br i1 %222, label %223, label %235

223:                                              ; preds = %187
  %224 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %225 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %224, i32 0, i32 2
  %226 = load i64*, i64** %225, align 8
  %227 = load i64, i64* @INVENTORY_CELLS, align 8
  %228 = getelementptr inbounds i64, i64* %226, i64 %227
  %229 = load i64, i64* %228, align 8
  %230 = icmp sgt i64 %229, 0
  br i1 %230, label %231, label %235

231:                                              ; preds = %223
  %232 = load i32, i32* @WEAPONINDEX_PLASMAGUN, align 4
  %233 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %234 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %233, i32 0, i32 1
  store i32 %232, i32* %234, align 4
  br label %280

235:                                              ; preds = %223, %187
  %236 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %237 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %236, i32 0, i32 2
  %238 = load i64*, i64** %237, align 8
  %239 = load i64, i64* @INVENTORY_ROCKETLAUNCHER, align 8
  %240 = getelementptr inbounds i64, i64* %238, i64 %239
  %241 = load i64, i64* %240, align 8
  %242 = icmp sgt i64 %241, 0
  br i1 %242, label %243, label %255

243:                                              ; preds = %235
  %244 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %245 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %244, i32 0, i32 2
  %246 = load i64*, i64** %245, align 8
  %247 = load i64, i64* @INVENTORY_ROCKETS, align 8
  %248 = getelementptr inbounds i64, i64* %246, i64 %247
  %249 = load i64, i64* %248, align 8
  %250 = icmp sgt i64 %249, 0
  br i1 %250, label %251, label %255

251:                                              ; preds = %243
  %252 = load i32, i32* @WEAPONINDEX_ROCKET_LAUNCHER, align 4
  %253 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %254 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %253, i32 0, i32 1
  store i32 %252, i32* %254, align 4
  br label %279

255:                                              ; preds = %243, %235
  %256 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %257 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %256, i32 0, i32 2
  %258 = load i64*, i64** %257, align 8
  %259 = load i64, i64* @INVENTORY_BFG10K, align 8
  %260 = getelementptr inbounds i64, i64* %258, i64 %259
  %261 = load i64, i64* %260, align 8
  %262 = icmp sgt i64 %261, 0
  br i1 %262, label %263, label %275

263:                                              ; preds = %255
  %264 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %265 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %264, i32 0, i32 2
  %266 = load i64*, i64** %265, align 8
  %267 = load i64, i64* @INVENTORY_BFGAMMO, align 8
  %268 = getelementptr inbounds i64, i64* %266, i64 %267
  %269 = load i64, i64* %268, align 8
  %270 = icmp sgt i64 %269, 0
  br i1 %270, label %271, label %275

271:                                              ; preds = %263
  %272 = load i32, i32* @WEAPONINDEX_BFG, align 4
  %273 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %274 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %273, i32 0, i32 1
  store i32 %272, i32* %274, align 4
  br label %278

275:                                              ; preds = %263, %255
  %276 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %277 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %276, i32 0, i32 1
  store i32 0, i32* %277, align 4
  br label %278

278:                                              ; preds = %275, %271
  br label %279

279:                                              ; preds = %278, %251
  br label %280

280:                                              ; preds = %279, %231
  %281 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %282 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %337

285:                                              ; preds = %280
  %286 = load i32, i32* @MOVERESULT_MOVEMENTWEAPON, align 4
  %287 = load i32, i32* @MOVERESULT_MOVEMENTVIEW, align 4
  %288 = or i32 %286, %287
  %289 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %290 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 4
  %292 = or i32 %291, %288
  store i32 %292, i32* %290, align 4
  %293 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %294 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %293, i32 0, i32 7
  %295 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %298 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = icmp eq i32 %296, %299
  br i1 %300, label %301, label %336

301:                                              ; preds = %285
  %302 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %303 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %302, i32 0, i32 6
  %304 = load i32, i32* %303, align 4
  %305 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %306 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %305, i32 0, i32 2
  %307 = load i32, i32* %306, align 4
  %308 = call i64 @InFieldOfVision(i32 %304, i32 20, i32 %307)
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %335

310:                                              ; preds = %301
  %311 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %312 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %311, i32 0, i32 5
  %313 = load i32, i32* %312, align 8
  %314 = load i32*, i32** %9, align 8
  %315 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %316 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %315, i32 0, i32 4
  %317 = load i32, i32* %316, align 4
  %318 = load i32, i32* @MASK_SHOT, align 4
  %319 = call i32 @BotAI_Trace(%struct.TYPE_15__* %11, i32 %313, i32* null, i32* null, i32* %314, i32 %317, i32 %318)
  %320 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %321 = load double, double* %320, align 8
  %322 = fcmp oge double %321, 1.000000e+00
  br i1 %322, label %329, label %323

323:                                              ; preds = %310
  %324 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 1
  %325 = load i64, i64* %324, align 8
  %326 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %327 = load i64, i64* %326, align 8
  %328 = icmp eq i64 %325, %327
  br i1 %328, label %329, label %334

329:                                              ; preds = %323, %310
  %330 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %331 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %330, i32 0, i32 3
  %332 = load i32, i32* %331, align 8
  %333 = call i32 @trap_EA_Attack(i32 %332)
  br label %334

334:                                              ; preds = %329, %323
  br label %335

335:                                              ; preds = %334, %301
  br label %336

336:                                              ; preds = %335, %285
  br label %337

337:                                              ; preds = %336, %280
  br label %338

338:                                              ; preds = %337, %184
  br label %339

339:                                              ; preds = %338, %139, %133
  ret void
}

declare dso_local i32 @BotAI_GetEntityState(i64, %struct.TYPE_14__*) #1

declare dso_local i32 @VectorCopy(i32*, i32*) #1

declare dso_local i32 @VectorSubtract(i32*, i32, i32*) #1

declare dso_local i32 @vectoangles(i32*, i32) #1

declare dso_local i32 @BotSelectActivateWeapon(%struct.TYPE_16__*) #1

declare dso_local i64 @InFieldOfVision(i32, i32, i32) #1

declare dso_local i32 @BotAI_Trace(%struct.TYPE_15__*, i32, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @trap_EA_Attack(i32) #1

declare dso_local i64 @FloatTime(...) #1

declare dso_local float @VectorLength(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
