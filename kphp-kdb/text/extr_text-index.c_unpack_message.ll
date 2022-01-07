; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-index.c_unpack_message.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-index.c_unpack_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8* }

@WordDict = common dso_local global i32 0, align 4
@WordCharDict = common dso_local global i32 0, align 4
@NotWordDict = common dso_local global i32 0, align 4
@NotWordCharDict = common dso_local global i32 0, align 4
@MAX_TEXT_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unpack_message(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_3__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %25 = load i8*, i8** %4, align 8
  store i8* %25, i8** %7, align 8
  %26 = load i8*, i8** %5, align 8
  store i8* %26, i8** %8, align 8
  %27 = load i32, i32* %6, align 4
  %28 = mul nsw i32 %27, 8
  %29 = sub nsw i32 %28, 1
  store i32 %29, i32* %9, align 4
  %30 = load i8*, i8** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sub nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %30, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @assert(i32 %37)
  br label %39

39:                                               ; preds = %44, %3
  %40 = load i32, i32* %10, align 4
  %41 = and i32 %40, 1
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load i32, i32* %10, align 4
  %46 = ashr i32 %45, 1
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %9, align 4
  br label %39

49:                                               ; preds = %39
  %50 = load i8*, i8** %8, align 8
  %51 = bitcast i8* %50 to i32*
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @bswap_32(i32 %52)
  store i32 %53, i32* %11, align 4
  %54 = load i8*, i8** %8, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 4
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = shl i32 %57, 1
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %12, align 4
  %60 = load i8*, i8** %8, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 5
  store i8* %61, i8** %8, align 8
  br label %62

62:                                               ; preds = %315, %49
  %63 = load i32, i32* %9, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %316

65:                                               ; preds = %62
  %66 = load i32, i32* %11, align 4
  %67 = call %struct.TYPE_3__* @word_code_lookup(i32* @WordDict, i32 %66, i32* %16)
  store %struct.TYPE_3__* %67, %struct.TYPE_3__** %13, align 8
  %68 = load i32, i32* %16, align 4
  store i32 %68, i32* %17, align 4
  %69 = load i32, i32* %17, align 4
  %70 = load i32, i32* %9, align 4
  %71 = sub nsw i32 %70, %69
  store i32 %71, i32* %9, align 4
  br label %72

72:                                               ; preds = %95, %65
  %73 = load i32, i32* %12, align 4
  %74 = and i32 %73, 255
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %83, label %76

76:                                               ; preds = %72
  %77 = load i8*, i8** %8, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %8, align 8
  %79 = load i8, i8* %77, align 1
  %80 = sext i8 %79 to i32
  %81 = shl i32 %80, 1
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %12, align 4
  br label %83

83:                                               ; preds = %76, %72
  %84 = load i32, i32* %11, align 4
  %85 = shl i32 %84, 1
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* %12, align 4
  %87 = and i32 %86, 256
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %83
  %90 = load i32, i32* %11, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %11, align 4
  br label %92

92:                                               ; preds = %89, %83
  %93 = load i32, i32* %12, align 4
  %94 = shl i32 %93, 1
  store i32 %94, i32* %12, align 4
  br label %95

95:                                               ; preds = %92
  %96 = load i32, i32* %17, align 4
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* %17, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %72, label %99

99:                                               ; preds = %95
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %102, 2
  br i1 %103, label %112, label %104

104:                                              ; preds = %99
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 1
  %107 = load i8*, i8** %106, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 0
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %133

112:                                              ; preds = %104, %99
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 1
  %115 = load i8*, i8** %114, align 8
  store i8* %115, i8** %18, align 8
  %116 = load i8*, i8** %18, align 8
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %116, i64 %120
  store i8* %121, i8** %19, align 8
  br label %122

122:                                              ; preds = %126, %112
  %123 = load i8*, i8** %18, align 8
  %124 = load i8*, i8** %19, align 8
  %125 = icmp ult i8* %123, %124
  br i1 %125, label %126, label %132

126:                                              ; preds = %122
  %127 = load i8*, i8** %18, align 8
  %128 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %128, i8** %18, align 8
  %129 = load i8, i8* %127, align 1
  %130 = load i8*, i8** %7, align 8
  %131 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %131, i8** %7, align 8
  store i8 %129, i8* %130, align 1
  br label %122

132:                                              ; preds = %122
  br label %188

133:                                              ; preds = %104
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 1
  %136 = load i8*, i8** %135, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 1
  %138 = load i8, i8* %137, align 1
  %139 = zext i8 %138 to i32
  store i32 %139, i32* %15, align 4
  %140 = load i32, i32* %15, align 4
  %141 = icmp sgt i32 %140, 0
  %142 = zext i1 %141 to i32
  %143 = call i32 @assert(i32 %142)
  br label %144

144:                                              ; preds = %183, %133
  %145 = load i32, i32* %11, align 4
  %146 = call i32 @char_code_lookup(i32* @WordCharDict, i32 %145, i32* %16)
  store i32 %146, i32* %14, align 4
  %147 = load i32, i32* %16, align 4
  store i32 %147, i32* %20, align 4
  %148 = load i32, i32* %20, align 4
  %149 = load i32, i32* %9, align 4
  %150 = sub nsw i32 %149, %148
  store i32 %150, i32* %9, align 4
  br label %151

151:                                              ; preds = %174, %144
  %152 = load i32, i32* %12, align 4
  %153 = and i32 %152, 255
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %162, label %155

155:                                              ; preds = %151
  %156 = load i8*, i8** %8, align 8
  %157 = getelementptr inbounds i8, i8* %156, i32 1
  store i8* %157, i8** %8, align 8
  %158 = load i8, i8* %156, align 1
  %159 = sext i8 %158 to i32
  %160 = shl i32 %159, 1
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %12, align 4
  br label %162

162:                                              ; preds = %155, %151
  %163 = load i32, i32* %11, align 4
  %164 = shl i32 %163, 1
  store i32 %164, i32* %11, align 4
  %165 = load i32, i32* %12, align 4
  %166 = and i32 %165, 256
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %162
  %169 = load i32, i32* %11, align 4
  %170 = add i32 %169, 1
  store i32 %170, i32* %11, align 4
  br label %171

171:                                              ; preds = %168, %162
  %172 = load i32, i32* %12, align 4
  %173 = shl i32 %172, 1
  store i32 %173, i32* %12, align 4
  br label %174

174:                                              ; preds = %171
  %175 = load i32, i32* %20, align 4
  %176 = add nsw i32 %175, -1
  store i32 %176, i32* %20, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %151, label %178

178:                                              ; preds = %174
  %179 = load i32, i32* %14, align 4
  %180 = trunc i32 %179 to i8
  %181 = load i8*, i8** %7, align 8
  %182 = getelementptr inbounds i8, i8* %181, i32 1
  store i8* %182, i8** %7, align 8
  store i8 %180, i8* %181, align 1
  br label %183

183:                                              ; preds = %178
  %184 = load i32, i32* %15, align 4
  %185 = add nsw i32 %184, -1
  store i32 %185, i32* %15, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %144, label %187

187:                                              ; preds = %183
  br label %188

188:                                              ; preds = %187, %132
  %189 = load i32, i32* %9, align 4
  %190 = icmp sle i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %188
  br label %316

192:                                              ; preds = %188
  %193 = load i32, i32* %11, align 4
  %194 = call %struct.TYPE_3__* @word_code_lookup(i32* @NotWordDict, i32 %193, i32* %16)
  store %struct.TYPE_3__* %194, %struct.TYPE_3__** %13, align 8
  %195 = load i32, i32* %16, align 4
  store i32 %195, i32* %21, align 4
  %196 = load i32, i32* %21, align 4
  %197 = load i32, i32* %9, align 4
  %198 = sub nsw i32 %197, %196
  store i32 %198, i32* %9, align 4
  br label %199

199:                                              ; preds = %222, %192
  %200 = load i32, i32* %12, align 4
  %201 = and i32 %200, 255
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %210, label %203

203:                                              ; preds = %199
  %204 = load i8*, i8** %8, align 8
  %205 = getelementptr inbounds i8, i8* %204, i32 1
  store i8* %205, i8** %8, align 8
  %206 = load i8, i8* %204, align 1
  %207 = sext i8 %206 to i32
  %208 = shl i32 %207, 1
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %12, align 4
  br label %210

210:                                              ; preds = %203, %199
  %211 = load i32, i32* %11, align 4
  %212 = shl i32 %211, 1
  store i32 %212, i32* %11, align 4
  %213 = load i32, i32* %12, align 4
  %214 = and i32 %213, 256
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %219

216:                                              ; preds = %210
  %217 = load i32, i32* %11, align 4
  %218 = add i32 %217, 1
  store i32 %218, i32* %11, align 4
  br label %219

219:                                              ; preds = %216, %210
  %220 = load i32, i32* %12, align 4
  %221 = shl i32 %220, 1
  store i32 %221, i32* %12, align 4
  br label %222

222:                                              ; preds = %219
  %223 = load i32, i32* %21, align 4
  %224 = add nsw i32 %223, -1
  store i32 %224, i32* %21, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %199, label %226

226:                                              ; preds = %222
  %227 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %228 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = icmp ne i32 %229, 2
  br i1 %230, label %239, label %231

231:                                              ; preds = %226
  %232 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %233 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %232, i32 0, i32 1
  %234 = load i8*, i8** %233, align 8
  %235 = getelementptr inbounds i8, i8* %234, i64 0
  %236 = load i8, i8* %235, align 1
  %237 = sext i8 %236 to i32
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %260

239:                                              ; preds = %231, %226
  %240 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %241 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %240, i32 0, i32 1
  %242 = load i8*, i8** %241, align 8
  store i8* %242, i8** %22, align 8
  %243 = load i8*, i8** %22, align 8
  %244 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %245 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i8, i8* %243, i64 %247
  store i8* %248, i8** %23, align 8
  br label %249

249:                                              ; preds = %253, %239
  %250 = load i8*, i8** %22, align 8
  %251 = load i8*, i8** %23, align 8
  %252 = icmp ult i8* %250, %251
  br i1 %252, label %253, label %259

253:                                              ; preds = %249
  %254 = load i8*, i8** %22, align 8
  %255 = getelementptr inbounds i8, i8* %254, i32 1
  store i8* %255, i8** %22, align 8
  %256 = load i8, i8* %254, align 1
  %257 = load i8*, i8** %7, align 8
  %258 = getelementptr inbounds i8, i8* %257, i32 1
  store i8* %258, i8** %7, align 8
  store i8 %256, i8* %257, align 1
  br label %249

259:                                              ; preds = %249
  br label %315

260:                                              ; preds = %231
  %261 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %262 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %261, i32 0, i32 1
  %263 = load i8*, i8** %262, align 8
  %264 = getelementptr inbounds i8, i8* %263, i64 1
  %265 = load i8, i8* %264, align 1
  %266 = zext i8 %265 to i32
  store i32 %266, i32* %15, align 4
  %267 = load i32, i32* %15, align 4
  %268 = icmp sgt i32 %267, 0
  %269 = zext i1 %268 to i32
  %270 = call i32 @assert(i32 %269)
  br label %271

271:                                              ; preds = %310, %260
  %272 = load i32, i32* %11, align 4
  %273 = call i32 @char_code_lookup(i32* @NotWordCharDict, i32 %272, i32* %16)
  store i32 %273, i32* %14, align 4
  %274 = load i32, i32* %16, align 4
  store i32 %274, i32* %24, align 4
  %275 = load i32, i32* %24, align 4
  %276 = load i32, i32* %9, align 4
  %277 = sub nsw i32 %276, %275
  store i32 %277, i32* %9, align 4
  br label %278

278:                                              ; preds = %301, %271
  %279 = load i32, i32* %12, align 4
  %280 = and i32 %279, 255
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %289, label %282

282:                                              ; preds = %278
  %283 = load i8*, i8** %8, align 8
  %284 = getelementptr inbounds i8, i8* %283, i32 1
  store i8* %284, i8** %8, align 8
  %285 = load i8, i8* %283, align 1
  %286 = sext i8 %285 to i32
  %287 = shl i32 %286, 1
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %12, align 4
  br label %289

289:                                              ; preds = %282, %278
  %290 = load i32, i32* %11, align 4
  %291 = shl i32 %290, 1
  store i32 %291, i32* %11, align 4
  %292 = load i32, i32* %12, align 4
  %293 = and i32 %292, 256
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %298

295:                                              ; preds = %289
  %296 = load i32, i32* %11, align 4
  %297 = add i32 %296, 1
  store i32 %297, i32* %11, align 4
  br label %298

298:                                              ; preds = %295, %289
  %299 = load i32, i32* %12, align 4
  %300 = shl i32 %299, 1
  store i32 %300, i32* %12, align 4
  br label %301

301:                                              ; preds = %298
  %302 = load i32, i32* %24, align 4
  %303 = add nsw i32 %302, -1
  store i32 %303, i32* %24, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %278, label %305

305:                                              ; preds = %301
  %306 = load i32, i32* %14, align 4
  %307 = trunc i32 %306 to i8
  %308 = load i8*, i8** %7, align 8
  %309 = getelementptr inbounds i8, i8* %308, i32 1
  store i8* %309, i8** %7, align 8
  store i8 %307, i8* %308, align 1
  br label %310

310:                                              ; preds = %305
  %311 = load i32, i32* %15, align 4
  %312 = add nsw i32 %311, -1
  store i32 %312, i32* %15, align 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %271, label %314

314:                                              ; preds = %310
  br label %315

315:                                              ; preds = %314, %259
  br label %62

316:                                              ; preds = %191, %62
  %317 = load i32, i32* %9, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %326, label %319

319:                                              ; preds = %316
  %320 = load i8*, i8** %7, align 8
  %321 = load i8*, i8** %4, align 8
  %322 = load i32, i32* @MAX_TEXT_LEN, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i8, i8* %321, i64 %323
  %325 = icmp ult i8* %320, %324
  br label %326

326:                                              ; preds = %319, %316
  %327 = phi i1 [ false, %316 ], [ %325, %319 ]
  %328 = zext i1 %327 to i32
  %329 = call i32 @assert(i32 %328)
  %330 = load i8*, i8** %7, align 8
  store i8 0, i8* %330, align 1
  %331 = load i8*, i8** %7, align 8
  %332 = load i8*, i8** %4, align 8
  %333 = ptrtoint i8* %331 to i64
  %334 = ptrtoint i8* %332 to i64
  %335 = sub i64 %333, %334
  %336 = trunc i64 %335 to i32
  ret i32 %336
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @bswap_32(i32) #1

declare dso_local %struct.TYPE_3__* @word_code_lookup(i32*, i32, i32*) #1

declare dso_local i32 @char_code_lookup(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
