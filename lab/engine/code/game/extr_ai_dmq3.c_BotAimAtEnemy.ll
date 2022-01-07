; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_ai_dmq3.c_BotAimAtEnemy.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_ai_dmq3.c_BotAimAtEnemy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64 }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_26__ = type { i64, i32*, i32*, i32*, float, float, i32, i32*, i32*, i64, i32*, i32*, i32*, i32, i32, i32, %struct.TYPE_22__, i32, i32, i32 }
%struct.TYPE_22__ = type { i64, i64 }
%struct.TYPE_24__ = type { i64, i32, i32, i32, %struct.TYPE_23__, i64* }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_28__ = type { i32*, i32*, i32, i64 }
%struct.TYPE_27__ = type { i32*, i32, i32, i32, i32 }
%struct.TYPE_25__ = type { i32, i64, i32*, i64 }
%struct.TYPE_29__ = type { i32* }

@MAX_CLIENTS = common dso_local global i64 0, align 8
@CHARACTERISTIC_AIM_SKILL = common dso_local global i32 0, align 4
@CHARACTERISTIC_AIM_ACCURACY = common dso_local global i32 0, align 4
@CHARACTERISTIC_REACTIONTIME = common dso_local global i32 0, align 4
@WP_MACHINEGUN = common dso_local global i64 0, align 8
@CHARACTERISTIC_AIM_ACCURACY_MACHINEGUN = common dso_local global i32 0, align 4
@WP_SHOTGUN = common dso_local global i64 0, align 8
@CHARACTERISTIC_AIM_ACCURACY_SHOTGUN = common dso_local global i32 0, align 4
@WP_GRENADE_LAUNCHER = common dso_local global i64 0, align 8
@CHARACTERISTIC_AIM_ACCURACY_GRENADELAUNCHER = common dso_local global i32 0, align 4
@CHARACTERISTIC_AIM_SKILL_GRENADELAUNCHER = common dso_local global i32 0, align 4
@WP_ROCKET_LAUNCHER = common dso_local global i64 0, align 8
@CHARACTERISTIC_AIM_ACCURACY_ROCKETLAUNCHER = common dso_local global i32 0, align 4
@CHARACTERISTIC_AIM_SKILL_ROCKETLAUNCHER = common dso_local global i32 0, align 4
@WP_LIGHTNING = common dso_local global i64 0, align 8
@CHARACTERISTIC_AIM_ACCURACY_LIGHTNING = common dso_local global i32 0, align 4
@WP_RAILGUN = common dso_local global i64 0, align 8
@CHARACTERISTIC_AIM_ACCURACY_RAILGUN = common dso_local global i32 0, align 4
@WP_PLASMAGUN = common dso_local global i64 0, align 8
@CHARACTERISTIC_AIM_ACCURACY_PLASMAGUN = common dso_local global i32 0, align 4
@CHARACTERISTIC_AIM_SKILL_PLASMAGUN = common dso_local global i32 0, align 4
@WP_BFG = common dso_local global i64 0, align 8
@CHARACTERISTIC_AIM_ACCURACY_BFG10K = common dso_local global i32 0, align 4
@CHARACTERISTIC_AIM_SKILL_BFG10K = common dso_local global i32 0, align 4
@MASK_SHOT = common dso_local global i32 0, align 4
@WEAPON_READY = common dso_local global i64 0, align 8
@PRESENCE_CROUCH = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@DAMAGETYPE_RADIAL = common dso_local global i32 0, align 4
@TFL_DEFAULT = common dso_local global i32 0, align 4
@PITCH = common dso_local global i64 0, align 8
@YAW = common dso_local global i64 0, align 8
@bot_challenge = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@blueobelisk = common dso_local global %struct.TYPE_21__ zeroinitializer, align 8
@redobelisk = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BotAimAtEnemy(%struct.TYPE_26__* %0) #0 {
  %2 = alloca %struct.TYPE_26__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_24__, align 8
  %21 = alloca %struct.TYPE_28__, align 8
  %22 = alloca %struct.TYPE_27__, align 8
  %23 = alloca %struct.TYPE_25__, align 8
  %24 = alloca i32*, align 8
  %25 = alloca %struct.TYPE_29__, align 8
  %26 = alloca i32*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %2, align 8
  store i32* inttoptr (i64 -4 to i32*), i32** %18, align 8
  store i32* inttoptr (i64 4 to i32*), i32** %19, align 8
  %27 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %1
  br label %984

32:                                               ; preds = %1
  %33 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @BotEntityInfo(i64 %35, %struct.TYPE_28__* %21)
  %37 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @MAX_CLIENTS, align 8
  %41 = icmp sge i64 %39, %40
  br i1 %41, label %42, label %63

42:                                               ; preds = %32
  %43 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %21, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32*, i32** %24, align 8
  %46 = call i32 @VectorCopy(i32* %44, i32* %45)
  %47 = load i32*, i32** %24, align 8
  %48 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32*, i32** %11, align 8
  %52 = call i32 @VectorSubtract(i32* %47, i32* %50, i32* %51)
  %53 = load i32*, i32** %11, align 8
  %54 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @vectoangles(i32* %53, i32* %56)
  %58 = load i32*, i32** %24, align 8
  %59 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %59, i32 0, i32 3
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @VectorCopy(i32* %58, i32* %61)
  br label %984

63:                                               ; preds = %32
  %64 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %64, i32 0, i32 17
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @CHARACTERISTIC_AIM_SKILL, align 4
  %68 = call double @trap_Characteristic_BFloat(i32 %66, i32 %67, i32 0, i32 1)
  %69 = fptrunc double %68 to float
  store float %69, float* %7, align 4
  %70 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %70, i32 0, i32 17
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @CHARACTERISTIC_AIM_ACCURACY, align 4
  %74 = call double @trap_Characteristic_BFloat(i32 %72, i32 %73, i32 0, i32 1)
  %75 = fptrunc double %74 to float
  store float %75, float* %8, align 4
  %76 = load float, float* %7, align 4
  %77 = fpext float %76 to double
  %78 = fcmp ogt double %77, 0x3FEE666666666666
  br i1 %78, label %79, label %107

79:                                               ; preds = %63
  %80 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %80, i32 0, i32 17
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @CHARACTERISTIC_REACTIONTIME, align 4
  %84 = call double @trap_Characteristic_BFloat(i32 %82, i32 %83, i32 0, i32 1)
  %85 = fmul double 5.000000e-01, %84
  %86 = fptrunc double %85 to float
  store float %86, float* %10, align 4
  %87 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %87, i32 0, i32 4
  %89 = load float, float* %88, align 8
  %90 = call i32 (...) @FloatTime()
  %91 = sitofp i32 %90 to float
  %92 = load float, float* %10, align 4
  %93 = fsub float %91, %92
  %94 = fcmp ogt float %89, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %79
  br label %984

96:                                               ; preds = %79
  %97 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %97, i32 0, i32 5
  %99 = load float, float* %98, align 4
  %100 = call i32 (...) @FloatTime()
  %101 = sitofp i32 %100 to float
  %102 = load float, float* %10, align 4
  %103 = fsub float %101, %102
  %104 = fcmp ogt float %99, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %96
  br label %984

106:                                              ; preds = %96
  br label %107

107:                                              ; preds = %106, %63
  %108 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %108, i32 0, i32 19
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %111, i32 0, i32 18
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @trap_BotGetWeaponInfo(i32 %110, i32 %113, %struct.TYPE_24__* %20)
  %115 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @WP_MACHINEGUN, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %126

119:                                              ; preds = %107
  %120 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %120, i32 0, i32 17
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @CHARACTERISTIC_AIM_ACCURACY_MACHINEGUN, align 4
  %124 = call double @trap_Characteristic_BFloat(i32 %122, i32 %123, i32 0, i32 1)
  %125 = fptrunc double %124 to float
  store float %125, float* %8, align 4
  br label %241

126:                                              ; preds = %107
  %127 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @WP_SHOTGUN, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %138

131:                                              ; preds = %126
  %132 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %132, i32 0, i32 17
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @CHARACTERISTIC_AIM_ACCURACY_SHOTGUN, align 4
  %136 = call double @trap_Characteristic_BFloat(i32 %134, i32 %135, i32 0, i32 1)
  %137 = fptrunc double %136 to float
  store float %137, float* %8, align 4
  br label %240

138:                                              ; preds = %126
  %139 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @WP_GRENADE_LAUNCHER, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %156

143:                                              ; preds = %138
  %144 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %145 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %144, i32 0, i32 17
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @CHARACTERISTIC_AIM_ACCURACY_GRENADELAUNCHER, align 4
  %148 = call double @trap_Characteristic_BFloat(i32 %146, i32 %147, i32 0, i32 1)
  %149 = fptrunc double %148 to float
  store float %149, float* %8, align 4
  %150 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %151 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %150, i32 0, i32 17
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @CHARACTERISTIC_AIM_SKILL_GRENADELAUNCHER, align 4
  %154 = call double @trap_Characteristic_BFloat(i32 %152, i32 %153, i32 0, i32 1)
  %155 = fptrunc double %154 to float
  store float %155, float* %7, align 4
  br label %239

156:                                              ; preds = %138
  %157 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @WP_ROCKET_LAUNCHER, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %174

161:                                              ; preds = %156
  %162 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %163 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %162, i32 0, i32 17
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @CHARACTERISTIC_AIM_ACCURACY_ROCKETLAUNCHER, align 4
  %166 = call double @trap_Characteristic_BFloat(i32 %164, i32 %165, i32 0, i32 1)
  %167 = fptrunc double %166 to float
  store float %167, float* %8, align 4
  %168 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %169 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %168, i32 0, i32 17
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @CHARACTERISTIC_AIM_SKILL_ROCKETLAUNCHER, align 4
  %172 = call double @trap_Characteristic_BFloat(i32 %170, i32 %171, i32 0, i32 1)
  %173 = fptrunc double %172 to float
  store float %173, float* %7, align 4
  br label %238

174:                                              ; preds = %156
  %175 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @WP_LIGHTNING, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %186

179:                                              ; preds = %174
  %180 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %181 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %180, i32 0, i32 17
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @CHARACTERISTIC_AIM_ACCURACY_LIGHTNING, align 4
  %184 = call double @trap_Characteristic_BFloat(i32 %182, i32 %183, i32 0, i32 1)
  %185 = fptrunc double %184 to float
  store float %185, float* %8, align 4
  br label %237

186:                                              ; preds = %174
  %187 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @WP_RAILGUN, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %191, label %198

191:                                              ; preds = %186
  %192 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %193 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %192, i32 0, i32 17
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @CHARACTERISTIC_AIM_ACCURACY_RAILGUN, align 4
  %196 = call double @trap_Characteristic_BFloat(i32 %194, i32 %195, i32 0, i32 1)
  %197 = fptrunc double %196 to float
  store float %197, float* %8, align 4
  br label %236

198:                                              ; preds = %186
  %199 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @WP_PLASMAGUN, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %203, label %216

203:                                              ; preds = %198
  %204 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %205 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %204, i32 0, i32 17
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* @CHARACTERISTIC_AIM_ACCURACY_PLASMAGUN, align 4
  %208 = call double @trap_Characteristic_BFloat(i32 %206, i32 %207, i32 0, i32 1)
  %209 = fptrunc double %208 to float
  store float %209, float* %8, align 4
  %210 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %211 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %210, i32 0, i32 17
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* @CHARACTERISTIC_AIM_SKILL_PLASMAGUN, align 4
  %214 = call double @trap_Characteristic_BFloat(i32 %212, i32 %213, i32 0, i32 1)
  %215 = fptrunc double %214 to float
  store float %215, float* %7, align 4
  br label %235

216:                                              ; preds = %198
  %217 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = load i64, i64* @WP_BFG, align 8
  %220 = icmp eq i64 %218, %219
  br i1 %220, label %221, label %234

221:                                              ; preds = %216
  %222 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %223 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %222, i32 0, i32 17
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* @CHARACTERISTIC_AIM_ACCURACY_BFG10K, align 4
  %226 = call double @trap_Characteristic_BFloat(i32 %224, i32 %225, i32 0, i32 1)
  %227 = fptrunc double %226 to float
  store float %227, float* %8, align 4
  %228 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %229 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %228, i32 0, i32 17
  %230 = load i32, i32* %229, align 8
  %231 = load i32, i32* @CHARACTERISTIC_AIM_SKILL_BFG10K, align 4
  %232 = call double @trap_Characteristic_BFloat(i32 %230, i32 %231, i32 0, i32 1)
  %233 = fptrunc double %232 to float
  store float %233, float* %7, align 4
  br label %234

234:                                              ; preds = %221, %216
  br label %235

235:                                              ; preds = %234, %203
  br label %236

236:                                              ; preds = %235, %191
  br label %237

237:                                              ; preds = %236, %179
  br label %238

238:                                              ; preds = %237, %161
  br label %239

239:                                              ; preds = %238, %143
  br label %240

240:                                              ; preds = %239, %131
  br label %241

241:                                              ; preds = %240, %119
  %242 = load float, float* %8, align 4
  %243 = fcmp ole float %242, 0.000000e+00
  br i1 %243, label %244, label %245

244:                                              ; preds = %241
  store float 0x3F1A36E2E0000000, float* %8, align 4
  br label %245

245:                                              ; preds = %244, %241
  %246 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %247 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = call i32 @BotEntityInfo(i64 %248, %struct.TYPE_28__* %21)
  %250 = call i64 @EntityIsInvisible(%struct.TYPE_28__* %21)
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %259

252:                                              ; preds = %245
  %253 = call double (...) @random()
  %254 = fcmp ogt double %253, 1.000000e-01
  br i1 %254, label %255, label %258

255:                                              ; preds = %252
  %256 = load float, float* %8, align 4
  %257 = fmul float %256, 0x3FD99999A0000000
  store float %257, float* %8, align 4
  br label %258

258:                                              ; preds = %255, %252
  br label %259

259:                                              ; preds = %258, %245
  %260 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %21, i32 0, i32 0
  %261 = load i32*, i32** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %21, i32 0, i32 1
  %263 = load i32*, i32** %262, align 8
  %264 = load i32*, i32** %17, align 8
  %265 = call i32 @VectorSubtract(i32* %261, i32* %263, i32* %264)
  %266 = load i32*, i32** %17, align 8
  %267 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %21, i32 0, i32 2
  %268 = load i32, i32* %267, align 8
  %269 = sdiv i32 1, %268
  %270 = load i32*, i32** %17, align 8
  %271 = call i32 @VectorScale(i32* %266, i32 %269, i32* %270)
  %272 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %273 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %272, i32 0, i32 6
  %274 = load i32, i32* %273, align 8
  %275 = call i32 (...) @FloatTime()
  %276 = icmp slt i32 %274, %275
  br i1 %276, label %277, label %295

277:                                              ; preds = %259
  %278 = call i32 (...) @FloatTime()
  %279 = sitofp i32 %278 to double
  %280 = fadd double %279, 5.000000e-01
  %281 = fptosi double %280 to i32
  %282 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %283 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %282, i32 0, i32 6
  store i32 %281, i32* %283, align 8
  %284 = load i32*, i32** %17, align 8
  %285 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %286 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %285, i32 0, i32 7
  %287 = load i32*, i32** %286, align 8
  %288 = call i32 @VectorCopy(i32* %284, i32* %287)
  %289 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %21, i32 0, i32 0
  %290 = load i32*, i32** %289, align 8
  %291 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %292 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %291, i32 0, i32 8
  %293 = load i32*, i32** %292, align 8
  %294 = call i32 @VectorCopy(i32* %290, i32* %293)
  br label %295

295:                                              ; preds = %277, %259
  %296 = load float, float* %7, align 4
  %297 = fpext float %296 to double
  %298 = fcmp olt double %297, 9.000000e-01
  br i1 %298, label %299, label %323

299:                                              ; preds = %295
  %300 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %21, i32 0, i32 0
  %301 = load i32*, i32** %300, align 8
  %302 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %303 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %302, i32 0, i32 8
  %304 = load i32*, i32** %303, align 8
  %305 = load i32*, i32** %11, align 8
  %306 = call i32 @VectorSubtract(i32* %301, i32* %304, i32* %305)
  %307 = load i32*, i32** %11, align 8
  %308 = call i64 @VectorLengthSquared(i32* %307)
  %309 = call i64 @Square(i32 48)
  %310 = icmp sgt i64 %308, %309
  br i1 %310, label %311, label %322

311:                                              ; preds = %299
  %312 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %313 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %312, i32 0, i32 7
  %314 = load i32*, i32** %313, align 8
  %315 = load i32*, i32** %17, align 8
  %316 = call i64 @DotProduct(i32* %314, i32* %315)
  %317 = icmp slt i64 %316, 0
  br i1 %317, label %318, label %321

318:                                              ; preds = %311
  %319 = load float, float* %8, align 4
  %320 = fmul float %319, 0x3FE6666660000000
  store float %320, float* %8, align 4
  br label %321

321:                                              ; preds = %318, %311
  br label %322

322:                                              ; preds = %321, %299
  br label %323

323:                                              ; preds = %322, %295
  %324 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %325 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %324, i32 0, i32 9
  %326 = load i64, i64* %325, align 8
  %327 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %328 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %327, i32 0, i32 1
  %329 = load i32*, i32** %328, align 8
  %330 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %331 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %330, i32 0, i32 10
  %332 = load i32*, i32** %331, align 8
  %333 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %334 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %333, i32 0, i32 0
  %335 = load i64, i64* %334, align 8
  %336 = call i32 @BotEntityVisible(i64 %326, i32* %329, i32* %332, i32 360, i64 %335)
  store i32 %336, i32* %4, align 4
  %337 = load i32, i32* %4, align 4
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %691

339:                                              ; preds = %323
  %340 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %21, i32 0, i32 0
  %341 = load i32*, i32** %340, align 8
  %342 = load i32*, i32** %12, align 8
  %343 = call i32 @VectorCopy(i32* %341, i32* %342)
  %344 = load i32*, i32** %12, align 8
  %345 = getelementptr inbounds i32, i32* %344, i64 2
  %346 = load i32, i32* %345, align 4
  %347 = add nsw i32 %346, 8
  store i32 %347, i32* %345, align 4
  %348 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %349 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %348, i32 0, i32 11
  %350 = load i32*, i32** %349, align 8
  %351 = load i32*, i32** %14, align 8
  %352 = call i32 @VectorCopy(i32* %350, i32* %351)
  %353 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %354 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %353, i32 0, i32 16
  %355 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %354, i32 0, i32 1
  %356 = load i64, i64* %355, align 8
  %357 = load i32*, i32** %14, align 8
  %358 = getelementptr inbounds i32, i32* %357, i64 2
  %359 = load i32, i32* %358, align 4
  %360 = sext i32 %359 to i64
  %361 = add nsw i64 %360, %356
  %362 = trunc i64 %361 to i32
  store i32 %362, i32* %358, align 4
  %363 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i32 0, i32 5
  %364 = load i64*, i64** %363, align 8
  %365 = getelementptr inbounds i64, i64* %364, i64 2
  %366 = load i64, i64* %365, align 8
  %367 = load i32*, i32** %14, align 8
  %368 = getelementptr inbounds i32, i32* %367, i64 2
  %369 = load i32, i32* %368, align 4
  %370 = sext i32 %369 to i64
  %371 = add nsw i64 %370, %366
  %372 = trunc i64 %371 to i32
  store i32 %372, i32* %368, align 4
  %373 = load i32*, i32** %14, align 8
  %374 = load i32*, i32** %18, align 8
  %375 = load i32*, i32** %19, align 8
  %376 = load i32*, i32** %12, align 8
  %377 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %378 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %377, i32 0, i32 9
  %379 = load i64, i64* %378, align 8
  %380 = load i32, i32* @MASK_SHOT, align 4
  %381 = call i32 @BotAI_Trace(%struct.TYPE_25__* %23, i32* %373, i32* %374, i32* %375, i32* %376, i64 %379, i32 %380)
  %382 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %23, i32 0, i32 0
  %383 = load i32, i32* %382, align 8
  %384 = icmp sle i32 %383, 1
  br i1 %384, label %385, label %396

385:                                              ; preds = %339
  %386 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %23, i32 0, i32 1
  %387 = load i64, i64* %386, align 8
  %388 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %21, i32 0, i32 3
  %389 = load i64, i64* %388, align 8
  %390 = icmp ne i64 %387, %389
  br i1 %390, label %391, label %396

391:                                              ; preds = %385
  %392 = load i32*, i32** %12, align 8
  %393 = getelementptr inbounds i32, i32* %392, i64 2
  %394 = load i32, i32* %393, align 4
  %395 = add nsw i32 %394, 16
  store i32 %395, i32* %393, align 4
  br label %396

396:                                              ; preds = %391, %385, %339
  %397 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i32 0, i32 1
  %398 = load i32, i32* %397, align 8
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %400, label %529

400:                                              ; preds = %396
  %401 = load i32*, i32** %12, align 8
  %402 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %403 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %402, i32 0, i32 11
  %404 = load i32*, i32** %403, align 8
  %405 = load i32*, i32** %11, align 8
  %406 = call i32 @VectorSubtract(i32* %401, i32* %404, i32* %405)
  %407 = load i32*, i32** %11, align 8
  %408 = call float @VectorLength(i32* %407)
  store float %408, float* %5, align 4
  %409 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %21, i32 0, i32 0
  %410 = load i32*, i32** %409, align 8
  %411 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %412 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %411, i32 0, i32 8
  %413 = load i32*, i32** %412, align 8
  %414 = load i32*, i32** %11, align 8
  %415 = call i32 @VectorSubtract(i32* %410, i32* %413, i32* %414)
  %416 = load float, float* %5, align 4
  %417 = fcmp ogt float %416, 1.000000e+02
  br i1 %417, label %418, label %423

418:                                              ; preds = %400
  %419 = load i32*, i32** %11, align 8
  %420 = call i64 @VectorLengthSquared(i32* %419)
  %421 = call i64 @Square(i32 32)
  %422 = icmp slt i64 %420, %421
  br i1 %422, label %528, label %423

423:                                              ; preds = %418, %400
  %424 = load float, float* %7, align 4
  %425 = fpext float %424 to double
  %426 = fcmp ogt double %425, 8.000000e-01
  br i1 %426, label %427, label %486

427:                                              ; preds = %423
  %428 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %429 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %428, i32 0, i32 16
  %430 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %429, i32 0, i32 0
  %431 = load i64, i64* %430, align 8
  %432 = load i64, i64* @WEAPON_READY, align 8
  %433 = icmp eq i64 %431, %432
  br i1 %433, label %434, label %486

434:                                              ; preds = %427
  %435 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %21, i32 0, i32 0
  %436 = load i32*, i32** %435, align 8
  %437 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %438 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %437, i32 0, i32 11
  %439 = load i32*, i32** %438, align 8
  %440 = load i32*, i32** %11, align 8
  %441 = call i32 @VectorSubtract(i32* %436, i32* %439, i32* %440)
  %442 = load i32*, i32** %11, align 8
  %443 = call float @VectorLength(i32* %442)
  store float %443, float* %5, align 4
  %444 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %21, i32 0, i32 0
  %445 = load i32*, i32** %444, align 8
  %446 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %21, i32 0, i32 1
  %447 = load i32*, i32** %446, align 8
  %448 = load i32*, i32** %11, align 8
  %449 = call i32 @VectorSubtract(i32* %445, i32* %447, i32* %448)
  %450 = load i32*, i32** %11, align 8
  %451 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %21, i32 0, i32 2
  %452 = load i32, i32* %451, align 8
  %453 = sdiv i32 1, %452
  %454 = load i32*, i32** %11, align 8
  %455 = call i32 @VectorScale(i32* %450, i32 %453, i32* %454)
  %456 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %21, i32 0, i32 0
  %457 = load i32*, i32** %456, align 8
  %458 = load i32*, i32** %26, align 8
  %459 = call i32 @VectorCopy(i32* %457, i32* %458)
  %460 = load i32*, i32** %26, align 8
  %461 = getelementptr inbounds i32, i32* %460, i64 2
  %462 = load i32, i32* %461, align 4
  %463 = add nsw i32 %462, 1
  store i32 %463, i32* %461, align 4
  %464 = load i32*, i32** %16, align 8
  %465 = call i32 @VectorClear(i32* %464)
  %466 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %467 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %466, i32 0, i32 0
  %468 = load i64, i64* %467, align 8
  %469 = load i32*, i32** %26, align 8
  %470 = load i32, i32* @PRESENCE_CROUCH, align 4
  %471 = load i32, i32* @qfalse, align 4
  %472 = load i32*, i32** %11, align 8
  %473 = load i32*, i32** %16, align 8
  %474 = load float, float* %5, align 4
  %475 = fmul float %474, 1.000000e+01
  %476 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i32 0, i32 1
  %477 = load i32, i32* %476, align 8
  %478 = sitofp i32 %477 to float
  %479 = fdiv float %475, %478
  %480 = load i32, i32* @qfalse, align 4
  %481 = call i32 @trap_AAS_PredictClientMovement(%struct.TYPE_29__* %25, i64 %468, i32* %469, i32 %470, i32 %471, i32* %472, i32* %473, i32 0, float %479, float 0x3FB99999A0000000, i32 0, i32 0, i32 %480)
  %482 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %25, i32 0, i32 0
  %483 = load i32*, i32** %482, align 8
  %484 = load i32*, i32** %12, align 8
  %485 = call i32 @VectorCopy(i32* %483, i32* %484)
  br label %527

486:                                              ; preds = %427, %423
  %487 = load float, float* %7, align 4
  %488 = fpext float %487 to double
  %489 = fcmp ogt double %488, 4.000000e-01
  br i1 %489, label %490, label %526

490:                                              ; preds = %486
  %491 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %21, i32 0, i32 0
  %492 = load i32*, i32** %491, align 8
  %493 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %494 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %493, i32 0, i32 11
  %495 = load i32*, i32** %494, align 8
  %496 = load i32*, i32** %11, align 8
  %497 = call i32 @VectorSubtract(i32* %492, i32* %495, i32* %496)
  %498 = load i32*, i32** %11, align 8
  %499 = call float @VectorLength(i32* %498)
  store float %499, float* %5, align 4
  %500 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %21, i32 0, i32 0
  %501 = load i32*, i32** %500, align 8
  %502 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %21, i32 0, i32 1
  %503 = load i32*, i32** %502, align 8
  %504 = load i32*, i32** %11, align 8
  %505 = call i32 @VectorSubtract(i32* %501, i32* %503, i32* %504)
  %506 = load i32*, i32** %11, align 8
  %507 = getelementptr inbounds i32, i32* %506, i64 2
  store i32 0, i32* %507, align 4
  %508 = load i32*, i32** %11, align 8
  %509 = call float @VectorNormalize(i32* %508)
  %510 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %21, i32 0, i32 2
  %511 = load i32, i32* %510, align 8
  %512 = sitofp i32 %511 to float
  %513 = fdiv float %509, %512
  store float %513, float* %9, align 4
  %514 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %21, i32 0, i32 0
  %515 = load i32*, i32** %514, align 8
  %516 = load float, float* %5, align 4
  %517 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i32 0, i32 1
  %518 = load i32, i32* %517, align 8
  %519 = sitofp i32 %518 to float
  %520 = fdiv float %516, %519
  %521 = load float, float* %9, align 4
  %522 = fmul float %520, %521
  %523 = load i32*, i32** %11, align 8
  %524 = load i32*, i32** %12, align 8
  %525 = call i32 @VectorMA(i32* %515, float %522, i32* %523, i32* %524)
  br label %526

526:                                              ; preds = %490, %486
  br label %527

527:                                              ; preds = %526, %434
  br label %528

528:                                              ; preds = %527, %418
  br label %529

529:                                              ; preds = %528, %396
  %530 = load float, float* %7, align 4
  %531 = fpext float %530 to double
  %532 = fcmp ogt double %531, 6.000000e-01
  br i1 %532, label %533, label %654

533:                                              ; preds = %529
  %534 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i32 0, i32 4
  %535 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %534, i32 0, i32 0
  %536 = load i32, i32* %535, align 4
  %537 = load i32, i32* @DAMAGETYPE_RADIAL, align 4
  %538 = and i32 %536, %537
  %539 = icmp ne i32 %538, 0
  br i1 %539, label %540, label %654

540:                                              ; preds = %533
  %541 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %21, i32 0, i32 0
  %542 = load i32*, i32** %541, align 8
  %543 = getelementptr inbounds i32, i32* %542, i64 2
  %544 = load i32, i32* %543, align 4
  %545 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %546 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %545, i32 0, i32 11
  %547 = load i32*, i32** %546, align 8
  %548 = getelementptr inbounds i32, i32* %547, i64 2
  %549 = load i32, i32* %548, align 4
  %550 = add nsw i32 %549, 16
  %551 = icmp slt i32 %544, %550
  br i1 %551, label %552, label %653

552:                                              ; preds = %540
  %553 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %21, i32 0, i32 0
  %554 = load i32*, i32** %553, align 8
  %555 = load i32*, i32** %13, align 8
  %556 = call i32 @VectorCopy(i32* %554, i32* %555)
  %557 = load i32*, i32** %13, align 8
  %558 = getelementptr inbounds i32, i32* %557, i64 2
  %559 = load i32, i32* %558, align 4
  %560 = sub nsw i32 %559, 64
  store i32 %560, i32* %558, align 4
  %561 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %21, i32 0, i32 0
  %562 = load i32*, i32** %561, align 8
  %563 = load i32*, i32** %13, align 8
  %564 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %21, i32 0, i32 3
  %565 = load i64, i64* %564, align 8
  %566 = load i32, i32* @MASK_SHOT, align 4
  %567 = call i32 @BotAI_Trace(%struct.TYPE_25__* %23, i32* %562, i32* null, i32* null, i32* %563, i64 %565, i32 %566)
  %568 = load i32*, i32** %12, align 8
  %569 = load i32*, i32** %15, align 8
  %570 = call i32 @VectorCopy(i32* %568, i32* %569)
  %571 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %23, i32 0, i32 3
  %572 = load i64, i64* %571, align 8
  %573 = icmp ne i64 %572, 0
  br i1 %573, label %574, label %582

574:                                              ; preds = %552
  %575 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %21, i32 0, i32 0
  %576 = load i32*, i32** %575, align 8
  %577 = getelementptr inbounds i32, i32* %576, i64 2
  %578 = load i32, i32* %577, align 4
  %579 = sub nsw i32 %578, 16
  %580 = load i32*, i32** %15, align 8
  %581 = getelementptr inbounds i32, i32* %580, i64 2
  store i32 %579, i32* %581, align 4
  br label %590

582:                                              ; preds = %552
  %583 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %23, i32 0, i32 2
  %584 = load i32*, i32** %583, align 8
  %585 = getelementptr inbounds i32, i32* %584, i64 2
  %586 = load i32, i32* %585, align 4
  %587 = sub nsw i32 %586, 8
  %588 = load i32*, i32** %15, align 8
  %589 = getelementptr inbounds i32, i32* %588, i64 2
  store i32 %587, i32* %589, align 4
  br label %590

590:                                              ; preds = %582, %574
  %591 = load i32*, i32** %14, align 8
  %592 = load i32*, i32** %15, align 8
  %593 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %594 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %593, i32 0, i32 9
  %595 = load i64, i64* %594, align 8
  %596 = load i32, i32* @MASK_SHOT, align 4
  %597 = call i32 @BotAI_Trace(%struct.TYPE_25__* %23, i32* %591, i32* null, i32* null, i32* %592, i64 %595, i32 %596)
  %598 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %23, i32 0, i32 2
  %599 = load i32*, i32** %598, align 8
  %600 = getelementptr inbounds i32, i32* %599, i64 2
  %601 = load i32, i32* %600, align 4
  %602 = load i32*, i32** %15, align 8
  %603 = getelementptr inbounds i32, i32* %602, i64 2
  %604 = load i32, i32* %603, align 4
  %605 = sub nsw i32 %601, %604
  %606 = call i32 @fabs(i32 %605)
  %607 = icmp slt i32 %606, 50
  br i1 %607, label %608, label %652

608:                                              ; preds = %590
  %609 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %23, i32 0, i32 2
  %610 = load i32*, i32** %609, align 8
  %611 = load i32*, i32** %15, align 8
  %612 = load i32*, i32** %11, align 8
  %613 = call i32 @VectorSubtract(i32* %610, i32* %611, i32* %612)
  %614 = load i32*, i32** %11, align 8
  %615 = call i64 @VectorLengthSquared(i32* %614)
  %616 = call i64 @Square(i32 60)
  %617 = icmp slt i64 %615, %616
  br i1 %617, label %618, label %651

618:                                              ; preds = %608
  %619 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %23, i32 0, i32 2
  %620 = load i32*, i32** %619, align 8
  %621 = load i32*, i32** %14, align 8
  %622 = load i32*, i32** %11, align 8
  %623 = call i32 @VectorSubtract(i32* %620, i32* %621, i32* %622)
  %624 = load i32*, i32** %11, align 8
  %625 = call i64 @VectorLengthSquared(i32* %624)
  %626 = call i64 @Square(i32 100)
  %627 = icmp sgt i64 %625, %626
  br i1 %627, label %628, label %650

628:                                              ; preds = %618
  %629 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %23, i32 0, i32 2
  %630 = load i32*, i32** %629, align 8
  %631 = getelementptr inbounds i32, i32* %630, i64 2
  %632 = load i32, i32* %631, align 4
  %633 = add nsw i32 %632, 1
  store i32 %633, i32* %631, align 4
  %634 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %23, i32 0, i32 2
  %635 = load i32*, i32** %634, align 8
  %636 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %21, i32 0, i32 0
  %637 = load i32*, i32** %636, align 8
  %638 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %21, i32 0, i32 3
  %639 = load i64, i64* %638, align 8
  %640 = load i32, i32* @MASK_SHOT, align 4
  %641 = call i32 @BotAI_Trace(%struct.TYPE_25__* %23, i32* %635, i32* null, i32* null, i32* %637, i64 %639, i32 %640)
  %642 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %23, i32 0, i32 0
  %643 = load i32, i32* %642, align 8
  %644 = icmp sge i32 %643, 1
  br i1 %644, label %645, label %649

645:                                              ; preds = %628
  %646 = load i32*, i32** %15, align 8
  %647 = load i32*, i32** %12, align 8
  %648 = call i32 @VectorCopy(i32* %646, i32* %647)
  br label %649

649:                                              ; preds = %645, %628
  br label %650

650:                                              ; preds = %649, %618
  br label %651

651:                                              ; preds = %650, %608
  br label %652

652:                                              ; preds = %651, %590
  br label %653

653:                                              ; preds = %652, %540
  br label %654

654:                                              ; preds = %653, %533, %529
  %655 = call i32 (...) @crandom()
  %656 = mul nsw i32 20, %655
  %657 = sitofp i32 %656 to float
  %658 = load float, float* %8, align 4
  %659 = fsub float 1.000000e+00, %658
  %660 = fmul float %657, %659
  %661 = load i32*, i32** %12, align 8
  %662 = getelementptr inbounds i32, i32* %661, i64 0
  %663 = load i32, i32* %662, align 4
  %664 = sitofp i32 %663 to float
  %665 = fadd float %664, %660
  %666 = fptosi float %665 to i32
  store i32 %666, i32* %662, align 4
  %667 = call i32 (...) @crandom()
  %668 = mul nsw i32 20, %667
  %669 = sitofp i32 %668 to float
  %670 = load float, float* %8, align 4
  %671 = fsub float 1.000000e+00, %670
  %672 = fmul float %669, %671
  %673 = load i32*, i32** %12, align 8
  %674 = getelementptr inbounds i32, i32* %673, i64 1
  %675 = load i32, i32* %674, align 4
  %676 = sitofp i32 %675 to float
  %677 = fadd float %676, %672
  %678 = fptosi float %677 to i32
  store i32 %678, i32* %674, align 4
  %679 = call i32 (...) @crandom()
  %680 = mul nsw i32 10, %679
  %681 = sitofp i32 %680 to float
  %682 = load float, float* %8, align 4
  %683 = fsub float 1.000000e+00, %682
  %684 = fmul float %681, %683
  %685 = load i32*, i32** %12, align 8
  %686 = getelementptr inbounds i32, i32* %685, i64 2
  %687 = load i32, i32* %686, align 4
  %688 = sitofp i32 %687 to float
  %689 = fadd float %688, %684
  %690 = fptosi float %689 to i32
  store i32 %690, i32* %686, align 4
  br label %773

691:                                              ; preds = %323
  %692 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %693 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %692, i32 0, i32 12
  %694 = load i32*, i32** %693, align 8
  %695 = load i32*, i32** %12, align 8
  %696 = call i32 @VectorCopy(i32* %694, i32* %695)
  %697 = load i32*, i32** %12, align 8
  %698 = getelementptr inbounds i32, i32* %697, i64 2
  %699 = load i32, i32* %698, align 4
  %700 = add nsw i32 %699, 8
  store i32 %700, i32* %698, align 4
  %701 = load float, float* %7, align 4
  %702 = fpext float %701 to double
  %703 = fcmp ogt double %702, 5.000000e-01
  br i1 %703, label %704, label %772

704:                                              ; preds = %691
  %705 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i32 0, i32 0
  %706 = load i64, i64* %705, align 8
  %707 = load i64, i64* @WP_BFG, align 8
  %708 = icmp eq i64 %706, %707
  br i1 %708, label %719, label %709

709:                                              ; preds = %704
  %710 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i32 0, i32 0
  %711 = load i64, i64* %710, align 8
  %712 = load i64, i64* @WP_ROCKET_LAUNCHER, align 8
  %713 = icmp eq i64 %711, %712
  br i1 %713, label %719, label %714

714:                                              ; preds = %709
  %715 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i32 0, i32 0
  %716 = load i64, i64* %715, align 8
  %717 = load i64, i64* @WP_GRENADE_LAUNCHER, align 8
  %718 = icmp eq i64 %716, %717
  br i1 %718, label %719, label %771

719:                                              ; preds = %714, %709, %704
  %720 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %721 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %720, i32 0, i32 13
  %722 = load i32, i32* %721, align 8
  %723 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %22, i32 0, i32 4
  store i32 %722, i32* %723, align 4
  %724 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %725 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %724, i32 0, i32 15
  %726 = load i32, i32* %725, align 8
  %727 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %22, i32 0, i32 3
  store i32 %726, i32* %727, align 8
  %728 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %729 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %728, i32 0, i32 1
  %730 = load i32*, i32** %729, align 8
  %731 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %22, i32 0, i32 0
  %732 = load i32*, i32** %731, align 8
  %733 = call i32 @VectorCopy(i32* %730, i32* %732)
  %734 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %22, i32 0, i32 2
  %735 = load i32, i32* %734, align 4
  %736 = call i32 @VectorSet(i32 %735, i32 -8, i32 -8, i32 -8)
  %737 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %22, i32 0, i32 1
  %738 = load i32, i32* %737, align 8
  %739 = call i32 @VectorSet(i32 %738, i32 8, i32 8, i32 8)
  %740 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %741 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %740, i32 0, i32 12
  %742 = load i32*, i32** %741, align 8
  %743 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %744 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %743, i32 0, i32 14
  %745 = load i32, i32* %744, align 4
  %746 = load i32, i32* @TFL_DEFAULT, align 4
  %747 = load i32*, i32** %24, align 8
  %748 = call i64 @trap_BotPredictVisiblePosition(i32* %742, i32 %745, %struct.TYPE_27__* %22, i32 %746, i32* %747)
  %749 = icmp ne i64 %748, 0
  br i1 %749, label %750, label %770

750:                                              ; preds = %719
  %751 = load i32*, i32** %24, align 8
  %752 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %753 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %752, i32 0, i32 1
  %754 = load i32*, i32** %753, align 8
  %755 = load i32*, i32** %11, align 8
  %756 = call i32 @VectorSubtract(i32* %751, i32* %754, i32* %755)
  %757 = load i32*, i32** %11, align 8
  %758 = call i64 @VectorLengthSquared(i32* %757)
  %759 = call i64 @Square(i32 80)
  %760 = icmp sgt i64 %758, %759
  br i1 %760, label %761, label %769

761:                                              ; preds = %750
  %762 = load i32*, i32** %24, align 8
  %763 = load i32*, i32** %12, align 8
  %764 = call i32 @VectorCopy(i32* %762, i32* %763)
  %765 = load i32*, i32** %12, align 8
  %766 = getelementptr inbounds i32, i32* %765, i64 2
  %767 = load i32, i32* %766, align 4
  %768 = sub nsw i32 %767, 20
  store i32 %768, i32* %766, align 4
  br label %769

769:                                              ; preds = %761, %750
  br label %770

770:                                              ; preds = %769, %719
  store float 1.000000e+00, float* %8, align 4
  br label %771

771:                                              ; preds = %770, %714
  br label %772

772:                                              ; preds = %771, %691
  br label %773

773:                                              ; preds = %772, %654
  %774 = load i32, i32* %4, align 4
  %775 = icmp ne i32 %774, 0
  br i1 %775, label %776, label %792

776:                                              ; preds = %773
  %777 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %778 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %777, i32 0, i32 1
  %779 = load i32*, i32** %778, align 8
  %780 = load i32*, i32** %12, align 8
  %781 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %782 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %781, i32 0, i32 9
  %783 = load i64, i64* %782, align 8
  %784 = load i32, i32* @MASK_SHOT, align 4
  %785 = call i32 @BotAI_Trace(%struct.TYPE_25__* %23, i32* %779, i32* null, i32* null, i32* %780, i64 %783, i32 %784)
  %786 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %23, i32 0, i32 2
  %787 = load i32*, i32** %786, align 8
  %788 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %789 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %788, i32 0, i32 3
  %790 = load i32*, i32** %789, align 8
  %791 = call i32 @VectorCopy(i32* %787, i32* %790)
  br label %798

792:                                              ; preds = %773
  %793 = load i32*, i32** %12, align 8
  %794 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %795 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %794, i32 0, i32 3
  %796 = load i32*, i32** %795, align 8
  %797 = call i32 @VectorCopy(i32* %793, i32* %796)
  br label %798

798:                                              ; preds = %792, %776
  %799 = load i32*, i32** %12, align 8
  %800 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %801 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %800, i32 0, i32 1
  %802 = load i32*, i32** %801, align 8
  %803 = load i32*, i32** %11, align 8
  %804 = call i32 @VectorSubtract(i32* %799, i32* %802, i32* %803)
  %805 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i32 0, i32 0
  %806 = load i64, i64* %805, align 8
  %807 = load i64, i64* @WP_MACHINEGUN, align 8
  %808 = icmp eq i64 %806, %807
  br i1 %808, label %824, label %809

809:                                              ; preds = %798
  %810 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i32 0, i32 0
  %811 = load i64, i64* %810, align 8
  %812 = load i64, i64* @WP_SHOTGUN, align 8
  %813 = icmp eq i64 %811, %812
  br i1 %813, label %824, label %814

814:                                              ; preds = %809
  %815 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i32 0, i32 0
  %816 = load i64, i64* %815, align 8
  %817 = load i64, i64* @WP_LIGHTNING, align 8
  %818 = icmp eq i64 %816, %817
  br i1 %818, label %824, label %819

819:                                              ; preds = %814
  %820 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i32 0, i32 0
  %821 = load i64, i64* %820, align 8
  %822 = load i64, i64* @WP_RAILGUN, align 8
  %823 = icmp eq i64 %821, %822
  br i1 %823, label %824, label %840

824:                                              ; preds = %819, %814, %809, %798
  %825 = load i32*, i32** %11, align 8
  %826 = call float @VectorLength(i32* %825)
  store float %826, float* %5, align 4
  %827 = load float, float* %5, align 4
  %828 = fcmp ogt float %827, 1.500000e+02
  br i1 %828, label %829, label %830

829:                                              ; preds = %824
  store float 1.500000e+02, float* %5, align 4
  br label %830

830:                                              ; preds = %829, %824
  %831 = load float, float* %5, align 4
  %832 = fdiv float %831, 1.500000e+02
  %833 = fpext float %832 to double
  %834 = fmul double %833, 4.000000e-01
  %835 = fadd double 6.000000e-01, %834
  %836 = fptrunc double %835 to float
  store float %836, float* %6, align 4
  %837 = load float, float* %6, align 4
  %838 = load float, float* %8, align 4
  %839 = fmul float %838, %837
  store float %839, float* %8, align 4
  br label %840

840:                                              ; preds = %830, %819
  %841 = load float, float* %8, align 4
  %842 = fpext float %841 to double
  %843 = fcmp olt double %842, 8.000000e-01
  br i1 %843, label %844, label %870

844:                                              ; preds = %840
  %845 = load i32*, i32** %11, align 8
  %846 = call float @VectorNormalize(i32* %845)
  store i32 0, i32* %3, align 4
  br label %847

847:                                              ; preds = %866, %844
  %848 = load i32, i32* %3, align 4
  %849 = icmp slt i32 %848, 3
  br i1 %849, label %850, label %869

850:                                              ; preds = %847
  %851 = call i32 (...) @crandom()
  %852 = sitofp i32 %851 to double
  %853 = fmul double 3.000000e-01, %852
  %854 = load float, float* %8, align 4
  %855 = fsub float 1.000000e+00, %854
  %856 = fpext float %855 to double
  %857 = fmul double %853, %856
  %858 = load i32*, i32** %11, align 8
  %859 = load i32, i32* %3, align 4
  %860 = sext i32 %859 to i64
  %861 = getelementptr inbounds i32, i32* %858, i64 %860
  %862 = load i32, i32* %861, align 4
  %863 = sitofp i32 %862 to double
  %864 = fadd double %863, %857
  %865 = fptosi double %864 to i32
  store i32 %865, i32* %861, align 4
  br label %866

866:                                              ; preds = %850
  %867 = load i32, i32* %3, align 4
  %868 = add nsw i32 %867, 1
  store i32 %868, i32* %3, align 4
  br label %847

869:                                              ; preds = %847
  br label %870

870:                                              ; preds = %869, %840
  %871 = load i32*, i32** %11, align 8
  %872 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %873 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %872, i32 0, i32 2
  %874 = load i32*, i32** %873, align 8
  %875 = call i32 @vectoangles(i32* %871, i32* %874)
  %876 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i32 0, i32 2
  %877 = load i32, i32* %876, align 4
  %878 = mul nsw i32 6, %877
  %879 = call i32 (...) @crandom()
  %880 = mul nsw i32 %878, %879
  %881 = sitofp i32 %880 to float
  %882 = load float, float* %8, align 4
  %883 = fsub float 1.000000e+00, %882
  %884 = fmul float %881, %883
  %885 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %886 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %885, i32 0, i32 2
  %887 = load i32*, i32** %886, align 8
  %888 = load i64, i64* @PITCH, align 8
  %889 = getelementptr inbounds i32, i32* %887, i64 %888
  %890 = load i32, i32* %889, align 4
  %891 = sitofp i32 %890 to float
  %892 = fadd float %891, %884
  %893 = fptosi float %892 to i32
  store i32 %893, i32* %889, align 4
  %894 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %895 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %894, i32 0, i32 2
  %896 = load i32*, i32** %895, align 8
  %897 = load i64, i64* @PITCH, align 8
  %898 = getelementptr inbounds i32, i32* %896, i64 %897
  %899 = load i32, i32* %898, align 4
  %900 = call i8* @AngleMod(i32 %899)
  %901 = ptrtoint i8* %900 to i32
  %902 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %903 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %902, i32 0, i32 2
  %904 = load i32*, i32** %903, align 8
  %905 = load i64, i64* @PITCH, align 8
  %906 = getelementptr inbounds i32, i32* %904, i64 %905
  store i32 %901, i32* %906, align 4
  %907 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i32 0, i32 3
  %908 = load i32, i32* %907, align 8
  %909 = mul nsw i32 6, %908
  %910 = call i32 (...) @crandom()
  %911 = mul nsw i32 %909, %910
  %912 = sitofp i32 %911 to float
  %913 = load float, float* %8, align 4
  %914 = fsub float 1.000000e+00, %913
  %915 = fmul float %912, %914
  %916 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %917 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %916, i32 0, i32 2
  %918 = load i32*, i32** %917, align 8
  %919 = load i64, i64* @YAW, align 8
  %920 = getelementptr inbounds i32, i32* %918, i64 %919
  %921 = load i32, i32* %920, align 4
  %922 = sitofp i32 %921 to float
  %923 = fadd float %922, %915
  %924 = fptosi float %923 to i32
  store i32 %924, i32* %920, align 4
  %925 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %926 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %925, i32 0, i32 2
  %927 = load i32*, i32** %926, align 8
  %928 = load i64, i64* @YAW, align 8
  %929 = getelementptr inbounds i32, i32* %927, i64 %928
  %930 = load i32, i32* %929, align 4
  %931 = call i8* @AngleMod(i32 %930)
  %932 = ptrtoint i8* %931 to i32
  %933 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %934 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %933, i32 0, i32 2
  %935 = load i32*, i32** %934, align 8
  %936 = load i64, i64* @YAW, align 8
  %937 = getelementptr inbounds i32, i32* %935, i64 %936
  store i32 %932, i32* %937, align 4
  %938 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @bot_challenge, i32 0, i32 0), align 8
  %939 = icmp ne i64 %938, 0
  br i1 %939, label %940, label %984

940:                                              ; preds = %870
  %941 = load float, float* %8, align 4
  %942 = fpext float %941 to double
  %943 = fcmp ogt double %942, 9.000000e-01
  br i1 %943, label %944, label %983

944:                                              ; preds = %940
  %945 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %946 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %945, i32 0, i32 4
  %947 = load float, float* %946, align 8
  %948 = call i32 (...) @FloatTime()
  %949 = sub nsw i32 %948, 1
  %950 = sitofp i32 %949 to float
  %951 = fcmp olt float %947, %950
  br i1 %951, label %952, label %983

952:                                              ; preds = %944
  %953 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %954 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %953, i32 0, i32 2
  %955 = load i32*, i32** %954, align 8
  %956 = load i64, i64* @PITCH, align 8
  %957 = getelementptr inbounds i32, i32* %955, i64 %956
  %958 = load i32, i32* %957, align 4
  %959 = icmp sgt i32 %958, 180
  br i1 %959, label %960, label %968

960:                                              ; preds = %952
  %961 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %962 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %961, i32 0, i32 2
  %963 = load i32*, i32** %962, align 8
  %964 = load i64, i64* @PITCH, align 8
  %965 = getelementptr inbounds i32, i32* %963, i64 %964
  %966 = load i32, i32* %965, align 4
  %967 = sub nsw i32 %966, 360
  store i32 %967, i32* %965, align 4
  br label %968

968:                                              ; preds = %960, %952
  %969 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %970 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %969, i32 0, i32 2
  %971 = load i32*, i32** %970, align 8
  %972 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %973 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %972, i32 0, i32 10
  %974 = load i32*, i32** %973, align 8
  %975 = call i32 @VectorCopy(i32* %971, i32* %974)
  %976 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %977 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %976, i32 0, i32 13
  %978 = load i32, i32* %977, align 8
  %979 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %980 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %979, i32 0, i32 10
  %981 = load i32*, i32** %980, align 8
  %982 = call i32 @trap_EA_View(i32 %978, i32* %981)
  br label %983

983:                                              ; preds = %968, %944, %940
  br label %984

984:                                              ; preds = %31, %42, %95, %105, %983, %870
  ret void
}

declare dso_local i32 @BotEntityInfo(i64, %struct.TYPE_28__*) #1

declare dso_local i32 @VectorCopy(i32*, i32*) #1

declare dso_local i32 @VectorSubtract(i32*, i32*, i32*) #1

declare dso_local i32 @vectoangles(i32*, i32*) #1

declare dso_local double @trap_Characteristic_BFloat(i32, i32, i32, i32) #1

declare dso_local i32 @FloatTime(...) #1

declare dso_local i32 @trap_BotGetWeaponInfo(i32, i32, %struct.TYPE_24__*) #1

declare dso_local i64 @EntityIsInvisible(%struct.TYPE_28__*) #1

declare dso_local double @random(...) #1

declare dso_local i32 @VectorScale(i32*, i32, i32*) #1

declare dso_local i64 @VectorLengthSquared(i32*) #1

declare dso_local i64 @Square(i32) #1

declare dso_local i64 @DotProduct(i32*, i32*) #1

declare dso_local i32 @BotEntityVisible(i64, i32*, i32*, i32, i64) #1

declare dso_local i32 @BotAI_Trace(%struct.TYPE_25__*, i32*, i32*, i32*, i32*, i64, i32) #1

declare dso_local float @VectorLength(i32*) #1

declare dso_local i32 @VectorClear(i32*) #1

declare dso_local i32 @trap_AAS_PredictClientMovement(%struct.TYPE_29__*, i64, i32*, i32, i32, i32*, i32*, i32, float, float, i32, i32, i32) #1

declare dso_local float @VectorNormalize(i32*) #1

declare dso_local i32 @VectorMA(i32*, float, i32*, i32*) #1

declare dso_local i32 @fabs(i32) #1

declare dso_local i32 @crandom(...) #1

declare dso_local i32 @VectorSet(i32, i32, i32, i32) #1

declare dso_local i64 @trap_BotPredictVisiblePosition(i32*, i32, %struct.TYPE_27__*, i32, i32*) #1

declare dso_local i8* @AngleMod(i32) #1

declare dso_local i32 @trap_EA_View(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
