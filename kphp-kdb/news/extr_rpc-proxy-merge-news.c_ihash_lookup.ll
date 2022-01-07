; ModuleID = '/home/carl/AnghaBench/kphp-kdb/news/extr_rpc-proxy-merge-news.c_ihash_lookup.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/news/extr_rpc-proxy-merge-news.c_ihash_lookup.c"
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
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %139

46:                                               ; preds = %43
  %47 = load i32*, i32** @TypeFlags, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, 1
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %46
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = mul nsw i32 17, %57
  %59 = load i32, i32* %9, align 4
  %60 = add i32 %59, %58
  store i32 %60, i32* %9, align 4
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = mul nsw i32 239, %63
  %65 = load i32, i32* %10, align 4
  %66 = add i32 %65, %64
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %5, align 4
  %68 = or i32 %67, 8
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %54, %46
  %70 = load i32*, i32** @TypeFlags, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, 2
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %92

77:                                               ; preds = %69
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = mul nsw i32 239, %80
  %82 = load i32, i32* %9, align 4
  %83 = add i32 %82, %81
  store i32 %83, i32* %9, align 4
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = mul nsw i32 17, %86
  %88 = load i32, i32* %10, align 4
  %89 = add i32 %88, %87
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %5, align 4
  %91 = or i32 %90, 16
  store i32 %91, i32* %5, align 4
  br label %92

92:                                               ; preds = %77, %69
  %93 = load i32*, i32** @TypeFlags, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = and i32 %97, 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %115

100:                                              ; preds = %92
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
  %116 = load i32*, i32** @TypeFlags, align 8
  %117 = load i32, i32* %6, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = and i32 %120, 8
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %138

123:                                              ; preds = %115
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 4
  %127 = mul nsw i32 666, %126
  %128 = load i32, i32* %9, align 4
  %129 = add i32 %128, %127
  store i32 %129, i32* %9, align 4
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 5
  %132 = load i32, i32* %131, align 4
  %133 = mul nsw i32 13, %132
  %134 = load i32, i32* %10, align 4
  %135 = add i32 %134, %133
  store i32 %135, i32* %10, align 4
  %136 = load i32, i32* %5, align 4
  %137 = or i32 %136, 4
  store i32 %137, i32* %5, align 4
  br label %138

138:                                              ; preds = %123, %115
  br label %173

139:                                              ; preds = %43
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 8
  %143 = mul nsw i32 %142, 239
  %144 = load i32, i32* %9, align 4
  %145 = add i32 %144, %143
  store i32 %145, i32* %9, align 4
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 8
  %149 = mul nsw i32 %148, 10000
  %150 = load i32, i32* %10, align 4
  %151 = add i32 %150, %149
  store i32 %151, i32* %10, align 4
  %152 = load i32, i32* %5, align 4
  %153 = or i32 %152, 2
  store i32 %153, i32* %5, align 4
  %154 = load i32, i32* %5, align 4
  %155 = and i32 %154, 32
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %172

157:                                              ; preds = %139
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 5
  %160 = load i32, i32* %159, align 4
  %161 = mul nsw i32 666, %160
  %162 = load i32, i32* %9, align 4
  %163 = add i32 %162, %161
  store i32 %163, i32* %9, align 4
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 5
  %166 = load i32, i32* %165, align 4
  %167 = mul nsw i32 13, %166
  %168 = load i32, i32* %10, align 4
  %169 = add i32 %168, %167
  store i32 %169, i32* %10, align 4
  %170 = load i32, i32* %5, align 4
  %171 = or i32 %170, 4
  store i32 %171, i32* %5, align 4
  br label %172

172:                                              ; preds = %157, %139
  br label %173

173:                                              ; preds = %172, %138
  %174 = load i32, i32* @HASH_SIZE, align 4
  %175 = load i32, i32* %9, align 4
  %176 = urem i32 %175, %174
  store i32 %176, i32* %9, align 4
  %177 = load i32, i32* %10, align 4
  %178 = load i32, i32* @HASH_SIZE, align 4
  %179 = sub i32 %178, 1
  %180 = urem i32 %177, %179
  %181 = add i32 %180, 1
  store i32 %181, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %182

182:                                              ; preds = %173, %290
  %183 = load i64*, i64** @HD, align 8
  %184 = load i32, i32* %9, align 4
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds i64, i64* %183, i64 %185
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @Ht, align 8
  %189 = icmp ne i64 %187, %188
  br i1 %189, label %197, label %190

190:                                              ; preds = %182
  %191 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @HX, align 8
  %192 = load i32, i32* %9, align 4
  %193 = zext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %191, i64 %193
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** %194, align 8
  %196 = icmp ne %struct.TYPE_4__* %195, null
  br i1 %196, label %198, label %197

197:                                              ; preds = %190, %182
  br label %297

198:                                              ; preds = %190
  %199 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @HX, align 8
  %200 = load i32, i32* %9, align 4
  %201 = zext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %199, i64 %201
  %203 = load %struct.TYPE_4__*, %struct.TYPE_4__** %202, align 8
  store %struct.TYPE_4__* %203, %struct.TYPE_4__** %8, align 8
  %204 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = icmp eq i32 %206, %209
  br i1 %210, label %225, label %211

211:                                              ; preds = %198
  %212 = load i32, i32* %5, align 4
  %213 = and i32 %212, 1
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %279, label %215

215:                                              ; preds = %211
  %216 = load i32*, i32** @TypeReduce, align 8
  %217 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %216, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* %7, align 4
  %224 = icmp eq i32 %222, %223
  br i1 %224, label %225, label %279

225:                                              ; preds = %215, %198
  %226 = load i32, i32* %5, align 4
  %227 = and i32 %226, 2
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %237

229:                                              ; preds = %225
  %230 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 4
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i32 0, i32 4
  %235 = load i32, i32* %234, align 8
  %236 = icmp eq i32 %232, %235
  br i1 %236, label %237, label %278

237:                                              ; preds = %229, %225
  %238 = load i32, i32* %5, align 4
  %239 = and i32 %238, 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %249

241:                                              ; preds = %237
  %242 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %243 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %242, i32 0, i32 5
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %245, i32 0, i32 5
  %247 = load i32, i32* %246, align 4
  %248 = icmp eq i32 %244, %247
  br i1 %248, label %249, label %277

249:                                              ; preds = %241, %237
  %250 = load i32, i32* %5, align 4
  %251 = and i32 %250, 8
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %261

253:                                              ; preds = %249
  %254 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %254, i32 0, i32 2
  %256 = load i32, i32* %255, align 8
  %257 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %258 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 8
  %260 = icmp eq i32 %256, %259
  br i1 %260, label %261, label %276

261:                                              ; preds = %253, %249
  %262 = load i32, i32* %5, align 4
  %263 = and i32 %262, 16
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %273

265:                                              ; preds = %261
  %266 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %267 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %266, i32 0, i32 3
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %270 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %269, i32 0, i32 3
  %271 = load i32, i32* %270, align 4
  %272 = icmp eq i32 %268, %271
  br i1 %272, label %273, label %275

273:                                              ; preds = %265, %261
  %274 = load i32, i32* %9, align 4
  store i32 %274, i32* %3, align 4
  br label %308

275:                                              ; preds = %265
  br label %276

276:                                              ; preds = %275, %253
  br label %277

277:                                              ; preds = %276, %241
  br label %278

278:                                              ; preds = %277, %229
  br label %279

279:                                              ; preds = %278, %215, %211
  %280 = load i32, i32* %10, align 4
  %281 = load i32, i32* %9, align 4
  %282 = add i32 %281, %280
  store i32 %282, i32* %9, align 4
  %283 = load i32, i32* %9, align 4
  %284 = load i32, i32* @HASH_SIZE, align 4
  %285 = icmp uge i32 %283, %284
  br i1 %285, label %286, label %290

286:                                              ; preds = %279
  %287 = load i32, i32* @HASH_SIZE, align 4
  %288 = load i32, i32* %9, align 4
  %289 = sub i32 %288, %287
  store i32 %289, i32* %9, align 4
  br label %290

290:                                              ; preds = %286, %279
  %291 = load i32, i32* %11, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %11, align 4
  %293 = load i32, i32* @MAX_HASH_ITERATIONS, align 4
  %294 = icmp sle i32 %292, %293
  %295 = zext i1 %294 to i32
  %296 = call i32 @assert(i32 %295)
  br label %182

297:                                              ; preds = %197
  %298 = load i64, i64* @Ht, align 8
  %299 = load i64*, i64** @HD, align 8
  %300 = load i32, i32* %9, align 4
  %301 = zext i32 %300 to i64
  %302 = getelementptr inbounds i64, i64* %299, i64 %301
  store i64 %298, i64* %302, align 8
  %303 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @HX, align 8
  %304 = load i32, i32* %9, align 4
  %305 = zext i32 %304 to i64
  %306 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %303, i64 %305
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %306, align 8
  %307 = load i32, i32* %9, align 4
  store i32 %307, i32* %3, align 4
  br label %308

308:                                              ; preds = %297, %273
  %309 = load i32, i32* %3, align 4
  ret i32 %309
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
