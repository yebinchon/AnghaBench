; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_ai_dmq3.c_BotFindEnemy.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_ai_dmq3.c_BotFindEnemy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_23__ = type { i64, i32 }
%struct.TYPE_22__ = type { i64, i64*, i32, i64, i32, i32, i32, i64, i64, i32, i32, i32, i32 }
%struct.TYPE_24__ = type { i64, i32, i32, i32 }

@CHARACTERISTIC_ALERTNESS = common dso_local global i32 0, align 4
@CHARACTERISTIC_EASY_FRAGGER = common dso_local global i32 0, align 4
@INVENTORY_HEALTH = common dso_local global i64 0, align 8
@qfalse = common dso_local global i32 0, align 4
@level = common dso_local global %struct.TYPE_25__ zeroinitializer, align 4
@g_entities = common dso_local global %struct.TYPE_26__* null, align 8
@FL_NOTARGET = common dso_local global i32 0, align 4
@lastteleport_time = common dso_local global i32 0, align 4
@lastteleport_origin = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@CONTENTS_SOLID = common dso_local global i32 0, align 4
@GT_OBELISK = common dso_local global i64 0, align 8
@TEAM_RED = common dso_local global i64 0, align 8
@blueobelisk = common dso_local global %struct.TYPE_23__ zeroinitializer, align 8
@gametype = common dso_local global i64 0, align 8
@redobelisk = common dso_local global %struct.TYPE_23__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BotFindEnemy(%struct.TYPE_22__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca %struct.TYPE_24__, align 8
  %15 = alloca %struct.TYPE_24__, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store i32 %1, i32* %5, align 4
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 12
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @CHARACTERISTIC_ALERTNESS, align 4
  %22 = call float @trap_Characteristic_BFloat(i32 %20, i32 %21, i32 0, i32 1)
  store float %22, float* %9, align 4
  %23 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %23, i32 0, i32 12
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @CHARACTERISTIC_EASY_FRAGGER, align 4
  %27 = call float @trap_Characteristic_BFloat(i32 %25, i32 %26, i32 0, i32 1)
  store float %27, float* %10, align 4
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %31, i32 0, i32 1
  %33 = load i64*, i64** %32, align 8
  %34 = load i64, i64* @INVENTORY_HEALTH, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %30, %36
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %7, align 4
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i32 0, i32 1
  %41 = load i64*, i64** %40, align 8
  %42 = load i64, i64* @INVENTORY_HEALTH, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = load i32, i32* %5, align 4
  %48 = icmp sge i32 %47, 0
  br i1 %48, label %49, label %66

49:                                               ; preds = %2
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @BotEntityInfo(i32 %50, %struct.TYPE_24__* %15)
  %52 = call i64 @EntityCarriesFlag(%struct.TYPE_24__* %15)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* @qfalse, align 4
  store i32 %55, i32* %3, align 4
  br label %291

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %59, i32 0, i32 9
  %61 = load i32, i32* %60, align 8
  %62 = load i32*, i32** %16, align 8
  %63 = call i32 @VectorSubtract(i32 %58, i32 %61, i32* %62)
  %64 = load i32*, i32** %16, align 8
  %65 = call float @VectorLengthSquared(i32* %64)
  store float %65, float* %13, align 4
  br label %67

66:                                               ; preds = %2
  store float 0.000000e+00, float* %13, align 4
  br label %67

67:                                               ; preds = %66, %56
  store i32 0, i32* %6, align 4
  br label %68

68:                                               ; preds = %286, %67
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @level, i32 0, i32 0), align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %289

72:                                               ; preds = %68
  %73 = load i32, i32* %6, align 4
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = icmp eq i32 %73, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  br label %286

79:                                               ; preds = %72
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %5, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  br label %286

84:                                               ; preds = %79
  %85 = load %struct.TYPE_26__*, %struct.TYPE_26__** @g_entities, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @FL_NOTARGET, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %84
  br label %286

95:                                               ; preds = %84
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @BotEntityInfo(i32 %96, %struct.TYPE_24__* %14)
  %98 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %95
  br label %286

102:                                              ; preds = %95
  %103 = call i64 @EntityIsDead(%struct.TYPE_24__* %14)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %112, label %105

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %108, i32 0, i32 7
  %110 = load i64, i64* %109, align 8
  %111 = icmp eq i64 %107, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %105, %102
  br label %286

113:                                              ; preds = %105
  %114 = call i64 @EntityIsInvisible(%struct.TYPE_24__* %14)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %113
  %117 = call i64 @EntityIsShooting(%struct.TYPE_24__* %14)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %116
  br label %286

120:                                              ; preds = %116, %113
  %121 = load float, float* %10, align 4
  %122 = fpext float %121 to double
  %123 = fcmp olt double %122, 5.000000e-01
  br i1 %123, label %124, label %128

124:                                              ; preds = %120
  %125 = call i64 @EntityIsChatting(%struct.TYPE_24__* %14)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %124
  br label %286

128:                                              ; preds = %124, %120
  %129 = load i32, i32* @lastteleport_time, align 4
  %130 = call i32 (...) @FloatTime()
  %131 = sub nsw i32 %130, 3
  %132 = icmp sgt i32 %129, %131
  br i1 %132, label %133, label %145

133:                                              ; preds = %128
  %134 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @lastteleport_origin, align 4
  %137 = load i32*, i32** %16, align 8
  %138 = call i32 @VectorSubtract(i32 %135, i32 %136, i32* %137)
  %139 = load i32*, i32** %16, align 8
  %140 = call float @VectorLengthSquared(i32* %139)
  %141 = call float @Square(i32 70)
  %142 = fcmp olt float %140, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %133
  br label %286

144:                                              ; preds = %133
  br label %145

145:                                              ; preds = %144, %128
  %146 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %148, i32 0, i32 9
  %150 = load i32, i32* %149, align 8
  %151 = load i32*, i32** %16, align 8
  %152 = call i32 @VectorSubtract(i32 %147, i32 %150, i32* %151)
  %153 = load i32*, i32** %16, align 8
  %154 = call float @VectorLengthSquared(i32* %153)
  store float %154, float* %12, align 4
  %155 = call i64 @EntityCarriesFlag(%struct.TYPE_24__* %14)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %166, label %157

157:                                              ; preds = %145
  %158 = load i32, i32* %5, align 4
  %159 = icmp sge i32 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %157
  %161 = load float, float* %12, align 4
  %162 = load float, float* %13, align 4
  %163 = fcmp ogt float %161, %162
  br i1 %163, label %164, label %165

164:                                              ; preds = %160
  br label %286

165:                                              ; preds = %160, %157
  br label %166

166:                                              ; preds = %165, %145
  %167 = load float, float* %12, align 4
  %168 = load float, float* %9, align 4
  %169 = fpext float %168 to double
  %170 = fmul double %169, 4.000000e+03
  %171 = fadd double 9.000000e+02, %170
  %172 = fptosi double %171 to i32
  %173 = call float @Square(i32 %172)
  %174 = fcmp ogt float %167, %173
  br i1 %174, label %175, label %176

175:                                              ; preds = %166
  br label %286

176:                                              ; preds = %166
  %177 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %178 = load i32, i32* %6, align 4
  %179 = call i64 @BotSameTeam(%struct.TYPE_22__* %177, i32 %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %176
  br label %286

182:                                              ; preds = %176
  %183 = load i32, i32* %5, align 4
  %184 = icmp slt i32 %183, 0
  br i1 %184, label %185, label %192

185:                                              ; preds = %182
  %186 = load i32, i32* %7, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %191, label %188

188:                                              ; preds = %185
  %189 = call i64 @EntityIsShooting(%struct.TYPE_24__* %14)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %188, %185
  store float 3.600000e+02, float* %8, align 4
  br label %205

192:                                              ; preds = %188, %182
  %193 = load float, float* %12, align 4
  %194 = call float @Square(i32 810)
  %195 = fcmp ogt float %193, %194
  br i1 %195, label %196, label %198

196:                                              ; preds = %192
  %197 = call float @Square(i32 810)
  br label %200

198:                                              ; preds = %192
  %199 = load float, float* %12, align 4
  br label %200

200:                                              ; preds = %198, %196
  %201 = phi float [ %197, %196 ], [ %199, %198 ]
  %202 = fdiv float %201, 7.290000e+03
  %203 = fsub float 9.000000e+01, %202
  %204 = fsub float 1.800000e+02, %203
  store float %204, float* %8, align 4
  br label %205

205:                                              ; preds = %200, %191
  %206 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %206, i32 0, i32 7
  %208 = load i64, i64* %207, align 8
  %209 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %209, i32 0, i32 11
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %212, i32 0, i32 10
  %214 = load i32, i32* %213, align 4
  %215 = load float, float* %8, align 4
  %216 = load i32, i32* %6, align 4
  %217 = call float @BotEntityVisible(i64 %208, i32 %211, i32 %214, float %215, i32 %216)
  store float %217, float* %11, align 4
  %218 = load float, float* %11, align 4
  %219 = fcmp ole float %218, 0.000000e+00
  br i1 %219, label %220, label %221

220:                                              ; preds = %205
  br label %286

221:                                              ; preds = %205
  %222 = load i32, i32* %5, align 4
  %223 = icmp slt i32 %222, 0
  br i1 %223, label %224, label %260

224:                                              ; preds = %221
  %225 = load float, float* %12, align 4
  %226 = call float @Square(i32 100)
  %227 = fcmp ogt float %225, %226
  br i1 %227, label %228, label %260

228:                                              ; preds = %224
  %229 = load i32, i32* %7, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %260, label %231

231:                                              ; preds = %228
  %232 = call i64 @EntityIsShooting(%struct.TYPE_24__* %14)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %260, label %234

234:                                              ; preds = %231
  %235 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %236 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %235, i32 0, i32 9
  %237 = load i32, i32* %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 2
  %239 = load i32, i32* %238, align 4
  %240 = load i32*, i32** %16, align 8
  %241 = call i32 @VectorSubtract(i32 %237, i32 %239, i32* %240)
  %242 = load i32*, i32** %16, align 8
  %243 = load i32*, i32** %17, align 8
  %244 = call i32 @vectoangles(i32* %242, i32* %243)
  %245 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 1
  %246 = load i32, i32* %245, align 8
  %247 = load i32*, i32** %17, align 8
  %248 = call i32 @InFieldOfVision(i32 %246, i32 90, i32* %247)
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %259, label %250

250:                                              ; preds = %234
  %251 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %252 = load i32, i32* %6, align 4
  %253 = call i32 @BotUpdateBattleInventory(%struct.TYPE_22__* %251, i32 %252)
  %254 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %255 = call i64 @BotWantsToRetreat(%struct.TYPE_22__* %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %258

257:                                              ; preds = %250
  br label %286

258:                                              ; preds = %250
  br label %259

259:                                              ; preds = %258, %234
  br label %260

260:                                              ; preds = %259, %231, %228, %224, %221
  %261 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %264 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %263, i32 0, i32 3
  store i64 %262, i64* %264, align 8
  %265 = load i32, i32* %5, align 4
  %266 = icmp sge i32 %265, 0
  br i1 %266, label %267, label %272

267:                                              ; preds = %260
  %268 = call i32 (...) @FloatTime()
  %269 = sub nsw i32 %268, 2
  %270 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %271 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %270, i32 0, i32 4
  store i32 %269, i32* %271, align 8
  br label %276

272:                                              ; preds = %260
  %273 = call i32 (...) @FloatTime()
  %274 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %275 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %274, i32 0, i32 4
  store i32 %273, i32* %275, align 8
  br label %276

276:                                              ; preds = %272, %267
  %277 = load i32, i32* @qfalse, align 4
  %278 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %279 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %278, i32 0, i32 5
  store i32 %277, i32* %279, align 4
  %280 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %281 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %280, i32 0, i32 8
  store i64 0, i64* %281, align 8
  %282 = call i32 (...) @FloatTime()
  %283 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %284 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %283, i32 0, i32 6
  store i32 %282, i32* %284, align 8
  %285 = load i32, i32* @qtrue, align 4
  store i32 %285, i32* %3, align 4
  br label %291

286:                                              ; preds = %257, %220, %181, %175, %164, %143, %127, %119, %112, %101, %94, %83, %78
  %287 = load i32, i32* %6, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %6, align 4
  br label %68

289:                                              ; preds = %68
  %290 = load i32, i32* @qfalse, align 4
  store i32 %290, i32* %3, align 4
  br label %291

291:                                              ; preds = %289, %276, %54
  %292 = load i32, i32* %3, align 4
  ret i32 %292
}

declare dso_local float @trap_Characteristic_BFloat(i32, i32, i32, i32) #1

declare dso_local i32 @BotEntityInfo(i32, %struct.TYPE_24__*) #1

declare dso_local i64 @EntityCarriesFlag(%struct.TYPE_24__*) #1

declare dso_local i32 @VectorSubtract(i32, i32, i32*) #1

declare dso_local float @VectorLengthSquared(i32*) #1

declare dso_local i64 @EntityIsDead(%struct.TYPE_24__*) #1

declare dso_local i64 @EntityIsInvisible(%struct.TYPE_24__*) #1

declare dso_local i64 @EntityIsShooting(%struct.TYPE_24__*) #1

declare dso_local i64 @EntityIsChatting(%struct.TYPE_24__*) #1

declare dso_local i32 @FloatTime(...) #1

declare dso_local float @Square(i32) #1

declare dso_local i64 @BotSameTeam(%struct.TYPE_22__*, i32) #1

declare dso_local float @BotEntityVisible(i64, i32, i32, float, i32) #1

declare dso_local i32 @vectoangles(i32*, i32*) #1

declare dso_local i32 @InFieldOfVision(i32, i32, i32*) #1

declare dso_local i32 @BotUpdateBattleInventory(%struct.TYPE_22__*, i32) #1

declare dso_local i64 @BotWantsToRetreat(%struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
