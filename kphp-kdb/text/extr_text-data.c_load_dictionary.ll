; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_load_dictionary.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_load_dictionary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.word_dictionary = type { i32, i64, i32, i32, i64*, %struct.file_word_dictionary_entry**, i64* }
%struct.file_word_dictionary_entry = type { i32, i32 }
%struct.file_word_dictionary = type { i32, i32* }

@MAX_FILE_DICTIONARY_BYTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.word_dictionary* @load_dictionary(%struct.word_dictionary* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.word_dictionary*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.file_word_dictionary*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.file_word_dictionary_entry*, align 8
  %14 = alloca %struct.file_word_dictionary_entry*, align 8
  store %struct.word_dictionary* %0, %struct.word_dictionary** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load i32, i32* @MAX_FILE_DICTIONARY_BYTES, align 4
  %18 = call i32 @load_index_part(i32 0, i64 %15, i64 %16, i32 %17)
  %19 = load %struct.word_dictionary*, %struct.word_dictionary** %4, align 8
  %20 = getelementptr inbounds %struct.word_dictionary, %struct.word_dictionary* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.word_dictionary*, %struct.word_dictionary** %4, align 8
  %22 = getelementptr inbounds %struct.word_dictionary, %struct.word_dictionary* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @assert(i32 %23)
  %25 = load i64, i64* %6, align 8
  %26 = load %struct.word_dictionary*, %struct.word_dictionary** %4, align 8
  %27 = getelementptr inbounds %struct.word_dictionary, %struct.word_dictionary* %26, i32 0, i32 1
  store i64 %25, i64* %27, align 8
  %28 = load i64, i64* %6, align 8
  %29 = icmp sge i64 %28, 4
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load %struct.word_dictionary*, %struct.word_dictionary** %4, align 8
  %33 = getelementptr inbounds %struct.word_dictionary, %struct.word_dictionary* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = inttoptr i64 %35 to %struct.file_word_dictionary*
  store %struct.file_word_dictionary* %36, %struct.file_word_dictionary** %11, align 8
  %37 = load %struct.file_word_dictionary*, %struct.file_word_dictionary** %11, align 8
  %38 = getelementptr inbounds %struct.file_word_dictionary, %struct.file_word_dictionary* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp sge i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %3
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = load i64, i64* %6, align 8
  %46 = ashr i64 %45, 2
  %47 = sub nsw i64 %46, 2
  %48 = icmp sle i64 %44, %47
  br label %49

49:                                               ; preds = %42, %3
  %50 = phi i1 [ false, %3 ], [ %48, %42 ]
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.word_dictionary*, %struct.word_dictionary** %4, align 8
  %55 = getelementptr inbounds %struct.word_dictionary, %struct.word_dictionary* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  %56 = load %struct.file_word_dictionary*, %struct.file_word_dictionary** %11, align 8
  %57 = getelementptr inbounds %struct.file_word_dictionary, %struct.file_word_dictionary* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 2
  %63 = mul nsw i32 %62, 4
  %64 = icmp sge i32 %60, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %49
  %66 = load %struct.file_word_dictionary*, %struct.file_word_dictionary** %11, align 8
  %67 = getelementptr inbounds %struct.file_word_dictionary, %struct.file_word_dictionary* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = load i64, i64* %6, align 8
  %73 = icmp sle i64 %71, %72
  br label %74

74:                                               ; preds = %65, %49
  %75 = phi i1 [ false, %49 ], [ %73, %65 ]
  %76 = zext i1 %75 to i32
  %77 = call i32 @assert(i32 %76)
  %78 = load %struct.file_word_dictionary*, %struct.file_word_dictionary** %11, align 8
  %79 = getelementptr inbounds %struct.file_word_dictionary, %struct.file_word_dictionary* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = load i64, i64* %6, align 8
  %87 = icmp sle i64 %85, %86
  %88 = zext i1 %87 to i32
  %89 = call i32 @assert(i32 %88)
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = mul i64 %91, 8
  %93 = trunc i64 %92 to i32
  %94 = call %struct.file_word_dictionary_entry** @zmalloc(i32 %93)
  %95 = load %struct.word_dictionary*, %struct.word_dictionary** %4, align 8
  %96 = getelementptr inbounds %struct.word_dictionary, %struct.word_dictionary* %95, i32 0, i32 5
  store %struct.file_word_dictionary_entry** %94, %struct.file_word_dictionary_entry*** %96, align 8
  store i32 0, i32* %8, align 4
  br label %97

97:                                               ; preds = %182, %74
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %7, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %185

101:                                              ; preds = %97
  %102 = load %struct.word_dictionary*, %struct.word_dictionary** %4, align 8
  %103 = getelementptr inbounds %struct.word_dictionary, %struct.word_dictionary* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.file_word_dictionary*, %struct.file_word_dictionary** %11, align 8
  %106 = getelementptr inbounds %struct.file_word_dictionary, %struct.file_word_dictionary* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %8, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %104, %111
  %113 = sext i32 %112 to i64
  %114 = inttoptr i64 %113 to %struct.file_word_dictionary_entry*
  store %struct.file_word_dictionary_entry* %114, %struct.file_word_dictionary_entry** %13, align 8
  %115 = load %struct.file_word_dictionary*, %struct.file_word_dictionary** %11, align 8
  %116 = getelementptr inbounds %struct.file_word_dictionary, %struct.file_word_dictionary* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.file_word_dictionary*, %struct.file_word_dictionary** %11, align 8
  %123 = getelementptr inbounds %struct.file_word_dictionary, %struct.file_word_dictionary* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %8, align 4
  %126 = add nsw i32 %125, 1
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %124, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = icmp slt i32 %121, %129
  %131 = zext i1 %130 to i32
  %132 = call i32 @assert(i32 %131)
  %133 = load %struct.file_word_dictionary*, %struct.file_word_dictionary** %11, align 8
  %134 = getelementptr inbounds %struct.file_word_dictionary, %struct.file_word_dictionary* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %8, align 4
  %137 = add nsw i32 %136, 1
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %135, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = sext i32 %140 to i64
  %142 = load i64, i64* %6, align 8
  %143 = icmp sle i64 %141, %142
  %144 = zext i1 %143 to i32
  %145 = call i32 @assert(i32 %144)
  %146 = load %struct.file_word_dictionary*, %struct.file_word_dictionary** %11, align 8
  %147 = getelementptr inbounds %struct.file_word_dictionary, %struct.file_word_dictionary* %146, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = load i32, i32* %8, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.file_word_dictionary_entry*, %struct.file_word_dictionary_entry** %13, align 8
  %154 = getelementptr inbounds %struct.file_word_dictionary_entry, %struct.file_word_dictionary_entry* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = add nsw i32 %152, %155
  %157 = add nsw i32 %156, 2
  %158 = load %struct.file_word_dictionary*, %struct.file_word_dictionary** %11, align 8
  %159 = getelementptr inbounds %struct.file_word_dictionary, %struct.file_word_dictionary* %158, i32 0, i32 1
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* %8, align 4
  %162 = add nsw i32 %161, 1
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %160, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = icmp sle i32 %157, %165
  %167 = zext i1 %166 to i32
  %168 = call i32 @assert(i32 %167)
  %169 = load %struct.file_word_dictionary_entry*, %struct.file_word_dictionary_entry** %13, align 8
  %170 = getelementptr inbounds %struct.file_word_dictionary_entry, %struct.file_word_dictionary_entry* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = icmp sle i32 %171, 32
  br i1 %172, label %173, label %178

173:                                              ; preds = %101
  %174 = load %struct.file_word_dictionary_entry*, %struct.file_word_dictionary_entry** %13, align 8
  %175 = getelementptr inbounds %struct.file_word_dictionary_entry, %struct.file_word_dictionary_entry* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = icmp sge i32 %176, 1
  br label %178

178:                                              ; preds = %173, %101
  %179 = phi i1 [ false, %101 ], [ %177, %173 ]
  %180 = zext i1 %179 to i32
  %181 = call i32 @assert(i32 %180)
  br label %182

182:                                              ; preds = %178
  %183 = load i32, i32* %8, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %8, align 4
  br label %97

185:                                              ; preds = %97
  %186 = load %struct.word_dictionary*, %struct.word_dictionary** %4, align 8
  %187 = getelementptr inbounds %struct.word_dictionary, %struct.word_dictionary* %186, i32 0, i32 3
  store i32 32, i32* %187, align 4
  store i64 0, i64* %12, align 8
  store i32 0, i32* %10, align 4
  store i32 1, i32* %9, align 4
  br label %188

188:                                              ; preds = %275, %185
  %189 = load i32, i32* %9, align 4
  %190 = icmp sle i32 %189, 32
  br i1 %190, label %191, label %278

191:                                              ; preds = %188
  %192 = load i64, i64* %12, align 8
  %193 = icmp slt i64 %192, 4294967296
  br i1 %193, label %194, label %198

194:                                              ; preds = %191
  %195 = load i32, i32* %9, align 4
  %196 = load %struct.word_dictionary*, %struct.word_dictionary** %4, align 8
  %197 = getelementptr inbounds %struct.word_dictionary, %struct.word_dictionary* %196, i32 0, i32 3
  store i32 %195, i32* %197, align 4
  br label %198

198:                                              ; preds = %194, %191
  %199 = load i64, i64* %12, align 8
  %200 = load %struct.word_dictionary*, %struct.word_dictionary** %4, align 8
  %201 = getelementptr inbounds %struct.word_dictionary, %struct.word_dictionary* %200, i32 0, i32 4
  %202 = load i64*, i64** %201, align 8
  %203 = load i32, i32* %9, align 4
  %204 = sub nsw i32 %203, 1
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i64, i64* %202, i64 %205
  store i64 %199, i64* %206, align 8
  %207 = load %struct.word_dictionary*, %struct.word_dictionary** %4, align 8
  %208 = getelementptr inbounds %struct.word_dictionary, %struct.word_dictionary* %207, i32 0, i32 5
  %209 = load %struct.file_word_dictionary_entry**, %struct.file_word_dictionary_entry*** %208, align 8
  %210 = load i32, i32* %10, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.file_word_dictionary_entry*, %struct.file_word_dictionary_entry** %209, i64 %211
  %213 = load i64, i64* %12, align 8
  %214 = load i32, i32* %9, align 4
  %215 = sub nsw i32 32, %214
  %216 = zext i32 %215 to i64
  %217 = ashr i64 %213, %216
  %218 = sub i64 0, %217
  %219 = getelementptr inbounds %struct.file_word_dictionary_entry*, %struct.file_word_dictionary_entry** %212, i64 %218
  %220 = ptrtoint %struct.file_word_dictionary_entry** %219 to i64
  %221 = load %struct.word_dictionary*, %struct.word_dictionary** %4, align 8
  %222 = getelementptr inbounds %struct.word_dictionary, %struct.word_dictionary* %221, i32 0, i32 6
  %223 = load i64*, i64** %222, align 8
  %224 = load i32, i32* %9, align 4
  %225 = sub nsw i32 %224, 1
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i64, i64* %223, i64 %226
  store i64 %220, i64* %227, align 8
  store i32 0, i32* %8, align 4
  br label %228

228:                                              ; preds = %271, %198
  %229 = load i32, i32* %8, align 4
  %230 = load i32, i32* %7, align 4
  %231 = icmp slt i32 %229, %230
  br i1 %231, label %232, label %274

232:                                              ; preds = %228
  %233 = load %struct.word_dictionary*, %struct.word_dictionary** %4, align 8
  %234 = getelementptr inbounds %struct.word_dictionary, %struct.word_dictionary* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = load %struct.file_word_dictionary*, %struct.file_word_dictionary** %11, align 8
  %237 = getelementptr inbounds %struct.file_word_dictionary, %struct.file_word_dictionary* %236, i32 0, i32 1
  %238 = load i32*, i32** %237, align 8
  %239 = load i32, i32* %8, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %238, i64 %240
  %242 = load i32, i32* %241, align 4
  %243 = add nsw i32 %235, %242
  %244 = sext i32 %243 to i64
  %245 = inttoptr i64 %244 to %struct.file_word_dictionary_entry*
  store %struct.file_word_dictionary_entry* %245, %struct.file_word_dictionary_entry** %14, align 8
  %246 = load %struct.file_word_dictionary_entry*, %struct.file_word_dictionary_entry** %14, align 8
  %247 = getelementptr inbounds %struct.file_word_dictionary_entry, %struct.file_word_dictionary_entry* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* %9, align 4
  %250 = icmp eq i32 %248, %249
  br i1 %250, label %251, label %270

251:                                              ; preds = %232
  %252 = load %struct.file_word_dictionary_entry*, %struct.file_word_dictionary_entry** %14, align 8
  %253 = load %struct.word_dictionary*, %struct.word_dictionary** %4, align 8
  %254 = getelementptr inbounds %struct.word_dictionary, %struct.word_dictionary* %253, i32 0, i32 5
  %255 = load %struct.file_word_dictionary_entry**, %struct.file_word_dictionary_entry*** %254, align 8
  %256 = load i32, i32* %10, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %10, align 4
  %258 = sext i32 %256 to i64
  %259 = getelementptr inbounds %struct.file_word_dictionary_entry*, %struct.file_word_dictionary_entry** %255, i64 %258
  store %struct.file_word_dictionary_entry* %252, %struct.file_word_dictionary_entry** %259, align 8
  %260 = load i32, i32* %9, align 4
  %261 = sub nsw i32 32, %260
  %262 = shl i32 1, %261
  %263 = zext i32 %262 to i64
  %264 = load i64, i64* %12, align 8
  %265 = add nsw i64 %264, %263
  store i64 %265, i64* %12, align 8
  %266 = load i64, i64* %12, align 8
  %267 = icmp sle i64 %266, 4294967296
  %268 = zext i1 %267 to i32
  %269 = call i32 @assert(i32 %268)
  br label %270

270:                                              ; preds = %251, %232
  br label %271

271:                                              ; preds = %270
  %272 = load i32, i32* %8, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %8, align 4
  br label %228

274:                                              ; preds = %228
  br label %275

275:                                              ; preds = %274
  %276 = load i32, i32* %9, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %9, align 4
  br label %188

278:                                              ; preds = %188
  %279 = load i32, i32* %10, align 4
  %280 = load i32, i32* %7, align 4
  %281 = icmp eq i32 %279, %280
  br i1 %281, label %282, label %296

282:                                              ; preds = %278
  %283 = load i64, i64* %12, align 8
  %284 = icmp eq i64 %283, 4294967296
  br i1 %284, label %294, label %285

285:                                              ; preds = %282
  %286 = load i32, i32* %10, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %292, label %288

288:                                              ; preds = %285
  %289 = load i64, i64* %12, align 8
  %290 = icmp ne i64 %289, 0
  %291 = xor i1 %290, true
  br label %292

292:                                              ; preds = %288, %285
  %293 = phi i1 [ false, %285 ], [ %291, %288 ]
  br label %294

294:                                              ; preds = %292, %282
  %295 = phi i1 [ true, %282 ], [ %293, %292 ]
  br label %296

296:                                              ; preds = %294, %278
  %297 = phi i1 [ false, %278 ], [ %295, %294 ]
  %298 = zext i1 %297 to i32
  %299 = call i32 @assert(i32 %298)
  %300 = load %struct.word_dictionary*, %struct.word_dictionary** %4, align 8
  ret %struct.word_dictionary* %300
}

declare dso_local i32 @load_index_part(i32, i64, i64, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.file_word_dictionary_entry** @zmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
