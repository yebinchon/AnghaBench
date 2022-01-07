; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_route.c_AAS_NearestHideArea.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_route.c_AAS_NearestHideArea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_7__*, i32** }
%struct.TYPE_6__ = type { i32, i64*, i16, i8*, %struct.TYPE_6__*, %struct.TYPE_6__*, i32 }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_7__ = type { i32, i16, i64*, i32, i32 }

@AAS_NearestHideArea.hidetraveltimes = internal global i16* null, align 8
@aasworld = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@qtrue = common dso_local global i8* null, align 8
@qfalse = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AAS_NearestHideArea(i32 %0, i64* %1, i32 %2, i32 %3, i64* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i16, align 2
  %22 = alloca i16, align 2
  %23 = alloca %struct.TYPE_6__*, align 8
  %24 = alloca %struct.TYPE_6__*, align 8
  %25 = alloca %struct.TYPE_6__*, align 8
  %26 = alloca %struct.TYPE_6__*, align 8
  %27 = alloca %struct.TYPE_7__*, align 8
  %28 = alloca float, align 4
  %29 = alloca float, align 4
  %30 = alloca i64*, align 8
  %31 = alloca i64*, align 8
  %32 = alloca i64*, align 8
  %33 = alloca i8*, align 8
  store i32 %0, i32* %8, align 4
  store i64* %1, i64** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i64* %4, i64** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %34 = load i16*, i16** @AAS_NearestHideArea.hidetraveltimes, align 8
  %35 = icmp ne i16* %34, null
  br i1 %35, label %43, label %36

36:                                               ; preds = %7
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @aasworld, i32 0, i32 0), align 8
  %38 = sext i32 %37 to i64
  %39 = mul i64 %38, 2
  %40 = trunc i64 %39 to i32
  %41 = call i64 @GetClearedMemory(i32 %40)
  %42 = inttoptr i64 %41 to i16*
  store i16* %42, i16** @AAS_NearestHideArea.hidetraveltimes, align 8
  br label %50

43:                                               ; preds = %7
  %44 = load i16*, i16** @AAS_NearestHideArea.hidetraveltimes, align 8
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @aasworld, i32 0, i32 0), align 8
  %46 = sext i32 %45 to i64
  %47 = mul i64 %46, 2
  %48 = trunc i64 %47 to i32
  %49 = call i32 @Com_Memset(i16* %44, i32 0, i32 %48)
  br label %50

50:                                               ; preds = %43, %36
  store i16 0, i16* %22, align 2
  store i32 0, i32* %20, align 4
  %51 = load i8*, i8** @qtrue, align 8
  store i8* %51, i8** %33, align 8
  %52 = load i32, i32* %14, align 4
  %53 = xor i32 %52, -1
  store i32 %53, i32* %18, align 4
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @aasworld, i32 0, i32 1), align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i64 %56
  store %struct.TYPE_6__* %57, %struct.TYPE_6__** %25, align 8
  %58 = load i32, i32* %10, align 4
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load i64*, i64** %9, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load i64*, i64** %63, align 8
  %65 = call i32 @VectorCopy(i64* %61, i64* %64)
  %66 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @aasworld, i32 0, i32 4), align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32*, i32** %66, i64 %68
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 6
  store i32 %72, i32* %74, align 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 2
  store i16 0, i16* %76, align 8
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 4
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %78, align 8
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 5
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %80, align 8
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  store %struct.TYPE_6__* %81, %struct.TYPE_6__** %23, align 8
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  store %struct.TYPE_6__* %82, %struct.TYPE_6__** %24, align 8
  br label %83

83:                                               ; preds = %390, %50
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %85 = icmp ne %struct.TYPE_6__* %84, null
  br i1 %85, label %86, label %391

86:                                               ; preds = %83
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  store %struct.TYPE_6__* %87, %struct.TYPE_6__** %25, align 8
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 4
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = icmp ne %struct.TYPE_6__* %90, null
  br i1 %91, label %92, label %97

92:                                               ; preds = %86
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 4
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 5
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %96, align 8
  br label %98

97:                                               ; preds = %86
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %24, align 8
  br label %98

98:                                               ; preds = %97, %92
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 4
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  store %struct.TYPE_6__* %101, %struct.TYPE_6__** %23, align 8
  %102 = load i8*, i8** @qfalse, align 8
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 3
  store i8* %102, i8** %104, align 8
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @aasworld, i32 0, i32 2), align 8
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  store i32 %112, i32* %19, align 4
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @aasworld, i32 0, i32 3), align 8
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @aasworld, i32 0, i32 2), align 8
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i64 %121
  store %struct.TYPE_7__* %122, %struct.TYPE_7__** %27, align 8
  store i32 0, i32* %15, align 4
  br label %123

123:                                              ; preds = %385, %98
  %124 = load i32, i32* %15, align 4
  %125 = load i32, i32* %19, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %390

127:                                              ; preds = %123
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @AAS_TravelFlagForType_inline(i32 %130)
  %132 = load i32, i32* %18, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %127
  br label %385

136:                                              ; preds = %127
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @AAS_AreaContentsTravelFlags_inline(i32 %139)
  %141 = load i32, i32* %18, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %136
  br label %385

145:                                              ; preds = %136
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  store i32 %148, i32* %17, align 4
  %149 = load i32, i32* %17, align 4
  %150 = load i32, i32* %13, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %145
  br label %385

153:                                              ; preds = %145
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 2
  %156 = load i16, i16* %155, align 8
  %157 = zext i16 %156 to i32
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = sext i32 %160 to i64
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 1
  %164 = load i64*, i64** %163, align 8
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 8
  %168 = call zeroext i16 @AAS_AreaTravelTime(i64 %161, i64* %164, i32 %167)
  %169 = zext i16 %168 to i32
  %170 = add nsw i32 %157, %169
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 1
  %173 = load i16, i16* %172, align 4
  %174 = zext i16 %173 to i32
  %175 = add nsw i32 %170, %174
  %176 = trunc i32 %175 to i16
  store i16 %176, i16* %21, align 2
  %177 = load i64*, i64** %12, align 8
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 1
  %180 = load i64*, i64** %179, align 8
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 2
  %183 = load i64*, i64** %182, align 8
  %184 = load i64*, i64** %32, align 8
  %185 = call i32 @AAS_ProjectPointOntoVector(i64* %177, i64* %180, i64* %183, i64* %184)
  store i32 0, i32* %16, align 4
  br label %186

186:                                              ; preds = %247, %153
  %187 = load i32, i32* %16, align 4
  %188 = icmp slt i32 %187, 3
  br i1 %188, label %189, label %250

189:                                              ; preds = %186
  %190 = load i64*, i64** %32, align 8
  %191 = load i32, i32* %16, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i64, i64* %190, i64 %192
  %194 = load i64, i64* %193, align 8
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 1
  %197 = load i64*, i64** %196, align 8
  %198 = load i32, i32* %16, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i64, i64* %197, i64 %199
  %201 = load i64, i64* %200, align 8
  %202 = icmp sgt i64 %194, %201
  br i1 %202, label %203, label %217

203:                                              ; preds = %189
  %204 = load i64*, i64** %32, align 8
  %205 = load i32, i32* %16, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i64, i64* %204, i64 %206
  %208 = load i64, i64* %207, align 8
  %209 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 2
  %211 = load i64*, i64** %210, align 8
  %212 = load i32, i32* %16, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i64, i64* %211, i64 %213
  %215 = load i64, i64* %214, align 8
  %216 = icmp sgt i64 %208, %215
  br i1 %216, label %245, label %217

217:                                              ; preds = %203, %189
  %218 = load i64*, i64** %32, align 8
  %219 = load i32, i32* %16, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i64, i64* %218, i64 %220
  %222 = load i64, i64* %221, align 8
  %223 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 1
  %225 = load i64*, i64** %224, align 8
  %226 = load i32, i32* %16, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i64, i64* %225, i64 %227
  %229 = load i64, i64* %228, align 8
  %230 = icmp slt i64 %222, %229
  br i1 %230, label %231, label %246

231:                                              ; preds = %217
  %232 = load i64*, i64** %32, align 8
  %233 = load i32, i32* %16, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i64, i64* %232, i64 %234
  %236 = load i64, i64* %235, align 8
  %237 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %237, i32 0, i32 2
  %239 = load i64*, i64** %238, align 8
  %240 = load i32, i32* %16, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i64, i64* %239, i64 %241
  %243 = load i64, i64* %242, align 8
  %244 = icmp slt i64 %236, %243
  br i1 %244, label %245, label %246

245:                                              ; preds = %231, %203
  br label %250

246:                                              ; preds = %231, %217
  br label %247

247:                                              ; preds = %246
  %248 = load i32, i32* %16, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %16, align 4
  br label %186

250:                                              ; preds = %245, %186
  %251 = load i32, i32* %16, align 4
  %252 = icmp slt i32 %251, 3
  br i1 %252, label %253, label %260

253:                                              ; preds = %250
  %254 = load i64*, i64** %12, align 8
  %255 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %256 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %255, i32 0, i32 2
  %257 = load i64*, i64** %256, align 8
  %258 = load i64*, i64** %31, align 8
  %259 = call i32 @VectorSubtract(i64* %254, i64* %257, i64* %258)
  br label %265

260:                                              ; preds = %250
  %261 = load i64*, i64** %12, align 8
  %262 = load i64*, i64** %32, align 8
  %263 = load i64*, i64** %31, align 8
  %264 = call i32 @VectorSubtract(i64* %261, i64* %262, i64* %263)
  br label %265

265:                                              ; preds = %260, %253
  %266 = load i64*, i64** %31, align 8
  %267 = call float @VectorLength(i64* %266)
  store float %267, float* %29, align 4
  %268 = load float, float* %29, align 4
  %269 = fcmp olt float %268, 4.000000e+01
  br i1 %269, label %270, label %271

270:                                              ; preds = %265
  br label %385

271:                                              ; preds = %265
  %272 = load i64*, i64** %12, align 8
  %273 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %274 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %273, i32 0, i32 1
  %275 = load i64*, i64** %274, align 8
  %276 = load i64*, i64** %30, align 8
  %277 = call i32 @VectorSubtract(i64* %272, i64* %275, i64* %276)
  %278 = load i64*, i64** %30, align 8
  %279 = call float @VectorLength(i64* %278)
  store float %279, float* %28, align 4
  %280 = load float, float* %29, align 4
  %281 = load float, float* %28, align 4
  %282 = fcmp olt float %280, %281
  br i1 %282, label %283, label %292

283:                                              ; preds = %271
  %284 = load float, float* %28, align 4
  %285 = load float, float* %29, align 4
  %286 = fsub float %284, %285
  %287 = fmul float %286, 1.000000e+01
  %288 = load i16, i16* %21, align 2
  %289 = uitofp i16 %288 to float
  %290 = fadd float %289, %287
  %291 = fptoui float %290 to i16
  store i16 %291, i16* %21, align 2
  br label %292

292:                                              ; preds = %283, %271
  %293 = load i8*, i8** %33, align 8
  %294 = icmp ne i8* %293, null
  br i1 %294, label %301, label %295

295:                                              ; preds = %292
  %296 = load i32, i32* %13, align 4
  %297 = load i32, i32* %17, align 4
  %298 = call i64 @AAS_AreaVisible(i32 %296, i32 %297)
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %301

300:                                              ; preds = %295
  br label %385

301:                                              ; preds = %295, %292
  %302 = load i16, i16* %22, align 2
  %303 = zext i16 %302 to i32
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %312

305:                                              ; preds = %301
  %306 = load i16, i16* %21, align 2
  %307 = zext i16 %306 to i32
  %308 = load i16, i16* %22, align 2
  %309 = zext i16 %308 to i32
  %310 = icmp sge i32 %307, %309
  br i1 %310, label %311, label %312

311:                                              ; preds = %305
  br label %385

312:                                              ; preds = %305, %301
  %313 = load i16*, i16** @AAS_NearestHideArea.hidetraveltimes, align 8
  %314 = load i32, i32* %17, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i16, i16* %313, i64 %315
  %317 = load i16, i16* %316, align 2
  %318 = icmp ne i16 %317, 0
  br i1 %318, label %319, label %329

319:                                              ; preds = %312
  %320 = load i16*, i16** @AAS_NearestHideArea.hidetraveltimes, align 8
  %321 = load i32, i32* %17, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i16, i16* %320, i64 %322
  %324 = load i16, i16* %323, align 2
  %325 = zext i16 %324 to i32
  %326 = load i16, i16* %21, align 2
  %327 = zext i16 %326 to i32
  %328 = icmp sgt i32 %325, %327
  br i1 %328, label %329, label %384

329:                                              ; preds = %319, %312
  %330 = load i32, i32* %13, align 4
  %331 = load i32, i32* %17, align 4
  %332 = call i64 @AAS_AreaVisible(i32 %330, i32 %331)
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %337, label %334

334:                                              ; preds = %329
  %335 = load i16, i16* %21, align 2
  store i16 %335, i16* %22, align 2
  %336 = load i32, i32* %17, align 4
  store i32 %336, i32* %20, align 4
  br label %337

337:                                              ; preds = %334, %329
  %338 = load i16, i16* %21, align 2
  %339 = load i16*, i16** @AAS_NearestHideArea.hidetraveltimes, align 8
  %340 = load i32, i32* %17, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i16, i16* %339, i64 %341
  store i16 %338, i16* %342, align 2
  %343 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @aasworld, i32 0, i32 1), align 8
  %344 = load i32, i32* %17, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %343, i64 %345
  store %struct.TYPE_6__* %346, %struct.TYPE_6__** %26, align 8
  %347 = load i32, i32* %17, align 4
  %348 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %349 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %348, i32 0, i32 0
  store i32 %347, i32* %349, align 8
  %350 = load i16, i16* %21, align 2
  %351 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %352 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %351, i32 0, i32 2
  store i16 %350, i16* %352, align 8
  %353 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %354 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %353, i32 0, i32 2
  %355 = load i64*, i64** %354, align 8
  %356 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %357 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %356, i32 0, i32 1
  %358 = load i64*, i64** %357, align 8
  %359 = call i32 @VectorCopy(i64* %355, i64* %358)
  %360 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %361 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %360, i32 0, i32 3
  %362 = load i8*, i8** %361, align 8
  %363 = icmp ne i8* %362, null
  br i1 %363, label %383, label %364

364:                                              ; preds = %337
  %365 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %366 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %365, i32 0, i32 4
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %366, align 8
  %367 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %368 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %369 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %368, i32 0, i32 5
  store %struct.TYPE_6__* %367, %struct.TYPE_6__** %369, align 8
  %370 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %371 = icmp ne %struct.TYPE_6__* %370, null
  br i1 %371, label %372, label %376

372:                                              ; preds = %364
  %373 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %374 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %375 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %374, i32 0, i32 4
  store %struct.TYPE_6__* %373, %struct.TYPE_6__** %375, align 8
  br label %378

376:                                              ; preds = %364
  %377 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  store %struct.TYPE_6__* %377, %struct.TYPE_6__** %23, align 8
  br label %378

378:                                              ; preds = %376, %372
  %379 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  store %struct.TYPE_6__* %379, %struct.TYPE_6__** %24, align 8
  %380 = load i8*, i8** @qtrue, align 8
  %381 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %382 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %381, i32 0, i32 3
  store i8* %380, i8** %382, align 8
  br label %383

383:                                              ; preds = %378, %337
  br label %384

384:                                              ; preds = %383, %319
  br label %385

385:                                              ; preds = %384, %311, %300, %270, %152, %144, %135
  %386 = load i32, i32* %15, align 4
  %387 = add nsw i32 %386, 1
  store i32 %387, i32* %15, align 4
  %388 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %389 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %388, i32 1
  store %struct.TYPE_7__* %389, %struct.TYPE_7__** %27, align 8
  br label %123

390:                                              ; preds = %123
  br label %83

391:                                              ; preds = %83
  %392 = load i32, i32* %20, align 4
  ret i32 %392
}

declare dso_local i64 @GetClearedMemory(i32) #1

declare dso_local i32 @Com_Memset(i16*, i32, i32) #1

declare dso_local i32 @VectorCopy(i64*, i64*) #1

declare dso_local i32 @AAS_TravelFlagForType_inline(i32) #1

declare dso_local i32 @AAS_AreaContentsTravelFlags_inline(i32) #1

declare dso_local zeroext i16 @AAS_AreaTravelTime(i64, i64*, i32) #1

declare dso_local i32 @AAS_ProjectPointOntoVector(i64*, i64*, i64*, i64*) #1

declare dso_local i32 @VectorSubtract(i64*, i64*, i64*) #1

declare dso_local float @VectorLength(i64*) #1

declare dso_local i64 @AAS_AreaVisible(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
