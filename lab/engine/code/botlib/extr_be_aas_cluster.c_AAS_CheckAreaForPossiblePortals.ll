; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_cluster.c_AAS_CheckAreaForPossiblePortals.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_cluster.c_AAS_CheckAreaForPossiblePortals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_5__*, i32*, %struct.TYPE_6__*, i32*, %struct.TYPE_7__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@MAX_PORTALAREAS = common dso_local global i32 0, align 4
@aasworld = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@AREACONTENTS_CLUSTERPORTAL = common dso_local global i32 0, align 4
@AREA_GROUNDED = common dso_local global i32 0, align 4
@FACE_SOLID = common dso_local global i32 0, align 4
@AREACONTENTS_ROUTEPORTAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"possible portal: %d\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AAS_CheckAreaForPossiblePortals(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca %struct.TYPE_7__*, align 8
  %30 = alloca %struct.TYPE_6__*, align 8
  %31 = alloca %struct.TYPE_6__*, align 8
  %32 = alloca %struct.TYPE_6__*, align 8
  %33 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %34 = load i32, i32* @MAX_PORTALAREAS, align 4
  %35 = zext i32 %34 to i64
  %36 = call i8* @llvm.stacksave()
  store i8* %36, i8** %12, align 8
  %37 = alloca i32, i64 %35, align 16
  store i64 %35, i64* %13, align 8
  %38 = load i32, i32* @MAX_PORTALAREAS, align 4
  %39 = zext i32 %38 to i64
  %40 = alloca i32, i64 %39, align 16
  store i64 %39, i64* %16, align 8
  %41 = load i32, i32* @MAX_PORTALAREAS, align 4
  %42 = zext i32 %41 to i64
  %43 = alloca i32, i64 %42, align 16
  store i64 %42, i64* %17, align 8
  %44 = load i32, i32* @MAX_PORTALAREAS, align 4
  %45 = zext i32 %44 to i64
  %46 = alloca i32, i64 %45, align 16
  store i64 %45, i64* %18, align 8
  %47 = load i32, i32* @MAX_PORTALAREAS, align 4
  %48 = zext i32 %47 to i64
  %49 = alloca i32, i64 %48, align 16
  store i64 %48, i64* %19, align 8
  %50 = load i32, i32* @MAX_PORTALAREAS, align 4
  %51 = zext i32 %50 to i64
  %52 = alloca i32, i64 %51, align 16
  store i64 %51, i64* %22, align 8
  %53 = load i32, i32* @MAX_PORTALAREAS, align 4
  %54 = zext i32 %53 to i64
  %55 = alloca i32, i64 %54, align 16
  store i64 %54, i64* %23, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @aasworld, i32 0, i32 0), align 8
  %57 = load i32, i32* %3, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @AREACONTENTS_CLUSTERPORTAL, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %33, align 4
  br label %471

66:                                               ; preds = %1
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @aasworld, i32 0, i32 0), align 8
  %68 = load i32, i32* %3, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @AREA_GROUNDED, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %66
  store i32 0, i32* %2, align 4
  store i32 1, i32* %33, align 4
  br label %471

77:                                               ; preds = %66
  %78 = mul nuw i64 4, %39
  %79 = trunc i64 %78 to i32
  %80 = call i32 @Com_Memset(i32* %40, i32 0, i32 %79)
  %81 = mul nuw i64 4, %42
  %82 = trunc i64 %81 to i32
  %83 = call i32 @Com_Memset(i32* %43, i32 0, i32 %82)
  store i32 0, i32* %21, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %24, align 4
  store i32 -1, i32* %27, align 4
  store i32 -1, i32* %26, align 4
  %84 = load i32, i32* %3, align 4
  %85 = call i32 @AAS_GetAdjacentAreasWithLessPresenceTypes_r(i32* %37, i32 0, i32 %84)
  store i32 %85, i32* %14, align 4
  store i32 0, i32* %4, align 4
  br label %86

86:                                               ; preds = %295, %77
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* %14, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %298

90:                                               ; preds = %86
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @aasworld, i32 0, i32 4), align 8
  %92 = load i32, i32* %4, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %37, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i64 %96
  store %struct.TYPE_7__* %97, %struct.TYPE_7__** %29, align 8
  store i32 0, i32* %5, align 4
  br label %98

98:                                               ; preds = %291, %90
  %99 = load i32, i32* %5, align 4
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp slt i32 %99, %102
  br i1 %103, label %104, label %294

104:                                              ; preds = %98
  %105 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @aasworld, i32 0, i32 3), align 8
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %5, align 4
  %110 = add nsw i32 %108, %109
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %105, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @abs(i32 %113) #4
  store i32 %114, i32* %11, align 4
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @aasworld, i32 0, i32 2), align 8
  %116 = load i32, i32* %11, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i64 %117
  store %struct.TYPE_6__* %118, %struct.TYPE_6__** %32, align 8
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @FACE_SOLID, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %104
  br label %291

126:                                              ; preds = %104
  store i32 0, i32* %6, align 4
  br label %127

127:                                              ; preds = %156, %126
  %128 = load i32, i32* %6, align 4
  %129 = load i32, i32* %14, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %159

131:                                              ; preds = %127
  %132 = load i32, i32* %6, align 4
  %133 = load i32, i32* %4, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %131
  br label %156

136:                                              ; preds = %131
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %6, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %37, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = icmp eq i32 %139, %143
  br i1 %144, label %154, label %145

145:                                              ; preds = %136
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %6, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %37, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = icmp eq i32 %148, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %145, %136
  br label %159

155:                                              ; preds = %145
  br label %156

156:                                              ; preds = %155, %135
  %157 = load i32, i32* %6, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %6, align 4
  br label %127

159:                                              ; preds = %154, %127
  %160 = load i32, i32* %6, align 4
  %161 = load i32, i32* %14, align 4
  %162 = icmp ne i32 %160, %161
  br i1 %162, label %163, label %164

163:                                              ; preds = %159
  br label %291

164:                                              ; preds = %159
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* %4, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %37, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = icmp eq i32 %167, %171
  br i1 %172, label %173, label %177

173:                                              ; preds = %164
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  store i32 %176, i32* %15, align 4
  br label %181

177:                                              ; preds = %164
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  store i32 %180, i32* %15, align 4
  br label %181

181:                                              ; preds = %177, %173
  %182 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @aasworld, i32 0, i32 0), align 8
  %183 = load i32, i32* %15, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* @AREACONTENTS_CLUSTERPORTAL, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %181
  store i32 0, i32* %2, align 4
  store i32 1, i32* %33, align 4
  br label %471

192:                                              ; preds = %181
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 4
  %196 = and i32 %195, -2
  store i32 %196, i32* %28, align 4
  %197 = load i32, i32* %26, align 4
  %198 = icmp slt i32 %197, 0
  br i1 %198, label %203, label %199

199:                                              ; preds = %192
  %200 = load i32, i32* %28, align 4
  %201 = load i32, i32* %26, align 4
  %202 = icmp eq i32 %200, %201
  br i1 %202, label %203, label %242

203:                                              ; preds = %199, %192
  %204 = load i32, i32* %28, align 4
  store i32 %204, i32* %26, align 4
  %205 = load i32, i32* %11, align 4
  %206 = load i32, i32* %20, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %20, align 4
  %208 = sext i32 %206 to i64
  %209 = getelementptr inbounds i32, i32* %46, i64 %208
  store i32 %205, i32* %209, align 4
  store i32 0, i32* %6, align 4
  br label %210

210:                                              ; preds = %223, %203
  %211 = load i32, i32* %6, align 4
  %212 = load i32, i32* %24, align 4
  %213 = icmp slt i32 %211, %212
  br i1 %213, label %214, label %226

214:                                              ; preds = %210
  %215 = load i32, i32* %6, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %52, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* %15, align 4
  %220 = icmp eq i32 %218, %219
  br i1 %220, label %221, label %222

221:                                              ; preds = %214
  br label %226

222:                                              ; preds = %214
  br label %223

223:                                              ; preds = %222
  %224 = load i32, i32* %6, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %6, align 4
  br label %210

226:                                              ; preds = %221, %210
  %227 = load i32, i32* %6, align 4
  %228 = load i32, i32* %24, align 4
  %229 = icmp eq i32 %227, %228
  br i1 %229, label %230, label %236

230:                                              ; preds = %226
  %231 = load i32, i32* %15, align 4
  %232 = load i32, i32* %24, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %24, align 4
  %234 = sext i32 %232 to i64
  %235 = getelementptr inbounds i32, i32* %52, i64 %234
  store i32 %231, i32* %235, align 4
  br label %236

236:                                              ; preds = %230, %226
  %237 = load i32, i32* %4, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %40, i64 %238
  %240 = load i32, i32* %239, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %239, align 4
  br label %290

242:                                              ; preds = %199
  %243 = load i32, i32* %27, align 4
  %244 = icmp slt i32 %243, 0
  br i1 %244, label %249, label %245

245:                                              ; preds = %242
  %246 = load i32, i32* %28, align 4
  %247 = load i32, i32* %27, align 4
  %248 = icmp eq i32 %246, %247
  br i1 %248, label %249, label %288

249:                                              ; preds = %245, %242
  %250 = load i32, i32* %28, align 4
  store i32 %250, i32* %27, align 4
  %251 = load i32, i32* %11, align 4
  %252 = load i32, i32* %21, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %21, align 4
  %254 = sext i32 %252 to i64
  %255 = getelementptr inbounds i32, i32* %49, i64 %254
  store i32 %251, i32* %255, align 4
  store i32 0, i32* %6, align 4
  br label %256

256:                                              ; preds = %269, %249
  %257 = load i32, i32* %6, align 4
  %258 = load i32, i32* %25, align 4
  %259 = icmp slt i32 %257, %258
  br i1 %259, label %260, label %272

260:                                              ; preds = %256
  %261 = load i32, i32* %6, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %55, i64 %262
  %264 = load i32, i32* %263, align 4
  %265 = load i32, i32* %15, align 4
  %266 = icmp eq i32 %264, %265
  br i1 %266, label %267, label %268

267:                                              ; preds = %260
  br label %272

268:                                              ; preds = %260
  br label %269

269:                                              ; preds = %268
  %270 = load i32, i32* %6, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %6, align 4
  br label %256

272:                                              ; preds = %267, %256
  %273 = load i32, i32* %6, align 4
  %274 = load i32, i32* %25, align 4
  %275 = icmp eq i32 %273, %274
  br i1 %275, label %276, label %282

276:                                              ; preds = %272
  %277 = load i32, i32* %15, align 4
  %278 = load i32, i32* %25, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %25, align 4
  %280 = sext i32 %278 to i64
  %281 = getelementptr inbounds i32, i32* %55, i64 %280
  store i32 %277, i32* %281, align 4
  br label %282

282:                                              ; preds = %276, %272
  %283 = load i32, i32* %4, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i32, i32* %43, i64 %284
  %286 = load i32, i32* %285, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %285, align 4
  br label %289

288:                                              ; preds = %245
  store i32 0, i32* %2, align 4
  store i32 1, i32* %33, align 4
  br label %471

289:                                              ; preds = %282
  br label %290

290:                                              ; preds = %289, %236
  br label %291

291:                                              ; preds = %290, %163, %125
  %292 = load i32, i32* %5, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %5, align 4
  br label %98

294:                                              ; preds = %98
  br label %295

295:                                              ; preds = %294
  %296 = load i32, i32* %4, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %4, align 4
  br label %86

298:                                              ; preds = %86
  store i32 0, i32* %4, align 4
  br label %299

299:                                              ; preds = %317, %298
  %300 = load i32, i32* %4, align 4
  %301 = load i32, i32* %14, align 4
  %302 = icmp slt i32 %300, %301
  br i1 %302, label %303, label %320

303:                                              ; preds = %299
  %304 = load i32, i32* %4, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i32, i32* %40, i64 %305
  %307 = load i32, i32* %306, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %315

309:                                              ; preds = %303
  %310 = load i32, i32* %4, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i32, i32* %43, i64 %311
  %313 = load i32, i32* %312, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %316, label %315

315:                                              ; preds = %309, %303
  store i32 0, i32* %2, align 4
  store i32 1, i32* %33, align 4
  br label %471

316:                                              ; preds = %309
  br label %317

317:                                              ; preds = %316
  %318 = load i32, i32* %4, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %4, align 4
  br label %299

320:                                              ; preds = %299
  %321 = load i32, i32* %24, align 4
  %322 = call i32 @AAS_ConnectedAreas(i32* %52, i32 %321)
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %325, label %324

324:                                              ; preds = %320
  store i32 0, i32* %2, align 4
  store i32 1, i32* %33, align 4
  br label %471

325:                                              ; preds = %320
  %326 = load i32, i32* %25, align 4
  %327 = call i32 @AAS_ConnectedAreas(i32* %55, i32 %326)
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %330, label %329

329:                                              ; preds = %325
  store i32 0, i32* %2, align 4
  store i32 1, i32* %33, align 4
  br label %471

330:                                              ; preds = %325
  store i32 0, i32* %4, align 4
  br label %331

331:                                              ; preds = %425, %330
  %332 = load i32, i32* %4, align 4
  %333 = load i32, i32* %20, align 4
  %334 = icmp slt i32 %332, %333
  br i1 %334, label %335, label %428

335:                                              ; preds = %331
  %336 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @aasworld, i32 0, i32 2), align 8
  %337 = load i32, i32* %4, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i32, i32* %46, i64 %338
  %340 = load i32, i32* %339, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %336, i64 %341
  store %struct.TYPE_6__* %342, %struct.TYPE_6__** %30, align 8
  store i32 0, i32* %7, align 4
  br label %343

343:                                              ; preds = %414, %335
  %344 = load i32, i32* %7, align 4
  %345 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %346 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %345, i32 0, i32 4
  %347 = load i32, i32* %346, align 4
  %348 = icmp slt i32 %344, %347
  br i1 %348, label %349, label %417

349:                                              ; preds = %343
  %350 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @aasworld, i32 0, i32 1), align 8
  %351 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %352 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %351, i32 0, i32 5
  %353 = load i32, i32* %352, align 4
  %354 = load i32, i32* %7, align 4
  %355 = add nsw i32 %353, %354
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i32, i32* %350, i64 %356
  %358 = load i32, i32* %357, align 4
  %359 = call i32 @abs(i32 %358) #4
  store i32 %359, i32* %9, align 4
  store i32 0, i32* %5, align 4
  br label %360

360:                                              ; preds = %405, %349
  %361 = load i32, i32* %5, align 4
  %362 = load i32, i32* %21, align 4
  %363 = icmp slt i32 %361, %362
  br i1 %363, label %364, label %408

364:                                              ; preds = %360
  %365 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @aasworld, i32 0, i32 2), align 8
  %366 = load i32, i32* %5, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds i32, i32* %49, i64 %367
  %369 = load i32, i32* %368, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %365, i64 %370
  store %struct.TYPE_6__* %371, %struct.TYPE_6__** %31, align 8
  store i32 0, i32* %8, align 4
  br label %372

372:                                              ; preds = %394, %364
  %373 = load i32, i32* %8, align 4
  %374 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %375 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %374, i32 0, i32 4
  %376 = load i32, i32* %375, align 4
  %377 = icmp slt i32 %373, %376
  br i1 %377, label %378, label %397

378:                                              ; preds = %372
  %379 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @aasworld, i32 0, i32 1), align 8
  %380 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %381 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %380, i32 0, i32 5
  %382 = load i32, i32* %381, align 4
  %383 = load i32, i32* %8, align 4
  %384 = add nsw i32 %382, %383
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds i32, i32* %379, i64 %385
  %387 = load i32, i32* %386, align 4
  %388 = call i32 @abs(i32 %387) #4
  store i32 %388, i32* %10, align 4
  %389 = load i32, i32* %9, align 4
  %390 = load i32, i32* %10, align 4
  %391 = icmp eq i32 %389, %390
  br i1 %391, label %392, label %393

392:                                              ; preds = %378
  br label %397

393:                                              ; preds = %378
  br label %394

394:                                              ; preds = %393
  %395 = load i32, i32* %8, align 4
  %396 = add nsw i32 %395, 1
  store i32 %396, i32* %8, align 4
  br label %372

397:                                              ; preds = %392, %372
  %398 = load i32, i32* %8, align 4
  %399 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %400 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %399, i32 0, i32 4
  %401 = load i32, i32* %400, align 4
  %402 = icmp ne i32 %398, %401
  br i1 %402, label %403, label %404

403:                                              ; preds = %397
  br label %408

404:                                              ; preds = %397
  br label %405

405:                                              ; preds = %404
  %406 = load i32, i32* %5, align 4
  %407 = add nsw i32 %406, 1
  store i32 %407, i32* %5, align 4
  br label %360

408:                                              ; preds = %403, %360
  %409 = load i32, i32* %5, align 4
  %410 = load i32, i32* %21, align 4
  %411 = icmp ne i32 %409, %410
  br i1 %411, label %412, label %413

412:                                              ; preds = %408
  br label %417

413:                                              ; preds = %408
  br label %414

414:                                              ; preds = %413
  %415 = load i32, i32* %7, align 4
  %416 = add nsw i32 %415, 1
  store i32 %416, i32* %7, align 4
  br label %343

417:                                              ; preds = %412, %343
  %418 = load i32, i32* %7, align 4
  %419 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %420 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %419, i32 0, i32 4
  %421 = load i32, i32* %420, align 4
  %422 = icmp ne i32 %418, %421
  br i1 %422, label %423, label %424

423:                                              ; preds = %417
  br label %428

424:                                              ; preds = %417
  br label %425

425:                                              ; preds = %424
  %426 = load i32, i32* %4, align 4
  %427 = add nsw i32 %426, 1
  store i32 %427, i32* %4, align 4
  br label %331

428:                                              ; preds = %423, %331
  %429 = load i32, i32* %4, align 4
  %430 = load i32, i32* %20, align 4
  %431 = icmp ne i32 %429, %430
  br i1 %431, label %432, label %433

432:                                              ; preds = %428
  store i32 0, i32* %2, align 4
  store i32 1, i32* %33, align 4
  br label %471

433:                                              ; preds = %428
  store i32 0, i32* %4, align 4
  br label %434

434:                                              ; preds = %466, %433
  %435 = load i32, i32* %4, align 4
  %436 = load i32, i32* %14, align 4
  %437 = icmp slt i32 %435, %436
  br i1 %437, label %438, label %469

438:                                              ; preds = %434
  %439 = load i32, i32* @AREACONTENTS_CLUSTERPORTAL, align 4
  %440 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @aasworld, i32 0, i32 0), align 8
  %441 = load i32, i32* %4, align 4
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds i32, i32* %37, i64 %442
  %444 = load i32, i32* %443, align 4
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %440, i64 %445
  %447 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %446, i32 0, i32 0
  %448 = load i32, i32* %447, align 4
  %449 = or i32 %448, %439
  store i32 %449, i32* %447, align 4
  %450 = load i32, i32* @AREACONTENTS_ROUTEPORTAL, align 4
  %451 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @aasworld, i32 0, i32 0), align 8
  %452 = load i32, i32* %4, align 4
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds i32, i32* %37, i64 %453
  %455 = load i32, i32* %454, align 4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %451, i64 %456
  %458 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %457, i32 0, i32 0
  %459 = load i32, i32* %458, align 4
  %460 = or i32 %459, %450
  store i32 %460, i32* %458, align 4
  %461 = load i32, i32* %4, align 4
  %462 = sext i32 %461 to i64
  %463 = getelementptr inbounds i32, i32* %37, i64 %462
  %464 = load i32, i32* %463, align 4
  %465 = call i32 @Log_Write(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %464)
  br label %466

466:                                              ; preds = %438
  %467 = load i32, i32* %4, align 4
  %468 = add nsw i32 %467, 1
  store i32 %468, i32* %4, align 4
  br label %434

469:                                              ; preds = %434
  %470 = load i32, i32* %14, align 4
  store i32 %470, i32* %2, align 4
  store i32 1, i32* %33, align 4
  br label %471

471:                                              ; preds = %469, %432, %329, %324, %315, %288, %191, %76, %65
  %472 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %472)
  %473 = load i32, i32* %2, align 4
  ret i32 %473
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Com_Memset(i32*, i32, i32) #2

declare dso_local i32 @AAS_GetAdjacentAreasWithLessPresenceTypes_r(i32*, i32, i32) #2

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #3

declare dso_local i32 @AAS_ConnectedAreas(i32*, i32) #2

declare dso_local i32 @Log_Write(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
