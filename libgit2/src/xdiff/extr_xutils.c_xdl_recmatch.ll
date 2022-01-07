; ModuleID = '/home/carl/AnghaBench/libgit2/src/xdiff/extr_xutils.c_xdl_recmatch.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/xdiff/extr_xutils.c_xdl_recmatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XDF_WHITESPACE_FLAGS = common dso_local global i64 0, align 8
@XDF_IGNORE_WHITESPACE = common dso_local global i64 0, align 8
@XDF_IGNORE_WHITESPACE_CHANGE = common dso_local global i64 0, align 8
@XDF_IGNORE_WHITESPACE_AT_EOL = common dso_local global i64 0, align 8
@XDF_IGNORE_CR_AT_EOL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xdl_recmatch(i8* %0, i64 %1, i8* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* %10, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %5
  %18 = load i8*, i8** %7, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = load i64, i64* %8, align 8
  %21 = call i32 @memcmp(i8* %18, i8* %19, i64 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  store i32 1, i32* %6, align 4
  br label %354

24:                                               ; preds = %17, %5
  %25 = load i64, i64* %11, align 8
  %26 = load i64, i64* @XDF_WHITESPACE_FLAGS, align 8
  %27 = and i64 %25, %26
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  store i32 0, i32* %6, align 4
  br label %354

30:                                               ; preds = %24
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %31 = load i64, i64* %11, align 8
  %32 = load i64, i64* @XDF_IGNORE_WHITESPACE, align 8
  %33 = and i64 %31, %32
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %107

35:                                               ; preds = %30
  br label %67

36:                                               ; No predecessors!
  br label %37

37:                                               ; preds = %105, %36
  %38 = load i32, i32* %12, align 4
  %39 = sext i32 %38 to i64
  %40 = load i64, i64* %8, align 8
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load i32, i32* %13, align 4
  %44 = sext i32 %43 to i64
  %45 = load i64, i64* %10, align 8
  %46 = icmp slt i64 %44, %45
  br label %47

47:                                               ; preds = %42, %37
  %48 = phi i1 [ false, %37 ], [ %46, %42 ]
  br i1 %48, label %49, label %106

49:                                               ; preds = %47
  %50 = load i8*, i8** %7, align 8
  %51 = load i32, i32* %12, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %12, align 4
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i8, i8* %50, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = load i8*, i8** %9, align 8
  %58 = load i32, i32* %13, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %13, align 4
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i8, i8* %57, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %56, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %49
  store i32 0, i32* %6, align 4
  br label %354

66:                                               ; preds = %49
  br label %67

67:                                               ; preds = %66, %35
  br label %68

68:                                               ; preds = %83, %67
  %69 = load i32, i32* %12, align 4
  %70 = sext i32 %69 to i64
  %71 = load i64, i64* %8, align 8
  %72 = icmp slt i64 %70, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %68
  %74 = load i8*, i8** %7, align 8
  %75 = load i32, i32* %12, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = call i64 @XDL_ISSPACE(i8 signext %78)
  %80 = icmp ne i64 %79, 0
  br label %81

81:                                               ; preds = %73, %68
  %82 = phi i1 [ false, %68 ], [ %80, %73 ]
  br i1 %82, label %83, label %86

83:                                               ; preds = %81
  %84 = load i32, i32* %12, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %12, align 4
  br label %68

86:                                               ; preds = %81
  br label %87

87:                                               ; preds = %102, %86
  %88 = load i32, i32* %13, align 4
  %89 = sext i32 %88 to i64
  %90 = load i64, i64* %10, align 8
  %91 = icmp slt i64 %89, %90
  br i1 %91, label %92, label %100

92:                                               ; preds = %87
  %93 = load i8*, i8** %9, align 8
  %94 = load i32, i32* %13, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  %97 = load i8, i8* %96, align 1
  %98 = call i64 @XDL_ISSPACE(i8 signext %97)
  %99 = icmp ne i64 %98, 0
  br label %100

100:                                              ; preds = %92, %87
  %101 = phi i1 [ false, %87 ], [ %99, %92 ]
  br i1 %101, label %102, label %105

102:                                              ; preds = %100
  %103 = load i32, i32* %13, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %13, align 4
  br label %87

105:                                              ; preds = %100
  br label %37

106:                                              ; preds = %47
  br label %292

107:                                              ; preds = %30
  %108 = load i64, i64* %11, align 8
  %109 = load i64, i64* @XDF_IGNORE_WHITESPACE_CHANGE, align 8
  %110 = and i64 %108, %109
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %199

112:                                              ; preds = %107
  br label %113

113:                                              ; preds = %197, %179, %112
  %114 = load i32, i32* %12, align 4
  %115 = sext i32 %114 to i64
  %116 = load i64, i64* %8, align 8
  %117 = icmp slt i64 %115, %116
  br i1 %117, label %118, label %123

118:                                              ; preds = %113
  %119 = load i32, i32* %13, align 4
  %120 = sext i32 %119 to i64
  %121 = load i64, i64* %10, align 8
  %122 = icmp slt i64 %120, %121
  br label %123

123:                                              ; preds = %118, %113
  %124 = phi i1 [ false, %113 ], [ %122, %118 ]
  br i1 %124, label %125, label %198

125:                                              ; preds = %123
  %126 = load i8*, i8** %7, align 8
  %127 = load i32, i32* %12, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8, i8* %126, i64 %128
  %130 = load i8, i8* %129, align 1
  %131 = call i64 @XDL_ISSPACE(i8 signext %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %180

133:                                              ; preds = %125
  %134 = load i8*, i8** %9, align 8
  %135 = load i32, i32* %13, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8, i8* %134, i64 %136
  %138 = load i8, i8* %137, align 1
  %139 = call i64 @XDL_ISSPACE(i8 signext %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %180

141:                                              ; preds = %133
  br label %142

142:                                              ; preds = %157, %141
  %143 = load i32, i32* %12, align 4
  %144 = sext i32 %143 to i64
  %145 = load i64, i64* %8, align 8
  %146 = icmp slt i64 %144, %145
  br i1 %146, label %147, label %155

147:                                              ; preds = %142
  %148 = load i8*, i8** %7, align 8
  %149 = load i32, i32* %12, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8, i8* %148, i64 %150
  %152 = load i8, i8* %151, align 1
  %153 = call i64 @XDL_ISSPACE(i8 signext %152)
  %154 = icmp ne i64 %153, 0
  br label %155

155:                                              ; preds = %147, %142
  %156 = phi i1 [ false, %142 ], [ %154, %147 ]
  br i1 %156, label %157, label %160

157:                                              ; preds = %155
  %158 = load i32, i32* %12, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %12, align 4
  br label %142

160:                                              ; preds = %155
  br label %161

161:                                              ; preds = %176, %160
  %162 = load i32, i32* %13, align 4
  %163 = sext i32 %162 to i64
  %164 = load i64, i64* %10, align 8
  %165 = icmp slt i64 %163, %164
  br i1 %165, label %166, label %174

166:                                              ; preds = %161
  %167 = load i8*, i8** %9, align 8
  %168 = load i32, i32* %13, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8, i8* %167, i64 %169
  %171 = load i8, i8* %170, align 1
  %172 = call i64 @XDL_ISSPACE(i8 signext %171)
  %173 = icmp ne i64 %172, 0
  br label %174

174:                                              ; preds = %166, %161
  %175 = phi i1 [ false, %161 ], [ %173, %166 ]
  br i1 %175, label %176, label %179

176:                                              ; preds = %174
  %177 = load i32, i32* %13, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %13, align 4
  br label %161

179:                                              ; preds = %174
  br label %113

180:                                              ; preds = %133, %125
  %181 = load i8*, i8** %7, align 8
  %182 = load i32, i32* %12, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %12, align 4
  %184 = sext i32 %182 to i64
  %185 = getelementptr inbounds i8, i8* %181, i64 %184
  %186 = load i8, i8* %185, align 1
  %187 = sext i8 %186 to i32
  %188 = load i8*, i8** %9, align 8
  %189 = load i32, i32* %13, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %13, align 4
  %191 = sext i32 %189 to i64
  %192 = getelementptr inbounds i8, i8* %188, i64 %191
  %193 = load i8, i8* %192, align 1
  %194 = sext i8 %193 to i32
  %195 = icmp ne i32 %187, %194
  br i1 %195, label %196, label %197

196:                                              ; preds = %180
  store i32 0, i32* %6, align 4
  br label %354

197:                                              ; preds = %180
  br label %113

198:                                              ; preds = %123
  br label %291

199:                                              ; preds = %107
  %200 = load i64, i64* %11, align 8
  %201 = load i64, i64* @XDF_IGNORE_WHITESPACE_AT_EOL, align 8
  %202 = and i64 %200, %201
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %237

204:                                              ; preds = %199
  br label %205

205:                                              ; preds = %231, %204
  %206 = load i32, i32* %12, align 4
  %207 = sext i32 %206 to i64
  %208 = load i64, i64* %8, align 8
  %209 = icmp slt i64 %207, %208
  br i1 %209, label %210, label %229

210:                                              ; preds = %205
  %211 = load i32, i32* %13, align 4
  %212 = sext i32 %211 to i64
  %213 = load i64, i64* %10, align 8
  %214 = icmp slt i64 %212, %213
  br i1 %214, label %215, label %229

215:                                              ; preds = %210
  %216 = load i8*, i8** %7, align 8
  %217 = load i32, i32* %12, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i8, i8* %216, i64 %218
  %220 = load i8, i8* %219, align 1
  %221 = sext i8 %220 to i32
  %222 = load i8*, i8** %9, align 8
  %223 = load i32, i32* %13, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i8, i8* %222, i64 %224
  %226 = load i8, i8* %225, align 1
  %227 = sext i8 %226 to i32
  %228 = icmp eq i32 %221, %227
  br label %229

229:                                              ; preds = %215, %210, %205
  %230 = phi i1 [ false, %210 ], [ false, %205 ], [ %228, %215 ]
  br i1 %230, label %231, label %236

231:                                              ; preds = %229
  %232 = load i32, i32* %12, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %12, align 4
  %234 = load i32, i32* %13, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %13, align 4
  br label %205

236:                                              ; preds = %229
  br label %290

237:                                              ; preds = %199
  %238 = load i64, i64* %11, align 8
  %239 = load i64, i64* @XDF_IGNORE_CR_AT_EOL, align 8
  %240 = and i64 %238, %239
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %289

242:                                              ; preds = %237
  br label %243

243:                                              ; preds = %269, %242
  %244 = load i32, i32* %12, align 4
  %245 = sext i32 %244 to i64
  %246 = load i64, i64* %8, align 8
  %247 = icmp slt i64 %245, %246
  br i1 %247, label %248, label %267

248:                                              ; preds = %243
  %249 = load i32, i32* %13, align 4
  %250 = sext i32 %249 to i64
  %251 = load i64, i64* %10, align 8
  %252 = icmp slt i64 %250, %251
  br i1 %252, label %253, label %267

253:                                              ; preds = %248
  %254 = load i8*, i8** %7, align 8
  %255 = load i32, i32* %12, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i8, i8* %254, i64 %256
  %258 = load i8, i8* %257, align 1
  %259 = sext i8 %258 to i32
  %260 = load i8*, i8** %9, align 8
  %261 = load i32, i32* %13, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i8, i8* %260, i64 %262
  %264 = load i8, i8* %263, align 1
  %265 = sext i8 %264 to i32
  %266 = icmp eq i32 %259, %265
  br label %267

267:                                              ; preds = %253, %248, %243
  %268 = phi i1 [ false, %248 ], [ false, %243 ], [ %266, %253 ]
  br i1 %268, label %269, label %274

269:                                              ; preds = %267
  %270 = load i32, i32* %12, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %12, align 4
  %272 = load i32, i32* %13, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %13, align 4
  br label %243

274:                                              ; preds = %267
  %275 = load i8*, i8** %7, align 8
  %276 = load i64, i64* %8, align 8
  %277 = load i32, i32* %12, align 4
  %278 = call i64 @ends_with_optional_cr(i8* %275, i64 %276, i32 %277)
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %286

280:                                              ; preds = %274
  %281 = load i8*, i8** %9, align 8
  %282 = load i64, i64* %10, align 8
  %283 = load i32, i32* %13, align 4
  %284 = call i64 @ends_with_optional_cr(i8* %281, i64 %282, i32 %283)
  %285 = icmp ne i64 %284, 0
  br label %286

286:                                              ; preds = %280, %274
  %287 = phi i1 [ false, %274 ], [ %285, %280 ]
  %288 = zext i1 %287 to i32
  store i32 %288, i32* %6, align 4
  br label %354

289:                                              ; preds = %237
  br label %290

290:                                              ; preds = %289, %236
  br label %291

291:                                              ; preds = %290, %198
  br label %292

292:                                              ; preds = %291, %106
  %293 = load i32, i32* %12, align 4
  %294 = sext i32 %293 to i64
  %295 = load i64, i64* %8, align 8
  %296 = icmp slt i64 %294, %295
  br i1 %296, label %297, label %323

297:                                              ; preds = %292
  br label %298

298:                                              ; preds = %313, %297
  %299 = load i32, i32* %12, align 4
  %300 = sext i32 %299 to i64
  %301 = load i64, i64* %8, align 8
  %302 = icmp slt i64 %300, %301
  br i1 %302, label %303, label %311

303:                                              ; preds = %298
  %304 = load i8*, i8** %7, align 8
  %305 = load i32, i32* %12, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i8, i8* %304, i64 %306
  %308 = load i8, i8* %307, align 1
  %309 = call i64 @XDL_ISSPACE(i8 signext %308)
  %310 = icmp ne i64 %309, 0
  br label %311

311:                                              ; preds = %303, %298
  %312 = phi i1 [ false, %298 ], [ %310, %303 ]
  br i1 %312, label %313, label %316

313:                                              ; preds = %311
  %314 = load i32, i32* %12, align 4
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* %12, align 4
  br label %298

316:                                              ; preds = %311
  %317 = load i64, i64* %8, align 8
  %318 = load i32, i32* %12, align 4
  %319 = sext i32 %318 to i64
  %320 = icmp ne i64 %317, %319
  br i1 %320, label %321, label %322

321:                                              ; preds = %316
  store i32 0, i32* %6, align 4
  br label %354

322:                                              ; preds = %316
  br label %323

323:                                              ; preds = %322, %292
  %324 = load i32, i32* %13, align 4
  %325 = sext i32 %324 to i64
  %326 = load i64, i64* %10, align 8
  %327 = icmp slt i64 %325, %326
  br i1 %327, label %328, label %353

328:                                              ; preds = %323
  br label %329

329:                                              ; preds = %344, %328
  %330 = load i32, i32* %13, align 4
  %331 = sext i32 %330 to i64
  %332 = load i64, i64* %10, align 8
  %333 = icmp slt i64 %331, %332
  br i1 %333, label %334, label %342

334:                                              ; preds = %329
  %335 = load i8*, i8** %9, align 8
  %336 = load i32, i32* %13, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds i8, i8* %335, i64 %337
  %339 = load i8, i8* %338, align 1
  %340 = call i64 @XDL_ISSPACE(i8 signext %339)
  %341 = icmp ne i64 %340, 0
  br label %342

342:                                              ; preds = %334, %329
  %343 = phi i1 [ false, %329 ], [ %341, %334 ]
  br i1 %343, label %344, label %347

344:                                              ; preds = %342
  %345 = load i32, i32* %13, align 4
  %346 = add nsw i32 %345, 1
  store i32 %346, i32* %13, align 4
  br label %329

347:                                              ; preds = %342
  %348 = load i64, i64* %10, align 8
  %349 = load i32, i32* %13, align 4
  %350 = sext i32 %349 to i64
  %351 = icmp eq i64 %348, %350
  %352 = zext i1 %351 to i32
  store i32 %352, i32* %6, align 4
  br label %354

353:                                              ; preds = %323
  store i32 1, i32* %6, align 4
  br label %354

354:                                              ; preds = %353, %347, %321, %286, %196, %65, %29, %23
  %355 = load i32, i32* %6, align 4
  ret i32 %355
}

declare dso_local i32 @memcmp(i8*, i8*, i64) #1

declare dso_local i64 @XDL_ISSPACE(i8 signext) #1

declare dso_local i64 @ends_with_optional_cr(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
