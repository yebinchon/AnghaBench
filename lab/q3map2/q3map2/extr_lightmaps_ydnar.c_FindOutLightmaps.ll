; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_lightmaps_ydnar.c_FindOutLightmaps.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_lightmaps_ydnar.c_FindOutLightmaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, i32, i32, i32, i64*, i32*, i32*, i32*, i32, i64 }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_18__ = type { i32*, i64*, i64, i32, i32, i32*, i32*, i32, i32, i32, i32, float**, i32, i64*, i32** }

@MAX_LIGHTMAPS = common dso_local global i32 0, align 4
@LS_NONE = common dso_local global i64 0, align 8
@qfalse = common dso_local global i64 0, align 8
@outLightmaps = common dso_local global %struct.TYPE_19__* null, align 8
@numOutLightmaps = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"FindOutLightmaps: Failed to allocate memory.\0A\00", align 1
@game = common dso_local global %struct.TYPE_20__* null, align 8
@LoadRBSPFile = common dso_local global i64 0, align 8
@surfaceInfos = common dso_local global %struct.TYPE_17__* null, align 8
@lightSurfaces = common dso_local global i64* null, align 8
@MAX_LIGHTMAP_SHADERS = common dso_local global i32 0, align 4
@numLightmapShaders = common dso_local global i32 0, align 4
@debug = common dso_local global i64 0, align 8
@minLight = common dso_local global i64* null, align 8
@deluxemap = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*)* @FindOutLightmaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FindOutLightmaps(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_18__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_19__*, align 8
  %17 = alloca %struct.TYPE_17__*, align 8
  %18 = alloca float*, align 8
  %19 = alloca float*, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i64*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i64, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %2, align 8
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %35, %1
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @MAX_LIGHTMAPS, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %24
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  store i32 -3, i32* %34, align 4
  br label %35

35:                                               ; preds = %28
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %24

38:                                               ; preds = %24
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %40 = call i64 @ApproximateLightmap(%struct.TYPE_18__* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %750

43:                                               ; preds = %38
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %747, %43
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @MAX_LIGHTMAPS, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %750

48:                                               ; preds = %44
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 1
  %51 = load i64*, i64** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @LS_NONE, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %48
  br label %747

59:                                               ; preds = %48
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 14
  %62 = load i32**, i32*** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32*, i32** %62, i64 %64
  %66 = load i32*, i32** %65, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %59
  br label %747

69:                                               ; preds = %59
  %70 = load i64, i64* @qfalse, align 8
  store i64 %70, i64* %23, align 8
  %71 = load i32, i32* %5, align 4
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %207

73:                                               ; preds = %69
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** @outLightmaps, align 8
  %75 = icmp ne %struct.TYPE_19__* %74, null
  br i1 %75, label %76, label %207

76:                                               ; preds = %73
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %203, %76
  %78 = load i32, i32* %4, align 4
  %79 = icmp slt i32 %78, 2
  br i1 %79, label %80, label %206

80:                                               ; preds = %77
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %195, %80
  %82 = load i32, i32* %3, align 4
  %83 = load i32, i32* @numOutLightmaps, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %198

85:                                               ; preds = %81
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** @outLightmaps, align 8
  %87 = load i32, i32* %3, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i64 %88
  store %struct.TYPE_19__* %89, %struct.TYPE_19__** %16, align 8
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = icmp slt i64 %92, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %85
  br label %195

98:                                               ; preds = %85
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = icmp ne i32 %101, %104
  br i1 %105, label %114, label %106

106:                                              ; preds = %98
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %109, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %106, %98
  br label %195

115:                                              ; preds = %106
  %116 = load i32, i32* %4, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %135

118:                                              ; preds = %115
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 5
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 0
  %123 = load i32, i32* %122, align 4
  store i32 %123, i32* %8, align 4
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 6
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %9, align 4
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %130 = load i32, i32* %5, align 4
  %131 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* %9, align 4
  %134 = call i64 @TestOutLightmapStamp(%struct.TYPE_18__* %129, i32 %130, %struct.TYPE_19__* %131, i32 %132, i32 %133)
  store i64 %134, i64* %23, align 8
  br label %190

135:                                              ; preds = %115
  store i32 -1, i32* %11, align 4
  br label %136

136:                                              ; preds = %186, %135
  %137 = load i32, i32* %11, align 4
  %138 = icmp sle i32 %137, 1
  br i1 %138, label %139, label %189

139:                                              ; preds = %136
  store i32 -1, i32* %10, align 4
  br label %140

140:                                              ; preds = %178, %139
  %141 = load i32, i32* %10, align 4
  %142 = icmp sle i32 %141, 1
  br i1 %142, label %143, label %181

143:                                              ; preds = %140
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 5
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 0
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %10, align 4
  %150 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %151 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = ashr i32 %152, 1
  %154 = mul nsw i32 %149, %153
  %155 = add nsw i32 %148, %154
  store i32 %155, i32* %8, align 4
  %156 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %156, i32 0, i32 6
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 0
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* %11, align 4
  %162 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = ashr i32 %164, 1
  %166 = mul nsw i32 %161, %165
  %167 = add nsw i32 %160, %166
  store i32 %167, i32* %9, align 4
  %168 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %169 = load i32, i32* %5, align 4
  %170 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %171 = load i32, i32* %8, align 4
  %172 = load i32, i32* %9, align 4
  %173 = call i64 @TestOutLightmapStamp(%struct.TYPE_18__* %168, i32 %169, %struct.TYPE_19__* %170, i32 %171, i32 %172)
  store i64 %173, i64* %23, align 8
  %174 = load i64, i64* %23, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %143
  br label %181

177:                                              ; preds = %143
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %10, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %10, align 4
  br label %140

181:                                              ; preds = %176, %140
  %182 = load i64, i64* %23, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %181
  br label %189

185:                                              ; preds = %181
  br label %186

186:                                              ; preds = %185
  %187 = load i32, i32* %11, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %11, align 4
  br label %136

189:                                              ; preds = %184, %136
  br label %190

190:                                              ; preds = %189, %118
  %191 = load i64, i64* %23, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %190
  br label %198

194:                                              ; preds = %190
  br label %195

195:                                              ; preds = %194, %114, %97
  %196 = load i32, i32* %3, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %3, align 4
  br label %81

198:                                              ; preds = %193, %81
  %199 = load i64, i64* %23, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %198
  br label %206

202:                                              ; preds = %198
  br label %203

203:                                              ; preds = %202
  %204 = load i32, i32* %4, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %4, align 4
  br label %77

206:                                              ; preds = %201, %77
  br label %207

207:                                              ; preds = %206, %73, %69
  %208 = load i64, i64* %23, align 8
  %209 = load i64, i64* @qfalse, align 8
  %210 = icmp eq i64 %208, %209
  br i1 %210, label %211, label %320

211:                                              ; preds = %207
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %3, align 4
  br label %212

212:                                              ; preds = %316, %211
  %213 = load i32, i32* %3, align 4
  %214 = load i32, i32* @numOutLightmaps, align 4
  %215 = icmp slt i32 %213, %214
  br i1 %215, label %216, label %319

216:                                              ; preds = %212
  %217 = load %struct.TYPE_19__*, %struct.TYPE_19__** @outLightmaps, align 8
  %218 = load i32, i32* %3, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %217, i64 %219
  store %struct.TYPE_19__* %220, %struct.TYPE_19__** %16, align 8
  %221 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %222 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %225 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %224, i32 0, i32 2
  %226 = load i64, i64* %225, align 8
  %227 = icmp slt i64 %223, %226
  br i1 %227, label %228, label %229

228:                                              ; preds = %216
  br label %316

229:                                              ; preds = %216
  %230 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %231 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %234 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %233, i32 0, i32 3
  %235 = load i32, i32* %234, align 8
  %236 = icmp ne i32 %232, %235
  br i1 %236, label %245, label %237

237:                                              ; preds = %229
  %238 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %239 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %242 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %241, i32 0, i32 4
  %243 = load i32, i32* %242, align 4
  %244 = icmp ne i32 %240, %243
  br i1 %244, label %245, label %246

245:                                              ; preds = %237, %229
  br label %316

246:                                              ; preds = %237
  %247 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %248 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %247, i32 0, i32 13
  %249 = load i64*, i64** %248, align 8
  %250 = load i32, i32* %5, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i64, i64* %249, i64 %251
  %253 = load i64, i64* %252, align 8
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %262

255:                                              ; preds = %246
  %256 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %257 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 8
  store i32 %258, i32* %6, align 4
  %259 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %260 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %259, i32 0, i32 2
  %261 = load i32, i32* %260, align 4
  store i32 %261, i32* %7, align 4
  br label %279

262:                                              ; preds = %246
  %263 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %264 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 8
  %266 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %267 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %266, i32 0, i32 7
  %268 = load i32, i32* %267, align 8
  %269 = sub nsw i32 %265, %268
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %6, align 4
  %271 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %272 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 4
  %274 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %275 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %274, i32 0, i32 8
  %276 = load i32, i32* %275, align 4
  %277 = sub nsw i32 %273, %276
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %7, align 4
  br label %279

279:                                              ; preds = %262, %255
  store i32 0, i32* %9, align 4
  br label %280

280:                                              ; preds = %308, %279
  %281 = load i32, i32* %9, align 4
  %282 = load i32, i32* %7, align 4
  %283 = icmp slt i32 %281, %282
  br i1 %283, label %284, label %311

284:                                              ; preds = %280
  store i32 0, i32* %8, align 4
  br label %285

285:                                              ; preds = %300, %284
  %286 = load i32, i32* %8, align 4
  %287 = load i32, i32* %6, align 4
  %288 = icmp slt i32 %286, %287
  br i1 %288, label %289, label %303

289:                                              ; preds = %285
  %290 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %291 = load i32, i32* %5, align 4
  %292 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %293 = load i32, i32* %8, align 4
  %294 = load i32, i32* %9, align 4
  %295 = call i64 @TestOutLightmapStamp(%struct.TYPE_18__* %290, i32 %291, %struct.TYPE_19__* %292, i32 %293, i32 %294)
  store i64 %295, i64* %23, align 8
  %296 = load i64, i64* %23, align 8
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %299

298:                                              ; preds = %289
  br label %303

299:                                              ; preds = %289
  br label %300

300:                                              ; preds = %299
  %301 = load i32, i32* %8, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %8, align 4
  br label %285

303:                                              ; preds = %298, %285
  %304 = load i64, i64* %23, align 8
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %307

306:                                              ; preds = %303
  br label %311

307:                                              ; preds = %303
  br label %308

308:                                              ; preds = %307
  %309 = load i32, i32* %9, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %9, align 4
  br label %280

311:                                              ; preds = %306, %280
  %312 = load i64, i64* %23, align 8
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %315

314:                                              ; preds = %311
  br label %319

315:                                              ; preds = %311
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %316

316:                                              ; preds = %315, %245, %228
  %317 = load i32, i32* %3, align 4
  %318 = add nsw i32 %317, 1
  store i32 %318, i32* %3, align 4
  br label %212

319:                                              ; preds = %314, %212
  br label %320

320:                                              ; preds = %319, %207
  %321 = load i64, i64* %23, align 8
  %322 = load i64, i64* @qfalse, align 8
  %323 = icmp eq i64 %321, %322
  br i1 %323, label %324, label %389

324:                                              ; preds = %320
  %325 = load i32, i32* @numOutLightmaps, align 4
  %326 = add nsw i32 %325, 2
  store i32 %326, i32* @numOutLightmaps, align 4
  %327 = load i32, i32* @numOutLightmaps, align 4
  %328 = sext i32 %327 to i64
  %329 = mul i64 %328, 72
  %330 = trunc i64 %329 to i32
  %331 = call %struct.TYPE_19__* @safe_malloc(i32 %330)
  store %struct.TYPE_19__* %331, %struct.TYPE_19__** %16, align 8
  %332 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %333 = icmp ne %struct.TYPE_19__* %332, null
  br i1 %333, label %336, label %334

334:                                              ; preds = %324
  %335 = call i32 @Error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %336

336:                                              ; preds = %334, %324
  %337 = load %struct.TYPE_19__*, %struct.TYPE_19__** @outLightmaps, align 8
  %338 = icmp ne %struct.TYPE_19__* %337, null
  br i1 %338, label %339, label %353

339:                                              ; preds = %336
  %340 = load i32, i32* @numOutLightmaps, align 4
  %341 = icmp sgt i32 %340, 2
  br i1 %341, label %342, label %353

342:                                              ; preds = %339
  %343 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %344 = load %struct.TYPE_19__*, %struct.TYPE_19__** @outLightmaps, align 8
  %345 = load i32, i32* @numOutLightmaps, align 4
  %346 = sub nsw i32 %345, 2
  %347 = sext i32 %346 to i64
  %348 = mul i64 %347, 72
  %349 = trunc i64 %348 to i32
  %350 = call i32 @memcpy(%struct.TYPE_19__* %343, %struct.TYPE_19__* %344, i32 %349)
  %351 = load %struct.TYPE_19__*, %struct.TYPE_19__** @outLightmaps, align 8
  %352 = call i32 @free(%struct.TYPE_19__* %351)
  br label %353

353:                                              ; preds = %342, %339, %336
  %354 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  store %struct.TYPE_19__* %354, %struct.TYPE_19__** @outLightmaps, align 8
  %355 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %356 = load %struct.TYPE_19__*, %struct.TYPE_19__** @outLightmaps, align 8
  %357 = load i32, i32* @numOutLightmaps, align 4
  %358 = sub nsw i32 %357, 2
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %356, i64 %359
  %361 = call i32 @SetupOutLightmap(%struct.TYPE_18__* %355, %struct.TYPE_19__* %360)
  %362 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %363 = load %struct.TYPE_19__*, %struct.TYPE_19__** @outLightmaps, align 8
  %364 = load i32, i32* @numOutLightmaps, align 4
  %365 = sub nsw i32 %364, 1
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %363, i64 %366
  %368 = call i32 @SetupOutLightmap(%struct.TYPE_18__* %362, %struct.TYPE_19__* %367)
  %369 = load i32, i32* @numOutLightmaps, align 4
  %370 = sub nsw i32 %369, 2
  store i32 %370, i32* %3, align 4
  %371 = load %struct.TYPE_19__*, %struct.TYPE_19__** @outLightmaps, align 8
  %372 = load i32, i32* %3, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %371, i64 %373
  store %struct.TYPE_19__* %374, %struct.TYPE_19__** %16, align 8
  %375 = load i32, i32* %5, align 4
  %376 = icmp sgt i32 %375, 0
  br i1 %376, label %377, label %388

377:                                              ; preds = %353
  %378 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %379 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %378, i32 0, i32 5
  %380 = load i32*, i32** %379, align 8
  %381 = getelementptr inbounds i32, i32* %380, i64 0
  %382 = load i32, i32* %381, align 4
  store i32 %382, i32* %8, align 4
  %383 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %384 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %383, i32 0, i32 6
  %385 = load i32*, i32** %384, align 8
  %386 = getelementptr inbounds i32, i32* %385, i64 0
  %387 = load i32, i32* %386, align 4
  store i32 %387, i32* %9, align 4
  br label %388

388:                                              ; preds = %377, %353
  br label %389

389:                                              ; preds = %388, %320
  %390 = load i32, i32* %5, align 4
  %391 = icmp sgt i32 %390, 0
  br i1 %391, label %392, label %401

392:                                              ; preds = %389
  %393 = load %struct.TYPE_20__*, %struct.TYPE_20__** @game, align 8
  %394 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %393, i32 0, i32 0
  %395 = load i64, i64* %394, align 8
  %396 = load i64, i64* @LoadRBSPFile, align 8
  %397 = icmp ne i64 %395, %396
  br i1 %397, label %398, label %401

398:                                              ; preds = %392
  %399 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %400 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %399, i32 0, i32 9
  store i64 0, i64* %400, align 8
  br label %401

401:                                              ; preds = %398, %392, %389
  %402 = load i32, i32* %3, align 4
  %403 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %404 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %403, i32 0, i32 0
  %405 = load i32*, i32** %404, align 8
  %406 = load i32, i32* %5, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds i32, i32* %405, i64 %407
  store i32 %402, i32* %408, align 4
  %409 = load i32, i32* %8, align 4
  %410 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %411 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %410, i32 0, i32 5
  %412 = load i32*, i32** %411, align 8
  %413 = load i32, i32* %5, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds i32, i32* %412, i64 %414
  store i32 %409, i32* %415, align 4
  %416 = load i32, i32* %9, align 4
  %417 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %418 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %417, i32 0, i32 6
  %419 = load i32*, i32** %418, align 8
  %420 = load i32, i32* %5, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds i32, i32* %419, i64 %421
  store i32 %416, i32* %422, align 4
  %423 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %424 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %423, i32 0, i32 8
  %425 = load i32, i32* %424, align 8
  %426 = add nsw i32 %425, 1
  store i32 %426, i32* %424, align 8
  store i32 0, i32* %3, align 4
  br label %427

427:                                              ; preds = %499, %401
  %428 = load i32, i32* %3, align 4
  %429 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %430 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %429, i32 0, i32 9
  %431 = load i32, i32* %430, align 8
  %432 = icmp slt i32 %428, %431
  br i1 %432, label %433, label %502

433:                                              ; preds = %427
  %434 = load %struct.TYPE_17__*, %struct.TYPE_17__** @surfaceInfos, align 8
  %435 = load i64*, i64** @lightSurfaces, align 8
  %436 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %437 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %436, i32 0, i32 10
  %438 = load i32, i32* %437, align 4
  %439 = load i32, i32* %3, align 4
  %440 = add nsw i32 %438, %439
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds i64, i64* %435, i64 %441
  %443 = load i64, i64* %442, align 8
  %444 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %434, i64 %443
  store %struct.TYPE_17__* %444, %struct.TYPE_17__** %17, align 8
  store i32 0, i32* %4, align 4
  br label %445

445:                                              ; preds = %465, %433
  %446 = load i32, i32* %4, align 4
  %447 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %448 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %447, i32 0, i32 3
  %449 = load i32, i32* %448, align 8
  %450 = icmp slt i32 %446, %449
  br i1 %450, label %451, label %468

451:                                              ; preds = %445
  %452 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %453 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %452, i32 0, i32 4
  %454 = load i64*, i64** %453, align 8
  %455 = load i32, i32* %4, align 4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds i64, i64* %454, i64 %456
  %458 = load i64, i64* %457, align 8
  %459 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %460 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %459, i32 0, i32 0
  %461 = load i64, i64* %460, align 8
  %462 = icmp eq i64 %458, %461
  br i1 %462, label %463, label %464

463:                                              ; preds = %451
  br label %468

464:                                              ; preds = %451
  br label %465

465:                                              ; preds = %464
  %466 = load i32, i32* %4, align 4
  %467 = add nsw i32 %466, 1
  store i32 %467, i32* %4, align 4
  br label %445

468:                                              ; preds = %463, %445
  %469 = load i32, i32* %4, align 4
  %470 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %471 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %470, i32 0, i32 3
  %472 = load i32, i32* %471, align 8
  %473 = icmp sge i32 %469, %472
  br i1 %473, label %474, label %498

474:                                              ; preds = %468
  %475 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %476 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %475, i32 0, i32 3
  %477 = load i32, i32* %476, align 8
  %478 = load i32, i32* @MAX_LIGHTMAP_SHADERS, align 4
  %479 = icmp slt i32 %477, %478
  br i1 %479, label %480, label %498

480:                                              ; preds = %474
  %481 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %482 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %481, i32 0, i32 0
  %483 = load i64, i64* %482, align 8
  %484 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %485 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %484, i32 0, i32 4
  %486 = load i64*, i64** %485, align 8
  %487 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %488 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %487, i32 0, i32 3
  %489 = load i32, i32* %488, align 8
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds i64, i64* %486, i64 %490
  store i64 %483, i64* %491, align 8
  %492 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %493 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %492, i32 0, i32 3
  %494 = load i32, i32* %493, align 8
  %495 = add nsw i32 %494, 1
  store i32 %495, i32* %493, align 8
  %496 = load i32, i32* @numLightmapShaders, align 4
  %497 = add nsw i32 %496, 1
  store i32 %497, i32* @numLightmapShaders, align 4
  br label %498

498:                                              ; preds = %480, %474, %468
  br label %499

499:                                              ; preds = %498
  %500 = load i32, i32* %3, align 4
  %501 = add nsw i32 %500, 1
  store i32 %501, i32* %3, align 4
  br label %427

502:                                              ; preds = %427
  %503 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %504 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %503, i32 0, i32 13
  %505 = load i64*, i64** %504, align 8
  %506 = load i32, i32* %5, align 4
  %507 = sext i32 %506 to i64
  %508 = getelementptr inbounds i64, i64* %505, i64 %507
  %509 = load i64, i64* %508, align 8
  %510 = icmp ne i64 %509, 0
  br i1 %510, label %511, label %512

511:                                              ; preds = %502
  store i32 1, i32* %6, align 4
  store i32 1, i32* %7, align 4
  br label %519

512:                                              ; preds = %502
  %513 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %514 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %513, i32 0, i32 7
  %515 = load i32, i32* %514, align 8
  store i32 %515, i32* %6, align 4
  %516 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %517 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %516, i32 0, i32 8
  %518 = load i32, i32* %517, align 4
  store i32 %518, i32* %7, align 4
  br label %519

519:                                              ; preds = %512, %511
  store i32 0, i32* %9, align 4
  br label %520

520:                                              ; preds = %743, %519
  %521 = load i32, i32* %9, align 4
  %522 = load i32, i32* %7, align 4
  %523 = icmp slt i32 %521, %522
  br i1 %523, label %524, label %746

524:                                              ; preds = %520
  store i32 0, i32* %8, align 4
  br label %525

525:                                              ; preds = %739, %524
  %526 = load i32, i32* %8, align 4
  %527 = load i32, i32* %6, align 4
  %528 = icmp slt i32 %526, %527
  br i1 %528, label %529, label %742

529:                                              ; preds = %525
  %530 = load i32, i32* %5, align 4
  %531 = load i32, i32* %8, align 4
  %532 = load i32, i32* %9, align 4
  %533 = call float* @BSP_LUXEL(i32 %530, i32 %531, i32 %532)
  store float* %533, float** %18, align 8
  %534 = load i32, i32* %8, align 4
  %535 = load i32, i32* %9, align 4
  %536 = call float* @BSP_DELUXEL(i32 %534, i32 %535)
  store float* %536, float** %19, align 8
  %537 = load float*, float** %18, align 8
  %538 = getelementptr inbounds float, float* %537, i64 0
  %539 = load float, float* %538, align 4
  %540 = fcmp olt float %539, 0.000000e+00
  br i1 %540, label %541, label %551

541:                                              ; preds = %529
  %542 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %543 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %542, i32 0, i32 13
  %544 = load i64*, i64** %543, align 8
  %545 = load i32, i32* %5, align 4
  %546 = sext i32 %545 to i64
  %547 = getelementptr inbounds i64, i64* %544, i64 %546
  %548 = load i64, i64* %547, align 8
  %549 = icmp ne i64 %548, 0
  br i1 %549, label %551, label %550

550:                                              ; preds = %541
  br label %739

551:                                              ; preds = %541, %529
  %552 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %553 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %552, i32 0, i32 13
  %554 = load i64*, i64** %553, align 8
  %555 = load i32, i32* %5, align 4
  %556 = sext i32 %555 to i64
  %557 = getelementptr inbounds i64, i64* %554, i64 %556
  %558 = load i64, i64* %557, align 8
  %559 = icmp ne i64 %558, 0
  br i1 %559, label %560, label %577

560:                                              ; preds = %551
  %561 = load i64, i64* @debug, align 8
  %562 = icmp ne i64 %561, 0
  br i1 %562, label %563, label %566

563:                                              ; preds = %560
  %564 = load i64*, i64** %20, align 8
  %565 = call i32 @VectorSet(i64* %564, float 2.550000e+02, float 0.000000e+00, float 0.000000e+00)
  br label %576

566:                                              ; preds = %560
  %567 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %568 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %567, i32 0, i32 11
  %569 = load float**, float*** %568, align 8
  %570 = load i32, i32* %5, align 4
  %571 = sext i32 %570 to i64
  %572 = getelementptr inbounds float*, float** %569, i64 %571
  %573 = load float*, float** %572, align 8
  %574 = load i64*, i64** %20, align 8
  %575 = call i32 @VectorCopy(float* %573, i64* %574)
  br label %576

576:                                              ; preds = %566, %563
  br label %581

577:                                              ; preds = %551
  %578 = load float*, float** %18, align 8
  %579 = load i64*, i64** %20, align 8
  %580 = call i32 @VectorCopy(float* %578, i64* %579)
  br label %581

581:                                              ; preds = %577, %576
  %582 = load i32, i32* %5, align 4
  %583 = icmp eq i32 %582, 0
  br i1 %583, label %584, label %615

584:                                              ; preds = %581
  store i32 0, i32* %3, align 4
  br label %585

585:                                              ; preds = %611, %584
  %586 = load i32, i32* %3, align 4
  %587 = icmp slt i32 %586, 3
  br i1 %587, label %588, label %614

588:                                              ; preds = %585
  %589 = load i64*, i64** %20, align 8
  %590 = load i32, i32* %3, align 4
  %591 = sext i32 %590 to i64
  %592 = getelementptr inbounds i64, i64* %589, i64 %591
  %593 = load i64, i64* %592, align 8
  %594 = load i64*, i64** @minLight, align 8
  %595 = load i32, i32* %3, align 4
  %596 = sext i32 %595 to i64
  %597 = getelementptr inbounds i64, i64* %594, i64 %596
  %598 = load i64, i64* %597, align 8
  %599 = icmp slt i64 %593, %598
  br i1 %599, label %600, label %610

600:                                              ; preds = %588
  %601 = load i64*, i64** @minLight, align 8
  %602 = load i32, i32* %3, align 4
  %603 = sext i32 %602 to i64
  %604 = getelementptr inbounds i64, i64* %601, i64 %603
  %605 = load i64, i64* %604, align 8
  %606 = load i64*, i64** %20, align 8
  %607 = load i32, i32* %3, align 4
  %608 = sext i32 %607 to i64
  %609 = getelementptr inbounds i64, i64* %606, i64 %608
  store i64 %605, i64* %609, align 8
  br label %610

610:                                              ; preds = %600, %588
  br label %611

611:                                              ; preds = %610
  %612 = load i32, i32* %3, align 4
  %613 = add nsw i32 %612, 1
  store i32 %613, i32* %3, align 4
  br label %585

614:                                              ; preds = %585
  br label %615

615:                                              ; preds = %614, %581
  %616 = load i32, i32* %8, align 4
  %617 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %618 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %617, i32 0, i32 5
  %619 = load i32*, i32** %618, align 8
  %620 = load i32, i32* %5, align 4
  %621 = sext i32 %620 to i64
  %622 = getelementptr inbounds i32, i32* %619, i64 %621
  %623 = load i32, i32* %622, align 4
  %624 = add nsw i32 %616, %623
  store i32 %624, i32* %12, align 4
  %625 = load i32, i32* %9, align 4
  %626 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %627 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %626, i32 0, i32 6
  %628 = load i32*, i32** %627, align 8
  %629 = load i32, i32* %5, align 4
  %630 = sext i32 %629 to i64
  %631 = getelementptr inbounds i32, i32* %628, i64 %630
  %632 = load i32, i32* %631, align 4
  %633 = add nsw i32 %625, %632
  store i32 %633, i32* %13, align 4
  %634 = load i32, i32* %13, align 4
  %635 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %636 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %635, i32 0, i32 1
  %637 = load i32, i32* %636, align 8
  %638 = mul nsw i32 %634, %637
  %639 = load i32, i32* %12, align 4
  %640 = add nsw i32 %638, %639
  store i32 %640, i32* %14, align 4
  %641 = load i32, i32* %14, align 4
  %642 = and i32 %641, 7
  %643 = shl i32 1, %642
  %644 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %645 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %644, i32 0, i32 5
  %646 = load i32*, i32** %645, align 8
  %647 = load i32, i32* %14, align 4
  %648 = ashr i32 %647, 3
  %649 = sext i32 %648 to i64
  %650 = getelementptr inbounds i32, i32* %646, i64 %649
  %651 = load i32, i32* %650, align 4
  %652 = or i32 %651, %643
  store i32 %652, i32* %650, align 4
  %653 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %654 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %653, i32 0, i32 0
  %655 = load i64, i64* %654, align 8
  %656 = add nsw i64 %655, -1
  store i64 %656, i64* %654, align 8
  %657 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %658 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %657, i32 0, i32 6
  %659 = load i32*, i32** %658, align 8
  %660 = load i32, i32* %13, align 4
  %661 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %662 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %661, i32 0, i32 1
  %663 = load i32, i32* %662, align 8
  %664 = mul nsw i32 %660, %663
  %665 = load i32, i32* %12, align 4
  %666 = add nsw i32 %664, %665
  %667 = mul nsw i32 %666, 3
  %668 = sext i32 %667 to i64
  %669 = getelementptr inbounds i32, i32* %659, i64 %668
  store i32* %669, i32** %22, align 8
  %670 = load i64*, i64** %20, align 8
  %671 = load i32*, i32** %22, align 8
  %672 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %673 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %672, i32 0, i32 12
  %674 = load i32, i32* %673, align 8
  %675 = call i32 @ColorToBytes(i64* %670, i32* %671, i32 %674)
  %676 = load i64, i64* @deluxemap, align 8
  %677 = icmp ne i64 %676, 0
  br i1 %677, label %678, label %738

678:                                              ; preds = %615
  %679 = load float*, float** %19, align 8
  %680 = load i64*, i64** %21, align 8
  %681 = call i64 @VectorNormalize(float* %679, i64* %680)
  %682 = icmp ne i64 %681, 0
  br i1 %682, label %683, label %737

683:                                              ; preds = %678
  %684 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %685 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %684, i32 0, i32 7
  %686 = load i32*, i32** %685, align 8
  %687 = load i32, i32* %13, align 4
  %688 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %689 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %688, i32 0, i32 1
  %690 = load i32, i32* %689, align 8
  %691 = mul nsw i32 %687, %690
  %692 = load i32, i32* %12, align 4
  %693 = add nsw i32 %691, %692
  %694 = mul nsw i32 %693, 3
  %695 = sext i32 %694 to i64
  %696 = getelementptr inbounds i32, i32* %686, i64 %695
  store i32* %696, i32** %22, align 8
  store i32 0, i32* %3, align 4
  br label %697

697:                                              ; preds = %733, %683
  %698 = load i32, i32* %3, align 4
  %699 = icmp slt i32 %698, 3
  br i1 %699, label %700, label %736

700:                                              ; preds = %697
  %701 = load i64*, i64** %21, align 8
  %702 = load i32, i32* %3, align 4
  %703 = sext i32 %702 to i64
  %704 = getelementptr inbounds i64, i64* %701, i64 %703
  %705 = load i64, i64* %704, align 8
  %706 = sitofp i64 %705 to float
  %707 = fadd float %706, 1.000000e+00
  %708 = fmul float %707, 1.275000e+02
  %709 = fptosi float %708 to i32
  store i32 %709, i32* %15, align 4
  %710 = load i32, i32* %15, align 4
  %711 = icmp slt i32 %710, 0
  br i1 %711, label %712, label %717

712:                                              ; preds = %700
  %713 = load i32*, i32** %22, align 8
  %714 = load i32, i32* %3, align 4
  %715 = sext i32 %714 to i64
  %716 = getelementptr inbounds i32, i32* %713, i64 %715
  store i32 0, i32* %716, align 4
  br label %732

717:                                              ; preds = %700
  %718 = load i32, i32* %15, align 4
  %719 = icmp sgt i32 %718, 255
  br i1 %719, label %720, label %725

720:                                              ; preds = %717
  %721 = load i32*, i32** %22, align 8
  %722 = load i32, i32* %3, align 4
  %723 = sext i32 %722 to i64
  %724 = getelementptr inbounds i32, i32* %721, i64 %723
  store i32 255, i32* %724, align 4
  br label %731

725:                                              ; preds = %717
  %726 = load i32, i32* %15, align 4
  %727 = load i32*, i32** %22, align 8
  %728 = load i32, i32* %3, align 4
  %729 = sext i32 %728 to i64
  %730 = getelementptr inbounds i32, i32* %727, i64 %729
  store i32 %726, i32* %730, align 4
  br label %731

731:                                              ; preds = %725, %720
  br label %732

732:                                              ; preds = %731, %712
  br label %733

733:                                              ; preds = %732
  %734 = load i32, i32* %3, align 4
  %735 = add nsw i32 %734, 1
  store i32 %735, i32* %3, align 4
  br label %697

736:                                              ; preds = %697
  br label %737

737:                                              ; preds = %736, %678
  br label %738

738:                                              ; preds = %737, %615
  br label %739

739:                                              ; preds = %738, %550
  %740 = load i32, i32* %8, align 4
  %741 = add nsw i32 %740, 1
  store i32 %741, i32* %8, align 4
  br label %525

742:                                              ; preds = %525
  br label %743

743:                                              ; preds = %742
  %744 = load i32, i32* %9, align 4
  %745 = add nsw i32 %744, 1
  store i32 %745, i32* %9, align 4
  br label %520

746:                                              ; preds = %520
  br label %747

747:                                              ; preds = %746, %68, %58
  %748 = load i32, i32* %5, align 4
  %749 = add nsw i32 %748, 1
  store i32 %749, i32* %5, align 4
  br label %44

750:                                              ; preds = %42, %44
  ret void
}

declare dso_local i64 @ApproximateLightmap(%struct.TYPE_18__*) #1

declare dso_local i64 @TestOutLightmapStamp(%struct.TYPE_18__*, i32, %struct.TYPE_19__*, i32, i32) #1

declare dso_local %struct.TYPE_19__* @safe_malloc(i32) #1

declare dso_local i32 @Error(i8*) #1

declare dso_local i32 @memcpy(%struct.TYPE_19__*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @free(%struct.TYPE_19__*) #1

declare dso_local i32 @SetupOutLightmap(%struct.TYPE_18__*, %struct.TYPE_19__*) #1

declare dso_local float* @BSP_LUXEL(i32, i32, i32) #1

declare dso_local float* @BSP_DELUXEL(i32, i32) #1

declare dso_local i32 @VectorSet(i64*, float, float, float) #1

declare dso_local i32 @VectorCopy(float*, i64*) #1

declare dso_local i32 @ColorToBytes(i64*, i32*, i32) #1

declare dso_local i64 @VectorNormalize(float*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
