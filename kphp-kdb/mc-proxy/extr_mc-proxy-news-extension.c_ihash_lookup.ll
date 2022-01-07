; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-news-extension.c_ihash_lookup.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-news-extension.c_ihash_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i32, i32, i32, i32 }

@TypeReduce = common dso_local global i32* null, align 8
@Hs = common dso_local global i64 0, align 8
@Ht = common dso_local global i64 0, align 8
@TypeFlags = common dso_local global i32* null, align 8
@HASH_SIZE = common dso_local global i32 0, align 4
@HD = common dso_local global i64* null, align 8
@HX = common dso_local global %struct.TYPE_4__** null, align 8
@MAX_HASH_ITERATIONS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ihash_lookup(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  br label %25

19:                                               ; preds = %2
  %20 = load i32*, i32** @TypeReduce, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  br label %25

25:                                               ; preds = %19, %17
  %26 = phi i32 [ %18, %17 ], [ %24, %19 ]
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = mul nsw i32 %27, 17239
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %10, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @Hs, align 8
  %34 = add nsw i64 %32, %33
  %35 = load i64, i64* @Ht, align 8
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %25
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @Hs, align 8
  %42 = add nsw i64 %40, %41
  store i64 %42, i64* @Ht, align 8
  br label %43

43:                                               ; preds = %37, %25
  %44 = load i32*, i32** @TypeFlags, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, 128
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %89

51:                                               ; preds = %43
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = mul nsw i32 239, %54
  %56 = load i32, i32* %9, align 4
  %57 = add i32 %56, %55
  store i32 %57, i32* %9, align 4
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = mul nsw i32 17, %60
  %62 = load i32, i32* %10, align 4
  %63 = add i32 %62, %61
  store i32 %63, i32* %10, align 4
  %64 = load i32*, i32** @TypeFlags, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, 2
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %86

71:                                               ; preds = %51
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = mul nsw i32 17, %74
  %76 = load i32, i32* %9, align 4
  %77 = add i32 %76, %75
  store i32 %77, i32* %9, align 4
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = mul nsw i32 239, %80
  %82 = load i32, i32* %10, align 4
  %83 = add i32 %82, %81
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %5, align 4
  %85 = or i32 %84, 8
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %71, %51
  %87 = load i32, i32* %5, align 4
  %88 = or i32 %87, 16
  store i32 %88, i32* %5, align 4
  br label %174

89:                                               ; preds = %43
  %90 = load i32, i32* %5, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %89
  %93 = load i32*, i32** @TypeFlags, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = and i32 %97, 32
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %115, label %100

100:                                              ; preds = %92, %89
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = mul nsw i32 %103, 239
  %105 = load i32, i32* %9, align 4
  %106 = add i32 %105, %104
  store i32 %106, i32* %9, align 4
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = mul nsw i32 %109, 10000
  %111 = load i32, i32* %10, align 4
  %112 = add i32 %111, %110
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* %5, align 4
  %114 = or i32 %113, 2
  store i32 %114, i32* %5, align 4
  br label %115

115:                                              ; preds = %100, %92
  %116 = load i32, i32* %5, align 4
  %117 = and i32 %116, 1
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %115
  %120 = load i32*, i32** @TypeFlags, align 8
  %121 = load i32, i32* %6, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = and i32 %124, 32
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %135, label %173

127:                                              ; preds = %115
  %128 = load i32*, i32** @TypeFlags, align 8
  %129 = load i32, i32* %6, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = and i32 %132, 8
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %173

135:                                              ; preds = %127, %119
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 4
  %139 = mul nsw i32 666, %138
  %140 = load i32, i32* %9, align 4
  %141 = add i32 %140, %139
  store i32 %141, i32* %9, align 4
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 5
  %144 = load i32, i32* %143, align 4
  %145 = mul nsw i32 13, %144
  %146 = load i32, i32* %10, align 4
  %147 = add i32 %146, %145
  store i32 %147, i32* %10, align 4
  %148 = load i32*, i32** @TypeFlags, align 8
  %149 = load i32, i32* %6, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = and i32 %152, 1
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %170

155:                                              ; preds = %135
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = mul nsw i32 17, %158
  %160 = load i32, i32* %9, align 4
  %161 = add i32 %160, %159
  store i32 %161, i32* %9, align 4
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = mul nsw i32 239, %164
  %166 = load i32, i32* %10, align 4
  %167 = add i32 %166, %165
  store i32 %167, i32* %10, align 4
  %168 = load i32, i32* %5, align 4
  %169 = or i32 %168, 8
  store i32 %169, i32* %5, align 4
  br label %170

170:                                              ; preds = %155, %135
  %171 = load i32, i32* %5, align 4
  %172 = or i32 %171, 4
  store i32 %172, i32* %5, align 4
  br label %173

173:                                              ; preds = %170, %127, %119
  br label %174

174:                                              ; preds = %173, %86
  %175 = load i32, i32* @HASH_SIZE, align 4
  %176 = load i32, i32* %9, align 4
  %177 = urem i32 %176, %175
  store i32 %177, i32* %9, align 4
  %178 = load i32, i32* %10, align 4
  %179 = load i32, i32* @HASH_SIZE, align 4
  %180 = sub i32 %179, 1
  %181 = urem i32 %178, %180
  %182 = add i32 %181, 1
  store i32 %182, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %183

183:                                              ; preds = %174, %291
  %184 = load i64*, i64** @HD, align 8
  %185 = load i32, i32* %9, align 4
  %186 = zext i32 %185 to i64
  %187 = getelementptr inbounds i64, i64* %184, i64 %186
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @Ht, align 8
  %190 = icmp ne i64 %188, %189
  br i1 %190, label %198, label %191

191:                                              ; preds = %183
  %192 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @HX, align 8
  %193 = load i32, i32* %9, align 4
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %192, i64 %194
  %196 = load %struct.TYPE_4__*, %struct.TYPE_4__** %195, align 8
  %197 = icmp ne %struct.TYPE_4__* %196, null
  br i1 %197, label %199, label %198

198:                                              ; preds = %191, %183
  br label %298

199:                                              ; preds = %191
  %200 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @HX, align 8
  %201 = load i32, i32* %9, align 4
  %202 = zext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %200, i64 %202
  %204 = load %struct.TYPE_4__*, %struct.TYPE_4__** %203, align 8
  store %struct.TYPE_4__* %204, %struct.TYPE_4__** %8, align 8
  %205 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = icmp eq i32 %207, %210
  br i1 %211, label %226, label %212

212:                                              ; preds = %199
  %213 = load i32, i32* %5, align 4
  %214 = and i32 %213, 1
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %280, label %216

216:                                              ; preds = %212
  %217 = load i32*, i32** @TypeReduce, align 8
  %218 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %217, i64 %221
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* %7, align 4
  %225 = icmp eq i32 %223, %224
  br i1 %225, label %226, label %280

226:                                              ; preds = %216, %199
  %227 = load i32, i32* %5, align 4
  %228 = and i32 %227, 2
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %238

230:                                              ; preds = %226
  %231 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 4
  %233 = load i32, i32* %232, align 8
  %234 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i32 0, i32 4
  %236 = load i32, i32* %235, align 8
  %237 = icmp eq i32 %233, %236
  br i1 %237, label %238, label %279

238:                                              ; preds = %230, %226
  %239 = load i32, i32* %5, align 4
  %240 = and i32 %239, 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %250

242:                                              ; preds = %238
  %243 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %244 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %243, i32 0, i32 5
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %247 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %246, i32 0, i32 5
  %248 = load i32, i32* %247, align 4
  %249 = icmp eq i32 %245, %248
  br i1 %249, label %250, label %278

250:                                              ; preds = %242, %238
  %251 = load i32, i32* %5, align 4
  %252 = and i32 %251, 8
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %262

254:                                              ; preds = %250
  %255 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %256 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %255, i32 0, i32 3
  %257 = load i32, i32* %256, align 4
  %258 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %259 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %258, i32 0, i32 3
  %260 = load i32, i32* %259, align 4
  %261 = icmp eq i32 %257, %260
  br i1 %261, label %262, label %277

262:                                              ; preds = %254, %250
  %263 = load i32, i32* %5, align 4
  %264 = and i32 %263, 16
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %274

266:                                              ; preds = %262
  %267 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %268 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 8
  %270 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %271 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 8
  %273 = icmp eq i32 %269, %272
  br i1 %273, label %274, label %276

274:                                              ; preds = %266, %262
  %275 = load i32, i32* %9, align 4
  store i32 %275, i32* %3, align 4
  br label %309

276:                                              ; preds = %266
  br label %277

277:                                              ; preds = %276, %254
  br label %278

278:                                              ; preds = %277, %242
  br label %279

279:                                              ; preds = %278, %230
  br label %280

280:                                              ; preds = %279, %216, %212
  %281 = load i32, i32* %10, align 4
  %282 = load i32, i32* %9, align 4
  %283 = add i32 %282, %281
  store i32 %283, i32* %9, align 4
  %284 = load i32, i32* %9, align 4
  %285 = load i32, i32* @HASH_SIZE, align 4
  %286 = icmp uge i32 %284, %285
  br i1 %286, label %287, label %291

287:                                              ; preds = %280
  %288 = load i32, i32* @HASH_SIZE, align 4
  %289 = load i32, i32* %9, align 4
  %290 = sub i32 %289, %288
  store i32 %290, i32* %9, align 4
  br label %291

291:                                              ; preds = %287, %280
  %292 = load i32, i32* %11, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %11, align 4
  %294 = load i32, i32* @MAX_HASH_ITERATIONS, align 4
  %295 = icmp sle i32 %293, %294
  %296 = zext i1 %295 to i32
  %297 = call i32 @assert(i32 %296)
  br label %183

298:                                              ; preds = %198
  %299 = load i64, i64* @Ht, align 8
  %300 = load i64*, i64** @HD, align 8
  %301 = load i32, i32* %9, align 4
  %302 = zext i32 %301 to i64
  %303 = getelementptr inbounds i64, i64* %300, i64 %302
  store i64 %299, i64* %303, align 8
  %304 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @HX, align 8
  %305 = load i32, i32* %9, align 4
  %306 = zext i32 %305 to i64
  %307 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %304, i64 %306
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %307, align 8
  %308 = load i32, i32* %9, align 4
  store i32 %308, i32* %3, align 4
  br label %309

309:                                              ; preds = %298, %274
  %310 = load i32, i32* %3, align 4
  ret i32 %310
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
