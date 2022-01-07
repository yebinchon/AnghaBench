; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_ai_dmq3.c_BotCheckAttack.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_ai_dmq3.c_BotCheckAttack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64 }
%struct.TYPE_18__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_26__ = type { i32, float, float, double, i32, i32, i32*, i32*, i64, i32, i32, i32, i32, %struct.TYPE_22__, i32, i32, i32 }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_24__ = type { i32*, i32, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32, i32, double }
%struct.TYPE_27__ = type { i64 }

@MAX_CLIENTS = common dso_local global i32 0, align 4
@CHARACTERISTIC_REACTIONTIME = common dso_local global i32 0, align 4
@CHARACTERISTIC_FIRETHROTTLE = common dso_local global i32 0, align 4
@WP_GAUNTLET = common dso_local global i64 0, align 8
@CONTENTS_SOLID = common dso_local global i32 0, align 4
@CONTENTS_PLAYERCLIP = common dso_local global i32 0, align 4
@MASK_SHOT = common dso_local global i32 0, align 4
@DAMAGETYPE_RADIAL = common dso_local global i32 0, align 4
@WFL_FIRERELEASED = common dso_local global i32 0, align 4
@BFL_ATTACKED = common dso_local global i32 0, align 4
@blueobelisk = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@g_entities = common dso_local global %struct.TYPE_18__* null, align 8
@redobelisk = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BotCheckAttack(%struct.TYPE_26__* %0) #0 {
  %2 = alloca %struct.TYPE_26__*, align 8
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_25__, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_24__, align 8
  %16 = alloca %struct.TYPE_25__, align 4
  %17 = alloca %struct.TYPE_27__, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %2, align 8
  store i32* inttoptr (i64 -8 to i32*), i32** %18, align 8
  store i32* inttoptr (i64 8 to i32*), i32** %19, align 8
  %20 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @BotEntityInfo(i32 %23, %struct.TYPE_27__* %17)
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @MAX_CLIENTS, align 4
  %27 = icmp sge i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  br label %29

29:                                               ; preds = %28, %1
  %30 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %30, i32 0, i32 16
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @CHARACTERISTIC_REACTIONTIME, align 4
  %34 = call float @trap_Characteristic_BFloat(i32 %32, i32 %33, i32 0, i32 1)
  store float %34, float* %4, align 4
  %35 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %35, i32 0, i32 1
  %37 = load float, float* %36, align 4
  %38 = call i32 (...) @FloatTime()
  %39 = sitofp i32 %38 to float
  %40 = load float, float* %4, align 4
  %41 = fsub float %39, %40
  %42 = fcmp ogt float %37, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %29
  br label %378

44:                                               ; preds = %29
  %45 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %45, i32 0, i32 2
  %47 = load float, float* %46, align 8
  %48 = call i32 (...) @FloatTime()
  %49 = sitofp i32 %48 to float
  %50 = load float, float* %4, align 4
  %51 = fsub float %49, %50
  %52 = fcmp ogt float %47, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  br label %378

54:                                               ; preds = %44
  %55 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %55, i32 0, i32 3
  %57 = load double, double* %56, align 8
  %58 = call i32 (...) @FloatTime()
  %59 = sitofp i32 %58 to double
  %60 = fsub double %59, 1.000000e-01
  %61 = fcmp ogt double %57, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  br label %378

63:                                               ; preds = %54
  %64 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = call i32 (...) @FloatTime()
  %68 = icmp sgt i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %378

70:                                               ; preds = %63
  %71 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %71, i32 0, i32 16
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @CHARACTERISTIC_FIRETHROTTLE, align 4
  %75 = call float @trap_Characteristic_BFloat(i32 %73, i32 %74, i32 0, i32 1)
  store float %75, float* %6, align 4
  %76 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  %79 = call i32 (...) @FloatTime()
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %107

81:                                               ; preds = %70
  %82 = call float (...) @random()
  %83 = load float, float* %6, align 4
  %84 = fcmp ogt float %82, %83
  br i1 %84, label %85, label %95

85:                                               ; preds = %81
  %86 = call i32 (...) @FloatTime()
  %87 = sitofp i32 %86 to float
  %88 = load float, float* %6, align 4
  %89 = fadd float %87, %88
  %90 = fptosi float %89 to i32
  %91 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %91, i32 0, i32 4
  store i32 %90, i32* %92, align 8
  %93 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %93, i32 0, i32 5
  store i32 0, i32* %94, align 4
  br label %106

95:                                               ; preds = %81
  %96 = call i32 (...) @FloatTime()
  %97 = add nsw i32 %96, 1
  %98 = sitofp i32 %97 to float
  %99 = load float, float* %6, align 4
  %100 = fsub float %98, %99
  %101 = fptosi float %100 to i32
  %102 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %102, i32 0, i32 5
  store i32 %101, i32* %103, align 4
  %104 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %104, i32 0, i32 4
  store i32 0, i32* %105, align 8
  br label %106

106:                                              ; preds = %95, %85
  br label %107

107:                                              ; preds = %106, %70
  %108 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %108, i32 0, i32 6
  %110 = load i32*, i32** %109, align 8
  %111 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %111, i32 0, i32 7
  %113 = load i32*, i32** %112, align 8
  %114 = load i32*, i32** %13, align 8
  %115 = call i32 @VectorSubtract(i32* %110, i32* %113, i32* %114)
  %116 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %116, i32 0, i32 8
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @WP_GAUNTLET, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %128

121:                                              ; preds = %107
  %122 = load i32*, i32** %13, align 8
  %123 = call i64 @VectorLengthSquared(i32* %122)
  %124 = call i64 @Square(i32 60)
  %125 = icmp sgt i64 %123, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %121
  br label %378

127:                                              ; preds = %121
  br label %128

128:                                              ; preds = %127, %107
  %129 = load i32*, i32** %13, align 8
  %130 = call i64 @VectorLengthSquared(i32* %129)
  %131 = call i64 @Square(i32 100)
  %132 = icmp slt i64 %130, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %128
  store float 1.200000e+02, float* %5, align 4
  br label %135

134:                                              ; preds = %128
  store float 5.000000e+01, float* %5, align 4
  br label %135

135:                                              ; preds = %134, %133
  %136 = load i32*, i32** %13, align 8
  %137 = load i32*, i32** %14, align 8
  %138 = call i32 @vectoangles(i32* %136, i32* %137)
  %139 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %140 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %139, i32 0, i32 12
  %141 = load i32, i32* %140, align 4
  %142 = load float, float* %5, align 4
  %143 = load i32*, i32** %14, align 8
  %144 = call i32 @InFieldOfVision(i32 %141, float %142, i32* %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %135
  br label %378

147:                                              ; preds = %135
  %148 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %148, i32 0, i32 7
  %150 = load i32*, i32** %149, align 8
  %151 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %152 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %151, i32 0, i32 6
  %153 = load i32*, i32** %152, align 8
  %154 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %155 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %154, i32 0, i32 10
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @CONTENTS_SOLID, align 4
  %158 = load i32, i32* @CONTENTS_PLAYERCLIP, align 4
  %159 = or i32 %157, %158
  %160 = call i32 @BotAI_Trace(%struct.TYPE_25__* %8, i32* %150, i32* null, i32* null, i32* %153, i32 %156, i32 %159)
  %161 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %8, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = icmp slt i32 %162, 1
  br i1 %163, label %164, label %170

164:                                              ; preds = %147
  %165 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %8, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* %7, align 4
  %168 = icmp ne i32 %166, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %164
  br label %378

170:                                              ; preds = %164, %147
  %171 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %172 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %171, i32 0, i32 15
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %175 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %174, i32 0, i32 8
  %176 = load i64, i64* %175, align 8
  %177 = call i32 @trap_BotGetWeaponInfo(i32 %173, i64 %176, %struct.TYPE_24__* %15)
  %178 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %179 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %178, i32 0, i32 14
  %180 = load i32, i32* %179, align 8
  %181 = load i32*, i32** %11, align 8
  %182 = call i32 @VectorCopy(i32 %180, i32* %181)
  %183 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %184 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %183, i32 0, i32 13
  %185 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load i32*, i32** %11, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 2
  %189 = load i32, i32* %188, align 4
  %190 = sext i32 %189 to i64
  %191 = add nsw i64 %190, %186
  %192 = trunc i64 %191 to i32
  store i32 %192, i32* %188, align 4
  %193 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %194 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %193, i32 0, i32 12
  %195 = load i32, i32* %194, align 4
  %196 = load i32*, i32** %9, align 8
  %197 = load i32*, i32** %10, align 8
  %198 = call i32 @AngleVectors(i32 %195, i32* %196, i32* %197, i32* null)
  %199 = load i32*, i32** %9, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 0
  %201 = load i32, i32* %200, align 4
  %202 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 0
  %203 = load i32*, i32** %202, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 0
  %205 = load i32, i32* %204, align 4
  %206 = mul nsw i32 %201, %205
  %207 = load i32*, i32** %10, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 0
  %209 = load i32, i32* %208, align 4
  %210 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 0
  %211 = load i32*, i32** %210, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 1
  %213 = load i32, i32* %212, align 4
  %214 = mul nsw i32 %209, %213
  %215 = add nsw i32 %206, %214
  %216 = load i32*, i32** %11, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 0
  %218 = load i32, i32* %217, align 4
  %219 = add nsw i32 %218, %215
  store i32 %219, i32* %217, align 4
  %220 = load i32*, i32** %9, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 1
  %222 = load i32, i32* %221, align 4
  %223 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 0
  %224 = load i32*, i32** %223, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 0
  %226 = load i32, i32* %225, align 4
  %227 = mul nsw i32 %222, %226
  %228 = load i32*, i32** %10, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 1
  %230 = load i32, i32* %229, align 4
  %231 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 0
  %232 = load i32*, i32** %231, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 1
  %234 = load i32, i32* %233, align 4
  %235 = mul nsw i32 %230, %234
  %236 = add nsw i32 %227, %235
  %237 = load i32*, i32** %11, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 1
  %239 = load i32, i32* %238, align 4
  %240 = add nsw i32 %239, %236
  store i32 %240, i32* %238, align 4
  %241 = load i32*, i32** %9, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 2
  %243 = load i32, i32* %242, align 4
  %244 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 0
  %245 = load i32*, i32** %244, align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 0
  %247 = load i32, i32* %246, align 4
  %248 = mul nsw i32 %243, %247
  %249 = load i32*, i32** %10, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 2
  %251 = load i32, i32* %250, align 4
  %252 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 0
  %253 = load i32*, i32** %252, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 1
  %255 = load i32, i32* %254, align 4
  %256 = mul nsw i32 %251, %255
  %257 = add nsw i32 %248, %256
  %258 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 0
  %259 = load i32*, i32** %258, align 8
  %260 = getelementptr inbounds i32, i32* %259, i64 2
  %261 = load i32, i32* %260, align 4
  %262 = add nsw i32 %257, %261
  %263 = load i32*, i32** %11, align 8
  %264 = getelementptr inbounds i32, i32* %263, i64 2
  %265 = load i32, i32* %264, align 4
  %266 = add nsw i32 %265, %262
  store i32 %266, i32* %264, align 4
  %267 = load i32*, i32** %11, align 8
  %268 = load i32*, i32** %9, align 8
  %269 = load i32*, i32** %12, align 8
  %270 = call i32 @VectorMA(i32* %267, i32 1000, i32* %268, i32* %269)
  %271 = load i32*, i32** %11, align 8
  %272 = load i32*, i32** %9, align 8
  %273 = load i32*, i32** %11, align 8
  %274 = call i32 @VectorMA(i32* %271, i32 -12, i32* %272, i32* %273)
  %275 = load i32*, i32** %11, align 8
  %276 = load i32*, i32** %18, align 8
  %277 = load i32*, i32** %19, align 8
  %278 = load i32*, i32** %12, align 8
  %279 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %280 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %279, i32 0, i32 11
  %281 = load i32, i32* %280, align 8
  %282 = load i32, i32* @MASK_SHOT, align 4
  %283 = call i32 @BotAI_Trace(%struct.TYPE_25__* %16, i32* %275, i32* %276, i32* %277, i32* %278, i32 %281, i32 %282)
  %284 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %16, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = icmp sge i32 %285, 0
  br i1 %286, label %287, label %306

287:                                              ; preds = %170
  %288 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %16, i32 0, i32 1
  %289 = load i32, i32* %288, align 4
  %290 = load i32, i32* @MAX_CLIENTS, align 4
  %291 = icmp slt i32 %289, %290
  br i1 %291, label %292, label %306

292:                                              ; preds = %287
  %293 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %16, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = load i32, i32* %7, align 4
  %296 = icmp ne i32 %294, %295
  br i1 %296, label %297, label %305

297:                                              ; preds = %292
  %298 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %299 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %16, i32 0, i32 1
  %300 = load i32, i32* %299, align 4
  %301 = call i64 @BotSameTeam(%struct.TYPE_26__* %298, i32 %300)
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %303, label %304

303:                                              ; preds = %297
  br label %378

304:                                              ; preds = %297
  br label %305

305:                                              ; preds = %304, %292
  br label %306

306:                                              ; preds = %305, %287, %170
  %307 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %16, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = load i32, i32* %7, align 4
  %310 = icmp ne i32 %308, %309
  br i1 %310, label %315, label %311

311:                                              ; preds = %306
  %312 = load i32, i32* %7, align 4
  %313 = load i32, i32* @MAX_CLIENTS, align 4
  %314 = icmp sge i32 %312, %313
  br i1 %314, label %315, label %348

315:                                              ; preds = %311, %306
  %316 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 2
  %317 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = load i32, i32* @DAMAGETYPE_RADIAL, align 4
  %320 = and i32 %318, %319
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %347

322:                                              ; preds = %315
  %323 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %16, i32 0, i32 0
  %324 = load i32, i32* %323, align 4
  %325 = mul nsw i32 %324, 1000
  %326 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 2
  %327 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %326, i32 0, i32 1
  %328 = load i32, i32* %327, align 4
  %329 = icmp slt i32 %325, %328
  br i1 %329, label %330, label %346

330:                                              ; preds = %322
  %331 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 2
  %332 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %331, i32 0, i32 2
  %333 = load double, double* %332, align 8
  %334 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %16, i32 0, i32 0
  %335 = load i32, i32* %334, align 4
  %336 = sitofp i32 %335 to double
  %337 = fmul double 5.000000e-01, %336
  %338 = fmul double %337, 1.000000e+03
  %339 = fsub double %333, %338
  %340 = fmul double %339, 5.000000e-01
  %341 = fptrunc double %340 to float
  store float %341, float* %3, align 4
  %342 = load float, float* %3, align 4
  %343 = fcmp ogt float %342, 0.000000e+00
  br i1 %343, label %344, label %345

344:                                              ; preds = %330
  br label %378

345:                                              ; preds = %330
  br label %346

346:                                              ; preds = %345, %322
  br label %347

347:                                              ; preds = %346, %315
  br label %348

348:                                              ; preds = %347, %311
  %349 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 1
  %350 = load i32, i32* %349, align 8
  %351 = load i32, i32* @WFL_FIRERELEASED, align 4
  %352 = and i32 %350, %351
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %367

354:                                              ; preds = %348
  %355 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %356 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %355, i32 0, i32 9
  %357 = load i32, i32* %356, align 8
  %358 = load i32, i32* @BFL_ATTACKED, align 4
  %359 = and i32 %357, %358
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %366

361:                                              ; preds = %354
  %362 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %363 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %362, i32 0, i32 10
  %364 = load i32, i32* %363, align 4
  %365 = call i32 @trap_EA_Attack(i32 %364)
  br label %366

366:                                              ; preds = %361, %354
  br label %372

367:                                              ; preds = %348
  %368 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %369 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %368, i32 0, i32 10
  %370 = load i32, i32* %369, align 4
  %371 = call i32 @trap_EA_Attack(i32 %370)
  br label %372

372:                                              ; preds = %367, %366
  %373 = load i32, i32* @BFL_ATTACKED, align 4
  %374 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %375 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %374, i32 0, i32 9
  %376 = load i32, i32* %375, align 8
  %377 = xor i32 %376, %373
  store i32 %377, i32* %375, align 8
  br label %378

378:                                              ; preds = %372, %344, %303, %169, %146, %126, %69, %62, %53, %43
  ret void
}

declare dso_local i32 @BotEntityInfo(i32, %struct.TYPE_27__*) #1

declare dso_local float @trap_Characteristic_BFloat(i32, i32, i32, i32) #1

declare dso_local i32 @FloatTime(...) #1

declare dso_local float @random(...) #1

declare dso_local i32 @VectorSubtract(i32*, i32*, i32*) #1

declare dso_local i64 @VectorLengthSquared(i32*) #1

declare dso_local i64 @Square(i32) #1

declare dso_local i32 @vectoangles(i32*, i32*) #1

declare dso_local i32 @InFieldOfVision(i32, float, i32*) #1

declare dso_local i32 @BotAI_Trace(%struct.TYPE_25__*, i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @trap_BotGetWeaponInfo(i32, i64, %struct.TYPE_24__*) #1

declare dso_local i32 @VectorCopy(i32, i32*) #1

declare dso_local i32 @AngleVectors(i32, i32*, i32*, i32*) #1

declare dso_local i32 @VectorMA(i32*, i32, i32*, i32*) #1

declare dso_local i64 @BotSameTeam(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @trap_EA_Attack(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
