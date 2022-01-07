; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_reach.c_AAS_Reachability_WalkOffLedge.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_reach.c_AAS_Reachability_WalkOffLedge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32*, i32*, %struct.TYPE_14__*, %struct.TYPE_16__*, i32**, %struct.TYPE_19__*, %struct.TYPE_18__*, %struct.TYPE_20__* }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_19__ = type { i64* }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, i64 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i64, i64, i64, i64, i64 }
%struct.TYPE_17__ = type { i32, i32, i32*, i32*, %struct.TYPE_17__*, i64, i32, i64 }
%struct.TYPE_15__ = type { i32*, i64 }

@aasworld = common dso_local global %struct.TYPE_21__ zeroinitializer, align 8
@FACE_GROUND = common dso_local global i32 0, align 4
@AREA_GROUNDED = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@FACE_SOLID = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@PRESENCE_CROUCH = common dso_local global i32 0, align 4
@AREACONTENTS_SLIME = common dso_local global i32 0, align 4
@AREACONTENTS_LAVA = common dso_local global i32 0, align 4
@aassettings = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@TRAVEL_WALKOFFLEDGE = common dso_local global i32 0, align 4
@areareachability = common dso_local global %struct.TYPE_17__** null, align 8
@reach_walkoffledge = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AAS_Reachability_WalkOffLedge(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [10 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_20__*, align 8
  %23 = alloca %struct.TYPE_20__*, align 8
  %24 = alloca %struct.TYPE_18__*, align 8
  %25 = alloca %struct.TYPE_18__*, align 8
  %26 = alloca %struct.TYPE_18__*, align 8
  %27 = alloca %struct.TYPE_19__*, align 8
  %28 = alloca %struct.TYPE_16__*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i32*, align 8
  %34 = alloca i32*, align 8
  %35 = alloca %struct.TYPE_17__*, align 8
  %36 = alloca %struct.TYPE_15__, align 8
  %37 = alloca %struct.TYPE_15__, align 8
  store i32 %0, i32* %2, align 4
  %38 = load i32, i32* %2, align 4
  %39 = call i32 @AAS_AreaGrounded(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %1
  %42 = load i32, i32* %2, align 4
  %43 = call i64 @AAS_AreaSwim(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41, %1
  br label %544

46:                                               ; preds = %41
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @aasworld, i32 0, i32 7), align 8
  %48 = load i32, i32* %2, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i64 %49
  store %struct.TYPE_20__* %50, %struct.TYPE_20__** %22, align 8
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %541, %46
  %52 = load i32, i32* %3, align 4
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %22, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %544

57:                                               ; preds = %51
  %58 = load i32*, i32** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @aasworld, i32 0, i32 0), align 8
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %22, align 8
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %3, align 4
  %63 = add nsw i32 %61, %62
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %58, i64 %64
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %12, align 4
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @aasworld, i32 0, i32 6), align 8
  %68 = load i32, i32* %12, align 4
  %69 = call i64 @abs(i32 %68)
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i64 %69
  store %struct.TYPE_18__* %70, %struct.TYPE_18__** %24, align 8
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @FACE_GROUND, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %57
  br label %541

78:                                               ; preds = %57
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %537, %78
  %80 = load i32, i32* %5, align 4
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp slt i32 %80, %83
  br i1 %84, label %85, label %540

85:                                               ; preds = %79
  %86 = load i32*, i32** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @aasworld, i32 0, i32 1), align 8
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %5, align 4
  %91 = add nsw i32 %89, %90
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %86, i64 %92
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %15, align 4
  store i32 0, i32* %4, align 4
  br label %95

95:                                               ; preds = %533, %85
  %96 = load i32, i32* %4, align 4
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %22, align 8
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp slt i32 %96, %99
  br i1 %100, label %101, label %536

101:                                              ; preds = %95
  %102 = load i32*, i32** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @aasworld, i32 0, i32 0), align 8
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %22, align 8
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %4, align 4
  %107 = add nsw i32 %105, %106
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %102, i64 %108
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %13, align 4
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @aasworld, i32 0, i32 6), align 8
  %112 = load i32, i32* %13, align 4
  %113 = call i64 @abs(i32 %112)
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i64 %113
  store %struct.TYPE_18__* %114, %struct.TYPE_18__** %25, align 8
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @FACE_GROUND, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %101
  br label %533

122:                                              ; preds = %101
  store i32 0, i32* %6, align 4
  br label %123

123:                                              ; preds = %529, %122
  %124 = load i32, i32* %6, align 4
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = icmp slt i32 %124, %127
  br i1 %128, label %129, label %532

129:                                              ; preds = %123
  %130 = load i32*, i32** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @aasworld, i32 0, i32 1), align 8
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* %6, align 4
  %135 = add nsw i32 %133, %134
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %130, i64 %136
  %138 = load i32, i32* %137, align 4
  store i32 %138, i32* %16, align 4
  %139 = load i32, i32* %15, align 4
  %140 = call i64 @abs(i32 %139)
  %141 = load i32, i32* %16, align 4
  %142 = call i64 @abs(i32 %141)
  %143 = icmp eq i64 %140, %142
  br i1 %143, label %144, label %528

144:                                              ; preds = %129
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %2, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %154

150:                                              ; preds = %144
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 8
  store i32 %153, i32* %18, align 4
  br label %158

154:                                              ; preds = %144
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  store i32 %157, i32* %18, align 4
  br label %158

158:                                              ; preds = %154, %150
  %159 = load %struct.TYPE_20__*, %struct.TYPE_20__** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @aasworld, i32 0, i32 7), align 8
  %160 = load i32, i32* %18, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %159, i64 %161
  store %struct.TYPE_20__* %162, %struct.TYPE_20__** %23, align 8
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @aasworld, i32 0, i32 2), align 8
  %164 = load i32, i32* %18, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @AREA_GROUNDED, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %262

172:                                              ; preds = %158
  %173 = load i32, i32* @qfalse, align 4
  store i32 %173, i32* %19, align 4
  store i32 0, i32* %8, align 4
  br label %174

174:                                              ; preds = %254, %172
  %175 = load i32, i32* %8, align 4
  %176 = load %struct.TYPE_20__*, %struct.TYPE_20__** %23, align 8
  %177 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = icmp slt i32 %175, %178
  br i1 %179, label %180, label %257

180:                                              ; preds = %174
  %181 = load i32*, i32** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @aasworld, i32 0, i32 0), align 8
  %182 = load %struct.TYPE_20__*, %struct.TYPE_20__** %23, align 8
  %183 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* %8, align 4
  %186 = add nsw i32 %184, %185
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %181, i64 %187
  %189 = load i32, i32* %188, align 4
  store i32 %189, i32* %14, align 4
  %190 = load i32, i32* %14, align 4
  %191 = call i64 @abs(i32 %190)
  %192 = load i32, i32* %13, align 4
  %193 = call i64 @abs(i32 %192)
  %194 = icmp eq i64 %191, %193
  br i1 %194, label %195, label %196

195:                                              ; preds = %180
  br label %254

196:                                              ; preds = %180
  %197 = load %struct.TYPE_18__*, %struct.TYPE_18__** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @aasworld, i32 0, i32 6), align 8
  %198 = load i32, i32* %14, align 4
  %199 = call i64 @abs(i32 %198)
  %200 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %197, i64 %199
  store %struct.TYPE_18__* %200, %struct.TYPE_18__** %26, align 8
  store i32 0, i32* %7, align 4
  br label %201

201:                                              ; preds = %243, %196
  %202 = load i32, i32* %7, align 4
  %203 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %204 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = icmp slt i32 %202, %205
  br i1 %206, label %207, label %246

207:                                              ; preds = %201
  %208 = load i32*, i32** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @aasworld, i32 0, i32 1), align 8
  %209 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %210 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* %7, align 4
  %213 = add nsw i32 %211, %212
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %208, i64 %214
  %216 = load i32, i32* %215, align 4
  store i32 %216, i32* %17, align 4
  %217 = load i32, i32* %17, align 4
  %218 = call i64 @abs(i32 %217)
  %219 = load i32, i32* %15, align 4
  %220 = call i64 @abs(i32 %219)
  %221 = icmp eq i64 %218, %220
  br i1 %221, label %222, label %242

222:                                              ; preds = %207
  %223 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %224 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* @FACE_SOLID, align 4
  %227 = and i32 %225, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %231, label %229

229:                                              ; preds = %222
  %230 = load i32, i32* @qtrue, align 4
  store i32 %230, i32* %19, align 4
  br label %246

231:                                              ; preds = %222
  %232 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %233 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = load i32, i32* @FACE_GROUND, align 4
  %236 = and i32 %234, %235
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %240

238:                                              ; preds = %231
  %239 = load i32, i32* @qfalse, align 4
  store i32 %239, i32* %19, align 4
  br label %246

240:                                              ; preds = %231
  %241 = load i32, i32* @qtrue, align 4
  store i32 %241, i32* %19, align 4
  br label %246

242:                                              ; preds = %207
  br label %243

243:                                              ; preds = %242
  %244 = load i32, i32* %7, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %7, align 4
  br label %201

246:                                              ; preds = %240, %238, %229, %201
  %247 = load i32, i32* %7, align 4
  %248 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %249 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = icmp slt i32 %247, %250
  br i1 %251, label %252, label %253

252:                                              ; preds = %246
  br label %257

253:                                              ; preds = %246
  br label %254

254:                                              ; preds = %253, %195
  %255 = load i32, i32* %8, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %8, align 4
  br label %174

257:                                              ; preds = %252, %174
  %258 = load i32, i32* %19, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %261, label %260

260:                                              ; preds = %257
  br label %532

261:                                              ; preds = %257
  br label %262

262:                                              ; preds = %261, %158
  %263 = load %struct.TYPE_19__*, %struct.TYPE_19__** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @aasworld, i32 0, i32 5), align 8
  %264 = load i32, i32* %15, align 4
  %265 = call i64 @abs(i32 %264)
  %266 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %263, i64 %265
  store %struct.TYPE_19__* %266, %struct.TYPE_19__** %27, align 8
  %267 = load i32, i32* %15, align 4
  %268 = icmp slt i32 %267, 0
  %269 = zext i1 %268 to i32
  store i32 %269, i32* %21, align 4
  %270 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @aasworld, i32 0, i32 4), align 8
  %271 = load %struct.TYPE_19__*, %struct.TYPE_19__** %27, align 8
  %272 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %271, i32 0, i32 0
  %273 = load i64*, i64** %272, align 8
  %274 = load i32, i32* %21, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i64, i64* %273, i64 %275
  %277 = load i64, i64* %276, align 8
  %278 = getelementptr inbounds i32*, i32** %270, i64 %277
  %279 = load i32*, i32** %278, align 8
  store i32* %279, i32** %29, align 8
  %280 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @aasworld, i32 0, i32 4), align 8
  %281 = load %struct.TYPE_19__*, %struct.TYPE_19__** %27, align 8
  %282 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %281, i32 0, i32 0
  %283 = load i64*, i64** %282, align 8
  %284 = load i32, i32* %21, align 4
  %285 = icmp ne i32 %284, 0
  %286 = xor i1 %285, true
  %287 = zext i1 %286 to i32
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i64, i64* %283, i64 %288
  %290 = load i64, i64* %289, align 8
  %291 = getelementptr inbounds i32*, i32** %280, i64 %290
  %292 = load i32*, i32** %291, align 8
  store i32* %292, i32** %30, align 8
  %293 = load %struct.TYPE_16__*, %struct.TYPE_16__** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @aasworld, i32 0, i32 3), align 8
  %294 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %295 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %294, i32 0, i32 5
  %296 = load i64, i64* %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %293, i64 %296
  store %struct.TYPE_16__* %297, %struct.TYPE_16__** %28, align 8
  %298 = load i32*, i32** %30, align 8
  %299 = load i32*, i32** %29, align 8
  %300 = load i32*, i32** %31, align 8
  %301 = call i32 @VectorSubtract(i32* %298, i32* %299, i32* %300)
  %302 = load %struct.TYPE_16__*, %struct.TYPE_16__** %28, align 8
  %303 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 4
  %305 = load i32*, i32** %31, align 8
  %306 = load i32*, i32** %33, align 8
  %307 = call i32 @CrossProduct(i32 %304, i32* %305, i32* %306)
  %308 = load i32*, i32** %33, align 8
  %309 = call i32 @VectorNormalize(i32* %308)
  %310 = load i32*, i32** %29, align 8
  %311 = load i32*, i32** %30, align 8
  %312 = load i32*, i32** %32, align 8
  %313 = call i32 @VectorAdd(i32* %310, i32* %311, i32* %312)
  %314 = load i32*, i32** %32, align 8
  %315 = load i32*, i32** %32, align 8
  %316 = call i32 @VectorScale(i32* %314, double 5.000000e-01, i32* %315)
  %317 = load i32*, i32** %32, align 8
  %318 = load i32*, i32** %33, align 8
  %319 = load i32*, i32** %32, align 8
  %320 = call i32 @VectorMA(i32* %317, i32 8, i32* %318, i32* %319)
  %321 = load i32*, i32** %32, align 8
  %322 = load i32*, i32** %34, align 8
  %323 = call i32 @VectorCopy(i32* %321, i32* %322)
  %324 = load i32*, i32** %34, align 8
  %325 = getelementptr inbounds i32, i32* %324, i64 2
  %326 = load i32, i32* %325, align 4
  %327 = sub nsw i32 %326, 1000
  store i32 %327, i32* %325, align 4
  %328 = load i32*, i32** %32, align 8
  %329 = load i32*, i32** %34, align 8
  %330 = load i32, i32* @PRESENCE_CROUCH, align 4
  %331 = call { i32*, i64 } @AAS_TraceClientBBox(i32* %328, i32* %329, i32 %330, i32 -1)
  %332 = bitcast %struct.TYPE_15__* %37 to { i32*, i64 }*
  %333 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %332, i32 0, i32 0
  %334 = extractvalue { i32*, i64 } %331, 0
  store i32* %334, i32** %333, align 8
  %335 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %332, i32 0, i32 1
  %336 = extractvalue { i32*, i64 } %331, 1
  store i64 %336, i64* %335, align 8
  %337 = bitcast %struct.TYPE_15__* %36 to i8*
  %338 = bitcast %struct.TYPE_15__* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %337, i8* align 8 %338, i64 16, i1 false)
  %339 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 1
  %340 = load i64, i64* %339, align 8
  %341 = icmp ne i64 %340, 0
  br i1 %341, label %342, label %343

342:                                              ; preds = %262
  br label %532

343:                                              ; preds = %262
  %344 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %345 = load i32*, i32** %344, align 8
  %346 = call i32 @AAS_PointAreaNum(i32* %345)
  store i32 %346, i32* %20, align 4
  %347 = load i32, i32* %20, align 4
  %348 = load i32, i32* %2, align 4
  %349 = icmp eq i32 %347, %348
  br i1 %349, label %350, label %351

350:                                              ; preds = %343
  br label %532

351:                                              ; preds = %343
  %352 = load i32, i32* %2, align 4
  %353 = load i32, i32* %20, align 4
  %354 = call i64 @AAS_ReachabilityExists(i32 %352, i32 %353)
  %355 = icmp ne i64 %354, 0
  br i1 %355, label %356, label %357

356:                                              ; preds = %351
  br label %532

357:                                              ; preds = %351
  %358 = load i32, i32* %20, align 4
  %359 = call i32 @AAS_AreaGrounded(i32 %358)
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %366, label %361

361:                                              ; preds = %357
  %362 = load i32, i32* %20, align 4
  %363 = call i64 @AAS_AreaSwim(i32 %362)
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %366, label %365

365:                                              ; preds = %361
  br label %532

366:                                              ; preds = %361, %357
  %367 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @aasworld, i32 0, i32 2), align 8
  %368 = load i32, i32* %20, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %367, i64 %369
  %371 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %370, i32 0, i32 1
  %372 = load i32, i32* %371, align 4
  %373 = load i32, i32* @AREACONTENTS_SLIME, align 4
  %374 = load i32, i32* @AREACONTENTS_LAVA, align 4
  %375 = or i32 %373, %374
  %376 = and i32 %372, %375
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %379

378:                                              ; preds = %366
  br label %532

379:                                              ; preds = %366
  %380 = load i32*, i32** %32, align 8
  %381 = load i32*, i32** %34, align 8
  %382 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 0
  %383 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 0
  %384 = call i32 @ARRAY_LEN(i32* %383)
  %385 = call i32 @AAS_TraceAreas(i32* %380, i32* %381, i32* %382, i32* null, i32 %384)
  store i32 %385, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %386

386:                                              ; preds = %399, %379
  %387 = load i32, i32* %9, align 4
  %388 = load i32, i32* %11, align 4
  %389 = icmp slt i32 %387, %388
  br i1 %389, label %390, label %402

390:                                              ; preds = %386
  %391 = load i32, i32* %9, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 %392
  %394 = load i32, i32* %393, align 4
  %395 = call i64 @AAS_AreaClusterPortal(i32 %394)
  %396 = icmp ne i64 %395, 0
  br i1 %396, label %397, label %398

397:                                              ; preds = %390
  br label %402

398:                                              ; preds = %390
  br label %399

399:                                              ; preds = %398
  %400 = load i32, i32* %9, align 4
  %401 = add nsw i32 %400, 1
  store i32 %401, i32* %9, align 4
  br label %386

402:                                              ; preds = %397, %386
  %403 = load i32, i32* %9, align 4
  %404 = load i32, i32* %11, align 4
  %405 = icmp slt i32 %403, %404
  br i1 %405, label %406, label %407

406:                                              ; preds = %402
  br label %532

407:                                              ; preds = %402
  %408 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @aassettings, i32 0, i32 0), align 8
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %410, label %423

410:                                              ; preds = %407
  %411 = load i32*, i32** %32, align 8
  %412 = getelementptr inbounds i32, i32* %411, i64 2
  %413 = load i32, i32* %412, align 4
  %414 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %415 = load i32*, i32** %414, align 8
  %416 = getelementptr inbounds i32, i32* %415, i64 2
  %417 = load i32, i32* %416, align 4
  %418 = sub nsw i32 %413, %417
  %419 = call i32 @fabs(i32 %418)
  %420 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @aassettings, i32 0, i32 0), align 8
  %421 = icmp sgt i32 %419, %420
  br i1 %421, label %422, label %423

422:                                              ; preds = %410
  br label %532

423:                                              ; preds = %410, %407
  %424 = call %struct.TYPE_17__* (...) @AAS_AllocReachability()
  store %struct.TYPE_17__* %424, %struct.TYPE_17__** %35, align 8
  %425 = load %struct.TYPE_17__*, %struct.TYPE_17__** %35, align 8
  %426 = icmp ne %struct.TYPE_17__* %425, null
  br i1 %426, label %428, label %427

427:                                              ; preds = %423
  br label %532

428:                                              ; preds = %423
  %429 = load i32, i32* %20, align 4
  %430 = load %struct.TYPE_17__*, %struct.TYPE_17__** %35, align 8
  %431 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %430, i32 0, i32 0
  store i32 %429, i32* %431, align 8
  %432 = load %struct.TYPE_17__*, %struct.TYPE_17__** %35, align 8
  %433 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %432, i32 0, i32 7
  store i64 0, i64* %433, align 8
  %434 = load i32, i32* %15, align 4
  %435 = load %struct.TYPE_17__*, %struct.TYPE_17__** %35, align 8
  %436 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %435, i32 0, i32 1
  store i32 %434, i32* %436, align 4
  %437 = load i32*, i32** %32, align 8
  %438 = load %struct.TYPE_17__*, %struct.TYPE_17__** %35, align 8
  %439 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %438, i32 0, i32 2
  %440 = load i32*, i32** %439, align 8
  %441 = call i32 @VectorCopy(i32* %437, i32* %440)
  %442 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %443 = load i32*, i32** %442, align 8
  %444 = load %struct.TYPE_17__*, %struct.TYPE_17__** %35, align 8
  %445 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %444, i32 0, i32 3
  %446 = load i32*, i32** %445, align 8
  %447 = call i32 @VectorCopy(i32* %443, i32* %446)
  %448 = load i32, i32* @TRAVEL_WALKOFFLEDGE, align 4
  %449 = load %struct.TYPE_17__*, %struct.TYPE_17__** %35, align 8
  %450 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %449, i32 0, i32 6
  store i32 %448, i32* %450, align 8
  %451 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @aassettings, i32 0, i32 6), align 8
  %452 = load i32*, i32** %32, align 8
  %453 = getelementptr inbounds i32, i32* %452, i64 2
  %454 = load i32, i32* %453, align 4
  %455 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %456 = load i32*, i32** %455, align 8
  %457 = getelementptr inbounds i32, i32* %456, i64 2
  %458 = load i32, i32* %457, align 4
  %459 = sub nsw i32 %454, %458
  %460 = call i32 @fabs(i32 %459)
  %461 = mul nsw i32 %460, 50
  %462 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @aassettings, i32 0, i32 1), align 4
  %463 = sdiv i32 %461, %462
  %464 = sext i32 %463 to i64
  %465 = add nsw i64 %451, %464
  %466 = load %struct.TYPE_17__*, %struct.TYPE_17__** %35, align 8
  %467 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %466, i32 0, i32 5
  store i64 %465, i64* %467, align 8
  %468 = load i32, i32* %20, align 4
  %469 = call i64 @AAS_AreaSwim(i32 %468)
  %470 = icmp ne i64 %469, 0
  br i1 %470, label %513, label %471

471:                                              ; preds = %428
  %472 = load i32, i32* %20, align 4
  %473 = call i32 @AAS_AreaJumpPad(i32 %472)
  %474 = icmp ne i32 %473, 0
  br i1 %474, label %513, label %475

475:                                              ; preds = %471
  %476 = load i32*, i32** %32, align 8
  %477 = getelementptr inbounds i32, i32* %476, i64 2
  %478 = load i32, i32* %477, align 4
  %479 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %480 = load i32*, i32** %479, align 8
  %481 = getelementptr inbounds i32, i32* %480, i64 2
  %482 = load i32, i32* %481, align 4
  %483 = sub nsw i32 %478, %482
  %484 = call i64 @AAS_FallDelta(i32 %483)
  %485 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @aassettings, i32 0, i32 2), align 8
  %486 = icmp sgt i64 %484, %485
  br i1 %486, label %487, label %493

487:                                              ; preds = %475
  %488 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @aassettings, i32 0, i32 5), align 8
  %489 = load %struct.TYPE_17__*, %struct.TYPE_17__** %35, align 8
  %490 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %489, i32 0, i32 5
  %491 = load i64, i64* %490, align 8
  %492 = add nsw i64 %491, %488
  store i64 %492, i64* %490, align 8
  br label %512

493:                                              ; preds = %475
  %494 = load i32*, i32** %32, align 8
  %495 = getelementptr inbounds i32, i32* %494, i64 2
  %496 = load i32, i32* %495, align 4
  %497 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %498 = load i32*, i32** %497, align 8
  %499 = getelementptr inbounds i32, i32* %498, i64 2
  %500 = load i32, i32* %499, align 4
  %501 = sub nsw i32 %496, %500
  %502 = call i64 @AAS_FallDelta(i32 %501)
  %503 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @aassettings, i32 0, i32 3), align 8
  %504 = icmp sgt i64 %502, %503
  br i1 %504, label %505, label %511

505:                                              ; preds = %493
  %506 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @aassettings, i32 0, i32 4), align 8
  %507 = load %struct.TYPE_17__*, %struct.TYPE_17__** %35, align 8
  %508 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %507, i32 0, i32 5
  %509 = load i64, i64* %508, align 8
  %510 = add nsw i64 %509, %506
  store i64 %510, i64* %508, align 8
  br label %511

511:                                              ; preds = %505, %493
  br label %512

512:                                              ; preds = %511, %487
  br label %513

513:                                              ; preds = %512, %471, %428
  %514 = load %struct.TYPE_17__**, %struct.TYPE_17__*** @areareachability, align 8
  %515 = load i32, i32* %2, align 4
  %516 = sext i32 %515 to i64
  %517 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %514, i64 %516
  %518 = load %struct.TYPE_17__*, %struct.TYPE_17__** %517, align 8
  %519 = load %struct.TYPE_17__*, %struct.TYPE_17__** %35, align 8
  %520 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %519, i32 0, i32 4
  store %struct.TYPE_17__* %518, %struct.TYPE_17__** %520, align 8
  %521 = load %struct.TYPE_17__*, %struct.TYPE_17__** %35, align 8
  %522 = load %struct.TYPE_17__**, %struct.TYPE_17__*** @areareachability, align 8
  %523 = load i32, i32* %2, align 4
  %524 = sext i32 %523 to i64
  %525 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %522, i64 %524
  store %struct.TYPE_17__* %521, %struct.TYPE_17__** %525, align 8
  %526 = load i32, i32* @reach_walkoffledge, align 4
  %527 = add nsw i32 %526, 1
  store i32 %527, i32* @reach_walkoffledge, align 4
  br label %528

528:                                              ; preds = %513, %129
  br label %529

529:                                              ; preds = %528
  %530 = load i32, i32* %6, align 4
  %531 = add nsw i32 %530, 1
  store i32 %531, i32* %6, align 4
  br label %123

532:                                              ; preds = %427, %422, %406, %378, %365, %356, %350, %342, %260, %123
  br label %533

533:                                              ; preds = %532, %121
  %534 = load i32, i32* %4, align 4
  %535 = add nsw i32 %534, 1
  store i32 %535, i32* %4, align 4
  br label %95

536:                                              ; preds = %95
  br label %537

537:                                              ; preds = %536
  %538 = load i32, i32* %5, align 4
  %539 = add nsw i32 %538, 1
  store i32 %539, i32* %5, align 4
  br label %79

540:                                              ; preds = %79
  br label %541

541:                                              ; preds = %540, %77
  %542 = load i32, i32* %3, align 4
  %543 = add nsw i32 %542, 1
  store i32 %543, i32* %3, align 4
  br label %51

544:                                              ; preds = %45, %51
  ret void
}

declare dso_local i32 @AAS_AreaGrounded(i32) #1

declare dso_local i64 @AAS_AreaSwim(i32) #1

declare dso_local i64 @abs(i32) #1

declare dso_local i32 @VectorSubtract(i32*, i32*, i32*) #1

declare dso_local i32 @CrossProduct(i32, i32*, i32*) #1

declare dso_local i32 @VectorNormalize(i32*) #1

declare dso_local i32 @VectorAdd(i32*, i32*, i32*) #1

declare dso_local i32 @VectorScale(i32*, double, i32*) #1

declare dso_local i32 @VectorMA(i32*, i32, i32*, i32*) #1

declare dso_local i32 @VectorCopy(i32*, i32*) #1

declare dso_local { i32*, i64 } @AAS_TraceClientBBox(i32*, i32*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @AAS_PointAreaNum(i32*) #1

declare dso_local i64 @AAS_ReachabilityExists(i32, i32) #1

declare dso_local i32 @AAS_TraceAreas(i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @ARRAY_LEN(i32*) #1

declare dso_local i64 @AAS_AreaClusterPortal(i32) #1

declare dso_local i32 @fabs(i32) #1

declare dso_local %struct.TYPE_17__* @AAS_AllocReachability(...) #1

declare dso_local i32 @AAS_AreaJumpPad(i32) #1

declare dso_local i64 @AAS_FallDelta(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
