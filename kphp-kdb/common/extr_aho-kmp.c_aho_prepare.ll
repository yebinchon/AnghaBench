; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_aho-kmp.c_aho_prepare.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_aho-kmp.c_aho_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AHO_MAX_N = common dso_local global i32 0, align 4
@L = common dso_local global i32* null, align 8
@AHO_MAX_L = common dso_local global i32 0, align 4
@AHO_MAX_S = common dso_local global i32 0, align 4
@S = common dso_local global i32** null, align 8
@KN = common dso_local global i32 0, align 4
@KL = common dso_local global i32 0, align 4
@KS = common dso_local global i32* null, align 8
@C = common dso_local global i32* null, align 8
@KA = common dso_local global i32* null, align 8
@KB = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aho_prepare(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %24 = load i32, i32* %4, align 4
  %25 = icmp sle i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @AHO_MAX_N, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26, %2
  store i32 -1, i32* %3, align 4
  br label %500

31:                                               ; preds = %26
  store i32 0, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %71, %31
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %74

36:                                               ; preds = %32
  %37 = load i8**, i8*** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @strlen(i8* %41)
  %43 = load i32*, i32** @L, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32 %42, i32* %46, align 4
  %47 = load i32*, i32** @L, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = icmp sle i32 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %36
  %54 = load i32*, i32** @L, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @AHO_MAX_L, align 4
  %60 = icmp sgt i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %53, %36
  store i32 -1, i32* %3, align 4
  br label %500

62:                                               ; preds = %53
  %63 = load i32*, i32** @L, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %62
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %6, align 4
  br label %32

74:                                               ; preds = %32
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @AHO_MAX_S, align 4
  %77 = icmp sge i32 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  store i32 -1, i32* %3, align 4
  br label %500

79:                                               ; preds = %74
  store i32 0, i32* %6, align 4
  br label %80

80:                                               ; preds = %217, %79
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* %4, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %220

84:                                               ; preds = %80
  %85 = load i32*, i32** @L, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %90 = load i8**, i8*** %5, align 8
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8*, i8** %90, i64 %92
  %94 = load i8*, i8** %93, align 8
  store i8* %94, i8** %11, align 8
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, 1
  %97 = zext i32 %96 to i64
  %98 = call i8* @llvm.stacksave()
  store i8* %98, i8** %12, align 8
  %99 = alloca i32, i64 %97, align 16
  store i64 %97, i64* %13, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  store i32 -1, i32* %100, align 16
  %101 = getelementptr inbounds i32, i32* %99, i64 1
  store i32 0, i32* %101, align 4
  store i32 1, i32* %7, align 4
  br label %102

102:                                              ; preds = %131, %84
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* %9, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %138

106:                                              ; preds = %102
  br label %107

107:                                              ; preds = %126, %106
  %108 = load i32, i32* %10, align 4
  %109 = icmp sge i32 %108, 0
  br i1 %109, label %110, label %124

110:                                              ; preds = %107
  %111 = load i8*, i8** %11, align 8
  %112 = load i32, i32* %7, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %111, i64 %113
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = load i8*, i8** %11, align 8
  %118 = load i32, i32* %10, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %117, i64 %119
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp ne i32 %116, %122
  br label %124

124:                                              ; preds = %110, %107
  %125 = phi i1 [ false, %107 ], [ %123, %110 ]
  br i1 %125, label %126, label %131

126:                                              ; preds = %124
  %127 = load i32, i32* %10, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %99, i64 %128
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %10, align 4
  br label %107

131:                                              ; preds = %124
  %132 = load i32, i32* %10, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %10, align 4
  %134 = load i32, i32* %7, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %7, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %99, i64 %136
  store i32 %133, i32* %137, align 4
  br label %102

138:                                              ; preds = %102
  store i32 0, i32* %7, align 4
  br label %139

139:                                              ; preds = %203, %138
  %140 = load i32, i32* %7, align 4
  %141 = load i32, i32* %4, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %206

143:                                              ; preds = %139
  %144 = load i32, i32* %6, align 4
  %145 = load i32, i32* %7, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %155, label %147

147:                                              ; preds = %143
  %148 = load i32*, i32** @L, align 8
  %149 = load i32, i32* %7, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %9, align 4
  %154 = icmp slt i32 %152, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %147, %143
  br label %203

156:                                              ; preds = %147
  store i32 0, i32* %10, align 4
  %157 = load i8**, i8*** %5, align 8
  %158 = load i32, i32* %7, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8*, i8** %157, i64 %159
  %161 = load i8*, i8** %160, align 8
  store i8* %161, i8** %14, align 8
  br label %162

162:                                              ; preds = %194, %156
  %163 = load i8*, i8** %14, align 8
  %164 = load i8, i8* %163, align 1
  %165 = icmp ne i8 %164, 0
  br i1 %165, label %166, label %197

166:                                              ; preds = %162
  br label %167

167:                                              ; preds = %183, %166
  %168 = load i32, i32* %10, align 4
  %169 = icmp sge i32 %168, 0
  br i1 %169, label %170, label %181

170:                                              ; preds = %167
  %171 = load i8*, i8** %14, align 8
  %172 = load i8, i8* %171, align 1
  %173 = sext i8 %172 to i32
  %174 = load i8*, i8** %11, align 8
  %175 = load i32, i32* %10, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8, i8* %174, i64 %176
  %178 = load i8, i8* %177, align 1
  %179 = sext i8 %178 to i32
  %180 = icmp ne i32 %173, %179
  br label %181

181:                                              ; preds = %170, %167
  %182 = phi i1 [ false, %167 ], [ %180, %170 ]
  br i1 %182, label %183, label %188

183:                                              ; preds = %181
  %184 = load i32, i32* %10, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %99, i64 %185
  %187 = load i32, i32* %186, align 4
  store i32 %187, i32* %10, align 4
  br label %167

188:                                              ; preds = %181
  %189 = load i32, i32* %10, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %10, align 4
  %191 = load i32, i32* %9, align 4
  %192 = icmp eq i32 %190, %191
  br i1 %192, label %193, label %194

193:                                              ; preds = %188
  br label %197

194:                                              ; preds = %188
  %195 = load i8*, i8** %14, align 8
  %196 = getelementptr inbounds i8, i8* %195, i32 1
  store i8* %196, i8** %14, align 8
  br label %162

197:                                              ; preds = %193, %162
  %198 = load i32, i32* %10, align 4
  %199 = load i32, i32* %9, align 4
  %200 = icmp eq i32 %198, %199
  br i1 %200, label %201, label %202

201:                                              ; preds = %197
  br label %206

202:                                              ; preds = %197
  br label %203

203:                                              ; preds = %202, %155
  %204 = load i32, i32* %7, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %7, align 4
  br label %139

206:                                              ; preds = %201, %139
  %207 = load i32, i32* %10, align 4
  %208 = load i32, i32* %9, align 4
  %209 = icmp eq i32 %207, %208
  br i1 %209, label %210, label %215

210:                                              ; preds = %206
  %211 = load i32*, i32** @L, align 8
  %212 = load i32, i32* %6, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  store i32 0, i32* %214, align 4
  br label %215

215:                                              ; preds = %210, %206
  %216 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %216)
  br label %217

217:                                              ; preds = %215
  %218 = load i32, i32* %6, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %6, align 4
  br label %80

220:                                              ; preds = %80
  store i32 0, i32* %15, align 4
  store i32 0, i32* %6, align 4
  br label %221

221:                                              ; preds = %254, %220
  %222 = load i32, i32* %6, align 4
  %223 = load i32, i32* %4, align 4
  %224 = icmp slt i32 %222, %223
  br i1 %224, label %225, label %257

225:                                              ; preds = %221
  %226 = load i32*, i32** @L, align 8
  %227 = load i32, i32* %6, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %226, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = icmp sgt i32 %230, 0
  br i1 %231, label %232, label %253

232:                                              ; preds = %225
  %233 = load i32*, i32** @L, align 8
  %234 = load i32, i32* %6, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %233, i64 %235
  %237 = load i32, i32* %236, align 4
  %238 = load i32*, i32** @L, align 8
  %239 = load i32, i32* %15, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %238, i64 %240
  store i32 %237, i32* %241, align 4
  %242 = load i8**, i8*** %5, align 8
  %243 = load i32, i32* %6, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i8*, i8** %242, i64 %244
  %246 = load i8*, i8** %245, align 8
  %247 = bitcast i8* %246 to i32*
  %248 = load i32**, i32*** @S, align 8
  %249 = load i32, i32* %15, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %15, align 4
  %251 = sext i32 %249 to i64
  %252 = getelementptr inbounds i32*, i32** %248, i64 %251
  store i32* %247, i32** %252, align 8
  br label %253

253:                                              ; preds = %232, %225
  br label %254

254:                                              ; preds = %253
  %255 = load i32, i32* %6, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %6, align 4
  br label %221

257:                                              ; preds = %221
  %258 = load i32, i32* %15, align 4
  store i32 %258, i32* @KN, align 4
  %259 = load i32, i32* @KN, align 4
  %260 = sub nsw i32 %259, 1
  %261 = call i32 @sort_str(i32 0, i32 %260)
  store i32 0, i32* %16, align 4
  store i32 1, i32* @KL, align 4
  store i32 0, i32* %6, align 4
  br label %262

262:                                              ; preds = %317, %257
  %263 = load i32, i32* %6, align 4
  %264 = load i32, i32* @KN, align 4
  %265 = icmp slt i32 %263, %264
  br i1 %265, label %266, label %320

266:                                              ; preds = %262
  %267 = load i32*, i32** @KS, align 8
  %268 = load i32, i32* @KL, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i32, i32* %267, i64 %269
  %271 = load i32**, i32*** @S, align 8
  %272 = load i32, i32* %6, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32*, i32** %271, i64 %273
  %275 = load i32*, i32** %274, align 8
  %276 = load i32*, i32** @L, align 8
  %277 = load i32, i32* %6, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i32, i32* %276, i64 %278
  %280 = load i32, i32* %279, align 4
  %281 = add nsw i32 %280, 1
  %282 = call i32 @memcpy(i32* %270, i32* %275, i32 %281)
  %283 = load i32*, i32** @KS, align 8
  %284 = load i32, i32* @KL, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i32, i32* %283, i64 %285
  %287 = load i32**, i32*** @S, align 8
  %288 = load i32, i32* %6, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i32*, i32** %287, i64 %289
  store i32* %286, i32** %290, align 8
  %291 = load i32*, i32** @C, align 8
  %292 = load i32, i32* %6, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i32, i32* %291, i64 %293
  store i32 0, i32* %294, align 4
  %295 = load i32*, i32** @L, align 8
  %296 = load i32, i32* %6, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i32, i32* %295, i64 %297
  %299 = load i32, i32* %298, align 4
  %300 = add nsw i32 %299, 1
  %301 = load i32, i32* @KL, align 4
  %302 = add nsw i32 %301, %300
  store i32 %302, i32* @KL, align 4
  %303 = load i32*, i32** @L, align 8
  %304 = load i32, i32* %6, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i32, i32* %303, i64 %305
  %307 = load i32, i32* %306, align 4
  %308 = load i32, i32* %16, align 4
  %309 = icmp sgt i32 %307, %308
  br i1 %309, label %310, label %316

310:                                              ; preds = %266
  %311 = load i32*, i32** @L, align 8
  %312 = load i32, i32* %6, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i32, i32* %311, i64 %313
  %315 = load i32, i32* %314, align 4
  store i32 %315, i32* %16, align 4
  br label %316

316:                                              ; preds = %310, %266
  br label %317

317:                                              ; preds = %316
  %318 = load i32, i32* %6, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %6, align 4
  br label %262

320:                                              ; preds = %262
  %321 = load i32, i32* @KL, align 4
  %322 = load i32, i32* @AHO_MAX_S, align 4
  %323 = icmp sle i32 %321, %322
  %324 = zext i1 %323 to i32
  %325 = call i32 @assert(i32 %324)
  %326 = load i32*, i32** @KA, align 8
  %327 = getelementptr inbounds i32, i32* %326, i64 0
  store i32 -1, i32* %327, align 4
  store i32 0, i32* %17, align 4
  br label %328

328:                                              ; preds = %495, %320
  %329 = load i32, i32* %17, align 4
  %330 = load i32, i32* %16, align 4
  %331 = icmp sle i32 %329, %330
  br i1 %331, label %332, label %498

332:                                              ; preds = %328
  store i32 -1, i32* %18, align 4
  store i32 -256, i32* %19, align 4
  store i32 -1, i32* %20, align 4
  store i32 -1, i32* %21, align 4
  store i32 0, i32* %6, align 4
  br label %333

333:                                              ; preds = %491, %332
  %334 = load i32, i32* %6, align 4
  %335 = load i32, i32* @KN, align 4
  %336 = icmp slt i32 %334, %335
  br i1 %336, label %337, label %494

337:                                              ; preds = %333
  %338 = load i32*, i32** @L, align 8
  %339 = load i32, i32* %6, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds i32, i32* %338, i64 %340
  %342 = load i32, i32* %341, align 4
  %343 = load i32, i32* %17, align 4
  %344 = icmp slt i32 %342, %343
  br i1 %344, label %345, label %346

345:                                              ; preds = %337
  br label %491

346:                                              ; preds = %337
  %347 = load i32**, i32*** @S, align 8
  %348 = load i32, i32* %6, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i32*, i32** %347, i64 %349
  %351 = load i32*, i32** %350, align 8
  %352 = load i32, i32* %17, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds i32, i32* %351, i64 %353
  %355 = load i32*, i32** @KS, align 8
  %356 = ptrtoint i32* %354 to i64
  %357 = ptrtoint i32* %355 to i64
  %358 = sub i64 %356, %357
  %359 = sdiv exact i64 %358, 4
  %360 = trunc i64 %359 to i32
  store i32 %360, i32* %22, align 4
  %361 = load i32*, i32** @L, align 8
  %362 = load i32, i32* %6, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds i32, i32* %361, i64 %363
  %365 = load i32, i32* %364, align 4
  %366 = load i32, i32* %17, align 4
  %367 = icmp eq i32 %365, %366
  br i1 %367, label %368, label %375

368:                                              ; preds = %346
  %369 = load i32, i32* %6, align 4
  %370 = shl i32 1, %369
  %371 = load i32*, i32** @KB, align 8
  %372 = load i32, i32* %22, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds i32, i32* %371, i64 %373
  store i32 %370, i32* %374, align 4
  br label %380

375:                                              ; preds = %346
  %376 = load i32*, i32** @KB, align 8
  %377 = load i32, i32* %22, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds i32, i32* %376, i64 %378
  store i32 0, i32* %379, align 4
  br label %380

380:                                              ; preds = %375, %368
  %381 = load i32, i32* %18, align 4
  %382 = load i32*, i32** @C, align 8
  %383 = load i32, i32* %6, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds i32, i32* %382, i64 %384
  %386 = load i32, i32* %385, align 4
  %387 = icmp ne i32 %381, %386
  br i1 %387, label %388, label %446

388:                                              ; preds = %380
  %389 = load i32*, i32** @KA, align 8
  %390 = load i32, i32* %22, align 4
  %391 = sub nsw i32 %390, 1
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds i32, i32* %389, i64 %392
  %394 = load i32, i32* %393, align 4
  store i32 %394, i32* %23, align 4
  br label %395

395:                                              ; preds = %417, %388
  %396 = load i32, i32* %23, align 4
  %397 = icmp sgt i32 %396, 0
  br i1 %397, label %398, label %415

398:                                              ; preds = %395
  %399 = load i32**, i32*** @S, align 8
  %400 = load i32, i32* %6, align 4
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds i32*, i32** %399, i64 %401
  %403 = load i32*, i32** %402, align 8
  %404 = load i32, i32* %17, align 4
  %405 = sub nsw i32 %404, 1
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds i32, i32* %403, i64 %406
  %408 = load i32, i32* %407, align 4
  %409 = load i32*, i32** @KS, align 8
  %410 = load i32, i32* %23, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds i32, i32* %409, i64 %411
  %413 = load i32, i32* %412, align 4
  %414 = icmp ne i32 %408, %413
  br label %415

415:                                              ; preds = %398, %395
  %416 = phi i1 [ false, %395 ], [ %414, %398 ]
  br i1 %416, label %417, label %423

417:                                              ; preds = %415
  %418 = load i32*, i32** @KA, align 8
  %419 = load i32, i32* %23, align 4
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds i32, i32* %418, i64 %420
  %422 = load i32, i32* %421, align 4
  store i32 %422, i32* %23, align 4
  br label %395

423:                                              ; preds = %415
  %424 = load i32, i32* %23, align 4
  %425 = add nsw i32 %424, 1
  %426 = load i32*, i32** @KA, align 8
  %427 = load i32, i32* %22, align 4
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds i32, i32* %426, i64 %428
  store i32 %425, i32* %429, align 4
  %430 = load i32*, i32** @C, align 8
  %431 = load i32, i32* %6, align 4
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds i32, i32* %430, i64 %432
  %434 = load i32, i32* %433, align 4
  store i32 %434, i32* %18, align 4
  %435 = load i32**, i32*** @S, align 8
  %436 = load i32, i32* %6, align 4
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds i32*, i32** %435, i64 %437
  %439 = load i32*, i32** %438, align 8
  %440 = load i32, i32* %17, align 4
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds i32, i32* %439, i64 %441
  %443 = load i32, i32* %442, align 4
  store i32 %443, i32* %19, align 4
  %444 = load i32, i32* %6, align 4
  store i32 %444, i32* %20, align 4
  %445 = load i32, i32* %22, align 4
  store i32 %445, i32* %21, align 4
  br label %485

446:                                              ; preds = %380
  %447 = load i32, i32* %19, align 4
  %448 = load i32**, i32*** @S, align 8
  %449 = load i32, i32* %6, align 4
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds i32*, i32** %448, i64 %450
  %452 = load i32*, i32** %451, align 8
  %453 = load i32, i32* %17, align 4
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds i32, i32* %452, i64 %454
  %456 = load i32, i32* %455, align 4
  %457 = icmp ne i32 %447, %456
  br i1 %457, label %458, label %484

458:                                              ; preds = %446
  %459 = load i32*, i32** @KA, align 8
  %460 = load i32, i32* %21, align 4
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds i32, i32* %459, i64 %461
  %463 = load i32, i32* %462, align 4
  %464 = load i32*, i32** @KA, align 8
  %465 = load i32, i32* %22, align 4
  %466 = sext i32 %465 to i64
  %467 = getelementptr inbounds i32, i32* %464, i64 %466
  store i32 %463, i32* %467, align 4
  %468 = load i32, i32* %22, align 4
  %469 = load i32*, i32** @KA, align 8
  %470 = load i32, i32* %21, align 4
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds i32, i32* %469, i64 %471
  store i32 %468, i32* %472, align 4
  %473 = load i32**, i32*** @S, align 8
  %474 = load i32, i32* %6, align 4
  %475 = sext i32 %474 to i64
  %476 = getelementptr inbounds i32*, i32** %473, i64 %475
  %477 = load i32*, i32** %476, align 8
  %478 = load i32, i32* %17, align 4
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds i32, i32* %477, i64 %479
  %481 = load i32, i32* %480, align 4
  store i32 %481, i32* %19, align 4
  %482 = load i32, i32* %6, align 4
  store i32 %482, i32* %20, align 4
  %483 = load i32, i32* %22, align 4
  store i32 %483, i32* %21, align 4
  br label %484

484:                                              ; preds = %458, %446
  br label %485

485:                                              ; preds = %484, %423
  %486 = load i32, i32* %20, align 4
  %487 = load i32*, i32** @C, align 8
  %488 = load i32, i32* %6, align 4
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds i32, i32* %487, i64 %489
  store i32 %486, i32* %490, align 4
  br label %491

491:                                              ; preds = %485, %345
  %492 = load i32, i32* %6, align 4
  %493 = add nsw i32 %492, 1
  store i32 %493, i32* %6, align 4
  br label %333

494:                                              ; preds = %333
  br label %495

495:                                              ; preds = %494
  %496 = load i32, i32* %17, align 4
  %497 = add nsw i32 %496, 1
  store i32 %497, i32* %17, align 4
  br label %328

498:                                              ; preds = %328
  %499 = load i32, i32* @KL, align 4
  store i32 %499, i32* %3, align 4
  br label %500

500:                                              ; preds = %498, %78, %61, %30
  %501 = load i32, i32* %3, align 4
  ret i32 %501
}

declare dso_local i32 @strlen(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @sort_str(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
