; ModuleID = '/home/carl/AnghaBench/jemalloc/test/src/extr_SFMT.c_init_by_array.c'
source_filename = "/home/carl/AnghaBench/jemalloc/test/src/extr_SFMT.c_init_by_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32* }

@N = common dso_local global i32 0, align 4
@N32 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @init_by_array(i32* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load i32, i32* @N, align 4
  %17 = mul nsw i32 %16, 4
  store i32 %17, i32* %14, align 4
  %18 = call i64 @posix_memalign(i8** %6, i32 4, i32 16)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %343

21:                                               ; preds = %2
  %22 = load i8*, i8** %6, align 8
  %23 = bitcast i8* %22 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** %7, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i64 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  store i32* %30, i32** %15, align 8
  %31 = load i32, i32* %14, align 4
  %32 = icmp sge i32 %31, 623
  br i1 %32, label %33, label %34

33:                                               ; preds = %21
  store i32 11, i32* %12, align 4
  br label %45

34:                                               ; preds = %21
  %35 = load i32, i32* %14, align 4
  %36 = icmp sge i32 %35, 68
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 7, i32* %12, align 4
  br label %44

38:                                               ; preds = %34
  %39 = load i32, i32* %14, align 4
  %40 = icmp sge i32 %39, 39
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 5, i32* %12, align 4
  br label %43

42:                                               ; preds = %38
  store i32 3, i32* %12, align 4
  br label %43

43:                                               ; preds = %42, %41
  br label %44

44:                                               ; preds = %43, %37
  br label %45

45:                                               ; preds = %44, %33
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* %12, align 4
  %48 = sub nsw i32 %46, %47
  %49 = sdiv i32 %48, 2
  store i32 %49, i32* %13, align 4
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = call i32 @memset(%struct.TYPE_6__* %52, i32 139, i32 8)
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  %56 = load i32, i32* @N32, align 4
  %57 = icmp sgt i32 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %45
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %10, align 4
  br label %63

61:                                               ; preds = %45
  %62 = load i32, i32* @N32, align 4
  store i32 %62, i32* %10, align 4
  br label %63

63:                                               ; preds = %61, %58
  %64 = load i32*, i32** %15, align 8
  %65 = call i64 @idxof(i32 0)
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %15, align 8
  %69 = load i32, i32* %13, align 4
  %70 = call i64 @idxof(i32 %69)
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = xor i32 %67, %72
  %74 = load i32*, i32** %15, align 8
  %75 = load i32, i32* @N32, align 4
  %76 = sub nsw i32 %75, 1
  %77 = call i64 @idxof(i32 %76)
  %78 = getelementptr inbounds i32, i32* %74, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = xor i32 %73, %79
  %81 = call i32 @func1(i32 %80)
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = load i32*, i32** %15, align 8
  %84 = load i32, i32* %13, align 4
  %85 = call i64 @idxof(i32 %84)
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, %82
  store i32 %88, i32* %86, align 4
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* %11, align 4
  %91 = add nsw i32 %90, %89
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %11, align 4
  %93 = load i32*, i32** %15, align 8
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* %12, align 4
  %96 = add nsw i32 %94, %95
  %97 = call i64 @idxof(i32 %96)
  %98 = getelementptr inbounds i32, i32* %93, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, %92
  store i32 %100, i32* %98, align 4
  %101 = load i32, i32* %11, align 4
  %102 = load i32*, i32** %15, align 8
  %103 = call i64 @idxof(i32 0)
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  store i32 %101, i32* %104, align 4
  %105 = load i32, i32* %10, align 4
  %106 = add nsw i32 %105, -1
  store i32 %106, i32* %10, align 4
  store i32 1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %107

107:                                              ; preds = %187, %63
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* %10, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %107
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* %5, align 4
  %114 = icmp slt i32 %112, %113
  br label %115

115:                                              ; preds = %111, %107
  %116 = phi i1 [ false, %107 ], [ %114, %111 ]
  br i1 %116, label %117, label %190

117:                                              ; preds = %115
  %118 = load i32*, i32** %15, align 8
  %119 = load i32, i32* %8, align 4
  %120 = call i64 @idxof(i32 %119)
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = load i32*, i32** %15, align 8
  %124 = load i32, i32* %8, align 4
  %125 = load i32, i32* %13, align 4
  %126 = add nsw i32 %124, %125
  %127 = load i32, i32* @N32, align 4
  %128 = srem i32 %126, %127
  %129 = call i64 @idxof(i32 %128)
  %130 = getelementptr inbounds i32, i32* %123, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = xor i32 %122, %131
  %133 = load i32*, i32** %15, align 8
  %134 = load i32, i32* %8, align 4
  %135 = load i32, i32* @N32, align 4
  %136 = add nsw i32 %134, %135
  %137 = sub nsw i32 %136, 1
  %138 = load i32, i32* @N32, align 4
  %139 = srem i32 %137, %138
  %140 = call i64 @idxof(i32 %139)
  %141 = getelementptr inbounds i32, i32* %133, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = xor i32 %132, %142
  %144 = call i32 @func1(i32 %143)
  store i32 %144, i32* %11, align 4
  %145 = load i32, i32* %11, align 4
  %146 = load i32*, i32** %15, align 8
  %147 = load i32, i32* %8, align 4
  %148 = load i32, i32* %13, align 4
  %149 = add nsw i32 %147, %148
  %150 = load i32, i32* @N32, align 4
  %151 = srem i32 %149, %150
  %152 = call i64 @idxof(i32 %151)
  %153 = getelementptr inbounds i32, i32* %146, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = add nsw i32 %154, %145
  store i32 %155, i32* %153, align 4
  %156 = load i32*, i32** %4, align 8
  %157 = load i32, i32* %9, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* %8, align 4
  %162 = add nsw i32 %160, %161
  %163 = load i32, i32* %11, align 4
  %164 = add nsw i32 %163, %162
  store i32 %164, i32* %11, align 4
  %165 = load i32, i32* %11, align 4
  %166 = load i32*, i32** %15, align 8
  %167 = load i32, i32* %8, align 4
  %168 = load i32, i32* %13, align 4
  %169 = add nsw i32 %167, %168
  %170 = load i32, i32* %12, align 4
  %171 = add nsw i32 %169, %170
  %172 = load i32, i32* @N32, align 4
  %173 = srem i32 %171, %172
  %174 = call i64 @idxof(i32 %173)
  %175 = getelementptr inbounds i32, i32* %166, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = add nsw i32 %176, %165
  store i32 %177, i32* %175, align 4
  %178 = load i32, i32* %11, align 4
  %179 = load i32*, i32** %15, align 8
  %180 = load i32, i32* %8, align 4
  %181 = call i64 @idxof(i32 %180)
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  store i32 %178, i32* %182, align 4
  %183 = load i32, i32* %8, align 4
  %184 = add nsw i32 %183, 1
  %185 = load i32, i32* @N32, align 4
  %186 = srem i32 %184, %185
  store i32 %186, i32* %8, align 4
  br label %187

187:                                              ; preds = %117
  %188 = load i32, i32* %9, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %9, align 4
  br label %107

190:                                              ; preds = %115
  br label %191

191:                                              ; preds = %259, %190
  %192 = load i32, i32* %9, align 4
  %193 = load i32, i32* %10, align 4
  %194 = icmp slt i32 %192, %193
  br i1 %194, label %195, label %262

195:                                              ; preds = %191
  %196 = load i32*, i32** %15, align 8
  %197 = load i32, i32* %8, align 4
  %198 = call i64 @idxof(i32 %197)
  %199 = getelementptr inbounds i32, i32* %196, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = load i32*, i32** %15, align 8
  %202 = load i32, i32* %8, align 4
  %203 = load i32, i32* %13, align 4
  %204 = add nsw i32 %202, %203
  %205 = load i32, i32* @N32, align 4
  %206 = srem i32 %204, %205
  %207 = call i64 @idxof(i32 %206)
  %208 = getelementptr inbounds i32, i32* %201, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = xor i32 %200, %209
  %211 = load i32*, i32** %15, align 8
  %212 = load i32, i32* %8, align 4
  %213 = load i32, i32* @N32, align 4
  %214 = add nsw i32 %212, %213
  %215 = sub nsw i32 %214, 1
  %216 = load i32, i32* @N32, align 4
  %217 = srem i32 %215, %216
  %218 = call i64 @idxof(i32 %217)
  %219 = getelementptr inbounds i32, i32* %211, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = xor i32 %210, %220
  %222 = call i32 @func1(i32 %221)
  store i32 %222, i32* %11, align 4
  %223 = load i32, i32* %11, align 4
  %224 = load i32*, i32** %15, align 8
  %225 = load i32, i32* %8, align 4
  %226 = load i32, i32* %13, align 4
  %227 = add nsw i32 %225, %226
  %228 = load i32, i32* @N32, align 4
  %229 = srem i32 %227, %228
  %230 = call i64 @idxof(i32 %229)
  %231 = getelementptr inbounds i32, i32* %224, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = add nsw i32 %232, %223
  store i32 %233, i32* %231, align 4
  %234 = load i32, i32* %8, align 4
  %235 = load i32, i32* %11, align 4
  %236 = add nsw i32 %235, %234
  store i32 %236, i32* %11, align 4
  %237 = load i32, i32* %11, align 4
  %238 = load i32*, i32** %15, align 8
  %239 = load i32, i32* %8, align 4
  %240 = load i32, i32* %13, align 4
  %241 = add nsw i32 %239, %240
  %242 = load i32, i32* %12, align 4
  %243 = add nsw i32 %241, %242
  %244 = load i32, i32* @N32, align 4
  %245 = srem i32 %243, %244
  %246 = call i64 @idxof(i32 %245)
  %247 = getelementptr inbounds i32, i32* %238, i64 %246
  %248 = load i32, i32* %247, align 4
  %249 = add nsw i32 %248, %237
  store i32 %249, i32* %247, align 4
  %250 = load i32, i32* %11, align 4
  %251 = load i32*, i32** %15, align 8
  %252 = load i32, i32* %8, align 4
  %253 = call i64 @idxof(i32 %252)
  %254 = getelementptr inbounds i32, i32* %251, i64 %253
  store i32 %250, i32* %254, align 4
  %255 = load i32, i32* %8, align 4
  %256 = add nsw i32 %255, 1
  %257 = load i32, i32* @N32, align 4
  %258 = srem i32 %256, %257
  store i32 %258, i32* %8, align 4
  br label %259

259:                                              ; preds = %195
  %260 = load i32, i32* %9, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %9, align 4
  br label %191

262:                                              ; preds = %191
  store i32 0, i32* %9, align 4
  br label %263

263:                                              ; preds = %331, %262
  %264 = load i32, i32* %9, align 4
  %265 = load i32, i32* @N32, align 4
  %266 = icmp slt i32 %264, %265
  br i1 %266, label %267, label %334

267:                                              ; preds = %263
  %268 = load i32*, i32** %15, align 8
  %269 = load i32, i32* %8, align 4
  %270 = call i64 @idxof(i32 %269)
  %271 = getelementptr inbounds i32, i32* %268, i64 %270
  %272 = load i32, i32* %271, align 4
  %273 = load i32*, i32** %15, align 8
  %274 = load i32, i32* %8, align 4
  %275 = load i32, i32* %13, align 4
  %276 = add nsw i32 %274, %275
  %277 = load i32, i32* @N32, align 4
  %278 = srem i32 %276, %277
  %279 = call i64 @idxof(i32 %278)
  %280 = getelementptr inbounds i32, i32* %273, i64 %279
  %281 = load i32, i32* %280, align 4
  %282 = add nsw i32 %272, %281
  %283 = load i32*, i32** %15, align 8
  %284 = load i32, i32* %8, align 4
  %285 = load i32, i32* @N32, align 4
  %286 = add nsw i32 %284, %285
  %287 = sub nsw i32 %286, 1
  %288 = load i32, i32* @N32, align 4
  %289 = srem i32 %287, %288
  %290 = call i64 @idxof(i32 %289)
  %291 = getelementptr inbounds i32, i32* %283, i64 %290
  %292 = load i32, i32* %291, align 4
  %293 = add nsw i32 %282, %292
  %294 = call i32 @func2(i32 %293)
  store i32 %294, i32* %11, align 4
  %295 = load i32, i32* %11, align 4
  %296 = load i32*, i32** %15, align 8
  %297 = load i32, i32* %8, align 4
  %298 = load i32, i32* %13, align 4
  %299 = add nsw i32 %297, %298
  %300 = load i32, i32* @N32, align 4
  %301 = srem i32 %299, %300
  %302 = call i64 @idxof(i32 %301)
  %303 = getelementptr inbounds i32, i32* %296, i64 %302
  %304 = load i32, i32* %303, align 4
  %305 = xor i32 %304, %295
  store i32 %305, i32* %303, align 4
  %306 = load i32, i32* %8, align 4
  %307 = load i32, i32* %11, align 4
  %308 = sub nsw i32 %307, %306
  store i32 %308, i32* %11, align 4
  %309 = load i32, i32* %11, align 4
  %310 = load i32*, i32** %15, align 8
  %311 = load i32, i32* %8, align 4
  %312 = load i32, i32* %13, align 4
  %313 = add nsw i32 %311, %312
  %314 = load i32, i32* %12, align 4
  %315 = add nsw i32 %313, %314
  %316 = load i32, i32* @N32, align 4
  %317 = srem i32 %315, %316
  %318 = call i64 @idxof(i32 %317)
  %319 = getelementptr inbounds i32, i32* %310, i64 %318
  %320 = load i32, i32* %319, align 4
  %321 = xor i32 %320, %309
  store i32 %321, i32* %319, align 4
  %322 = load i32, i32* %11, align 4
  %323 = load i32*, i32** %15, align 8
  %324 = load i32, i32* %8, align 4
  %325 = call i64 @idxof(i32 %324)
  %326 = getelementptr inbounds i32, i32* %323, i64 %325
  store i32 %322, i32* %326, align 4
  %327 = load i32, i32* %8, align 4
  %328 = add nsw i32 %327, 1
  %329 = load i32, i32* @N32, align 4
  %330 = srem i32 %328, %329
  store i32 %330, i32* %8, align 4
  br label %331

331:                                              ; preds = %267
  %332 = load i32, i32* %9, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %9, align 4
  br label %263

334:                                              ; preds = %263
  %335 = load i32, i32* @N32, align 4
  %336 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %337 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %336, i32 0, i32 0
  store i32 %335, i32* %337, align 8
  %338 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %339 = call i32 @period_certification(%struct.TYPE_5__* %338)
  %340 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %341 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %340, i32 0, i32 1
  store i32 1, i32* %341, align 4
  %342 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  store %struct.TYPE_5__* %342, %struct.TYPE_5__** %3, align 8
  br label %343

343:                                              ; preds = %334, %20
  %344 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  ret %struct.TYPE_5__* %344
}

declare dso_local i64 @posix_memalign(i8**, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @func1(i32) #1

declare dso_local i64 @idxof(i32) #1

declare dso_local i32 @func2(i32) #1

declare dso_local i32 @period_certification(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
