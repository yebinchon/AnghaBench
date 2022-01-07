; ModuleID = '/home/carl/AnghaBench/git/xdiff/extr_xmerge.c_fill_conflict_hunk.c'
source_filename = "/home/carl/AnghaBench/git/xdiff/extr_xmerge.c_fill_conflict_hunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }

@DEFAULT_CONFLICT_MARKER_SIZE = common dso_local global i32 0, align 4
@XDL_MERGE_DIFF3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32*, i8*, i8*, i32, i32, i32, %struct.TYPE_4__*, i8*, i32)* @fill_conflict_hunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_conflict_hunk(i32* %0, i8* %1, i32* %2, i8* %3, i8* %4, i32 %5, i32 %6, i32 %7, %struct.TYPE_4__* %8, i8* %9, i32 %10) #0 {
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_4__*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i32* %0, i32** %12, align 8
  store i8* %1, i8** %13, align 8
  store i32* %2, i32** %14, align 8
  store i8* %3, i8** %15, align 8
  store i8* %4, i8** %16, align 8
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store %struct.TYPE_4__* %8, %struct.TYPE_4__** %20, align 8
  store i8* %9, i8** %21, align 8
  store i32 %10, i32* %22, align 4
  %27 = load i8*, i8** %13, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %11
  %30 = load i8*, i8** %13, align 8
  %31 = call i32 @strlen(i8* %30)
  %32 = add nsw i32 %31, 1
  br label %34

33:                                               ; preds = %11
  br label %34

34:                                               ; preds = %33, %29
  %35 = phi i32 [ %32, %29 ], [ 0, %33 ]
  store i32 %35, i32* %23, align 4
  %36 = load i8*, i8** %15, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i8*, i8** %15, align 8
  %40 = call i32 @strlen(i8* %39)
  %41 = add nsw i32 %40, 1
  br label %43

42:                                               ; preds = %34
  br label %43

43:                                               ; preds = %42, %38
  %44 = phi i32 [ %41, %38 ], [ 0, %42 ]
  store i32 %44, i32* %24, align 4
  %45 = load i8*, i8** %16, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load i8*, i8** %16, align 8
  %49 = call i32 @strlen(i8* %48)
  %50 = add nsw i32 %49, 1
  br label %52

51:                                               ; preds = %43
  br label %52

52:                                               ; preds = %51, %47
  %53 = phi i32 [ %50, %47 ], [ 0, %51 ]
  store i32 %53, i32* %25, align 4
  %54 = load i32*, i32** %12, align 8
  %55 = load i32*, i32** %14, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %57 = call i32 @is_cr_needed(i32* %54, i32* %55, %struct.TYPE_4__* %56)
  store i32 %57, i32* %26, align 4
  %58 = load i32, i32* %22, align 4
  %59 = icmp sle i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  %61 = load i32, i32* @DEFAULT_CONFLICT_MARKER_SIZE, align 4
  store i32 %61, i32* %22, align 4
  br label %62

62:                                               ; preds = %60, %52
  %63 = load i32*, i32** %12, align 8
  %64 = load i32, i32* %18, align 4
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %18, align 4
  %69 = sub nsw i32 %67, %68
  %70 = load i8*, i8** %21, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %77

72:                                               ; preds = %62
  %73 = load i8*, i8** %21, align 8
  %74 = load i32, i32* %17, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  br label %78

77:                                               ; preds = %62
  br label %78

78:                                               ; preds = %77, %72
  %79 = phi i8* [ %76, %72 ], [ null, %77 ]
  %80 = call i64 @xdl_recs_copy(i32* %63, i32 %64, i32 %69, i32 0, i32 0, i8* %79)
  %81 = load i32, i32* %17, align 4
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %82, %80
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %17, align 4
  %85 = load i8*, i8** %21, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %96, label %87

87:                                               ; preds = %78
  %88 = load i32, i32* %22, align 4
  %89 = add nsw i32 %88, 1
  %90 = load i32, i32* %26, align 4
  %91 = add nsw i32 %89, %90
  %92 = load i32, i32* %23, align 4
  %93 = add nsw i32 %91, %92
  %94 = load i32, i32* %17, align 4
  %95 = add nsw i32 %94, %93
  store i32 %95, i32* %17, align 4
  br label %140

96:                                               ; preds = %78
  %97 = load i8*, i8** %21, align 8
  %98 = load i32, i32* %17, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  %101 = load i32, i32* %22, align 4
  %102 = call i32 @memset(i8* %100, i8 signext 60, i32 %101)
  %103 = load i32, i32* %22, align 4
  %104 = load i32, i32* %17, align 4
  %105 = add nsw i32 %104, %103
  store i32 %105, i32* %17, align 4
  %106 = load i32, i32* %23, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %125

108:                                              ; preds = %96
  %109 = load i8*, i8** %21, align 8
  %110 = load i32, i32* %17, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %109, i64 %111
  store i8 32, i8* %112, align 1
  %113 = load i8*, i8** %21, align 8
  %114 = load i32, i32* %17, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %113, i64 %115
  %117 = getelementptr inbounds i8, i8* %116, i64 1
  %118 = load i8*, i8** %13, align 8
  %119 = load i32, i32* %23, align 4
  %120 = sub nsw i32 %119, 1
  %121 = call i32 @memcpy(i8* %117, i8* %118, i32 %120)
  %122 = load i32, i32* %23, align 4
  %123 = load i32, i32* %17, align 4
  %124 = add nsw i32 %123, %122
  store i32 %124, i32* %17, align 4
  br label %125

125:                                              ; preds = %108, %96
  %126 = load i32, i32* %26, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %125
  %129 = load i8*, i8** %21, align 8
  %130 = load i32, i32* %17, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %17, align 4
  %132 = sext i32 %130 to i64
  %133 = getelementptr inbounds i8, i8* %129, i64 %132
  store i8 13, i8* %133, align 1
  br label %134

134:                                              ; preds = %128, %125
  %135 = load i8*, i8** %21, align 8
  %136 = load i32, i32* %17, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %17, align 4
  %138 = sext i32 %136 to i64
  %139 = getelementptr inbounds i8, i8* %135, i64 %138
  store i8 10, i8* %139, align 1
  br label %140

140:                                              ; preds = %134, %87
  %141 = load i32*, i32** %12, align 8
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %26, align 4
  %149 = load i8*, i8** %21, align 8
  %150 = icmp ne i8* %149, null
  br i1 %150, label %151, label %156

151:                                              ; preds = %140
  %152 = load i8*, i8** %21, align 8
  %153 = load i32, i32* %17, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8, i8* %152, i64 %154
  br label %157

156:                                              ; preds = %140
  br label %157

157:                                              ; preds = %156, %151
  %158 = phi i8* [ %155, %151 ], [ null, %156 ]
  %159 = call i64 @xdl_recs_copy(i32* %141, i32 %144, i32 %147, i32 %148, i32 1, i8* %158)
  %160 = load i32, i32* %17, align 4
  %161 = sext i32 %160 to i64
  %162 = add nsw i64 %161, %159
  %163 = trunc i64 %162 to i32
  store i32 %163, i32* %17, align 4
  %164 = load i32, i32* %19, align 4
  %165 = load i32, i32* @XDL_MERGE_DIFF3, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %247

167:                                              ; preds = %157
  %168 = load i8*, i8** %21, align 8
  %169 = icmp ne i8* %168, null
  br i1 %169, label %179, label %170

170:                                              ; preds = %167
  %171 = load i32, i32* %22, align 4
  %172 = add nsw i32 %171, 1
  %173 = load i32, i32* %26, align 4
  %174 = add nsw i32 %172, %173
  %175 = load i32, i32* %25, align 4
  %176 = add nsw i32 %174, %175
  %177 = load i32, i32* %17, align 4
  %178 = add nsw i32 %177, %176
  store i32 %178, i32* %17, align 4
  br label %223

179:                                              ; preds = %167
  %180 = load i8*, i8** %21, align 8
  %181 = load i32, i32* %17, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8, i8* %180, i64 %182
  %184 = load i32, i32* %22, align 4
  %185 = call i32 @memset(i8* %183, i8 signext 124, i32 %184)
  %186 = load i32, i32* %22, align 4
  %187 = load i32, i32* %17, align 4
  %188 = add nsw i32 %187, %186
  store i32 %188, i32* %17, align 4
  %189 = load i32, i32* %25, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %208

191:                                              ; preds = %179
  %192 = load i8*, i8** %21, align 8
  %193 = load i32, i32* %17, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i8, i8* %192, i64 %194
  store i8 32, i8* %195, align 1
  %196 = load i8*, i8** %21, align 8
  %197 = load i32, i32* %17, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i8, i8* %196, i64 %198
  %200 = getelementptr inbounds i8, i8* %199, i64 1
  %201 = load i8*, i8** %16, align 8
  %202 = load i32, i32* %25, align 4
  %203 = sub nsw i32 %202, 1
  %204 = call i32 @memcpy(i8* %200, i8* %201, i32 %203)
  %205 = load i32, i32* %25, align 4
  %206 = load i32, i32* %17, align 4
  %207 = add nsw i32 %206, %205
  store i32 %207, i32* %17, align 4
  br label %208

208:                                              ; preds = %191, %179
  %209 = load i32, i32* %26, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %217

211:                                              ; preds = %208
  %212 = load i8*, i8** %21, align 8
  %213 = load i32, i32* %17, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %17, align 4
  %215 = sext i32 %213 to i64
  %216 = getelementptr inbounds i8, i8* %212, i64 %215
  store i8 13, i8* %216, align 1
  br label %217

217:                                              ; preds = %211, %208
  %218 = load i8*, i8** %21, align 8
  %219 = load i32, i32* %17, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %17, align 4
  %221 = sext i32 %219 to i64
  %222 = getelementptr inbounds i8, i8* %218, i64 %221
  store i8 10, i8* %222, align 1
  br label %223

223:                                              ; preds = %217, %170
  %224 = load i32*, i32** %12, align 8
  %225 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 5
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i32 0, i32 4
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* %26, align 4
  %232 = load i8*, i8** %21, align 8
  %233 = icmp ne i8* %232, null
  br i1 %233, label %234, label %239

234:                                              ; preds = %223
  %235 = load i8*, i8** %21, align 8
  %236 = load i32, i32* %17, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i8, i8* %235, i64 %237
  br label %240

239:                                              ; preds = %223
  br label %240

240:                                              ; preds = %239, %234
  %241 = phi i8* [ %238, %234 ], [ null, %239 ]
  %242 = call i64 @xdl_orig_copy(i32* %224, i32 %227, i32 %230, i32 %231, i32 1, i8* %241)
  %243 = load i32, i32* %17, align 4
  %244 = sext i32 %243 to i64
  %245 = add nsw i64 %244, %242
  %246 = trunc i64 %245 to i32
  store i32 %246, i32* %17, align 4
  br label %247

247:                                              ; preds = %240, %157
  %248 = load i8*, i8** %21, align 8
  %249 = icmp ne i8* %248, null
  br i1 %249, label %257, label %250

250:                                              ; preds = %247
  %251 = load i32, i32* %22, align 4
  %252 = add nsw i32 %251, 1
  %253 = load i32, i32* %26, align 4
  %254 = add nsw i32 %252, %253
  %255 = load i32, i32* %17, align 4
  %256 = add nsw i32 %255, %254
  store i32 %256, i32* %17, align 4
  br label %281

257:                                              ; preds = %247
  %258 = load i8*, i8** %21, align 8
  %259 = load i32, i32* %17, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i8, i8* %258, i64 %260
  %262 = load i32, i32* %22, align 4
  %263 = call i32 @memset(i8* %261, i8 signext 61, i32 %262)
  %264 = load i32, i32* %22, align 4
  %265 = load i32, i32* %17, align 4
  %266 = add nsw i32 %265, %264
  store i32 %266, i32* %17, align 4
  %267 = load i32, i32* %26, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %275

269:                                              ; preds = %257
  %270 = load i8*, i8** %21, align 8
  %271 = load i32, i32* %17, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %17, align 4
  %273 = sext i32 %271 to i64
  %274 = getelementptr inbounds i8, i8* %270, i64 %273
  store i8 13, i8* %274, align 1
  br label %275

275:                                              ; preds = %269, %257
  %276 = load i8*, i8** %21, align 8
  %277 = load i32, i32* %17, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %17, align 4
  %279 = sext i32 %277 to i64
  %280 = getelementptr inbounds i8, i8* %276, i64 %279
  store i8 10, i8* %280, align 1
  br label %281

281:                                              ; preds = %275, %250
  %282 = load i32*, i32** %14, align 8
  %283 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %284 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %283, i32 0, i32 2
  %285 = load i32, i32* %284, align 4
  %286 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %287 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %286, i32 0, i32 3
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* %26, align 4
  %290 = load i8*, i8** %21, align 8
  %291 = icmp ne i8* %290, null
  br i1 %291, label %292, label %297

292:                                              ; preds = %281
  %293 = load i8*, i8** %21, align 8
  %294 = load i32, i32* %17, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i8, i8* %293, i64 %295
  br label %298

297:                                              ; preds = %281
  br label %298

298:                                              ; preds = %297, %292
  %299 = phi i8* [ %296, %292 ], [ null, %297 ]
  %300 = call i64 @xdl_recs_copy(i32* %282, i32 %285, i32 %288, i32 %289, i32 1, i8* %299)
  %301 = load i32, i32* %17, align 4
  %302 = sext i32 %301 to i64
  %303 = add nsw i64 %302, %300
  %304 = trunc i64 %303 to i32
  store i32 %304, i32* %17, align 4
  %305 = load i8*, i8** %21, align 8
  %306 = icmp ne i8* %305, null
  br i1 %306, label %316, label %307

307:                                              ; preds = %298
  %308 = load i32, i32* %22, align 4
  %309 = add nsw i32 %308, 1
  %310 = load i32, i32* %26, align 4
  %311 = add nsw i32 %309, %310
  %312 = load i32, i32* %24, align 4
  %313 = add nsw i32 %311, %312
  %314 = load i32, i32* %17, align 4
  %315 = add nsw i32 %314, %313
  store i32 %315, i32* %17, align 4
  br label %360

316:                                              ; preds = %298
  %317 = load i8*, i8** %21, align 8
  %318 = load i32, i32* %17, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i8, i8* %317, i64 %319
  %321 = load i32, i32* %22, align 4
  %322 = call i32 @memset(i8* %320, i8 signext 62, i32 %321)
  %323 = load i32, i32* %22, align 4
  %324 = load i32, i32* %17, align 4
  %325 = add nsw i32 %324, %323
  store i32 %325, i32* %17, align 4
  %326 = load i32, i32* %24, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %345

328:                                              ; preds = %316
  %329 = load i8*, i8** %21, align 8
  %330 = load i32, i32* %17, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i8, i8* %329, i64 %331
  store i8 32, i8* %332, align 1
  %333 = load i8*, i8** %21, align 8
  %334 = load i32, i32* %17, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i8, i8* %333, i64 %335
  %337 = getelementptr inbounds i8, i8* %336, i64 1
  %338 = load i8*, i8** %15, align 8
  %339 = load i32, i32* %24, align 4
  %340 = sub nsw i32 %339, 1
  %341 = call i32 @memcpy(i8* %337, i8* %338, i32 %340)
  %342 = load i32, i32* %24, align 4
  %343 = load i32, i32* %17, align 4
  %344 = add nsw i32 %343, %342
  store i32 %344, i32* %17, align 4
  br label %345

345:                                              ; preds = %328, %316
  %346 = load i32, i32* %26, align 4
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %354

348:                                              ; preds = %345
  %349 = load i8*, i8** %21, align 8
  %350 = load i32, i32* %17, align 4
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %17, align 4
  %352 = sext i32 %350 to i64
  %353 = getelementptr inbounds i8, i8* %349, i64 %352
  store i8 13, i8* %353, align 1
  br label %354

354:                                              ; preds = %348, %345
  %355 = load i8*, i8** %21, align 8
  %356 = load i32, i32* %17, align 4
  %357 = add nsw i32 %356, 1
  store i32 %357, i32* %17, align 4
  %358 = sext i32 %356 to i64
  %359 = getelementptr inbounds i8, i8* %355, i64 %358
  store i8 10, i8* %359, align 1
  br label %360

360:                                              ; preds = %354, %307
  %361 = load i32, i32* %17, align 4
  ret i32 %361
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @is_cr_needed(i32*, i32*, %struct.TYPE_4__*) #1

declare dso_local i64 @xdl_recs_copy(i32*, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @xdl_orig_copy(i32*, i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
