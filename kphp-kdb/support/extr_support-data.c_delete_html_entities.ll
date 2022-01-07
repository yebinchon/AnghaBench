; ModuleID = '/home/carl/AnghaBench/kphp-kdb/support/extr_support-data.c_delete_html_entities.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/support/extr_support-data.c_delete_html_entities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"&#amp;\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"&#gt;\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"&#lt;\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"&#quot;\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"&#33;\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"&#34;\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"&#36;\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"&#39;\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"&#60;\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"&#62;\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"&#8232;\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"&#8233;\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @delete_html_entities(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %264, %1
  %18 = load i8*, i8** %2, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = icmp ne i8 %22, 0
  br i1 %23, label %24, label %267

24:                                               ; preds = %17
  %25 = load i32, i32* %3, align 4
  store i32 %25, i32* %4, align 4
  %26 = load i8*, i8** %2, align 8
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %26, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 35
  br i1 %33, label %34, label %168

34:                                               ; preds = %24
  %35 = load i8*, i8** %2, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 38
  br i1 %41, label %50, label %42

42:                                               ; preds = %34
  %43 = load i8*, i8** %2, align 8
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 36
  br i1 %49, label %50, label %168

50:                                               ; preds = %42, %34
  %51 = load i8*, i8** %2, align 8
  %52 = load i32, i32* %3, align 4
  %53 = add nsw i32 %52, 2
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %51, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, 120
  br i1 %58, label %59, label %85

59:                                               ; preds = %50
  %60 = load i32, i32* %3, align 4
  %61 = add nsw i32 %60, 2
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %81, %59
  %63 = load i8*, i8** %2, align 8
  %64 = load i32, i32* %3, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp sle i32 48, %68
  br i1 %69, label %70, label %78

70:                                               ; preds = %62
  %71 = load i8*, i8** %2, align 8
  %72 = load i32, i32* %3, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp sle i32 %76, 57
  br label %78

78:                                               ; preds = %70, %62
  %79 = phi i1 [ false, %62 ], [ %77, %70 ]
  br i1 %79, label %80, label %84

80:                                               ; preds = %78
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %3, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %3, align 4
  br label %62

84:                                               ; preds = %78
  br label %145

85:                                               ; preds = %50
  %86 = load i32, i32* %3, align 4
  %87 = add nsw i32 %86, 3
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %141, %85
  %89 = load i8*, i8** %2, align 8
  %90 = load i32, i32* %3, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp sle i32 48, %94
  br i1 %95, label %96, label %104

96:                                               ; preds = %88
  %97 = load i8*, i8** %2, align 8
  %98 = load i32, i32* %3, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp sle i32 %102, 57
  br i1 %103, label %138, label %104

104:                                              ; preds = %96, %88
  %105 = load i8*, i8** %2, align 8
  %106 = load i32, i32* %3, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %105, i64 %107
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp sle i32 97, %110
  br i1 %111, label %112, label %120

112:                                              ; preds = %104
  %113 = load i8*, i8** %2, align 8
  %114 = load i32, i32* %3, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %113, i64 %115
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp sle i32 %118, 102
  br i1 %119, label %138, label %120

120:                                              ; preds = %112, %104
  %121 = load i8*, i8** %2, align 8
  %122 = load i32, i32* %3, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %121, i64 %123
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp sle i32 65, %126
  br i1 %127, label %128, label %136

128:                                              ; preds = %120
  %129 = load i8*, i8** %2, align 8
  %130 = load i32, i32* %3, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %129, i64 %131
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp sle i32 %134, 70
  br label %136

136:                                              ; preds = %128, %120
  %137 = phi i1 [ false, %120 ], [ %135, %128 ]
  br label %138

138:                                              ; preds = %136, %112, %96
  %139 = phi i1 [ true, %112 ], [ true, %96 ], [ %137, %136 ]
  br i1 %139, label %140, label %144

140:                                              ; preds = %138
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %3, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %3, align 4
  br label %88

144:                                              ; preds = %138
  br label %145

145:                                              ; preds = %144, %84
  br label %146

146:                                              ; preds = %150, %145
  %147 = load i32, i32* %4, align 4
  %148 = load i32, i32* %3, align 4
  %149 = icmp ne i32 %147, %148
  br i1 %149, label %150, label %156

150:                                              ; preds = %146
  %151 = load i8*, i8** %2, align 8
  %152 = load i32, i32* %4, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %4, align 4
  %154 = sext i32 %152 to i64
  %155 = getelementptr inbounds i8, i8* %151, i64 %154
  store i8 32, i8* %155, align 1
  br label %146

156:                                              ; preds = %146
  %157 = load i8*, i8** %2, align 8
  %158 = load i32, i32* %3, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8, i8* %157, i64 %159
  %161 = load i8, i8* %160, align 1
  %162 = sext i8 %161 to i32
  %163 = icmp ne i32 %162, 59
  br i1 %163, label %164, label %167

164:                                              ; preds = %156
  %165 = load i32, i32* %3, align 4
  %166 = add nsw i32 %165, -1
  store i32 %166, i32* %3, align 4
  br label %167

167:                                              ; preds = %164, %156
  br label %263

168:                                              ; preds = %42, %24
  %169 = load i8*, i8** %2, align 8
  %170 = load i32, i32* %3, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i8, i8* %169, i64 %171
  %173 = load i8, i8* %172, align 1
  %174 = sext i8 %173 to i32
  %175 = icmp eq i32 %174, 37
  br i1 %175, label %176, label %262

176:                                              ; preds = %168
  %177 = load i8*, i8** %2, align 8
  %178 = load i32, i32* %3, align 4
  %179 = add nsw i32 %178, 1
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i8, i8* %177, i64 %180
  %182 = load i8, i8* %181, align 1
  %183 = sext i8 %182 to i32
  %184 = icmp sle i32 48, %183
  br i1 %184, label %185, label %262

185:                                              ; preds = %176
  %186 = load i8*, i8** %2, align 8
  %187 = load i32, i32* %3, align 4
  %188 = add nsw i32 %187, 1
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i8, i8* %186, i64 %189
  %191 = load i8, i8* %190, align 1
  %192 = sext i8 %191 to i32
  %193 = icmp sle i32 %192, 55
  br i1 %193, label %194, label %262

194:                                              ; preds = %185
  %195 = load i8*, i8** %2, align 8
  %196 = load i32, i32* %3, align 4
  %197 = add nsw i32 %196, 2
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i8, i8* %195, i64 %198
  %200 = load i8, i8* %199, align 1
  %201 = sext i8 %200 to i32
  %202 = icmp sle i32 48, %201
  br i1 %202, label %203, label %212

203:                                              ; preds = %194
  %204 = load i8*, i8** %2, align 8
  %205 = load i32, i32* %3, align 4
  %206 = add nsw i32 %205, 2
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i8, i8* %204, i64 %207
  %209 = load i8, i8* %208, align 1
  %210 = sext i8 %209 to i32
  %211 = icmp sle i32 %210, 57
  br i1 %211, label %248, label %212

212:                                              ; preds = %203, %194
  %213 = load i8*, i8** %2, align 8
  %214 = load i32, i32* %3, align 4
  %215 = add nsw i32 %214, 2
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i8, i8* %213, i64 %216
  %218 = load i8, i8* %217, align 1
  %219 = sext i8 %218 to i32
  %220 = icmp sle i32 97, %219
  br i1 %220, label %221, label %230

221:                                              ; preds = %212
  %222 = load i8*, i8** %2, align 8
  %223 = load i32, i32* %3, align 4
  %224 = add nsw i32 %223, 2
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i8, i8* %222, i64 %225
  %227 = load i8, i8* %226, align 1
  %228 = sext i8 %227 to i32
  %229 = icmp sle i32 %228, 102
  br i1 %229, label %248, label %230

230:                                              ; preds = %221, %212
  %231 = load i8*, i8** %2, align 8
  %232 = load i32, i32* %3, align 4
  %233 = add nsw i32 %232, 2
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i8, i8* %231, i64 %234
  %236 = load i8, i8* %235, align 1
  %237 = sext i8 %236 to i32
  %238 = icmp sle i32 65, %237
  br i1 %238, label %239, label %262

239:                                              ; preds = %230
  %240 = load i8*, i8** %2, align 8
  %241 = load i32, i32* %3, align 4
  %242 = add nsw i32 %241, 2
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i8, i8* %240, i64 %243
  %245 = load i8, i8* %244, align 1
  %246 = sext i8 %245 to i32
  %247 = icmp sle i32 %246, 70
  br i1 %247, label %248, label %262

248:                                              ; preds = %239, %221, %203
  %249 = load i32, i32* %3, align 4
  %250 = add nsw i32 %249, 2
  store i32 %250, i32* %3, align 4
  br label %251

251:                                              ; preds = %255, %248
  %252 = load i32, i32* %4, align 4
  %253 = load i32, i32* %3, align 4
  %254 = icmp ne i32 %252, %253
  br i1 %254, label %255, label %261

255:                                              ; preds = %251
  %256 = load i8*, i8** %2, align 8
  %257 = load i32, i32* %4, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %4, align 4
  %259 = sext i32 %257 to i64
  %260 = getelementptr inbounds i8, i8* %256, i64 %259
  store i8 32, i8* %260, align 1
  br label %251

261:                                              ; preds = %251
  br label %262

262:                                              ; preds = %261, %239, %230, %185, %176, %168
  br label %263

263:                                              ; preds = %262, %167
  br label %264

264:                                              ; preds = %263
  %265 = load i32, i32* %3, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %3, align 4
  br label %17

267:                                              ; preds = %17
  store i32 0, i32* %3, align 4
  br label %268

268:                                              ; preds = %582, %267
  %269 = load i8*, i8** %2, align 8
  %270 = load i32, i32* %3, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i8, i8* %269, i64 %271
  %273 = load i8, i8* %272, align 1
  %274 = icmp ne i8 %273, 0
  br i1 %274, label %275, label %585

275:                                              ; preds = %268
  %276 = load i8*, i8** %2, align 8
  %277 = load i32, i32* %3, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i8, i8* %276, i64 %278
  %280 = load i8, i8* %279, align 1
  %281 = sext i8 %280 to i32
  %282 = icmp eq i32 %281, 38
  br i1 %282, label %283, label %581

283:                                              ; preds = %275
  %284 = load i8*, i8** %2, align 8
  %285 = load i32, i32* %3, align 4
  %286 = add nsw i32 %285, 1
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i8, i8* %284, i64 %287
  %289 = load i8, i8* %288, align 1
  %290 = sext i8 %289 to i32
  %291 = icmp eq i32 %290, 35
  br i1 %291, label %292, label %581

292:                                              ; preds = %283
  %293 = load i8*, i8** %2, align 8
  %294 = load i32, i32* %3, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i8, i8* %293, i64 %295
  %297 = getelementptr inbounds i8, i8* %296, i64 2
  %298 = call i32 @strncmp(i8* %297, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 2), i64 4)
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %316, label %300

300:                                              ; preds = %292
  %301 = load i32, i32* %3, align 4
  %302 = add nsw i32 %301, 6
  store i32 %302, i32* %5, align 4
  br label %303

303:                                              ; preds = %307, %300
  %304 = load i32, i32* %3, align 4
  %305 = load i32, i32* %5, align 4
  %306 = icmp slt i32 %304, %305
  br i1 %306, label %307, label %313

307:                                              ; preds = %303
  %308 = load i8*, i8** %2, align 8
  %309 = load i32, i32* %3, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %3, align 4
  %311 = sext i32 %309 to i64
  %312 = getelementptr inbounds i8, i8* %308, i64 %311
  store i8 32, i8* %312, align 1
  br label %303

313:                                              ; preds = %303
  %314 = load i32, i32* %3, align 4
  %315 = add nsw i32 %314, -1
  store i32 %315, i32* %3, align 4
  br label %316

316:                                              ; preds = %313, %292
  %317 = load i8*, i8** %2, align 8
  %318 = load i32, i32* %3, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i8, i8* %317, i64 %319
  %321 = getelementptr inbounds i8, i8* %320, i64 2
  %322 = call i32 @strncmp(i8* %321, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 2), i64 3)
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %340, label %324

324:                                              ; preds = %316
  %325 = load i32, i32* %3, align 4
  %326 = add nsw i32 %325, 5
  store i32 %326, i32* %6, align 4
  br label %327

327:                                              ; preds = %331, %324
  %328 = load i32, i32* %3, align 4
  %329 = load i32, i32* %6, align 4
  %330 = icmp slt i32 %328, %329
  br i1 %330, label %331, label %337

331:                                              ; preds = %327
  %332 = load i8*, i8** %2, align 8
  %333 = load i32, i32* %3, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %3, align 4
  %335 = sext i32 %333 to i64
  %336 = getelementptr inbounds i8, i8* %332, i64 %335
  store i8 32, i8* %336, align 1
  br label %327

337:                                              ; preds = %327
  %338 = load i32, i32* %3, align 4
  %339 = add nsw i32 %338, -1
  store i32 %339, i32* %3, align 4
  br label %340

340:                                              ; preds = %337, %316
  %341 = load i8*, i8** %2, align 8
  %342 = load i32, i32* %3, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i8, i8* %341, i64 %343
  %345 = getelementptr inbounds i8, i8* %344, i64 2
  %346 = call i32 @strncmp(i8* %345, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 2), i64 3)
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %364, label %348

348:                                              ; preds = %340
  %349 = load i32, i32* %3, align 4
  %350 = add nsw i32 %349, 5
  store i32 %350, i32* %7, align 4
  br label %351

351:                                              ; preds = %355, %348
  %352 = load i32, i32* %3, align 4
  %353 = load i32, i32* %7, align 4
  %354 = icmp slt i32 %352, %353
  br i1 %354, label %355, label %361

355:                                              ; preds = %351
  %356 = load i8*, i8** %2, align 8
  %357 = load i32, i32* %3, align 4
  %358 = add nsw i32 %357, 1
  store i32 %358, i32* %3, align 4
  %359 = sext i32 %357 to i64
  %360 = getelementptr inbounds i8, i8* %356, i64 %359
  store i8 32, i8* %360, align 1
  br label %351

361:                                              ; preds = %351
  %362 = load i32, i32* %3, align 4
  %363 = add nsw i32 %362, -1
  store i32 %363, i32* %3, align 4
  br label %364

364:                                              ; preds = %361, %340
  %365 = load i8*, i8** %2, align 8
  %366 = load i32, i32* %3, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds i8, i8* %365, i64 %367
  %369 = getelementptr inbounds i8, i8* %368, i64 2
  %370 = call i32 @strncmp(i8* %369, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 2), i64 5)
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %388, label %372

372:                                              ; preds = %364
  %373 = load i32, i32* %3, align 4
  %374 = add nsw i32 %373, 7
  store i32 %374, i32* %8, align 4
  br label %375

375:                                              ; preds = %379, %372
  %376 = load i32, i32* %3, align 4
  %377 = load i32, i32* %8, align 4
  %378 = icmp slt i32 %376, %377
  br i1 %378, label %379, label %385

379:                                              ; preds = %375
  %380 = load i8*, i8** %2, align 8
  %381 = load i32, i32* %3, align 4
  %382 = add nsw i32 %381, 1
  store i32 %382, i32* %3, align 4
  %383 = sext i32 %381 to i64
  %384 = getelementptr inbounds i8, i8* %380, i64 %383
  store i8 32, i8* %384, align 1
  br label %375

385:                                              ; preds = %375
  %386 = load i32, i32* %3, align 4
  %387 = add nsw i32 %386, -1
  store i32 %387, i32* %3, align 4
  br label %388

388:                                              ; preds = %385, %364
  %389 = load i8*, i8** %2, align 8
  %390 = load i32, i32* %3, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds i8, i8* %389, i64 %391
  %393 = getelementptr inbounds i8, i8* %392, i64 2
  %394 = call i32 @strncmp(i8* %393, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 2), i64 3)
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %412, label %396

396:                                              ; preds = %388
  %397 = load i32, i32* %3, align 4
  %398 = add nsw i32 %397, 5
  store i32 %398, i32* %9, align 4
  br label %399

399:                                              ; preds = %403, %396
  %400 = load i32, i32* %3, align 4
  %401 = load i32, i32* %9, align 4
  %402 = icmp slt i32 %400, %401
  br i1 %402, label %403, label %409

403:                                              ; preds = %399
  %404 = load i8*, i8** %2, align 8
  %405 = load i32, i32* %3, align 4
  %406 = add nsw i32 %405, 1
  store i32 %406, i32* %3, align 4
  %407 = sext i32 %405 to i64
  %408 = getelementptr inbounds i8, i8* %404, i64 %407
  store i8 32, i8* %408, align 1
  br label %399

409:                                              ; preds = %399
  %410 = load i32, i32* %3, align 4
  %411 = add nsw i32 %410, -1
  store i32 %411, i32* %3, align 4
  br label %412

412:                                              ; preds = %409, %388
  %413 = load i8*, i8** %2, align 8
  %414 = load i32, i32* %3, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds i8, i8* %413, i64 %415
  %417 = getelementptr inbounds i8, i8* %416, i64 2
  %418 = call i32 @strncmp(i8* %417, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 2), i64 3)
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %436, label %420

420:                                              ; preds = %412
  %421 = load i32, i32* %3, align 4
  %422 = add nsw i32 %421, 5
  store i32 %422, i32* %10, align 4
  br label %423

423:                                              ; preds = %427, %420
  %424 = load i32, i32* %3, align 4
  %425 = load i32, i32* %10, align 4
  %426 = icmp slt i32 %424, %425
  br i1 %426, label %427, label %433

427:                                              ; preds = %423
  %428 = load i8*, i8** %2, align 8
  %429 = load i32, i32* %3, align 4
  %430 = add nsw i32 %429, 1
  store i32 %430, i32* %3, align 4
  %431 = sext i32 %429 to i64
  %432 = getelementptr inbounds i8, i8* %428, i64 %431
  store i8 32, i8* %432, align 1
  br label %423

433:                                              ; preds = %423
  %434 = load i32, i32* %3, align 4
  %435 = add nsw i32 %434, -1
  store i32 %435, i32* %3, align 4
  br label %436

436:                                              ; preds = %433, %412
  %437 = load i8*, i8** %2, align 8
  %438 = load i32, i32* %3, align 4
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds i8, i8* %437, i64 %439
  %441 = getelementptr inbounds i8, i8* %440, i64 2
  %442 = call i32 @strncmp(i8* %441, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 2), i64 3)
  %443 = icmp ne i32 %442, 0
  br i1 %443, label %460, label %444

444:                                              ; preds = %436
  %445 = load i32, i32* %3, align 4
  %446 = add nsw i32 %445, 5
  store i32 %446, i32* %11, align 4
  br label %447

447:                                              ; preds = %451, %444
  %448 = load i32, i32* %3, align 4
  %449 = load i32, i32* %11, align 4
  %450 = icmp slt i32 %448, %449
  br i1 %450, label %451, label %457

451:                                              ; preds = %447
  %452 = load i8*, i8** %2, align 8
  %453 = load i32, i32* %3, align 4
  %454 = add nsw i32 %453, 1
  store i32 %454, i32* %3, align 4
  %455 = sext i32 %453 to i64
  %456 = getelementptr inbounds i8, i8* %452, i64 %455
  store i8 32, i8* %456, align 1
  br label %447

457:                                              ; preds = %447
  %458 = load i32, i32* %3, align 4
  %459 = add nsw i32 %458, -1
  store i32 %459, i32* %3, align 4
  br label %460

460:                                              ; preds = %457, %436
  %461 = load i8*, i8** %2, align 8
  %462 = load i32, i32* %3, align 4
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds i8, i8* %461, i64 %463
  %465 = getelementptr inbounds i8, i8* %464, i64 2
  %466 = call i32 @strncmp(i8* %465, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 2), i64 3)
  %467 = icmp ne i32 %466, 0
  br i1 %467, label %484, label %468

468:                                              ; preds = %460
  %469 = load i32, i32* %3, align 4
  %470 = add nsw i32 %469, 5
  store i32 %470, i32* %12, align 4
  br label %471

471:                                              ; preds = %475, %468
  %472 = load i32, i32* %3, align 4
  %473 = load i32, i32* %12, align 4
  %474 = icmp slt i32 %472, %473
  br i1 %474, label %475, label %481

475:                                              ; preds = %471
  %476 = load i8*, i8** %2, align 8
  %477 = load i32, i32* %3, align 4
  %478 = add nsw i32 %477, 1
  store i32 %478, i32* %3, align 4
  %479 = sext i32 %477 to i64
  %480 = getelementptr inbounds i8, i8* %476, i64 %479
  store i8 32, i8* %480, align 1
  br label %471

481:                                              ; preds = %471
  %482 = load i32, i32* %3, align 4
  %483 = add nsw i32 %482, -1
  store i32 %483, i32* %3, align 4
  br label %484

484:                                              ; preds = %481, %460
  %485 = load i8*, i8** %2, align 8
  %486 = load i32, i32* %3, align 4
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds i8, i8* %485, i64 %487
  %489 = getelementptr inbounds i8, i8* %488, i64 2
  %490 = call i32 @strncmp(i8* %489, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 2), i64 3)
  %491 = icmp ne i32 %490, 0
  br i1 %491, label %508, label %492

492:                                              ; preds = %484
  %493 = load i32, i32* %3, align 4
  %494 = add nsw i32 %493, 5
  store i32 %494, i32* %13, align 4
  br label %495

495:                                              ; preds = %499, %492
  %496 = load i32, i32* %3, align 4
  %497 = load i32, i32* %13, align 4
  %498 = icmp slt i32 %496, %497
  br i1 %498, label %499, label %505

499:                                              ; preds = %495
  %500 = load i8*, i8** %2, align 8
  %501 = load i32, i32* %3, align 4
  %502 = add nsw i32 %501, 1
  store i32 %502, i32* %3, align 4
  %503 = sext i32 %501 to i64
  %504 = getelementptr inbounds i8, i8* %500, i64 %503
  store i8 32, i8* %504, align 1
  br label %495

505:                                              ; preds = %495
  %506 = load i32, i32* %3, align 4
  %507 = add nsw i32 %506, -1
  store i32 %507, i32* %3, align 4
  br label %508

508:                                              ; preds = %505, %484
  %509 = load i8*, i8** %2, align 8
  %510 = load i32, i32* %3, align 4
  %511 = sext i32 %510 to i64
  %512 = getelementptr inbounds i8, i8* %509, i64 %511
  %513 = getelementptr inbounds i8, i8* %512, i64 2
  %514 = call i32 @strncmp(i8* %513, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 2), i64 3)
  %515 = icmp ne i32 %514, 0
  br i1 %515, label %532, label %516

516:                                              ; preds = %508
  %517 = load i32, i32* %3, align 4
  %518 = add nsw i32 %517, 5
  store i32 %518, i32* %14, align 4
  br label %519

519:                                              ; preds = %523, %516
  %520 = load i32, i32* %3, align 4
  %521 = load i32, i32* %14, align 4
  %522 = icmp slt i32 %520, %521
  br i1 %522, label %523, label %529

523:                                              ; preds = %519
  %524 = load i8*, i8** %2, align 8
  %525 = load i32, i32* %3, align 4
  %526 = add nsw i32 %525, 1
  store i32 %526, i32* %3, align 4
  %527 = sext i32 %525 to i64
  %528 = getelementptr inbounds i8, i8* %524, i64 %527
  store i8 32, i8* %528, align 1
  br label %519

529:                                              ; preds = %519
  %530 = load i32, i32* %3, align 4
  %531 = add nsw i32 %530, -1
  store i32 %531, i32* %3, align 4
  br label %532

532:                                              ; preds = %529, %508
  %533 = load i8*, i8** %2, align 8
  %534 = load i32, i32* %3, align 4
  %535 = sext i32 %534 to i64
  %536 = getelementptr inbounds i8, i8* %533, i64 %535
  %537 = getelementptr inbounds i8, i8* %536, i64 2
  %538 = call i32 @strncmp(i8* %537, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 2), i64 5)
  %539 = icmp ne i32 %538, 0
  br i1 %539, label %556, label %540

540:                                              ; preds = %532
  %541 = load i32, i32* %3, align 4
  %542 = add nsw i32 %541, 7
  store i32 %542, i32* %15, align 4
  br label %543

543:                                              ; preds = %547, %540
  %544 = load i32, i32* %3, align 4
  %545 = load i32, i32* %15, align 4
  %546 = icmp slt i32 %544, %545
  br i1 %546, label %547, label %553

547:                                              ; preds = %543
  %548 = load i8*, i8** %2, align 8
  %549 = load i32, i32* %3, align 4
  %550 = add nsw i32 %549, 1
  store i32 %550, i32* %3, align 4
  %551 = sext i32 %549 to i64
  %552 = getelementptr inbounds i8, i8* %548, i64 %551
  store i8 32, i8* %552, align 1
  br label %543

553:                                              ; preds = %543
  %554 = load i32, i32* %3, align 4
  %555 = add nsw i32 %554, -1
  store i32 %555, i32* %3, align 4
  br label %556

556:                                              ; preds = %553, %532
  %557 = load i8*, i8** %2, align 8
  %558 = load i32, i32* %3, align 4
  %559 = sext i32 %558 to i64
  %560 = getelementptr inbounds i8, i8* %557, i64 %559
  %561 = getelementptr inbounds i8, i8* %560, i64 2
  %562 = call i32 @strncmp(i8* %561, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 2), i64 5)
  %563 = icmp ne i32 %562, 0
  br i1 %563, label %580, label %564

564:                                              ; preds = %556
  %565 = load i32, i32* %3, align 4
  %566 = add nsw i32 %565, 7
  store i32 %566, i32* %16, align 4
  br label %567

567:                                              ; preds = %571, %564
  %568 = load i32, i32* %3, align 4
  %569 = load i32, i32* %16, align 4
  %570 = icmp slt i32 %568, %569
  br i1 %570, label %571, label %577

571:                                              ; preds = %567
  %572 = load i8*, i8** %2, align 8
  %573 = load i32, i32* %3, align 4
  %574 = add nsw i32 %573, 1
  store i32 %574, i32* %3, align 4
  %575 = sext i32 %573 to i64
  %576 = getelementptr inbounds i8, i8* %572, i64 %575
  store i8 32, i8* %576, align 1
  br label %567

577:                                              ; preds = %567
  %578 = load i32, i32* %3, align 4
  %579 = add nsw i32 %578, -1
  store i32 %579, i32* %3, align 4
  br label %580

580:                                              ; preds = %577, %556
  br label %581

581:                                              ; preds = %580, %283, %275
  br label %582

582:                                              ; preds = %581
  %583 = load i32, i32* %3, align 4
  %584 = add nsw i32 %583, 1
  store i32 %584, i32* %3, align 4
  br label %268

585:                                              ; preds = %268
  ret void
}

declare dso_local i32 @strncmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
