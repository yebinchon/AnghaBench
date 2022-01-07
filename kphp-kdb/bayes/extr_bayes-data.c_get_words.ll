; ModuleID = '/home/carl/AnghaBench/kphp-kdb/bayes/extr_bayes-data.c_get_words.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/bayes/extr_bayes-data.c_get_words.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@verbosity = common dso_local global i32 0, align 4
@binlog_readed = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"in get words\0A\00", align 1
@words_len = common dso_local global i32 0, align 4
@MAX_WORDS = common dso_local global i32 0, align 4
@v = common dso_local global i64* null, align 8
@buf_debug = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"bayes_get_words: %s\0A\00", align 1
@words = common dso_local global i64* null, align 8
@cmp_ll = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"go out get words\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_words(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %10 = load i32, i32* @verbosity, align 4
  %11 = icmp sgt i32 %10, 2
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load i64, i64* @binlog_readed, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32, i32* @stderr, align 4
  %17 = call i32 (i32, i8*, ...) @fprintf(i32 %16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %15, %12, %1
  store i32 0, i32* @words_len, align 4
  %19 = load i8*, i8** %2, align 8
  %20 = call i32 @strlen(i8* %19)
  %21 = add nsw i32 %20, 1
  %22 = load i32, i32* @MAX_WORDS, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load i8*, i8** %2, align 8
  %26 = load i32, i32* @MAX_WORDS, align 4
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %25, i64 %28
  store i8 0, i8* %29, align 1
  br label %30

30:                                               ; preds = %24, %18
  %31 = load i8*, i8** %2, align 8
  %32 = call i32 @strlen(i8* %31)
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %48, %30
  %34 = load i32, i32* %3, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %33
  %37 = load i8*, i8** %2, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sub nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %37, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 9
  br label %45

45:                                               ; preds = %36, %33
  %46 = phi i1 [ false, %33 ], [ %44, %36 ]
  br i1 %46, label %47, label %51

47:                                               ; preds = %45
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %3, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %3, align 4
  br label %33

51:                                               ; preds = %45
  %52 = load i8*, i8** %2, align 8
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = load i64*, i64** @v, align 8
  %57 = call i32 @bayes_string_to_utf8(i8* %55, i64* %56)
  store i8* null, i8** %2, align 8
  %58 = load i32, i32* @verbosity, align 4
  %59 = icmp sgt i32 %58, 1
  br i1 %59, label %60, label %70

60:                                               ; preds = %51
  %61 = load i64, i64* @binlog_readed, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %60
  %64 = load i64*, i64** @v, align 8
  %65 = load i8*, i8** @buf_debug, align 8
  %66 = call i32 @put_string_utf8(i64* %64, i8* %65)
  %67 = load i32, i32* @stderr, align 4
  %68 = load i8*, i8** @buf_debug, align 8
  %69 = call i32 (i32, i8*, ...) @fprintf(i32 %67, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %68)
  br label %70

70:                                               ; preds = %63, %60, %51
  %71 = call i32 (...) @delete_links()
  store i32 %71, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %142, %70
  %73 = load i64*, i64** @v, align 8
  %74 = load i32, i32* %3, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %73, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %90

79:                                               ; preds = %72
  %80 = load i64*, i64** @v, align 8
  %81 = load i32, i32* %3, align 4
  %82 = add nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %80, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %79
  %88 = load i32, i32* %5, align 4
  %89 = icmp slt i32 %88, 25
  br label %90

90:                                               ; preds = %87, %79, %72
  %91 = phi i1 [ false, %79 ], [ false, %72 ], [ %89, %87 ]
  br i1 %91, label %92, label %145

92:                                               ; preds = %90
  %93 = load i64*, i64** @v, align 8
  %94 = load i32, i32* %3, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %93, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @get_type_lang(i64 %97)
  %99 = load i64*, i64** @v, align 8
  %100 = load i32, i32* %3, align 4
  %101 = add nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i64, i64* %99, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @get_type_lang(i64 %104)
  %106 = add nsw i32 %98, %105
  %107 = icmp eq i32 %106, 1
  br i1 %107, label %108, label %141

108:                                              ; preds = %92
  %109 = load i64*, i64** @v, align 8
  %110 = load i32, i32* %3, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i64, i64* %109, i64 %111
  %113 = call i32 @correct_lang(i64* %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %140, label %115

115:                                              ; preds = %108
  %116 = load i64*, i64** @v, align 8
  %117 = load i32, i32* %3, align 4
  %118 = add nsw i32 %117, 1
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i64, i64* %116, i64 %119
  %121 = call i32 @correct_lang(i64* %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %140, label %123

123:                                              ; preds = %115
  %124 = load i32, i32* %5, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %5, align 4
  %126 = call i32 @add_kludge(i32 0, i32 %124)
  br label %127

127:                                              ; preds = %136, %123
  %128 = load i64*, i64** @v, align 8
  %129 = load i32, i32* %3, align 4
  %130 = add nsw i32 %129, 1
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i64, i64* %128, i64 %131
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @get_type_lang(i64 %133)
  %135 = icmp ne i32 %134, 2
  br i1 %135, label %136, label %139

136:                                              ; preds = %127
  %137 = load i32, i32* %3, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %3, align 4
  br label %127

139:                                              ; preds = %127
  br label %140

140:                                              ; preds = %139, %115, %108
  br label %141

141:                                              ; preds = %140, %92
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %3, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %3, align 4
  br label %72

145:                                              ; preds = %90
  store i32 0, i32* %6, align 4
  store i32 0, i32* %3, align 4
  br label %146

146:                                              ; preds = %197, %145
  %147 = load i64*, i64** @v, align 8
  %148 = load i32, i32* %3, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i64, i64* %147, i64 %149
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %164

153:                                              ; preds = %146
  %154 = load i64*, i64** @v, align 8
  %155 = load i32, i32* %3, align 4
  %156 = add nsw i32 %155, 1
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i64, i64* %154, i64 %157
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %153
  %162 = load i32, i32* %6, align 4
  %163 = icmp slt i32 %162, 25
  br label %164

164:                                              ; preds = %161, %153, %146
  %165 = phi i1 [ false, %153 ], [ false, %146 ], [ %163, %161 ]
  br i1 %165, label %166, label %200

166:                                              ; preds = %164
  %167 = load i64*, i64** @v, align 8
  %168 = load i32, i32* %3, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i64, i64* %167, i64 %169
  %171 = load i64, i64* %170, align 8
  %172 = call i32 @get_type_case(i64 %171)
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %196

174:                                              ; preds = %166
  %175 = load i64*, i64** @v, align 8
  %176 = load i32, i32* %3, align 4
  %177 = add nsw i32 %176, 1
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i64, i64* %175, i64 %178
  %180 = load i64, i64* %179, align 8
  %181 = call i32 @get_type_case(i64 %180)
  %182 = icmp eq i32 %181, 1
  br i1 %182, label %183, label %196

183:                                              ; preds = %174
  %184 = load i64*, i64** @v, align 8
  %185 = load i32, i32* %3, align 4
  %186 = add nsw i32 %185, 2
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i64, i64* %184, i64 %187
  %189 = load i64, i64* %188, align 8
  %190 = call i32 @get_type_case(i64 %189)
  %191 = icmp eq i32 %190, 1
  br i1 %191, label %192, label %196

192:                                              ; preds = %183
  %193 = load i32, i32* %6, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %6, align 4
  %195 = call i32 @add_kludge(i32 1, i32 %193)
  br label %196

196:                                              ; preds = %192, %183, %174, %166
  br label %197

197:                                              ; preds = %196
  %198 = load i32, i32* %3, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %3, align 4
  br label %146

200:                                              ; preds = %164
  %201 = load i32, i32* @words_len, align 4
  %202 = sub nsw i32 0, %201
  store i32 %202, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %203

203:                                              ; preds = %290, %200
  %204 = load i64*, i64** @v, align 8
  %205 = load i32, i32* %8, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i64, i64* %204, i64 %206
  %208 = load i64, i64* %207, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %291

210:                                              ; preds = %203
  br label %211

211:                                              ; preds = %229, %210
  %212 = load i64*, i64** @v, align 8
  %213 = load i32, i32* %8, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i64, i64* %212, i64 %214
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %227

218:                                              ; preds = %211
  %219 = load i64*, i64** @v, align 8
  %220 = load i32, i32* %8, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i64, i64* %219, i64 %221
  %223 = load i64, i64* %222, align 8
  %224 = call i64 @is_letter(i64 %223)
  %225 = icmp ne i64 %224, 0
  %226 = xor i1 %225, true
  br label %227

227:                                              ; preds = %218, %211
  %228 = phi i1 [ false, %211 ], [ %226, %218 ]
  br i1 %228, label %229, label %232

229:                                              ; preds = %227
  %230 = load i32, i32* %8, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %8, align 4
  br label %211

232:                                              ; preds = %227
  %233 = load i64*, i64** @v, align 8
  %234 = load i32, i32* %8, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i64, i64* %233, i64 %235
  %237 = load i64, i64* %236, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %290

239:                                              ; preds = %232
  %240 = load i32, i32* %8, align 4
  store i32 %240, i32* %3, align 4
  br label %241

241:                                              ; preds = %258, %239
  %242 = load i64*, i64** @v, align 8
  %243 = load i32, i32* %3, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i64, i64* %242, i64 %244
  %246 = load i64, i64* %245, align 8
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %256

248:                                              ; preds = %241
  %249 = load i64*, i64** @v, align 8
  %250 = load i32, i32* %3, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i64, i64* %249, i64 %251
  %253 = load i64, i64* %252, align 8
  %254 = call i64 @is_letter(i64 %253)
  %255 = icmp ne i64 %254, 0
  br label %256

256:                                              ; preds = %248, %241
  %257 = phi i1 [ false, %241 ], [ %255, %248 ]
  br i1 %257, label %258, label %261

258:                                              ; preds = %256
  %259 = load i32, i32* %3, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %3, align 4
  br label %241

261:                                              ; preds = %256
  %262 = load i64*, i64** @v, align 8
  %263 = load i32, i32* %3, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i64, i64* %262, i64 %264
  %266 = load i64, i64* %265, align 8
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %275

268:                                              ; preds = %261
  %269 = load i32, i32* %3, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %9, align 4
  %271 = load i64*, i64** @v, align 8
  %272 = load i32, i32* %3, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i64, i64* %271, i64 %273
  store i64 0, i64* %274, align 8
  br label %277

275:                                              ; preds = %261
  %276 = load i32, i32* %3, align 4
  store i32 %276, i32* %9, align 4
  br label %277

277:                                              ; preds = %275, %268
  %278 = load i32, i32* %3, align 4
  %279 = load i32, i32* %8, align 4
  %280 = sub nsw i32 %278, %279
  %281 = icmp sgt i32 %280, 2
  br i1 %281, label %282, label %288

282:                                              ; preds = %277
  %283 = load i64*, i64** @v, align 8
  %284 = load i32, i32* %8, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i64, i64* %283, i64 %285
  %287 = call i32 @add_word(i64* %286)
  br label %288

288:                                              ; preds = %282, %277
  %289 = load i32, i32* %9, align 4
  store i32 %289, i32* %8, align 4
  br label %290

290:                                              ; preds = %288, %232
  br label %203

291:                                              ; preds = %203
  %292 = load i32, i32* @words_len, align 4
  %293 = load i32, i32* %7, align 4
  %294 = add nsw i32 %293, %292
  store i32 %294, i32* %7, align 4
  %295 = load i32, i32* %7, align 4
  %296 = icmp sge i32 %295, 11
  br i1 %296, label %297, label %302

297:                                              ; preds = %291
  %298 = load i32, i32* %7, align 4
  %299 = sub nsw i32 %298, 11
  %300 = sdiv i32 %299, 4
  %301 = add nsw i32 %300, 11
  store i32 %301, i32* %7, align 4
  br label %302

302:                                              ; preds = %297, %291
  %303 = load i32, i32* %7, align 4
  %304 = icmp sgt i32 %303, 25
  br i1 %304, label %305, label %306

305:                                              ; preds = %302
  store i32 25, i32* %7, align 4
  br label %306

306:                                              ; preds = %305, %302
  %307 = load i32, i32* %7, align 4
  %308 = call i32 @add_kludge(i32 2, i32 %307)
  %309 = load i64*, i64** @words, align 8
  %310 = load i32, i32* @words_len, align 4
  %311 = load i32, i32* @cmp_ll, align 4
  %312 = call i32 @qsort(i64* %309, i32 %310, i32 4, i32 %311)
  store i32 1, i32* %8, align 4
  store i32 1, i32* %3, align 4
  br label %313

313:                                              ; preds = %342, %306
  %314 = load i32, i32* %3, align 4
  %315 = load i32, i32* @words_len, align 4
  %316 = icmp slt i32 %314, %315
  br i1 %316, label %317, label %345

317:                                              ; preds = %313
  %318 = load i64*, i64** @words, align 8
  %319 = load i32, i32* %3, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i64, i64* %318, i64 %320
  %322 = load i64, i64* %321, align 8
  %323 = load i64*, i64** @words, align 8
  %324 = load i32, i32* %3, align 4
  %325 = sub nsw i32 %324, 1
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i64, i64* %323, i64 %326
  %328 = load i64, i64* %327, align 8
  %329 = icmp ne i64 %322, %328
  br i1 %329, label %330, label %341

330:                                              ; preds = %317
  %331 = load i64*, i64** @words, align 8
  %332 = load i32, i32* %3, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i64, i64* %331, i64 %333
  %335 = load i64, i64* %334, align 8
  %336 = load i64*, i64** @words, align 8
  %337 = load i32, i32* %8, align 4
  %338 = add nsw i32 %337, 1
  store i32 %338, i32* %8, align 4
  %339 = sext i32 %337 to i64
  %340 = getelementptr inbounds i64, i64* %336, i64 %339
  store i64 %335, i64* %340, align 8
  br label %341

341:                                              ; preds = %330, %317
  br label %342

342:                                              ; preds = %341
  %343 = load i32, i32* %3, align 4
  %344 = add nsw i32 %343, 1
  store i32 %344, i32* %3, align 4
  br label %313

345:                                              ; preds = %313
  %346 = load i32, i32* %8, align 4
  store i32 %346, i32* @words_len, align 4
  %347 = load i64*, i64** @words, align 8
  %348 = load i32, i32* @words_len, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i64, i64* %347, i64 %349
  store i64 0, i64* %350, align 8
  %351 = load i32, i32* @verbosity, align 4
  %352 = icmp sgt i32 %351, 2
  br i1 %352, label %353, label %359

353:                                              ; preds = %345
  %354 = load i64, i64* @binlog_readed, align 8
  %355 = icmp ne i64 %354, 0
  br i1 %355, label %356, label %359

356:                                              ; preds = %353
  %357 = load i32, i32* @stderr, align 4
  %358 = call i32 (i32, i8*, ...) @fprintf(i32 %357, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %359

359:                                              ; preds = %356, %353, %345
  %360 = load i32, i32* %4, align 4
  ret i32 %360
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @bayes_string_to_utf8(i8*, i64*) #1

declare dso_local i32 @put_string_utf8(i64*, i8*) #1

declare dso_local i32 @delete_links(...) #1

declare dso_local i32 @get_type_lang(i64) #1

declare dso_local i32 @correct_lang(i64*) #1

declare dso_local i32 @add_kludge(i32, i32) #1

declare dso_local i32 @get_type_case(i64) #1

declare dso_local i64 @is_letter(i64) #1

declare dso_local i32 @add_word(i64*) #1

declare dso_local i32 @qsort(i64*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
