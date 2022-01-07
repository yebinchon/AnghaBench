; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_sky.c_FillCloudBox.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_sky.c_FillCloudBox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32)* }

@HALF_SKY_SUBDIVISIONS = common dso_local global i32 0, align 4
@sky_mins = common dso_local global i32** null, align 8
@sky_maxs = common dso_local global i32** null, align 8
@ri = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@s_skyPoints = common dso_local global i32** null, align 8
@s_cloudTexCoords = common dso_local global i32**** null, align 8
@s_skyTexCoords = common dso_local global i32*** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @FillCloudBox to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FillCloudBox(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [2 x i32], align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %366, %2
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 6
  br i1 %13, label %14, label %369

14:                                               ; preds = %11
  %15 = load i32, i32* @HALF_SKY_SUBDIVISIONS, align 4
  %16 = sub nsw i32 0, %15
  %17 = sitofp i32 %16 to float
  store float %17, float* %10, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %18, 5
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %366

21:                                               ; preds = %14
  %22 = load i32**, i32*** @sky_mins, align 8
  %23 = getelementptr inbounds i32*, i32** %22, i64 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @HALF_SKY_SUBDIVISIONS, align 4
  %30 = mul nsw i32 %28, %29
  %31 = call i32 @floor(i32 %30)
  %32 = load i32, i32* @HALF_SKY_SUBDIVISIONS, align 4
  %33 = sdiv i32 %31, %32
  %34 = load i32**, i32*** @sky_mins, align 8
  %35 = getelementptr inbounds i32*, i32** %34, i64 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  store i32 %33, i32* %39, align 4
  %40 = load i32**, i32*** @sky_mins, align 8
  %41 = getelementptr inbounds i32*, i32** %40, i64 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @HALF_SKY_SUBDIVISIONS, align 4
  %48 = mul nsw i32 %46, %47
  %49 = call i32 @floor(i32 %48)
  %50 = load i32, i32* @HALF_SKY_SUBDIVISIONS, align 4
  %51 = sdiv i32 %49, %50
  %52 = load i32**, i32*** @sky_mins, align 8
  %53 = getelementptr inbounds i32*, i32** %52, i64 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  store i32 %51, i32* %57, align 4
  %58 = load i32**, i32*** @sky_maxs, align 8
  %59 = getelementptr inbounds i32*, i32** %58, i64 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @HALF_SKY_SUBDIVISIONS, align 4
  %66 = mul nsw i32 %64, %65
  %67 = call i32 @ceil(i32 %66)
  %68 = load i32, i32* @HALF_SKY_SUBDIVISIONS, align 4
  %69 = sdiv i32 %67, %68
  %70 = load i32**, i32*** @sky_maxs, align 8
  %71 = getelementptr inbounds i32*, i32** %70, i64 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32 %69, i32* %75, align 4
  %76 = load i32**, i32*** @sky_maxs, align 8
  %77 = getelementptr inbounds i32*, i32** %76, i64 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @HALF_SKY_SUBDIVISIONS, align 4
  %84 = mul nsw i32 %82, %83
  %85 = call i32 @ceil(i32 %84)
  %86 = load i32, i32* @HALF_SKY_SUBDIVISIONS, align 4
  %87 = sdiv i32 %85, %86
  %88 = load i32**, i32*** @sky_maxs, align 8
  %89 = getelementptr inbounds i32*, i32** %88, i64 1
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  store i32 %87, i32* %93, align 4
  %94 = load i32**, i32*** @sky_mins, align 8
  %95 = getelementptr inbounds i32*, i32** %94, i64 0
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %5, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load i32**, i32*** @sky_maxs, align 8
  %102 = getelementptr inbounds i32*, i32** %101, i64 0
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %5, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = icmp sge i32 %100, %107
  br i1 %108, label %125, label %109

109:                                              ; preds = %21
  %110 = load i32**, i32*** @sky_mins, align 8
  %111 = getelementptr inbounds i32*, i32** %110, i64 1
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %5, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load i32**, i32*** @sky_maxs, align 8
  %118 = getelementptr inbounds i32*, i32** %117, i64 1
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %5, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = icmp sge i32 %116, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %109, %21
  br label %366

126:                                              ; preds = %109
  %127 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ri, i32 0, i32 0), align 8
  %128 = load i32**, i32*** @sky_mins, align 8
  %129 = getelementptr inbounds i32*, i32** %128, i64 0
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %5, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @HALF_SKY_SUBDIVISIONS, align 4
  %136 = mul nsw i32 %134, %135
  %137 = call i32 %127(i32 %136)
  %138 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %137, i32* %138, align 4
  %139 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ri, i32 0, i32 0), align 8
  %140 = load i32**, i32*** @sky_mins, align 8
  %141 = getelementptr inbounds i32*, i32** %140, i64 1
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %5, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @HALF_SKY_SUBDIVISIONS, align 4
  %148 = mul nsw i32 %146, %147
  %149 = call i32 %139(i32 %148)
  %150 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 %149, i32* %150, align 4
  %151 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ri, i32 0, i32 0), align 8
  %152 = load i32**, i32*** @sky_maxs, align 8
  %153 = getelementptr inbounds i32*, i32** %152, i64 0
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %5, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @HALF_SKY_SUBDIVISIONS, align 4
  %160 = mul nsw i32 %158, %159
  %161 = call i32 %151(i32 %160)
  %162 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 %161, i32* %162, align 4
  %163 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ri, i32 0, i32 0), align 8
  %164 = load i32**, i32*** @sky_maxs, align 8
  %165 = getelementptr inbounds i32*, i32** %164, i64 1
  %166 = load i32*, i32** %165, align 8
  %167 = load i32, i32* %5, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @HALF_SKY_SUBDIVISIONS, align 4
  %172 = mul nsw i32 %170, %171
  %173 = call i32 %163(i32 %172)
  %174 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 %173, i32* %174, align 4
  %175 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @HALF_SKY_SUBDIVISIONS, align 4
  %178 = sub nsw i32 0, %177
  %179 = icmp slt i32 %176, %178
  br i1 %179, label %180, label %184

180:                                              ; preds = %126
  %181 = load i32, i32* @HALF_SKY_SUBDIVISIONS, align 4
  %182 = sub nsw i32 0, %181
  %183 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %182, i32* %183, align 4
  br label %193

184:                                              ; preds = %126
  %185 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @HALF_SKY_SUBDIVISIONS, align 4
  %188 = icmp sgt i32 %186, %187
  br i1 %188, label %189, label %192

189:                                              ; preds = %184
  %190 = load i32, i32* @HALF_SKY_SUBDIVISIONS, align 4
  %191 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %190, i32* %191, align 4
  br label %192

192:                                              ; preds = %189, %184
  br label %193

193:                                              ; preds = %192, %180
  %194 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %195 = load i32, i32* %194, align 4
  %196 = sitofp i32 %195 to float
  %197 = load float, float* %10, align 4
  %198 = fcmp olt float %196, %197
  br i1 %198, label %199, label %203

199:                                              ; preds = %193
  %200 = load float, float* %10, align 4
  %201 = fptosi float %200 to i32
  %202 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 %201, i32* %202, align 4
  br label %212

203:                                              ; preds = %193
  %204 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* @HALF_SKY_SUBDIVISIONS, align 4
  %207 = icmp sgt i32 %205, %206
  br i1 %207, label %208, label %211

208:                                              ; preds = %203
  %209 = load i32, i32* @HALF_SKY_SUBDIVISIONS, align 4
  %210 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 %209, i32* %210, align 4
  br label %211

211:                                              ; preds = %208, %203
  br label %212

212:                                              ; preds = %211, %199
  %213 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* @HALF_SKY_SUBDIVISIONS, align 4
  %216 = sub nsw i32 0, %215
  %217 = icmp slt i32 %214, %216
  br i1 %217, label %218, label %222

218:                                              ; preds = %212
  %219 = load i32, i32* @HALF_SKY_SUBDIVISIONS, align 4
  %220 = sub nsw i32 0, %219
  %221 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 %220, i32* %221, align 4
  br label %231

222:                                              ; preds = %212
  %223 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* @HALF_SKY_SUBDIVISIONS, align 4
  %226 = icmp sgt i32 %224, %225
  br i1 %226, label %227, label %230

227:                                              ; preds = %222
  %228 = load i32, i32* @HALF_SKY_SUBDIVISIONS, align 4
  %229 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 %228, i32* %229, align 4
  br label %230

230:                                              ; preds = %227, %222
  br label %231

231:                                              ; preds = %230, %218
  %232 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %233 = load i32, i32* %232, align 4
  %234 = sitofp i32 %233 to float
  %235 = load float, float* %10, align 4
  %236 = fcmp olt float %234, %235
  br i1 %236, label %237, label %241

237:                                              ; preds = %231
  %238 = load float, float* %10, align 4
  %239 = fptosi float %238 to i32
  %240 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 %239, i32* %240, align 4
  br label %250

241:                                              ; preds = %231
  %242 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* @HALF_SKY_SUBDIVISIONS, align 4
  %245 = icmp sgt i32 %243, %244
  br i1 %245, label %246, label %249

246:                                              ; preds = %241
  %247 = load i32, i32* @HALF_SKY_SUBDIVISIONS, align 4
  %248 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 %247, i32* %248, align 4
  br label %249

249:                                              ; preds = %246, %241
  br label %250

250:                                              ; preds = %249, %237
  %251 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %252 = load i32, i32* %251, align 4
  %253 = load i32, i32* @HALF_SKY_SUBDIVISIONS, align 4
  %254 = add nsw i32 %252, %253
  store i32 %254, i32* %9, align 4
  br label %255

255:                                              ; preds = %356, %250
  %256 = load i32, i32* %9, align 4
  %257 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %258 = load i32, i32* %257, align 4
  %259 = load i32, i32* @HALF_SKY_SUBDIVISIONS, align 4
  %260 = add nsw i32 %258, %259
  %261 = icmp sle i32 %256, %260
  br i1 %261, label %262, label %359

262:                                              ; preds = %255
  %263 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %264 = load i32, i32* %263, align 4
  %265 = load i32, i32* @HALF_SKY_SUBDIVISIONS, align 4
  %266 = add nsw i32 %264, %265
  store i32 %266, i32* %8, align 4
  br label %267

267:                                              ; preds = %352, %262
  %268 = load i32, i32* %8, align 4
  %269 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %270 = load i32, i32* %269, align 4
  %271 = load i32, i32* @HALF_SKY_SUBDIVISIONS, align 4
  %272 = add nsw i32 %270, %271
  %273 = icmp sle i32 %268, %272
  br i1 %273, label %274, label %355

274:                                              ; preds = %267
  %275 = load i32, i32* %8, align 4
  %276 = load i32, i32* @HALF_SKY_SUBDIVISIONS, align 4
  %277 = sub nsw i32 %275, %276
  %278 = sitofp i32 %277 to float
  %279 = load i32, i32* @HALF_SKY_SUBDIVISIONS, align 4
  %280 = sitofp i32 %279 to float
  %281 = fdiv float %278, %280
  %282 = fptosi float %281 to i32
  %283 = load i32, i32* %9, align 4
  %284 = load i32, i32* @HALF_SKY_SUBDIVISIONS, align 4
  %285 = sub nsw i32 %283, %284
  %286 = sitofp i32 %285 to float
  %287 = load i32, i32* @HALF_SKY_SUBDIVISIONS, align 4
  %288 = sitofp i32 %287 to float
  %289 = fdiv float %286, %288
  %290 = fptosi float %289 to i32
  %291 = load i32, i32* %5, align 4
  %292 = load i32**, i32*** @s_skyPoints, align 8
  %293 = load i32, i32* %9, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i32*, i32** %292, i64 %294
  %296 = load i32*, i32** %295, align 8
  %297 = load i32, i32* %8, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i32, i32* %296, i64 %298
  %300 = load i32, i32* %299, align 4
  %301 = call i32 @MakeSkyVec(i32 %282, i32 %290, i32 %291, i32* null, i32 %300)
  %302 = load i32****, i32***** @s_cloudTexCoords, align 8
  %303 = load i32, i32* %5, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i32***, i32**** %302, i64 %304
  %306 = load i32***, i32**** %305, align 8
  %307 = load i32, i32* %9, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i32**, i32*** %306, i64 %308
  %310 = load i32**, i32*** %309, align 8
  %311 = load i32, i32* %8, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i32*, i32** %310, i64 %312
  %314 = load i32*, i32** %313, align 8
  %315 = getelementptr inbounds i32, i32* %314, i64 0
  %316 = load i32, i32* %315, align 4
  %317 = load i32***, i32**** @s_skyTexCoords, align 8
  %318 = load i32, i32* %9, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i32**, i32*** %317, i64 %319
  %321 = load i32**, i32*** %320, align 8
  %322 = load i32, i32* %8, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i32*, i32** %321, i64 %323
  %325 = load i32*, i32** %324, align 8
  %326 = getelementptr inbounds i32, i32* %325, i64 0
  store i32 %316, i32* %326, align 4
  %327 = load i32****, i32***** @s_cloudTexCoords, align 8
  %328 = load i32, i32* %5, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i32***, i32**** %327, i64 %329
  %331 = load i32***, i32**** %330, align 8
  %332 = load i32, i32* %9, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i32**, i32*** %331, i64 %333
  %335 = load i32**, i32*** %334, align 8
  %336 = load i32, i32* %8, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds i32*, i32** %335, i64 %337
  %339 = load i32*, i32** %338, align 8
  %340 = getelementptr inbounds i32, i32* %339, i64 1
  %341 = load i32, i32* %340, align 4
  %342 = load i32***, i32**** @s_skyTexCoords, align 8
  %343 = load i32, i32* %9, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i32**, i32*** %342, i64 %344
  %346 = load i32**, i32*** %345, align 8
  %347 = load i32, i32* %8, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds i32*, i32** %346, i64 %348
  %350 = load i32*, i32** %349, align 8
  %351 = getelementptr inbounds i32, i32* %350, i64 1
  store i32 %341, i32* %351, align 4
  br label %352

352:                                              ; preds = %274
  %353 = load i32, i32* %8, align 4
  %354 = add nsw i32 %353, 1
  store i32 %354, i32* %8, align 4
  br label %267

355:                                              ; preds = %267
  br label %356

356:                                              ; preds = %355
  %357 = load i32, i32* %9, align 4
  %358 = add nsw i32 %357, 1
  store i32 %358, i32* %9, align 4
  br label %255

359:                                              ; preds = %255
  %360 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %361 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %362 = load i32, i32* %4, align 4
  %363 = icmp eq i32 %362, 0
  %364 = zext i1 %363 to i32
  %365 = call i32 @FillCloudySkySide(i32* %360, i32* %361, i32 %364)
  br label %366

366:                                              ; preds = %359, %125, %20
  %367 = load i32, i32* %5, align 4
  %368 = add nsw i32 %367, 1
  store i32 %368, i32* %5, align 4
  br label %11

369:                                              ; preds = %11
  ret void
}

declare dso_local i32 @floor(i32) #1

declare dso_local i32 @ceil(i32) #1

declare dso_local i32 @MakeSkyVec(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @FillCloudySkySide(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
