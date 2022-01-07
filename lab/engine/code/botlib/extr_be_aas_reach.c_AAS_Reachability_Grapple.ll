; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_reach.c_AAS_Reachability_Grapple.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_reach.c_AAS_Reachability_Grapple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32*, i32**, i32*, %struct.TYPE_21__*, %struct.TYPE_19__*, %struct.TYPE_18__*, %struct.TYPE_25__*, %struct.TYPE_26__* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_19__ = type { i32* }
%struct.TYPE_18__ = type { i64* }
%struct.TYPE_25__ = type { i32, i64, i64 }
%struct.TYPE_26__ = type { i64*, i64*, i32*, i32, i32 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_24__ = type { i32, i32, i32*, i32*, %struct.TYPE_24__*, i64, i32, i64 }
%struct.TYPE_22__ = type { i32, i32*, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_23__ = type { i32*, i32, i64 }

@qfalse = common dso_local global i32 0, align 4
@PRESENCE_NORMAL = common dso_local global i32 0, align 4
@aasworld = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@.str = private unnamed_addr constant [36 x i8] c"area %d center %f %f %f in solid?\0D\0A\00", align 1
@PRESENCE_CROUCH = common dso_local global i32 0, align 4
@CONTENTS_LAVA = common dso_local global i32 0, align 4
@CONTENTS_SLIME = common dso_local global i32 0, align 4
@CONTENTS_WATER = common dso_local global i32 0, align 4
@FACE_SOLID = common dso_local global i32 0, align 4
@M_PI = common dso_local global i32 0, align 4
@CONTENTS_SOLID = common dso_local global i32 0, align 4
@SURF_SKY = common dso_local global i32 0, align 4
@AREACONTENTS_SLIME = common dso_local global i32 0, align 4
@AREACONTENTS_LAVA = common dso_local global i32 0, align 4
@AREACONTENTS_CLUSTERPORTAL = common dso_local global i32 0, align 4
@TRAVEL_GRAPPLEHOOK = common dso_local global i32 0, align 4
@aassettings = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@areareachability = common dso_local global %struct.TYPE_24__** null, align 8
@reach_grapple = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AAS_Reachability_Grapple(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [20 x i32], align 16
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca %struct.TYPE_22__, align 8
  %16 = alloca %struct.TYPE_23__, align 8
  %17 = alloca %struct.TYPE_25__*, align 8
  %18 = alloca %struct.TYPE_26__*, align 8
  %19 = alloca %struct.TYPE_26__*, align 8
  %20 = alloca %struct.TYPE_24__*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca %struct.TYPE_23__, align 8
  %29 = alloca %struct.TYPE_22__, align 8
  %30 = alloca %struct.TYPE_23__, align 8
  %31 = alloca %struct.TYPE_23__, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* null, i32** %21, align 8
  store i32* null, i32** %26, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @AAS_AreaGrounded(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %2
  %36 = load i32, i32* %4, align 4
  %37 = call i64 @AAS_AreaSwim(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* @qfalse, align 4
  store i32 %40, i32* %3, align 4
  br label %480

41:                                               ; preds = %35, %2
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @AAS_AreaPresenceType(i32 %42)
  %44 = load i32, i32* @PRESENCE_NORMAL, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %41
  %48 = load i32, i32* @qfalse, align 4
  store i32 %48, i32* %3, align 4
  br label %480

49:                                               ; preds = %41
  %50 = load i32, i32* %4, align 4
  %51 = call i64 @AAS_AreaSwim(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i32, i32* @qfalse, align 4
  store i32 %54, i32* %3, align 4
  br label %480

55:                                               ; preds = %49
  %56 = load %struct.TYPE_26__*, %struct.TYPE_26__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @aasworld, i32 0, i32 7), align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %56, i64 %58
  store %struct.TYPE_26__* %59, %struct.TYPE_26__** %18, align 8
  %60 = load %struct.TYPE_26__*, %struct.TYPE_26__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @aasworld, i32 0, i32 7), align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %60, i64 %62
  store %struct.TYPE_26__* %63, %struct.TYPE_26__** %19, align 8
  %64 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %65 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %64, i32 0, i32 0
  %66 = load i64*, i64** %65, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 2
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %70 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %69, i32 0, i32 1
  %71 = load i64*, i64** %70, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp slt i64 %68, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %55
  %76 = load i32, i32* @qfalse, align 4
  store i32 %76, i32* %3, align 4
  br label %480

77:                                               ; preds = %55
  %78 = load %struct.TYPE_26__*, %struct.TYPE_26__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @aasworld, i32 0, i32 7), align 8
  %79 = load i32, i32* %4, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = load i32*, i32** %23, align 8
  %85 = call i32 @VectorCopy(i32* %83, i32* %84)
  %86 = load i32, i32* %4, align 4
  %87 = call i64 @AAS_AreaSwim(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %128, label %89

89:                                               ; preds = %77
  %90 = load i32*, i32** %23, align 8
  %91 = call i32 @AAS_PointAreaNum(i32* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %105, label %93

93:                                               ; preds = %89
  %94 = load i32, i32* %4, align 4
  %95 = load i32*, i32** %23, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32*, i32** %23, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32*, i32** %23, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 2
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @Log_Write(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %94, i32 %97, i32 %100, i32 %103)
  br label %105

105:                                              ; preds = %93, %89
  %106 = load i32*, i32** %23, align 8
  %107 = load i32*, i32** %24, align 8
  %108 = call i32 @VectorCopy(i32* %106, i32* %107)
  %109 = load i32*, i32** %24, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 2
  %111 = load i32, i32* %110, align 4
  %112 = sub nsw i32 %111, 1000
  store i32 %112, i32* %110, align 4
  %113 = load i32*, i32** %23, align 8
  %114 = load i32*, i32** %24, align 8
  %115 = load i32, i32* @PRESENCE_CROUCH, align 4
  call void @AAS_TraceClientBBox(%struct.TYPE_23__* sret %28, i32* %113, i32* %114, i32 %115, i32 -1)
  %116 = bitcast %struct.TYPE_23__* %16 to i8*
  %117 = bitcast %struct.TYPE_23__* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %116, i8* align 8 %117, i64 24, i1 false)
  %118 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %16, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %105
  %122 = load i32, i32* @qfalse, align 4
  store i32 %122, i32* %3, align 4
  br label %480

123:                                              ; preds = %105
  %124 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %16, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = load i32*, i32** %21, align 8
  %127 = call i32 @VectorCopy(i32* %125, i32* %126)
  br label %141

128:                                              ; preds = %77
  %129 = load i32*, i32** %23, align 8
  %130 = call i32 @AAS_PointContents(i32* %129)
  %131 = load i32, i32* @CONTENTS_LAVA, align 4
  %132 = load i32, i32* @CONTENTS_SLIME, align 4
  %133 = or i32 %131, %132
  %134 = load i32, i32* @CONTENTS_WATER, align 4
  %135 = or i32 %133, %134
  %136 = and i32 %130, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %140, label %138

138:                                              ; preds = %128
  %139 = load i32, i32* @qfalse, align 4
  store i32 %139, i32* %3, align 4
  br label %480

140:                                              ; preds = %128
  br label %141

141:                                              ; preds = %140, %123
  store i32 0, i32* %7, align 4
  br label %142

142:                                              ; preds = %475, %141
  %143 = load i32, i32* %7, align 4
  %144 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %145 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 8
  %147 = icmp slt i32 %143, %146
  br i1 %147, label %148, label %478

148:                                              ; preds = %142
  %149 = load i32*, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @aasworld, i32 0, i32 0), align 8
  %150 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %151 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %7, align 4
  %154 = add nsw i32 %152, %153
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %149, i64 %155
  %157 = load i32, i32* %156, align 4
  store i32 %157, i32* %6, align 4
  %158 = load %struct.TYPE_25__*, %struct.TYPE_25__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @aasworld, i32 0, i32 6), align 8
  %159 = load i32, i32* %6, align 4
  %160 = call i64 @abs(i32 %159)
  %161 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %158, i64 %160
  store %struct.TYPE_25__* %161, %struct.TYPE_25__** %17, align 8
  %162 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %163 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @FACE_SOLID, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %169, label %168

168:                                              ; preds = %148
  br label %475

169:                                              ; preds = %148
  %170 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @aasworld, i32 0, i32 1), align 8
  %171 = load %struct.TYPE_18__*, %struct.TYPE_18__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @aasworld, i32 0, i32 5), align 8
  %172 = load i32*, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @aasworld, i32 0, i32 2), align 8
  %173 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %174 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = getelementptr inbounds i32, i32* %172, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = call i64 @abs(i32 %177)
  %179 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %171, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %179, i32 0, i32 0
  %181 = load i64*, i64** %180, align 8
  %182 = getelementptr inbounds i64, i64* %181, i64 0
  %183 = load i64, i64* %182, align 8
  %184 = getelementptr inbounds i32*, i32** %170, i64 %183
  %185 = load i32*, i32** %184, align 8
  store i32* %185, i32** %27, align 8
  %186 = load i32*, i32** %27, align 8
  %187 = load i32*, i32** %21, align 8
  %188 = load i32*, i32** %25, align 8
  %189 = call i32 @VectorSubtract(i32* %186, i32* %187, i32* %188)
  %190 = load %struct.TYPE_19__*, %struct.TYPE_19__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @aasworld, i32 0, i32 4), align 8
  %191 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %192 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %191, i32 0, i32 2
  %193 = load i64, i64* %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %190, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %194, i32 0, i32 0
  %196 = load i32*, i32** %195, align 8
  %197 = load i32*, i32** %25, align 8
  %198 = call i64 @DotProduct(i32* %196, i32* %197)
  %199 = icmp sgt i64 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %169
  br label %475

201:                                              ; preds = %169
  %202 = load i32, i32* %6, align 4
  %203 = load i32*, i32** %22, align 8
  %204 = call i32 @AAS_FaceCenter(i32 %202, i32* %203)
  %205 = load i32*, i32** %22, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 2
  %207 = load i32, i32* %206, align 4
  %208 = load i32*, i32** %21, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 2
  %210 = load i32, i32* %209, align 4
  %211 = add nsw i32 %210, 64
  %212 = icmp slt i32 %207, %211
  br i1 %212, label %213, label %214

213:                                              ; preds = %201
  br label %475

214:                                              ; preds = %201
  %215 = load %struct.TYPE_19__*, %struct.TYPE_19__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @aasworld, i32 0, i32 4), align 8
  %216 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %217 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %216, i32 0, i32 2
  %218 = load i64, i64* %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %215, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %219, i32 0, i32 0
  %221 = load i32*, i32** %220, align 8
  %222 = load i32*, i32** %26, align 8
  %223 = call i64 @DotProduct(i32* %221, i32* %222)
  %224 = icmp slt i64 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %214
  br label %475

226:                                              ; preds = %214
  %227 = load i32*, i32** %22, align 8
  %228 = load i32*, i32** %21, align 8
  %229 = load i32*, i32** %25, align 8
  %230 = call i32 @VectorSubtract(i32* %227, i32* %228, i32* %229)
  %231 = load i32*, i32** %25, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 2
  %233 = load i32, i32* %232, align 4
  %234 = sitofp i32 %233 to float
  store float %234, float* %13, align 4
  %235 = load i32*, i32** %25, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 2
  store i32 0, i32* %236, align 4
  %237 = load i32*, i32** %25, align 8
  %238 = call double @VectorLength(i32* %237)
  %239 = fptrunc double %238 to float
  store float %239, float* %14, align 4
  %240 = load float, float* %14, align 4
  %241 = fcmp une float %240, 0.000000e+00
  br i1 %241, label %243, label %242

242:                                              ; preds = %226
  br label %475

243:                                              ; preds = %226
  %244 = load float, float* %14, align 4
  %245 = fcmp ogt float %244, 2.000000e+03
  br i1 %245, label %246, label %247

246:                                              ; preds = %243
  br label %475

247:                                              ; preds = %243
  store float 1.500000e+01, float* %12, align 4
  %248 = load float, float* %13, align 4
  %249 = load float, float* %14, align 4
  %250 = fdiv float %248, %249
  %251 = load i32, i32* @M_PI, align 4
  %252 = mul nsw i32 2, %251
  %253 = sitofp i32 %252 to float
  %254 = load float, float* %12, align 4
  %255 = fmul float %253, %254
  %256 = fdiv float %255, 3.600000e+02
  %257 = fptosi float %256 to i32
  %258 = call float @tan(i32 %257)
  %259 = fcmp olt float %250, %258
  br i1 %259, label %260, label %261

260:                                              ; preds = %247
  br label %475

261:                                              ; preds = %247
  %262 = load i32*, i32** %22, align 8
  %263 = load i32*, i32** %23, align 8
  %264 = call i32 @VectorCopy(i32* %262, i32* %263)
  %265 = load i32*, i32** %22, align 8
  %266 = load %struct.TYPE_19__*, %struct.TYPE_19__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @aasworld, i32 0, i32 4), align 8
  %267 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %268 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %267, i32 0, i32 2
  %269 = load i64, i64* %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %266, i64 %269
  %271 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %270, i32 0, i32 0
  %272 = load i32*, i32** %271, align 8
  %273 = load i32*, i32** %24, align 8
  %274 = call i32 @VectorMA(i32* %265, i32 -500, i32* %272, i32* %273)
  %275 = load i32*, i32** %23, align 8
  %276 = load i32*, i32** %24, align 8
  %277 = load i32, i32* @CONTENTS_SOLID, align 4
  call void @AAS_Trace(%struct.TYPE_22__* sret %29, i32* %275, i32* null, i32* null, i32* %276, i32 0, i32 %277)
  %278 = bitcast %struct.TYPE_22__* %15 to i8*
  %279 = bitcast %struct.TYPE_22__* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %278, i8* align 8 %279, i64 24, i1 false)
  %280 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 2
  %281 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = load i32, i32* @SURF_SKY, align 4
  %284 = and i32 %282, %283
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %291, label %286

286:                                              ; preds = %261
  %287 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = mul nsw i32 %288, 500
  %290 = icmp sgt i32 %289, 32
  br i1 %290, label %291, label %292

291:                                              ; preds = %286, %261
  br label %475

292:                                              ; preds = %286
  %293 = load i32*, i32** %22, align 8
  %294 = load i32*, i32** %21, align 8
  %295 = load i32*, i32** %25, align 8
  %296 = call i32 @VectorSubtract(i32* %293, i32* %294, i32* %295)
  %297 = load i32*, i32** %25, align 8
  %298 = call i32 @VectorNormalize(i32* %297)
  %299 = load i32*, i32** %21, align 8
  %300 = load i32*, i32** %25, align 8
  %301 = load i32*, i32** %23, align 8
  %302 = call i32 @VectorMA(i32* %299, i32 4, i32* %300, i32* %301)
  %303 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 1
  %304 = load i32*, i32** %303, align 8
  %305 = load i32*, i32** %24, align 8
  %306 = call i32 @VectorCopy(i32* %304, i32* %305)
  %307 = load i32*, i32** %23, align 8
  %308 = load i32*, i32** %24, align 8
  %309 = load i32, i32* @PRESENCE_NORMAL, align 4
  call void @AAS_TraceClientBBox(%struct.TYPE_23__* sret %30, i32* %307, i32* %308, i32 %309, i32 -1)
  %310 = bitcast %struct.TYPE_23__* %16 to i8*
  %311 = bitcast %struct.TYPE_23__* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %310, i8* align 8 %311, i64 24, i1 false)
  %312 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %16, i32 0, i32 0
  %313 = load i32*, i32** %312, align 8
  %314 = load i32*, i32** %22, align 8
  %315 = load i32*, i32** %25, align 8
  %316 = call i32 @VectorSubtract(i32* %313, i32* %314, i32* %315)
  %317 = load i32*, i32** %25, align 8
  %318 = call double @VectorLength(i32* %317)
  %319 = fcmp ogt double %318, 2.400000e+01
  br i1 %319, label %320, label %321

320:                                              ; preds = %292
  br label %475

321:                                              ; preds = %292
  %322 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %16, i32 0, i32 0
  %323 = load i32*, i32** %322, align 8
  %324 = load i32*, i32** %23, align 8
  %325 = call i32 @VectorCopy(i32* %323, i32* %324)
  %326 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %16, i32 0, i32 0
  %327 = load i32*, i32** %326, align 8
  %328 = load i32*, i32** %24, align 8
  %329 = call i32 @VectorCopy(i32* %327, i32* %328)
  %330 = call i64 (...) @AAS_FallDamageDistance()
  %331 = load i32*, i32** %24, align 8
  %332 = getelementptr inbounds i32, i32* %331, i64 2
  %333 = load i32, i32* %332, align 4
  %334 = sext i32 %333 to i64
  %335 = sub nsw i64 %334, %330
  %336 = trunc i64 %335 to i32
  store i32 %336, i32* %332, align 4
  %337 = load i32*, i32** %23, align 8
  %338 = load i32*, i32** %24, align 8
  %339 = load i32, i32* @PRESENCE_NORMAL, align 4
  call void @AAS_TraceClientBBox(%struct.TYPE_23__* sret %31, i32* %337, i32* %338, i32 %339, i32 -1)
  %340 = bitcast %struct.TYPE_23__* %16 to i8*
  %341 = bitcast %struct.TYPE_23__* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %340, i8* align 8 %341, i64 24, i1 false)
  %342 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %16, i32 0, i32 1
  %343 = load i32, i32* %342, align 8
  %344 = icmp sge i32 %343, 1
  br i1 %344, label %345, label %346

345:                                              ; preds = %321
  br label %475

346:                                              ; preds = %321
  %347 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %16, i32 0, i32 0
  %348 = load i32*, i32** %347, align 8
  %349 = call i32 @AAS_PointAreaNum(i32* %348)
  store i32 %349, i32* %9, align 4
  %350 = load %struct.TYPE_21__*, %struct.TYPE_21__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @aasworld, i32 0, i32 3), align 8
  %351 = load i32, i32* %9, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %350, i64 %352
  %354 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 4
  %356 = load i32, i32* @AREACONTENTS_SLIME, align 4
  %357 = load i32, i32* @AREACONTENTS_LAVA, align 4
  %358 = or i32 %356, %357
  %359 = and i32 %355, %358
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %362

361:                                              ; preds = %346
  br label %475

362:                                              ; preds = %346
  %363 = load i32, i32* %9, align 4
  %364 = load i32, i32* %4, align 4
  %365 = icmp eq i32 %363, %364
  br i1 %365, label %366, label %367

366:                                              ; preds = %362
  br label %475

367:                                              ; preds = %362
  %368 = load i32, i32* %4, align 4
  %369 = load i32, i32* %9, align 4
  %370 = call i64 @AAS_ReachabilityExists(i32 %368, i32 %369)
  %371 = icmp ne i64 %370, 0
  br i1 %371, label %372, label %373

372:                                              ; preds = %367
  br label %475

373:                                              ; preds = %367
  %374 = load i32, i32* %9, align 4
  %375 = call i32 @AAS_AreaGrounded(i32 %374)
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %378, label %377

377:                                              ; preds = %373
  br label %475

378:                                              ; preds = %373
  %379 = load i32*, i32** %21, align 8
  %380 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 1
  %381 = load i32*, i32** %380, align 8
  %382 = getelementptr inbounds [20 x i32], [20 x i32]* %11, i64 0, i64 0
  %383 = call i32 @AAS_TraceAreas(i32* %379, i32* %381, i32* %382, i32* null, i32 20)
  store i32 %383, i32* %10, align 4
  %384 = load i32, i32* %10, align 4
  %385 = icmp sge i32 %384, 20
  br i1 %385, label %386, label %387

386:                                              ; preds = %378
  br label %475

387:                                              ; preds = %378
  store i32 0, i32* %8, align 4
  br label %388

388:                                              ; preds = %407, %387
  %389 = load i32, i32* %8, align 4
  %390 = load i32, i32* %10, align 4
  %391 = icmp slt i32 %389, %390
  br i1 %391, label %392, label %410

392:                                              ; preds = %388
  %393 = load %struct.TYPE_21__*, %struct.TYPE_21__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @aasworld, i32 0, i32 3), align 8
  %394 = load i32, i32* %8, align 4
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds [20 x i32], [20 x i32]* %11, i64 0, i64 %395
  %397 = load i32, i32* %396, align 4
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %393, i64 %398
  %400 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %399, i32 0, i32 0
  %401 = load i32, i32* %400, align 4
  %402 = load i32, i32* @AREACONTENTS_CLUSTERPORTAL, align 4
  %403 = and i32 %401, %402
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %405, label %406

405:                                              ; preds = %392
  br label %410

406:                                              ; preds = %392
  br label %407

407:                                              ; preds = %406
  %408 = load i32, i32* %8, align 4
  %409 = add nsw i32 %408, 1
  store i32 %409, i32* %8, align 4
  br label %388

410:                                              ; preds = %405, %388
  %411 = load i32, i32* %8, align 4
  %412 = load i32, i32* %10, align 4
  %413 = icmp slt i32 %411, %412
  br i1 %413, label %414, label %415

414:                                              ; preds = %410
  br label %475

415:                                              ; preds = %410
  %416 = call %struct.TYPE_24__* (...) @AAS_AllocReachability()
  store %struct.TYPE_24__* %416, %struct.TYPE_24__** %20, align 8
  %417 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %418 = icmp ne %struct.TYPE_24__* %417, null
  br i1 %418, label %421, label %419

419:                                              ; preds = %415
  %420 = load i32, i32* @qfalse, align 4
  store i32 %420, i32* %3, align 4
  br label %480

421:                                              ; preds = %415
  %422 = load i32, i32* %9, align 4
  %423 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %424 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %423, i32 0, i32 0
  store i32 %422, i32* %424, align 8
  %425 = load i32, i32* %6, align 4
  %426 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %427 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %426, i32 0, i32 1
  store i32 %425, i32* %427, align 4
  %428 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %429 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %428, i32 0, i32 7
  store i64 0, i64* %429, align 8
  %430 = load i32*, i32** %21, align 8
  %431 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %432 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %431, i32 0, i32 2
  %433 = load i32*, i32** %432, align 8
  %434 = call i32 @VectorCopy(i32* %430, i32* %433)
  %435 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 1
  %436 = load i32*, i32** %435, align 8
  %437 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %438 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %437, i32 0, i32 3
  %439 = load i32*, i32** %438, align 8
  %440 = call i32 @VectorCopy(i32* %436, i32* %439)
  %441 = load i32, i32* @TRAVEL_GRAPPLEHOOK, align 4
  %442 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %443 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %442, i32 0, i32 6
  store i32 %441, i32* %443, align 8
  %444 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %445 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %444, i32 0, i32 3
  %446 = load i32*, i32** %445, align 8
  %447 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %448 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %447, i32 0, i32 2
  %449 = load i32*, i32** %448, align 8
  %450 = load i32*, i32** %25, align 8
  %451 = call i32 @VectorSubtract(i32* %446, i32* %449, i32* %450)
  %452 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @aassettings, i32 0, i32 0), align 8
  %453 = sitofp i64 %452 to double
  %454 = load i32*, i32** %25, align 8
  %455 = call double @VectorLength(i32* %454)
  %456 = fmul double %455, 2.500000e-01
  %457 = fadd double %453, %456
  %458 = fptosi double %457 to i64
  %459 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %460 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %459, i32 0, i32 5
  store i64 %458, i64* %460, align 8
  %461 = load %struct.TYPE_24__**, %struct.TYPE_24__*** @areareachability, align 8
  %462 = load i32, i32* %4, align 4
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %461, i64 %463
  %465 = load %struct.TYPE_24__*, %struct.TYPE_24__** %464, align 8
  %466 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %467 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %466, i32 0, i32 4
  store %struct.TYPE_24__* %465, %struct.TYPE_24__** %467, align 8
  %468 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %469 = load %struct.TYPE_24__**, %struct.TYPE_24__*** @areareachability, align 8
  %470 = load i32, i32* %4, align 4
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %469, i64 %471
  store %struct.TYPE_24__* %468, %struct.TYPE_24__** %472, align 8
  %473 = load i32, i32* @reach_grapple, align 4
  %474 = add nsw i32 %473, 1
  store i32 %474, i32* @reach_grapple, align 4
  br label %475

475:                                              ; preds = %421, %414, %386, %377, %372, %366, %361, %345, %320, %291, %260, %246, %242, %225, %213, %200, %168
  %476 = load i32, i32* %7, align 4
  %477 = add nsw i32 %476, 1
  store i32 %477, i32* %7, align 4
  br label %142

478:                                              ; preds = %142
  %479 = load i32, i32* @qfalse, align 4
  store i32 %479, i32* %3, align 4
  br label %480

480:                                              ; preds = %478, %419, %138, %121, %75, %53, %47, %39
  %481 = load i32, i32* %3, align 4
  ret i32 %481
}

declare dso_local i32 @AAS_AreaGrounded(i32) #1

declare dso_local i64 @AAS_AreaSwim(i32) #1

declare dso_local i32 @AAS_AreaPresenceType(i32) #1

declare dso_local i32 @VectorCopy(i32*, i32*) #1

declare dso_local i32 @AAS_PointAreaNum(i32*) #1

declare dso_local i32 @Log_Write(i8*, i32, i32, i32, i32) #1

declare dso_local void @AAS_TraceClientBBox(%struct.TYPE_23__* sret, i32*, i32*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @AAS_PointContents(i32*) #1

declare dso_local i64 @abs(i32) #1

declare dso_local i32 @VectorSubtract(i32*, i32*, i32*) #1

declare dso_local i64 @DotProduct(i32*, i32*) #1

declare dso_local i32 @AAS_FaceCenter(i32, i32*) #1

declare dso_local double @VectorLength(i32*) #1

declare dso_local float @tan(i32) #1

declare dso_local i32 @VectorMA(i32*, i32, i32*, i32*) #1

declare dso_local void @AAS_Trace(%struct.TYPE_22__* sret, i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @VectorNormalize(i32*) #1

declare dso_local i64 @AAS_FallDamageDistance(...) #1

declare dso_local i64 @AAS_ReachabilityExists(i32, i32) #1

declare dso_local i32 @AAS_TraceAreas(i32*, i32*, i32*, i32*, i32) #1

declare dso_local %struct.TYPE_24__* @AAS_AllocReachability(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
