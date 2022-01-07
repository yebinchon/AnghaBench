; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_l_poly.c_TryMergeWinding.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_l_poly.c_TryMergeWinding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64** }

@CONTINUOUS_EPSILON = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @TryMergeWinding(%struct.TYPE_6__* %0, %struct.TYPE_6__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64* null, i64** %9, align 8
  store i64* null, i64** %8, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %23

23:                                               ; preds = %128, %3
  %24 = load i32, i32* %14, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %131

29:                                               ; preds = %23
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i64**, i64*** %31, align 8
  %33 = load i32, i32* %14, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64*, i64** %32, i64 %34
  %36 = load i64*, i64** %35, align 8
  store i64* %36, i64** %8, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i64**, i64*** %38, align 8
  %40 = load i32, i32* %14, align 4
  %41 = add nsw i32 %40, 1
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = srem i32 %41, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64*, i64** %39, i64 %46
  %48 = load i64*, i64** %47, align 8
  store i64* %48, i64** %9, align 8
  store i32 0, i32* %15, align 4
  br label %49

49:                                               ; preds = %117, %29
  %50 = load i32, i32* %15, align 4
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %120

55:                                               ; preds = %49
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i64**, i64*** %57, align 8
  %59 = load i32, i32* %15, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64*, i64** %58, i64 %60
  %62 = load i64*, i64** %61, align 8
  store i64* %62, i64** %10, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load i64**, i64*** %64, align 8
  %66 = load i32, i32* %15, align 4
  %67 = add nsw i32 %66, 1
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = srem i32 %67, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64*, i64** %65, i64 %72
  %74 = load i64*, i64** %73, align 8
  store i64* %74, i64** %11, align 8
  store i32 0, i32* %16, align 4
  br label %75

75:                                               ; preds = %109, %55
  %76 = load i32, i32* %16, align 4
  %77 = icmp slt i32 %76, 3
  br i1 %77, label %78, label %112

78:                                               ; preds = %75
  %79 = load i64*, i64** %8, align 8
  %80 = load i32, i32* %16, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = load i64*, i64** %11, align 8
  %85 = load i32, i32* %16, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %84, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = sub nsw i64 %83, %88
  %90 = call double @fabs(i64 %89)
  %91 = fcmp ogt double %90, 1.000000e-01
  br i1 %91, label %92, label %93

92:                                               ; preds = %78
  br label %112

93:                                               ; preds = %78
  %94 = load i64*, i64** %9, align 8
  %95 = load i32, i32* %16, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %94, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = load i64*, i64** %10, align 8
  %100 = load i32, i32* %16, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %99, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = sub nsw i64 %98, %103
  %105 = call double @fabs(i64 %104)
  %106 = fcmp ogt double %105, 1.000000e-01
  br i1 %106, label %107, label %108

107:                                              ; preds = %93
  br label %112

108:                                              ; preds = %93
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %16, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %16, align 4
  br label %75

112:                                              ; preds = %107, %92, %75
  %113 = load i32, i32* %16, align 4
  %114 = icmp eq i32 %113, 3
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  br label %120

116:                                              ; preds = %112
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %15, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %15, align 4
  br label %49

120:                                              ; preds = %115, %49
  %121 = load i32, i32* %15, align 4
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp slt i32 %121, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %120
  br label %131

127:                                              ; preds = %120
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %14, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %14, align 4
  br label %23

131:                                              ; preds = %126, %23
  %132 = load i32, i32* %14, align 4
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp eq i32 %132, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %131
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  br label %366

138:                                              ; preds = %131
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 1
  %141 = load i64**, i64*** %140, align 8
  %142 = load i32, i32* %14, align 4
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = add nsw i32 %142, %145
  %147 = sub nsw i32 %146, 1
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = srem i32 %147, %150
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i64*, i64** %141, i64 %152
  %154 = load i64*, i64** %153, align 8
  store i64* %154, i64** %12, align 8
  %155 = load i64*, i64** %8, align 8
  %156 = load i64*, i64** %12, align 8
  %157 = load i32, i32* %19, align 4
  %158 = call i32 @VectorSubtract(i64* %155, i64* %156, i32 %157)
  %159 = load i32, i32* %7, align 4
  %160 = load i32, i32* %19, align 4
  %161 = load i32, i32* %18, align 4
  %162 = call i32 @CrossProduct(i32 %159, i32 %160, i32 %161)
  %163 = load i32, i32* %18, align 4
  %164 = call i32 @VectorNormalize(i32 %163)
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 1
  %167 = load i64**, i64*** %166, align 8
  %168 = load i32, i32* %15, align 4
  %169 = add nsw i32 %168, 2
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = srem i32 %169, %172
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i64*, i64** %167, i64 %174
  %176 = load i64*, i64** %175, align 8
  store i64* %176, i64** %12, align 8
  %177 = load i64*, i64** %12, align 8
  %178 = load i64*, i64** %8, align 8
  %179 = load i32, i32* %19, align 4
  %180 = call i32 @VectorSubtract(i64* %177, i64* %178, i32 %179)
  %181 = load i32, i32* %19, align 4
  %182 = load i32, i32* %18, align 4
  %183 = call i64 @DotProduct(i32 %181, i32 %182)
  store i64 %183, i64* %20, align 8
  %184 = load i64, i64* %20, align 8
  %185 = load i64, i64* @CONTINUOUS_EPSILON, align 8
  %186 = icmp sgt i64 %184, %185
  br i1 %186, label %187, label %188

187:                                              ; preds = %138
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  br label %366

188:                                              ; preds = %138
  %189 = load i64, i64* %20, align 8
  %190 = load i64, i64* @CONTINUOUS_EPSILON, align 8
  %191 = sub nsw i64 0, %190
  %192 = icmp slt i64 %189, %191
  %193 = zext i1 %192 to i32
  %194 = sext i32 %193 to i64
  store i64 %194, i64* %21, align 8
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 1
  %197 = load i64**, i64*** %196, align 8
  %198 = load i32, i32* %14, align 4
  %199 = add nsw i32 %198, 2
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = srem i32 %199, %202
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i64*, i64** %197, i64 %204
  %206 = load i64*, i64** %205, align 8
  store i64* %206, i64** %12, align 8
  %207 = load i64*, i64** %12, align 8
  %208 = load i64*, i64** %9, align 8
  %209 = load i32, i32* %19, align 4
  %210 = call i32 @VectorSubtract(i64* %207, i64* %208, i32 %209)
  %211 = load i32, i32* %7, align 4
  %212 = load i32, i32* %19, align 4
  %213 = load i32, i32* %18, align 4
  %214 = call i32 @CrossProduct(i32 %211, i32 %212, i32 %213)
  %215 = load i32, i32* %18, align 4
  %216 = call i32 @VectorNormalize(i32 %215)
  %217 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 1
  %219 = load i64**, i64*** %218, align 8
  %220 = load i32, i32* %15, align 4
  %221 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = add nsw i32 %220, %223
  %225 = sub nsw i32 %224, 1
  %226 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = srem i32 %225, %228
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i64*, i64** %219, i64 %230
  %232 = load i64*, i64** %231, align 8
  store i64* %232, i64** %12, align 8
  %233 = load i64*, i64** %12, align 8
  %234 = load i64*, i64** %9, align 8
  %235 = load i32, i32* %19, align 4
  %236 = call i32 @VectorSubtract(i64* %233, i64* %234, i32 %235)
  %237 = load i32, i32* %19, align 4
  %238 = load i32, i32* %18, align 4
  %239 = call i64 @DotProduct(i32 %237, i32 %238)
  store i64 %239, i64* %20, align 8
  %240 = load i64, i64* %20, align 8
  %241 = load i64, i64* @CONTINUOUS_EPSILON, align 8
  %242 = icmp sgt i64 %240, %241
  br i1 %242, label %243, label %244

243:                                              ; preds = %188
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  br label %366

244:                                              ; preds = %188
  %245 = load i64, i64* %20, align 8
  %246 = load i64, i64* @CONTINUOUS_EPSILON, align 8
  %247 = sub nsw i64 0, %246
  %248 = icmp slt i64 %245, %247
  %249 = zext i1 %248 to i32
  %250 = sext i32 %249 to i64
  store i64 %250, i64* %22, align 8
  %251 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %255 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = add nsw i32 %253, %256
  %258 = call %struct.TYPE_6__* @AllocWinding(i32 %257)
  store %struct.TYPE_6__* %258, %struct.TYPE_6__** %13, align 8
  %259 = load i32, i32* %14, align 4
  %260 = add nsw i32 %259, 1
  %261 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %262 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = srem i32 %260, %263
  store i32 %264, i32* %16, align 4
  br label %265

265:                                              ; preds = %304, %244
  %266 = load i32, i32* %16, align 4
  %267 = load i32, i32* %14, align 4
  %268 = icmp ne i32 %266, %267
  br i1 %268, label %269, label %311

269:                                              ; preds = %265
  %270 = load i32, i32* %16, align 4
  %271 = load i32, i32* %14, align 4
  %272 = add nsw i32 %271, 1
  %273 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %274 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = srem i32 %272, %275
  %277 = icmp eq i32 %270, %276
  br i1 %277, label %278, label %282

278:                                              ; preds = %269
  %279 = load i64, i64* %22, align 8
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %282, label %281

281:                                              ; preds = %278
  br label %304

282:                                              ; preds = %278, %269
  %283 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %284 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %283, i32 0, i32 1
  %285 = load i64**, i64*** %284, align 8
  %286 = load i32, i32* %16, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i64*, i64** %285, i64 %287
  %289 = load i64*, i64** %288, align 8
  %290 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %291 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %290, i32 0, i32 1
  %292 = load i64**, i64*** %291, align 8
  %293 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %294 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i64*, i64** %292, i64 %296
  %298 = load i64*, i64** %297, align 8
  %299 = call i32 @VectorCopy(i64* %289, i64* %298)
  %300 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %301 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %301, align 8
  br label %304

304:                                              ; preds = %282, %281
  %305 = load i32, i32* %16, align 4
  %306 = add nsw i32 %305, 1
  %307 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %308 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 8
  %310 = srem i32 %306, %309
  store i32 %310, i32* %16, align 4
  br label %265

311:                                              ; preds = %265
  %312 = load i32, i32* %15, align 4
  %313 = add nsw i32 %312, 1
  %314 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %315 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 8
  %317 = srem i32 %313, %316
  store i32 %317, i32* %17, align 4
  br label %318

318:                                              ; preds = %357, %311
  %319 = load i32, i32* %17, align 4
  %320 = load i32, i32* %15, align 4
  %321 = icmp ne i32 %319, %320
  br i1 %321, label %322, label %364

322:                                              ; preds = %318
  %323 = load i32, i32* %17, align 4
  %324 = load i32, i32* %15, align 4
  %325 = add nsw i32 %324, 1
  %326 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %327 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 8
  %329 = srem i32 %325, %328
  %330 = icmp eq i32 %323, %329
  br i1 %330, label %331, label %335

331:                                              ; preds = %322
  %332 = load i64, i64* %21, align 8
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %335, label %334

334:                                              ; preds = %331
  br label %357

335:                                              ; preds = %331, %322
  %336 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %337 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %336, i32 0, i32 1
  %338 = load i64**, i64*** %337, align 8
  %339 = load i32, i32* %17, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds i64*, i64** %338, i64 %340
  %342 = load i64*, i64** %341, align 8
  %343 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %344 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %343, i32 0, i32 1
  %345 = load i64**, i64*** %344, align 8
  %346 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %347 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 8
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i64*, i64** %345, i64 %349
  %351 = load i64*, i64** %350, align 8
  %352 = call i32 @VectorCopy(i64* %342, i64* %351)
  %353 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %354 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 8
  %356 = add nsw i32 %355, 1
  store i32 %356, i32* %354, align 8
  br label %357

357:                                              ; preds = %335, %334
  %358 = load i32, i32* %17, align 4
  %359 = add nsw i32 %358, 1
  %360 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %361 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %360, i32 0, i32 0
  %362 = load i32, i32* %361, align 8
  %363 = srem i32 %359, %362
  store i32 %363, i32* %17, align 4
  br label %318

364:                                              ; preds = %318
  %365 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  store %struct.TYPE_6__* %365, %struct.TYPE_6__** %4, align 8
  br label %366

366:                                              ; preds = %364, %243, %187, %137
  %367 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  ret %struct.TYPE_6__* %367
}

declare dso_local double @fabs(i64) #1

declare dso_local i32 @VectorSubtract(i64*, i64*, i32) #1

declare dso_local i32 @CrossProduct(i32, i32, i32) #1

declare dso_local i32 @VectorNormalize(i32) #1

declare dso_local i64 @DotProduct(i32, i32) #1

declare dso_local %struct.TYPE_6__* @AllocWinding(i32) #1

declare dso_local i32 @VectorCopy(i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
