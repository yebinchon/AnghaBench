; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_reach.c_AAS_Reachability_WeaponJump.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_reach.c_AAS_Reachability_WeaponJump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32*, %struct.TYPE_16__*, %struct.TYPE_18__*, %struct.TYPE_13__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_18__ = type { i64*, i64*, i32*, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32*, i32*, %struct.TYPE_15__*, i32, i32, i64, i64 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32*, i64 }

@qfalse = common dso_local global i32 0, align 4
@aasworld = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@AREA_WEAPONJUMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"area %d center %f %f %f in solid?\0D\0A\00", align 1
@PRESENCE_CROUCH = common dso_local global i32 0, align 4
@FACE_GROUND = common dso_local global i32 0, align 4
@PRESENCE_NORMAL = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@SE_ENTERWATER = common dso_local global i32 0, align 4
@SE_ENTERSLIME = common dso_local global i32 0, align 4
@SE_ENTERLAVA = common dso_local global i32 0, align 4
@SE_HITGROUNDDAMAGE = common dso_local global i32 0, align 4
@SE_TOUCHJUMPPAD = common dso_local global i32 0, align 4
@SE_HITGROUND = common dso_local global i32 0, align 4
@SE_HITGROUNDAREA = common dso_local global i32 0, align 4
@TRAVEL_BFGJUMP = common dso_local global i32 0, align 4
@aassettings = common dso_local global %struct.TYPE_20__ zeroinitializer, align 4
@TRAVEL_ROCKETJUMP = common dso_local global i32 0, align 4
@areareachability = common dso_local global %struct.TYPE_15__** null, align 8
@reach_rocketjump = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AAS_Reachability_WeaponJump(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca %struct.TYPE_16__*, align 8
  %14 = alloca %struct.TYPE_18__*, align 8
  %15 = alloca %struct.TYPE_18__*, align 8
  %16 = alloca %struct.TYPE_15__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca %struct.TYPE_17__, align 4
  %25 = alloca %struct.TYPE_14__, align 8
  %26 = alloca %struct.TYPE_14__, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %27 = load i32, i32* @qfalse, align 4
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @AAS_AreaGrounded(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %2
  %32 = load i32, i32* %4, align 4
  %33 = call i64 @AAS_AreaSwim(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31, %2
  %36 = load i32, i32* @qfalse, align 4
  store i32 %36, i32* %3, align 4
  br label %316

37:                                               ; preds = %31
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @AAS_AreaGrounded(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* @qfalse, align 4
  store i32 %42, i32* %3, align 4
  br label %316

43:                                               ; preds = %37
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @aasworld, i32 0, i32 3), align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @AREA_WEAPONJUMP, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %43
  %54 = load i32, i32* @qfalse, align 4
  store i32 %54, i32* %3, align 4
  br label %316

55:                                               ; preds = %43
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @aasworld, i32 0, i32 2), align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i64 %58
  store %struct.TYPE_18__* %59, %struct.TYPE_18__** %14, align 8
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @aasworld, i32 0, i32 2), align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i64 %62
  store %struct.TYPE_18__* %63, %struct.TYPE_18__** %15, align 8
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 0
  %66 = load i64*, i64** %65, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 2
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 1
  %71 = load i64*, i64** %70, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp slt i64 %68, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %55
  %76 = load i32, i32* @qfalse, align 4
  store i32 %76, i32* %3, align 4
  br label %316

77:                                               ; preds = %55
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @aasworld, i32 0, i32 2), align 8
  %79 = load i32, i32* %4, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = load i32*, i32** %19, align 8
  %85 = call i32 @VectorCopy(i32* %83, i32* %84)
  %86 = load i32*, i32** %19, align 8
  %87 = call i32 @AAS_PointAreaNum(i32* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %101, label %89

89:                                               ; preds = %77
  %90 = load i32, i32* %4, align 4
  %91 = load i32*, i32** %19, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32*, i32** %19, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32*, i32** %19, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 2
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @Log_Write(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %90, i32 %93, i32 %96, i32 %99)
  br label %101

101:                                              ; preds = %89, %77
  %102 = load i32*, i32** %19, align 8
  %103 = load i32*, i32** %20, align 8
  %104 = call i32 @VectorCopy(i32* %102, i32* %103)
  %105 = load i32*, i32** %20, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 2
  %107 = load i32, i32* %106, align 4
  %108 = sub nsw i32 %107, 1000
  store i32 %108, i32* %106, align 4
  %109 = load i32*, i32** %19, align 8
  %110 = load i32*, i32** %20, align 8
  %111 = load i32, i32* @PRESENCE_CROUCH, align 4
  %112 = call { i32*, i64 } @AAS_TraceClientBBox(i32* %109, i32* %110, i32 %111, i32 -1)
  %113 = bitcast %struct.TYPE_14__* %26 to { i32*, i64 }*
  %114 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %113, i32 0, i32 0
  %115 = extractvalue { i32*, i64 } %112, 0
  store i32* %115, i32** %114, align 8
  %116 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %113, i32 0, i32 1
  %117 = extractvalue { i32*, i64 } %112, 1
  store i64 %117, i64* %116, align 8
  %118 = bitcast %struct.TYPE_14__* %25 to i8*
  %119 = bitcast %struct.TYPE_14__* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %118, i8* align 8 %119, i64 16, i1 false)
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %101
  %124 = load i32, i32* @qfalse, align 4
  store i32 %124, i32* %3, align 4
  br label %316

125:                                              ; preds = %101
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = load i32*, i32** %17, align 8
  %129 = call i32 @VectorCopy(i32* %127, i32* %128)
  store i32 0, i32* %7, align 4
  br label %130

130:                                              ; preds = %311, %125
  %131 = load i32, i32* %7, align 4
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 8
  %135 = icmp slt i32 %131, %134
  br i1 %135, label %136, label %314

136:                                              ; preds = %130
  %137 = load i32*, i32** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @aasworld, i32 0, i32 0), align 8
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %7, align 4
  %142 = add nsw i32 %140, %141
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %137, i64 %143
  %145 = load i32, i32* %144, align 4
  store i32 %145, i32* %6, align 4
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @aasworld, i32 0, i32 1), align 8
  %147 = load i32, i32* %6, align 4
  %148 = call i64 @abs(i32 %147)
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i64 %148
  store %struct.TYPE_16__* %149, %struct.TYPE_16__** %13, align 8
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @FACE_GROUND, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %157, label %156

156:                                              ; preds = %136
  br label %311

157:                                              ; preds = %136
  %158 = load i32, i32* %6, align 4
  %159 = load i32*, i32** %18, align 8
  %160 = call i32 @AAS_FaceCenter(i32 %158, i32* %159)
  %161 = load i32*, i32** %18, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 2
  %163 = load i32, i32* %162, align 4
  %164 = load i32*, i32** %17, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 2
  %166 = load i32, i32* %165, align 4
  %167 = add nsw i32 %166, 64
  %168 = icmp slt i32 %163, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %157
  br label %311

170:                                              ; preds = %157
  store i32 0, i32* %8, align 4
  br label %171

171:                                              ; preds = %307, %170
  %172 = load i32, i32* %8, align 4
  %173 = icmp slt i32 %172, 1
  br i1 %173, label %174, label %310

174:                                              ; preds = %171
  %175 = load i32, i32* %8, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %174
  %178 = load i32*, i32** %17, align 8
  %179 = call float @AAS_BFGJumpZVelocity(i32* %178)
  store float %179, float* %12, align 4
  br label %183

180:                                              ; preds = %174
  %181 = load i32*, i32** %17, align 8
  %182 = call float @AAS_RocketJumpZVelocity(i32* %181)
  store float %182, float* %12, align 4
  br label %183

183:                                              ; preds = %180, %177
  %184 = load float, float* %12, align 4
  %185 = load i32*, i32** %17, align 8
  %186 = load i32*, i32** %18, align 8
  %187 = call i32 @AAS_HorizontalVelocityForJump(float %184, i32* %185, i32* %186, float* %11)
  store i32 %187, i32* %9, align 4
  %188 = load i32, i32* %9, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %306

190:                                              ; preds = %183
  %191 = load float, float* %11, align 4
  %192 = fcmp olt float %191, 3.000000e+02
  br i1 %192, label %193, label %306

193:                                              ; preds = %190
  %194 = load i32*, i32** %18, align 8
  %195 = load i32*, i32** %17, align 8
  %196 = load i32*, i32** %21, align 8
  %197 = call i32 @VectorSubtract(i32* %194, i32* %195, i32* %196)
  %198 = load i32*, i32** %21, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 2
  store i32 0, i32* %199, align 4
  %200 = load i32*, i32** %21, align 8
  %201 = load float, float* %11, align 4
  %202 = load i32*, i32** %22, align 8
  %203 = call i32 @VectorScale(i32* %200, float %201, i32* %202)
  %204 = load i32*, i32** %23, align 8
  %205 = load float, float* %12, align 4
  %206 = call i32 @VectorSet(i32* %204, i32 0, i32 0, float %205)
  %207 = load i32*, i32** %17, align 8
  %208 = load i32, i32* @PRESENCE_NORMAL, align 4
  %209 = load i32, i32* @qtrue, align 4
  %210 = load i32*, i32** %23, align 8
  %211 = load i32*, i32** %22, align 8
  %212 = load i32, i32* @SE_ENTERWATER, align 4
  %213 = load i32, i32* @SE_ENTERSLIME, align 4
  %214 = or i32 %212, %213
  %215 = load i32, i32* @SE_ENTERLAVA, align 4
  %216 = or i32 %214, %215
  %217 = load i32, i32* @SE_HITGROUNDDAMAGE, align 4
  %218 = or i32 %216, %217
  %219 = load i32, i32* @SE_TOUCHJUMPPAD, align 4
  %220 = or i32 %218, %219
  %221 = load i32, i32* @SE_HITGROUND, align 4
  %222 = or i32 %220, %221
  %223 = load i32, i32* @SE_HITGROUNDAREA, align 4
  %224 = or i32 %222, %223
  %225 = load i32, i32* %5, align 4
  %226 = load i32, i32* %10, align 4
  %227 = call i32 @AAS_PredictClientMovement(%struct.TYPE_17__* %24, i32 -1, i32* %207, i32 %208, i32 %209, i32* %210, i32* %211, i32 30, i32 30, float 0x3FB99999A0000000, i32 %224, i32 %225, i32 %226)
  %228 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = icmp slt i32 %229, 30
  br i1 %230, label %231, label %305

231:                                              ; preds = %193
  %232 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* @SE_ENTERSLIME, align 4
  %235 = load i32, i32* @SE_ENTERLAVA, align 4
  %236 = or i32 %234, %235
  %237 = load i32, i32* @SE_HITGROUNDDAMAGE, align 4
  %238 = or i32 %236, %237
  %239 = and i32 %233, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %305, label %241

241:                                              ; preds = %231
  %242 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* @SE_HITGROUNDAREA, align 4
  %245 = load i32, i32* @SE_TOUCHJUMPPAD, align 4
  %246 = or i32 %244, %245
  %247 = and i32 %243, %246
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %305

249:                                              ; preds = %241
  %250 = call %struct.TYPE_15__* (...) @AAS_AllocReachability()
  store %struct.TYPE_15__* %250, %struct.TYPE_15__** %16, align 8
  %251 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %252 = icmp ne %struct.TYPE_15__* %251, null
  br i1 %252, label %255, label %253

253:                                              ; preds = %249
  %254 = load i32, i32* @qfalse, align 4
  store i32 %254, i32* %3, align 4
  br label %316

255:                                              ; preds = %249
  %256 = load i32, i32* %5, align 4
  %257 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %258 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %257, i32 0, i32 0
  store i32 %256, i32* %258, align 8
  %259 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %260 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %259, i32 0, i32 7
  store i64 0, i64* %260, align 8
  %261 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %262 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %261, i32 0, i32 6
  store i64 0, i64* %262, align 8
  %263 = load i32*, i32** %17, align 8
  %264 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %265 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %264, i32 0, i32 1
  %266 = load i32*, i32** %265, align 8
  %267 = call i32 @VectorCopy(i32* %263, i32* %266)
  %268 = load i32*, i32** %18, align 8
  %269 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %270 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %269, i32 0, i32 2
  %271 = load i32*, i32** %270, align 8
  %272 = call i32 @VectorCopy(i32* %268, i32* %271)
  %273 = load i32, i32* %8, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %282

275:                                              ; preds = %255
  %276 = load i32, i32* @TRAVEL_BFGJUMP, align 4
  %277 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %278 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %277, i32 0, i32 5
  store i32 %276, i32* %278, align 4
  %279 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @aassettings, i32 0, i32 1), align 4
  %280 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %281 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %280, i32 0, i32 4
  store i32 %279, i32* %281, align 8
  br label %289

282:                                              ; preds = %255
  %283 = load i32, i32* @TRAVEL_ROCKETJUMP, align 4
  %284 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %285 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %284, i32 0, i32 5
  store i32 %283, i32* %285, align 4
  %286 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @aassettings, i32 0, i32 0), align 4
  %287 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %288 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %287, i32 0, i32 4
  store i32 %286, i32* %288, align 8
  br label %289

289:                                              ; preds = %282, %275
  %290 = load %struct.TYPE_15__**, %struct.TYPE_15__*** @areareachability, align 8
  %291 = load i32, i32* %4, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %290, i64 %292
  %294 = load %struct.TYPE_15__*, %struct.TYPE_15__** %293, align 8
  %295 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %296 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %295, i32 0, i32 3
  store %struct.TYPE_15__* %294, %struct.TYPE_15__** %296, align 8
  %297 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %298 = load %struct.TYPE_15__**, %struct.TYPE_15__*** @areareachability, align 8
  %299 = load i32, i32* %4, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %298, i64 %300
  store %struct.TYPE_15__* %297, %struct.TYPE_15__** %301, align 8
  %302 = load i32, i32* @reach_rocketjump, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* @reach_rocketjump, align 4
  %304 = load i32, i32* @qtrue, align 4
  store i32 %304, i32* %3, align 4
  br label %316

305:                                              ; preds = %241, %231, %193
  br label %306

306:                                              ; preds = %305, %190, %183
  br label %307

307:                                              ; preds = %306
  %308 = load i32, i32* %8, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %8, align 4
  br label %171

310:                                              ; preds = %171
  br label %311

311:                                              ; preds = %310, %169, %156
  %312 = load i32, i32* %7, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %7, align 4
  br label %130

314:                                              ; preds = %130
  %315 = load i32, i32* @qfalse, align 4
  store i32 %315, i32* %3, align 4
  br label %316

316:                                              ; preds = %314, %289, %253, %123, %75, %53, %41, %35
  %317 = load i32, i32* %3, align 4
  ret i32 %317
}

declare dso_local i32 @AAS_AreaGrounded(i32) #1

declare dso_local i64 @AAS_AreaSwim(i32) #1

declare dso_local i32 @VectorCopy(i32*, i32*) #1

declare dso_local i32 @AAS_PointAreaNum(i32*) #1

declare dso_local i32 @Log_Write(i8*, i32, i32, i32, i32) #1

declare dso_local { i32*, i64 } @AAS_TraceClientBBox(i32*, i32*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @abs(i32) #1

declare dso_local i32 @AAS_FaceCenter(i32, i32*) #1

declare dso_local float @AAS_BFGJumpZVelocity(i32*) #1

declare dso_local float @AAS_RocketJumpZVelocity(i32*) #1

declare dso_local i32 @AAS_HorizontalVelocityForJump(float, i32*, i32*, float*) #1

declare dso_local i32 @VectorSubtract(i32*, i32*, i32*) #1

declare dso_local i32 @VectorScale(i32*, float, i32*) #1

declare dso_local i32 @VectorSet(i32*, i32, i32, float) #1

declare dso_local i32 @AAS_PredictClientMovement(%struct.TYPE_17__*, i32, i32*, i32, i32, i32*, i32*, i32, i32, float, i32, i32, i32) #1

declare dso_local %struct.TYPE_15__* @AAS_AllocReachability(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
