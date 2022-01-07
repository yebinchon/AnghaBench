; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_ai_dmq3.c_BotAttackMove.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_ai_dmq3.c_BotAttackMove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32, float, i32, i32, i64, %struct.TYPE_10__, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32 }

@CHARACTERISTIC_ATTACK_SKILL = common dso_local global i32 0, align 4
@CHARACTERISTIC_JUMPER = common dso_local global i32 0, align 4
@CHARACTERISTIC_CROUCHER = common dso_local global i32 0, align 4
@MOVE_WALK = common dso_local global i32 0, align 4
@MOVE_JUMP = common dso_local global i32 0, align 4
@MOVE_CROUCH = common dso_local global i32 0, align 4
@WP_GAUNTLET = common dso_local global i64 0, align 8
@IDEAL_ATTACKDIST = common dso_local global float 0.000000e+00, align 4
@BFL_STRAFERIGHT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BotAttackMove(%struct.TYPE_12__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca i64*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i64*, align 8
  %21 = alloca %struct.TYPE_14__, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_13__, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64* null, i64** %20, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %8, align 4
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (...) @FloatTime()
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %59

32:                                               ; preds = %2
  %33 = load i32, i32* %8, align 4
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  store i32 %33, i32* %34, align 4
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 12
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 4
  store i32 %37, i32* %38, align 4
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 11
  %41 = load i32, i32* %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @VectorCopy(i32 %41, i32 %43)
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @VectorSet(i32 %46, i32 -8, i32 -8, i32 -8)
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @VectorSet(i32 %49, i32 8, i32 8, i32 8)
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %52 = call i32 @BotSetupForMovement(%struct.TYPE_12__* %51)
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @trap_BotMoveToGoal(i32* %22, i32 %55, %struct.TYPE_13__* %23, i32 %56)
  %58 = load i32, i32* %22, align 4
  store i32 %58, i32* %3, align 4
  br label %342

59:                                               ; preds = %2
  %60 = call i32 @memset(i32* %22, i32 0, i32 4)
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 10
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @CHARACTERISTIC_ATTACK_SKILL, align 4
  %65 = call float @trap_Characteristic_BFloat(i32 %63, i32 %64, i32 0, i32 1)
  store float %65, float* %9, align 4
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 10
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @CHARACTERISTIC_JUMPER, align 4
  %70 = call float @trap_Characteristic_BFloat(i32 %68, i32 %69, i32 0, i32 1)
  store float %70, float* %10, align 4
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 10
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @CHARACTERISTIC_CROUCHER, align 4
  %75 = call float @trap_Characteristic_BFloat(i32 %73, i32 %74, i32 0, i32 1)
  store float %75, float* %11, align 4
  %76 = load float, float* %9, align 4
  %77 = fpext float %76 to double
  %78 = fcmp olt double %77, 2.000000e-01
  br i1 %78, label %79, label %81

79:                                               ; preds = %59
  %80 = load i32, i32* %22, align 4
  store i32 %80, i32* %3, align 4
  br label %342

81:                                               ; preds = %59
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %83 = call i32 @BotSetupForMovement(%struct.TYPE_12__* %82)
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @BotEntityInfo(i32 %84, %struct.TYPE_14__* %21)
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 9
  %90 = load i32, i32* %89, align 8
  %91 = load i64*, i64** %16, align 8
  %92 = call i32 @VectorSubtract(i32 %87, i32 %90, i64* %91)
  %93 = load i64*, i64** %16, align 8
  %94 = call float @VectorNormalize(i64* %93)
  store float %94, float* %12, align 4
  %95 = load i64*, i64** %16, align 8
  %96 = load i64*, i64** %17, align 8
  %97 = call i32 @VectorNegate(i64* %95, i64* %96)
  %98 = load i32, i32* @MOVE_WALK, align 4
  store i32 %98, i32* %6, align 4
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i32 (...) @FloatTime()
  %103 = sub nsw i32 %102, 1
  %104 = icmp slt i32 %101, %103
  br i1 %104, label %105, label %135

105:                                              ; preds = %81
  %106 = call double (...) @random()
  %107 = load float, float* %10, align 4
  %108 = fpext float %107 to double
  %109 = fcmp olt double %106, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %105
  %111 = load i32, i32* @MOVE_JUMP, align 4
  store i32 %111, i32* %6, align 4
  br label %134

112:                                              ; preds = %105
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = call i32 (...) @FloatTime()
  %117 = sub nsw i32 %116, 1
  %118 = icmp slt i32 %115, %117
  br i1 %118, label %119, label %133

119:                                              ; preds = %112
  %120 = call double (...) @random()
  %121 = load float, float* %11, align 4
  %122 = fpext float %121 to double
  %123 = fcmp olt double %120, %122
  br i1 %123, label %124, label %133

124:                                              ; preds = %119
  %125 = call i32 (...) @FloatTime()
  %126 = sitofp i32 %125 to float
  %127 = load float, float* %11, align 4
  %128 = fmul float %127, 5.000000e+00
  %129 = fadd float %126, %128
  %130 = fptosi float %129 to i32
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 2
  store i32 %130, i32* %132, align 8
  br label %133

133:                                              ; preds = %124, %119, %112
  br label %134

134:                                              ; preds = %133, %110
  br label %135

135:                                              ; preds = %134, %81
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = call i32 (...) @FloatTime()
  %140 = icmp sgt i32 %138, %139
  br i1 %140, label %141, label %143

141:                                              ; preds = %135
  %142 = load i32, i32* @MOVE_CROUCH, align 4
  store i32 %142, i32* %6, align 4
  br label %143

143:                                              ; preds = %141, %135
  %144 = load i32, i32* %6, align 4
  %145 = load i32, i32* @MOVE_JUMP, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %161

147:                                              ; preds = %143
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = call i32 (...) @FloatTime()
  %152 = icmp sgt i32 %150, %151
  br i1 %152, label %153, label %155

153:                                              ; preds = %147
  %154 = load i32, i32* @MOVE_WALK, align 4
  store i32 %154, i32* %6, align 4
  br label %160

155:                                              ; preds = %147
  %156 = call i32 (...) @FloatTime()
  %157 = add nsw i32 %156, 1
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 3
  store i32 %157, i32* %159, align 4
  br label %160

160:                                              ; preds = %155, %153
  br label %161

161:                                              ; preds = %160, %143
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @WP_GAUNTLET, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %161
  store float 0.000000e+00, float* %14, align 4
  store float 0.000000e+00, float* %15, align 4
  br label %171

169:                                              ; preds = %161
  %170 = load float, float* @IDEAL_ATTACKDIST, align 4
  store float %170, float* %14, align 4
  store float 4.000000e+01, float* %15, align 4
  br label %171

171:                                              ; preds = %169, %168
  %172 = load float, float* %9, align 4
  %173 = fpext float %172 to double
  %174 = fcmp ole double %173, 4.000000e-01
  br i1 %174, label %175, label %211

175:                                              ; preds = %171
  %176 = load float, float* %12, align 4
  %177 = load float, float* %14, align 4
  %178 = load float, float* %15, align 4
  %179 = fadd float %177, %178
  %180 = fcmp ogt float %176, %179
  br i1 %180, label %181, label %192

181:                                              ; preds = %175
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 6
  %184 = load i32, i32* %183, align 8
  %185 = load i64*, i64** %16, align 8
  %186 = load i32, i32* %6, align 4
  %187 = call i64 @trap_BotMoveInDirection(i32 %184, i64* %185, i32 400, i32 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %181
  %190 = load i32, i32* %22, align 4
  store i32 %190, i32* %3, align 4
  br label %342

191:                                              ; preds = %181
  br label %192

192:                                              ; preds = %191, %175
  %193 = load float, float* %12, align 4
  %194 = load float, float* %14, align 4
  %195 = load float, float* %15, align 4
  %196 = fsub float %194, %195
  %197 = fcmp olt float %193, %196
  br i1 %197, label %198, label %209

198:                                              ; preds = %192
  %199 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i32 0, i32 6
  %201 = load i32, i32* %200, align 8
  %202 = load i64*, i64** %17, align 8
  %203 = load i32, i32* %6, align 4
  %204 = call i64 @trap_BotMoveInDirection(i32 %201, i64* %202, i32 400, i32 %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %198
  %207 = load i32, i32* %22, align 4
  store i32 %207, i32* %3, align 4
  br label %342

208:                                              ; preds = %198
  br label %209

209:                                              ; preds = %208, %192
  %210 = load i32, i32* %22, align 4
  store i32 %210, i32* %3, align 4
  br label %342

211:                                              ; preds = %171
  %212 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i32 0, i32 7
  %214 = load i64, i64* %213, align 8
  %215 = sitofp i64 %214 to float
  %216 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i32 0, i32 4
  %218 = load float, float* %217, align 8
  %219 = fadd float %218, %215
  store float %219, float* %217, align 8
  %220 = load float, float* %9, align 4
  %221 = fsub float 1.000000e+00, %220
  %222 = fpext float %221 to double
  %223 = fmul double %222, 2.000000e-01
  %224 = fadd double 4.000000e-01, %223
  %225 = fptrunc double %224 to float
  store float %225, float* %13, align 4
  %226 = load float, float* %9, align 4
  %227 = fpext float %226 to double
  %228 = fcmp ogt double %227, 0x3FE6666666666666
  br i1 %228, label %229, label %236

229:                                              ; preds = %211
  %230 = call double (...) @crandom()
  %231 = fmul double %230, 2.000000e-01
  %232 = load float, float* %13, align 4
  %233 = fpext float %232 to double
  %234 = fadd double %233, %231
  %235 = fptrunc double %234 to float
  store float %235, float* %13, align 4
  br label %236

236:                                              ; preds = %229, %211
  %237 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %238 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %237, i32 0, i32 4
  %239 = load float, float* %238, align 8
  %240 = load float, float* %13, align 4
  %241 = fcmp ogt float %239, %240
  br i1 %241, label %242, label %254

242:                                              ; preds = %236
  %243 = call double (...) @random()
  %244 = fcmp ogt double %243, 9.350000e-01
  br i1 %244, label %245, label %253

245:                                              ; preds = %242
  %246 = load i32, i32* @BFL_STRAFERIGHT, align 4
  %247 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %248 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %247, i32 0, i32 5
  %249 = load i32, i32* %248, align 4
  %250 = xor i32 %249, %246
  store i32 %250, i32* %248, align 4
  %251 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %252 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %251, i32 0, i32 4
  store float 0.000000e+00, float* %252, align 8
  br label %253

253:                                              ; preds = %245, %242
  br label %254

254:                                              ; preds = %253, %236
  store i32 0, i32* %7, align 4
  br label %255

255:                                              ; preds = %337, %254
  %256 = load i32, i32* %7, align 4
  %257 = icmp slt i32 %256, 2
  br i1 %257, label %258, label %340

258:                                              ; preds = %255
  %259 = load i64*, i64** %16, align 8
  %260 = getelementptr inbounds i64, i64* %259, i64 0
  %261 = load i64, i64* %260, align 8
  %262 = load i64*, i64** %19, align 8
  %263 = getelementptr inbounds i64, i64* %262, i64 0
  store i64 %261, i64* %263, align 8
  %264 = load i64*, i64** %16, align 8
  %265 = getelementptr inbounds i64, i64* %264, i64 1
  %266 = load i64, i64* %265, align 8
  %267 = load i64*, i64** %19, align 8
  %268 = getelementptr inbounds i64, i64* %267, i64 1
  store i64 %266, i64* %268, align 8
  %269 = load i64*, i64** %19, align 8
  %270 = getelementptr inbounds i64, i64* %269, i64 2
  store i64 0, i64* %270, align 8
  %271 = load i64*, i64** %19, align 8
  %272 = call float @VectorNormalize(i64* %271)
  %273 = load i64*, i64** %19, align 8
  %274 = load i64*, i64** %20, align 8
  %275 = load i64*, i64** %18, align 8
  %276 = call i32 @CrossProduct(i64* %273, i64* %274, i64* %275)
  %277 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %278 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %277, i32 0, i32 5
  %279 = load i32, i32* %278, align 4
  %280 = load i32, i32* @BFL_STRAFERIGHT, align 4
  %281 = and i32 %279, %280
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %287

283:                                              ; preds = %258
  %284 = load i64*, i64** %18, align 8
  %285 = load i64*, i64** %18, align 8
  %286 = call i32 @VectorNegate(i64* %284, i64* %285)
  br label %287

287:                                              ; preds = %283, %258
  %288 = call double (...) @random()
  %289 = fcmp ogt double %288, 9.000000e-01
  br i1 %289, label %290, label %295

290:                                              ; preds = %287
  %291 = load i64*, i64** %18, align 8
  %292 = load i64*, i64** %17, align 8
  %293 = load i64*, i64** %18, align 8
  %294 = call i32 @VectorAdd(i64* %291, i64* %292, i64* %293)
  br label %319

295:                                              ; preds = %287
  %296 = load float, float* %12, align 4
  %297 = load float, float* %14, align 4
  %298 = load float, float* %15, align 4
  %299 = fadd float %297, %298
  %300 = fcmp ogt float %296, %299
  br i1 %300, label %301, label %306

301:                                              ; preds = %295
  %302 = load i64*, i64** %18, align 8
  %303 = load i64*, i64** %16, align 8
  %304 = load i64*, i64** %18, align 8
  %305 = call i32 @VectorAdd(i64* %302, i64* %303, i64* %304)
  br label %318

306:                                              ; preds = %295
  %307 = load float, float* %12, align 4
  %308 = load float, float* %14, align 4
  %309 = load float, float* %15, align 4
  %310 = fsub float %308, %309
  %311 = fcmp olt float %307, %310
  br i1 %311, label %312, label %317

312:                                              ; preds = %306
  %313 = load i64*, i64** %18, align 8
  %314 = load i64*, i64** %17, align 8
  %315 = load i64*, i64** %18, align 8
  %316 = call i32 @VectorAdd(i64* %313, i64* %314, i64* %315)
  br label %317

317:                                              ; preds = %312, %306
  br label %318

318:                                              ; preds = %317, %301
  br label %319

319:                                              ; preds = %318, %290
  %320 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %321 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %320, i32 0, i32 6
  %322 = load i32, i32* %321, align 8
  %323 = load i64*, i64** %18, align 8
  %324 = load i32, i32* %6, align 4
  %325 = call i64 @trap_BotMoveInDirection(i32 %322, i64* %323, i32 400, i32 %324)
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %327, label %329

327:                                              ; preds = %319
  %328 = load i32, i32* %22, align 4
  store i32 %328, i32* %3, align 4
  br label %342

329:                                              ; preds = %319
  %330 = load i32, i32* @BFL_STRAFERIGHT, align 4
  %331 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %332 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %331, i32 0, i32 5
  %333 = load i32, i32* %332, align 4
  %334 = xor i32 %333, %330
  store i32 %334, i32* %332, align 4
  %335 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %336 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %335, i32 0, i32 4
  store float 0.000000e+00, float* %336, align 8
  br label %337

337:                                              ; preds = %329
  %338 = load i32, i32* %7, align 4
  %339 = add nsw i32 %338, 1
  store i32 %339, i32* %7, align 4
  br label %255

340:                                              ; preds = %255
  %341 = load i32, i32* %22, align 4
  store i32 %341, i32* %3, align 4
  br label %342

342:                                              ; preds = %340, %327, %209, %206, %189, %79, %32
  %343 = load i32, i32* %3, align 4
  ret i32 %343
}

declare dso_local i32 @FloatTime(...) #1

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local i32 @VectorSet(i32, i32, i32, i32) #1

declare dso_local i32 @BotSetupForMovement(%struct.TYPE_12__*) #1

declare dso_local i32 @trap_BotMoveToGoal(i32*, i32, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local float @trap_Characteristic_BFloat(i32, i32, i32, i32) #1

declare dso_local i32 @BotEntityInfo(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @VectorSubtract(i32, i32, i64*) #1

declare dso_local float @VectorNormalize(i64*) #1

declare dso_local i32 @VectorNegate(i64*, i64*) #1

declare dso_local double @random(...) #1

declare dso_local i64 @trap_BotMoveInDirection(i32, i64*, i32, i32) #1

declare dso_local double @crandom(...) #1

declare dso_local i32 @CrossProduct(i64*, i64*, i64*) #1

declare dso_local i32 @VectorAdd(i64*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
