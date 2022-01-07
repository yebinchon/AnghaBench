; ModuleID = '/home/carl/AnghaBench/git/extr_kwset.c_bmexec.c'
source_filename = "/home/carl/AnghaBench/git/extr_kwset.c_bmexec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kwset = type { i32, i8*, i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i8*, i64)* @bmexec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bmexec(i64 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.kwset*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %18 = load i64, i64* %5, align 8
  %19 = inttoptr i64 %18 to %struct.kwset*
  store %struct.kwset* %19, %struct.kwset** %8, align 8
  %20 = load %struct.kwset*, %struct.kwset** %8, align 8
  %21 = getelementptr inbounds %struct.kwset, %struct.kwset* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %16, align 4
  %23 = load i32, i32* %16, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %384

26:                                               ; preds = %3
  %27 = load i32, i32* %16, align 4
  %28 = sext i32 %27 to i64
  %29 = load i64, i64* %7, align 8
  %30 = icmp ugt i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i64 -1, i64* %4, align 8
  br label %384

32:                                               ; preds = %26
  %33 = load i32, i32* %16, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %55

35:                                               ; preds = %32
  %36 = load i8*, i8** %6, align 8
  %37 = load %struct.kwset*, %struct.kwset** %8, align 8
  %38 = getelementptr inbounds %struct.kwset, %struct.kwset* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  %41 = load i8, i8* %40, align 1
  %42 = load i64, i64* %7, align 8
  %43 = call i8* @memchr(i8* %36, i8 signext %41, i64 %42)
  store i8* %43, i8** %12, align 8
  %44 = load i8*, i8** %12, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %35
  %47 = load i8*, i8** %12, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = ptrtoint i8* %47 to i64
  %50 = ptrtoint i8* %48 to i64
  %51 = sub i64 %49, %50
  br label %53

52:                                               ; preds = %35
  br label %53

53:                                               ; preds = %52, %46
  %54 = phi i64 [ %51, %46 ], [ -1, %52 ]
  store i64 %54, i64* %4, align 8
  br label %384

55:                                               ; preds = %32
  %56 = load %struct.kwset*, %struct.kwset** %8, align 8
  %57 = getelementptr inbounds %struct.kwset, %struct.kwset* %56, i32 0, i32 2
  %58 = load i8*, i8** %57, align 8
  store i8* %58, i8** %9, align 8
  %59 = load %struct.kwset*, %struct.kwset** %8, align 8
  %60 = getelementptr inbounds %struct.kwset, %struct.kwset* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = load i32, i32* %16, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  store i8* %64, i8** %11, align 8
  %65 = load i8*, i8** %11, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 -2
  %67 = load i8, i8* %66, align 1
  %68 = call i32 @U(i8 signext %67)
  store i32 %68, i32* %14, align 4
  %69 = load %struct.kwset*, %struct.kwset** %8, align 8
  %70 = getelementptr inbounds %struct.kwset, %struct.kwset* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  store i32 %71, i32* %17, align 4
  %72 = load i8*, i8** %6, align 8
  %73 = load i32, i32* %16, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  store i8* %75, i8** %12, align 8
  %76 = load i64, i64* %7, align 8
  %77 = load i32, i32* %16, align 4
  %78 = mul nsw i32 12, %77
  %79 = sext i32 %78 to i64
  %80 = icmp ugt i64 %76, %79
  br i1 %80, label %81, label %294

81:                                               ; preds = %55
  %82 = load i8*, i8** %6, align 8
  %83 = load i64, i64* %7, align 8
  %84 = getelementptr inbounds i8, i8* %82, i64 %83
  %85 = load i32, i32* %16, align 4
  %86 = mul nsw i32 11, %85
  %87 = sext i32 %86 to i64
  %88 = sub i64 0, %87
  %89 = getelementptr inbounds i8, i8* %84, i64 %88
  store i8* %89, i8** %10, align 8
  br label %90

90:                                               ; preds = %288, %81
  br label %91

91:                                               ; preds = %211, %90
  %92 = load i8*, i8** %12, align 8
  %93 = load i8*, i8** %10, align 8
  %94 = icmp ule i8* %92, %93
  br i1 %94, label %95, label %238

95:                                               ; preds = %91
  %96 = load i8*, i8** %9, align 8
  %97 = load i8*, i8** %12, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 -1
  %99 = load i8, i8* %98, align 1
  %100 = call i32 @U(i8 signext %99)
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %96, i64 %101
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  store i32 %104, i32* %13, align 4
  %105 = load i32, i32* %13, align 4
  %106 = load i8*, i8** %12, align 8
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds i8, i8* %106, i64 %107
  store i8* %108, i8** %12, align 8
  %109 = load i8*, i8** %9, align 8
  %110 = load i8*, i8** %12, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 -1
  %112 = load i8, i8* %111, align 1
  %113 = call i32 @U(i8 signext %112)
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %109, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = zext i8 %116 to i32
  store i32 %117, i32* %13, align 4
  %118 = load i32, i32* %13, align 4
  %119 = load i8*, i8** %12, align 8
  %120 = sext i32 %118 to i64
  %121 = getelementptr inbounds i8, i8* %119, i64 %120
  store i8* %121, i8** %12, align 8
  %122 = load i32, i32* %13, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %95
  br label %239

125:                                              ; preds = %95
  %126 = load i8*, i8** %9, align 8
  %127 = load i8*, i8** %12, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 -1
  %129 = load i8, i8* %128, align 1
  %130 = call i32 @U(i8 signext %129)
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %126, i64 %131
  %133 = load i8, i8* %132, align 1
  %134 = zext i8 %133 to i32
  store i32 %134, i32* %13, align 4
  %135 = load i32, i32* %13, align 4
  %136 = load i8*, i8** %12, align 8
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds i8, i8* %136, i64 %137
  store i8* %138, i8** %12, align 8
  %139 = load i8*, i8** %9, align 8
  %140 = load i8*, i8** %12, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 -1
  %142 = load i8, i8* %141, align 1
  %143 = call i32 @U(i8 signext %142)
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %139, i64 %144
  %146 = load i8, i8* %145, align 1
  %147 = zext i8 %146 to i32
  store i32 %147, i32* %13, align 4
  %148 = load i32, i32* %13, align 4
  %149 = load i8*, i8** %12, align 8
  %150 = sext i32 %148 to i64
  %151 = getelementptr inbounds i8, i8* %149, i64 %150
  store i8* %151, i8** %12, align 8
  %152 = load i8*, i8** %9, align 8
  %153 = load i8*, i8** %12, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 -1
  %155 = load i8, i8* %154, align 1
  %156 = call i32 @U(i8 signext %155)
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8, i8* %152, i64 %157
  %159 = load i8, i8* %158, align 1
  %160 = zext i8 %159 to i32
  store i32 %160, i32* %13, align 4
  %161 = load i32, i32* %13, align 4
  %162 = load i8*, i8** %12, align 8
  %163 = sext i32 %161 to i64
  %164 = getelementptr inbounds i8, i8* %162, i64 %163
  store i8* %164, i8** %12, align 8
  %165 = load i32, i32* %13, align 4
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %125
  br label %239

168:                                              ; preds = %125
  %169 = load i8*, i8** %9, align 8
  %170 = load i8*, i8** %12, align 8
  %171 = getelementptr inbounds i8, i8* %170, i64 -1
  %172 = load i8, i8* %171, align 1
  %173 = call i32 @U(i8 signext %172)
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8, i8* %169, i64 %174
  %176 = load i8, i8* %175, align 1
  %177 = zext i8 %176 to i32
  store i32 %177, i32* %13, align 4
  %178 = load i32, i32* %13, align 4
  %179 = load i8*, i8** %12, align 8
  %180 = sext i32 %178 to i64
  %181 = getelementptr inbounds i8, i8* %179, i64 %180
  store i8* %181, i8** %12, align 8
  %182 = load i8*, i8** %9, align 8
  %183 = load i8*, i8** %12, align 8
  %184 = getelementptr inbounds i8, i8* %183, i64 -1
  %185 = load i8, i8* %184, align 1
  %186 = call i32 @U(i8 signext %185)
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i8, i8* %182, i64 %187
  %189 = load i8, i8* %188, align 1
  %190 = zext i8 %189 to i32
  store i32 %190, i32* %13, align 4
  %191 = load i32, i32* %13, align 4
  %192 = load i8*, i8** %12, align 8
  %193 = sext i32 %191 to i64
  %194 = getelementptr inbounds i8, i8* %192, i64 %193
  store i8* %194, i8** %12, align 8
  %195 = load i8*, i8** %9, align 8
  %196 = load i8*, i8** %12, align 8
  %197 = getelementptr inbounds i8, i8* %196, i64 -1
  %198 = load i8, i8* %197, align 1
  %199 = call i32 @U(i8 signext %198)
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i8, i8* %195, i64 %200
  %202 = load i8, i8* %201, align 1
  %203 = zext i8 %202 to i32
  store i32 %203, i32* %13, align 4
  %204 = load i32, i32* %13, align 4
  %205 = load i8*, i8** %12, align 8
  %206 = sext i32 %204 to i64
  %207 = getelementptr inbounds i8, i8* %205, i64 %206
  store i8* %207, i8** %12, align 8
  %208 = load i32, i32* %13, align 4
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %168
  br label %239

211:                                              ; preds = %168
  %212 = load i8*, i8** %9, align 8
  %213 = load i8*, i8** %12, align 8
  %214 = getelementptr inbounds i8, i8* %213, i64 -1
  %215 = load i8, i8* %214, align 1
  %216 = call i32 @U(i8 signext %215)
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i8, i8* %212, i64 %217
  %219 = load i8, i8* %218, align 1
  %220 = zext i8 %219 to i32
  store i32 %220, i32* %13, align 4
  %221 = load i32, i32* %13, align 4
  %222 = load i8*, i8** %12, align 8
  %223 = sext i32 %221 to i64
  %224 = getelementptr inbounds i8, i8* %222, i64 %223
  store i8* %224, i8** %12, align 8
  %225 = load i8*, i8** %9, align 8
  %226 = load i8*, i8** %12, align 8
  %227 = getelementptr inbounds i8, i8* %226, i64 -1
  %228 = load i8, i8* %227, align 1
  %229 = call i32 @U(i8 signext %228)
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i8, i8* %225, i64 %230
  %232 = load i8, i8* %231, align 1
  %233 = zext i8 %232 to i32
  store i32 %233, i32* %13, align 4
  %234 = load i32, i32* %13, align 4
  %235 = load i8*, i8** %12, align 8
  %236 = sext i32 %234 to i64
  %237 = getelementptr inbounds i8, i8* %235, i64 %236
  store i8* %237, i8** %12, align 8
  br label %91

238:                                              ; preds = %91
  br label %293

239:                                              ; preds = %210, %167, %124
  %240 = load i8*, i8** %12, align 8
  %241 = getelementptr inbounds i8, i8* %240, i64 -2
  %242 = load i8, i8* %241, align 1
  %243 = call i32 @U(i8 signext %242)
  %244 = load i32, i32* %14, align 4
  %245 = icmp eq i32 %243, %244
  br i1 %245, label %246, label %288

246:                                              ; preds = %239
  store i32 3, i32* %15, align 4
  br label %247

247:                                              ; preds = %270, %246
  %248 = load i32, i32* %15, align 4
  %249 = load i32, i32* %16, align 4
  %250 = icmp sle i32 %248, %249
  br i1 %250, label %251, label %267

251:                                              ; preds = %247
  %252 = load i8*, i8** %12, align 8
  %253 = load i32, i32* %15, align 4
  %254 = sub nsw i32 0, %253
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i8, i8* %252, i64 %255
  %257 = load i8, i8* %256, align 1
  %258 = call i32 @U(i8 signext %257)
  %259 = load i8*, i8** %11, align 8
  %260 = load i32, i32* %15, align 4
  %261 = sub nsw i32 0, %260
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i8, i8* %259, i64 %262
  %264 = load i8, i8* %263, align 1
  %265 = call i32 @U(i8 signext %264)
  %266 = icmp eq i32 %258, %265
  br label %267

267:                                              ; preds = %251, %247
  %268 = phi i1 [ false, %247 ], [ %266, %251 ]
  br i1 %268, label %269, label %273

269:                                              ; preds = %267
  br label %270

270:                                              ; preds = %269
  %271 = load i32, i32* %15, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %15, align 4
  br label %247

273:                                              ; preds = %267
  %274 = load i32, i32* %15, align 4
  %275 = load i32, i32* %16, align 4
  %276 = icmp sgt i32 %274, %275
  br i1 %276, label %277, label %287

277:                                              ; preds = %273
  %278 = load i8*, i8** %12, align 8
  %279 = load i32, i32* %16, align 4
  %280 = sext i32 %279 to i64
  %281 = sub i64 0, %280
  %282 = getelementptr inbounds i8, i8* %278, i64 %281
  %283 = load i8*, i8** %6, align 8
  %284 = ptrtoint i8* %282 to i64
  %285 = ptrtoint i8* %283 to i64
  %286 = sub i64 %284, %285
  store i64 %286, i64* %4, align 8
  br label %384

287:                                              ; preds = %273
  br label %288

288:                                              ; preds = %287, %239
  %289 = load i32, i32* %17, align 4
  %290 = load i8*, i8** %12, align 8
  %291 = sext i32 %289 to i64
  %292 = getelementptr inbounds i8, i8* %290, i64 %291
  store i8* %292, i8** %12, align 8
  br label %90

293:                                              ; preds = %238
  br label %294

294:                                              ; preds = %293, %55
  %295 = load i8*, i8** %6, align 8
  %296 = load i64, i64* %7, align 8
  %297 = getelementptr inbounds i8, i8* %295, i64 %296
  store i8* %297, i8** %10, align 8
  %298 = load i8*, i8** %9, align 8
  %299 = load i8*, i8** %12, align 8
  %300 = getelementptr inbounds i8, i8* %299, i64 -1
  %301 = load i8, i8* %300, align 1
  %302 = call i32 @U(i8 signext %301)
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i8, i8* %298, i64 %303
  %305 = load i8, i8* %304, align 1
  %306 = zext i8 %305 to i32
  store i32 %306, i32* %13, align 4
  br label %307

307:                                              ; preds = %381, %331, %294
  %308 = load i32, i32* %13, align 4
  %309 = sext i32 %308 to i64
  %310 = load i8*, i8** %10, align 8
  %311 = load i8*, i8** %12, align 8
  %312 = ptrtoint i8* %310 to i64
  %313 = ptrtoint i8* %311 to i64
  %314 = sub i64 %312, %313
  %315 = icmp sle i64 %309, %314
  br i1 %315, label %316, label %383

316:                                              ; preds = %307
  %317 = load i8*, i8** %9, align 8
  %318 = load i32, i32* %13, align 4
  %319 = load i8*, i8** %12, align 8
  %320 = sext i32 %318 to i64
  %321 = getelementptr inbounds i8, i8* %319, i64 %320
  store i8* %321, i8** %12, align 8
  %322 = getelementptr inbounds i8, i8* %321, i64 -1
  %323 = load i8, i8* %322, align 1
  %324 = call i32 @U(i8 signext %323)
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i8, i8* %317, i64 %325
  %327 = load i8, i8* %326, align 1
  %328 = zext i8 %327 to i32
  store i32 %328, i32* %13, align 4
  %329 = load i32, i32* %13, align 4
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %332

331:                                              ; preds = %316
  br label %307

332:                                              ; preds = %316
  %333 = load i8*, i8** %12, align 8
  %334 = getelementptr inbounds i8, i8* %333, i64 -2
  %335 = load i8, i8* %334, align 1
  %336 = call i32 @U(i8 signext %335)
  %337 = load i32, i32* %14, align 4
  %338 = icmp eq i32 %336, %337
  br i1 %338, label %339, label %381

339:                                              ; preds = %332
  store i32 3, i32* %15, align 4
  br label %340

340:                                              ; preds = %363, %339
  %341 = load i32, i32* %15, align 4
  %342 = load i32, i32* %16, align 4
  %343 = icmp sle i32 %341, %342
  br i1 %343, label %344, label %360

344:                                              ; preds = %340
  %345 = load i8*, i8** %12, align 8
  %346 = load i32, i32* %15, align 4
  %347 = sub nsw i32 0, %346
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds i8, i8* %345, i64 %348
  %350 = load i8, i8* %349, align 1
  %351 = call i32 @U(i8 signext %350)
  %352 = load i8*, i8** %11, align 8
  %353 = load i32, i32* %15, align 4
  %354 = sub nsw i32 0, %353
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds i8, i8* %352, i64 %355
  %357 = load i8, i8* %356, align 1
  %358 = call i32 @U(i8 signext %357)
  %359 = icmp eq i32 %351, %358
  br label %360

360:                                              ; preds = %344, %340
  %361 = phi i1 [ false, %340 ], [ %359, %344 ]
  br i1 %361, label %362, label %366

362:                                              ; preds = %360
  br label %363

363:                                              ; preds = %362
  %364 = load i32, i32* %15, align 4
  %365 = add nsw i32 %364, 1
  store i32 %365, i32* %15, align 4
  br label %340

366:                                              ; preds = %360
  %367 = load i32, i32* %15, align 4
  %368 = load i32, i32* %16, align 4
  %369 = icmp sgt i32 %367, %368
  br i1 %369, label %370, label %380

370:                                              ; preds = %366
  %371 = load i8*, i8** %12, align 8
  %372 = load i32, i32* %16, align 4
  %373 = sext i32 %372 to i64
  %374 = sub i64 0, %373
  %375 = getelementptr inbounds i8, i8* %371, i64 %374
  %376 = load i8*, i8** %6, align 8
  %377 = ptrtoint i8* %375 to i64
  %378 = ptrtoint i8* %376 to i64
  %379 = sub i64 %377, %378
  store i64 %379, i64* %4, align 8
  br label %384

380:                                              ; preds = %366
  br label %381

381:                                              ; preds = %380, %332
  %382 = load i32, i32* %17, align 4
  store i32 %382, i32* %13, align 4
  br label %307

383:                                              ; preds = %307
  store i64 -1, i64* %4, align 8
  br label %384

384:                                              ; preds = %383, %370, %277, %53, %31, %25
  %385 = load i64, i64* %4, align 8
  ret i64 %385
}

declare dso_local i8* @memchr(i8*, i8 signext, i64) #1

declare dso_local i32 @U(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
