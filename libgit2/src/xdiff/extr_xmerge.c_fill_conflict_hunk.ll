; ModuleID = '/home/carl/AnghaBench/libgit2/src/xdiff/extr_xmerge.c_fill_conflict_hunk.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/xdiff/extr_xmerge.c_fill_conflict_hunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }

@DEFAULT_CONFLICT_MARKER_SIZE = common dso_local global i32 0, align 4
@XDL_MERGE_DIFF3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i32*, i8*, i32*, i8*, i8*, i64, i32, i32, %struct.TYPE_4__*, i8*, i32)* @fill_conflict_hunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_conflict_hunk(i64* %0, i32* %1, i8* %2, i32* %3, i8* %4, i8* %5, i64 %6, i32 %7, i32 %8, %struct.TYPE_4__* %9, i8* %10, i32 %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca i64*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_4__*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i64, align 8
  store i64* %0, i64** %14, align 8
  store i32* %1, i32** %15, align 8
  store i8* %2, i8** %16, align 8
  store i32* %3, i32** %17, align 8
  store i8* %4, i8** %18, align 8
  store i8* %5, i8** %19, align 8
  store i64 %6, i64* %20, align 8
  store i32 %7, i32* %21, align 4
  store i32 %8, i32* %22, align 4
  store %struct.TYPE_4__* %9, %struct.TYPE_4__** %23, align 8
  store i8* %10, i8** %24, align 8
  store i32 %11, i32* %25, align 4
  %31 = load i8*, i8** %16, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %12
  %34 = load i8*, i8** %16, align 8
  %35 = call i64 @strlen(i8* %34)
  %36 = trunc i64 %35 to i32
  %37 = add nsw i32 %36, 1
  br label %39

38:                                               ; preds = %12
  br label %39

39:                                               ; preds = %38, %33
  %40 = phi i32 [ %37, %33 ], [ 0, %38 ]
  store i32 %40, i32* %26, align 4
  %41 = load i8*, i8** %18, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load i8*, i8** %18, align 8
  %45 = call i64 @strlen(i8* %44)
  %46 = trunc i64 %45 to i32
  %47 = add nsw i32 %46, 1
  br label %49

48:                                               ; preds = %39
  br label %49

49:                                               ; preds = %48, %43
  %50 = phi i32 [ %47, %43 ], [ 0, %48 ]
  store i32 %50, i32* %27, align 4
  %51 = load i8*, i8** %19, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = load i8*, i8** %19, align 8
  %55 = call i64 @strlen(i8* %54)
  %56 = trunc i64 %55 to i32
  %57 = add nsw i32 %56, 1
  br label %59

58:                                               ; preds = %49
  br label %59

59:                                               ; preds = %58, %53
  %60 = phi i32 [ %57, %53 ], [ 0, %58 ]
  store i32 %60, i32* %28, align 4
  %61 = load i32*, i32** %15, align 8
  %62 = load i32*, i32** %17, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %64 = call i32 @is_cr_needed(i32* %61, i32* %62, %struct.TYPE_4__* %63)
  store i32 %64, i32* %29, align 4
  %65 = load i64*, i64** %14, align 8
  store i64 0, i64* %65, align 8
  %66 = load i32, i32* %25, align 4
  %67 = icmp sle i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %59
  %69 = load i32, i32* @DEFAULT_CONFLICT_MARKER_SIZE, align 4
  store i32 %69, i32* %25, align 4
  br label %70

70:                                               ; preds = %68, %59
  %71 = load i32*, i32** %15, align 8
  %72 = load i32, i32* %21, align 4
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %21, align 4
  %77 = sub nsw i32 %75, %76
  %78 = load i8*, i8** %24, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %70
  %81 = load i8*, i8** %24, align 8
  %82 = load i64, i64* %20, align 8
  %83 = getelementptr inbounds i8, i8* %81, i64 %82
  br label %85

84:                                               ; preds = %70
  br label %85

85:                                               ; preds = %84, %80
  %86 = phi i8* [ %83, %80 ], [ null, %84 ]
  %87 = call i64 @xdl_recs_copy(i64* %30, i32* %71, i32 %72, i32 %77, i32 0, i32 0, i8* %86)
  %88 = icmp slt i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  store i32 -1, i32* %13, align 4
  br label %353

90:                                               ; preds = %85
  %91 = load i64, i64* %20, align 8
  %92 = load i64, i64* %30, align 8
  %93 = call i32 @GIT_ERROR_CHECK_ALLOC_ADD(i64* %20, i64 %91, i64 %92)
  %94 = load i8*, i8** %24, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %102, label %96

96:                                               ; preds = %90
  %97 = load i64, i64* %20, align 8
  %98 = load i32, i32* %25, align 4
  %99 = load i32, i32* %29, align 4
  %100 = load i32, i32* %26, align 4
  %101 = call i32 @GIT_ERROR_CHECK_ALLOC_ADD5(i64* %20, i64 %97, i32 %98, i32 1, i32 %99, i32 %100)
  br label %143

102:                                              ; preds = %90
  %103 = load i8*, i8** %24, align 8
  %104 = load i64, i64* %20, align 8
  %105 = getelementptr inbounds i8, i8* %103, i64 %104
  %106 = load i32, i32* %25, align 4
  %107 = call i32 @memset(i8* %105, i8 signext 60, i32 %106)
  %108 = load i32, i32* %25, align 4
  %109 = sext i32 %108 to i64
  %110 = load i64, i64* %20, align 8
  %111 = add i64 %110, %109
  store i64 %111, i64* %20, align 8
  %112 = load i32, i32* %26, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %130

114:                                              ; preds = %102
  %115 = load i8*, i8** %24, align 8
  %116 = load i64, i64* %20, align 8
  %117 = getelementptr inbounds i8, i8* %115, i64 %116
  store i8 32, i8* %117, align 1
  %118 = load i8*, i8** %24, align 8
  %119 = load i64, i64* %20, align 8
  %120 = getelementptr inbounds i8, i8* %118, i64 %119
  %121 = getelementptr inbounds i8, i8* %120, i64 1
  %122 = load i8*, i8** %16, align 8
  %123 = load i32, i32* %26, align 4
  %124 = sub nsw i32 %123, 1
  %125 = call i32 @memcpy(i8* %121, i8* %122, i32 %124)
  %126 = load i32, i32* %26, align 4
  %127 = sext i32 %126 to i64
  %128 = load i64, i64* %20, align 8
  %129 = add i64 %128, %127
  store i64 %129, i64* %20, align 8
  br label %130

130:                                              ; preds = %114, %102
  %131 = load i32, i32* %29, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %130
  %134 = load i8*, i8** %24, align 8
  %135 = load i64, i64* %20, align 8
  %136 = add i64 %135, 1
  store i64 %136, i64* %20, align 8
  %137 = getelementptr inbounds i8, i8* %134, i64 %135
  store i8 13, i8* %137, align 1
  br label %138

138:                                              ; preds = %133, %130
  %139 = load i8*, i8** %24, align 8
  %140 = load i64, i64* %20, align 8
  %141 = add i64 %140, 1
  store i64 %141, i64* %20, align 8
  %142 = getelementptr inbounds i8, i8* %139, i64 %140
  store i8 10, i8* %142, align 1
  br label %143

143:                                              ; preds = %138, %96
  %144 = load i32*, i32** %15, align 8
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %29, align 4
  %152 = load i8*, i8** %24, align 8
  %153 = icmp ne i8* %152, null
  br i1 %153, label %154, label %158

154:                                              ; preds = %143
  %155 = load i8*, i8** %24, align 8
  %156 = load i64, i64* %20, align 8
  %157 = getelementptr inbounds i8, i8* %155, i64 %156
  br label %159

158:                                              ; preds = %143
  br label %159

159:                                              ; preds = %158, %154
  %160 = phi i8* [ %157, %154 ], [ null, %158 ]
  %161 = call i64 @xdl_recs_copy(i64* %30, i32* %144, i32 %147, i32 %150, i32 %151, i32 1, i8* %160)
  %162 = icmp slt i64 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %159
  store i32 -1, i32* %13, align 4
  br label %353

164:                                              ; preds = %159
  %165 = load i64, i64* %20, align 8
  %166 = load i64, i64* %30, align 8
  %167 = call i32 @GIT_ERROR_CHECK_ALLOC_ADD(i64* %20, i64 %165, i64 %166)
  %168 = load i32, i32* %22, align 4
  %169 = load i32, i32* @XDL_MERGE_DIFF3, align 4
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %171, label %246

171:                                              ; preds = %164
  %172 = load i8*, i8** %24, align 8
  %173 = icmp ne i8* %172, null
  br i1 %173, label %180, label %174

174:                                              ; preds = %171
  %175 = load i64, i64* %20, align 8
  %176 = load i32, i32* %25, align 4
  %177 = load i32, i32* %29, align 4
  %178 = load i32, i32* %28, align 4
  %179 = call i32 @GIT_ERROR_CHECK_ALLOC_ADD5(i64* %20, i64 %175, i32 %176, i32 1, i32 %177, i32 %178)
  br label %221

180:                                              ; preds = %171
  %181 = load i8*, i8** %24, align 8
  %182 = load i64, i64* %20, align 8
  %183 = getelementptr inbounds i8, i8* %181, i64 %182
  %184 = load i32, i32* %25, align 4
  %185 = call i32 @memset(i8* %183, i8 signext 124, i32 %184)
  %186 = load i32, i32* %25, align 4
  %187 = sext i32 %186 to i64
  %188 = load i64, i64* %20, align 8
  %189 = add i64 %188, %187
  store i64 %189, i64* %20, align 8
  %190 = load i32, i32* %28, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %208

192:                                              ; preds = %180
  %193 = load i8*, i8** %24, align 8
  %194 = load i64, i64* %20, align 8
  %195 = getelementptr inbounds i8, i8* %193, i64 %194
  store i8 32, i8* %195, align 1
  %196 = load i8*, i8** %24, align 8
  %197 = load i64, i64* %20, align 8
  %198 = getelementptr inbounds i8, i8* %196, i64 %197
  %199 = getelementptr inbounds i8, i8* %198, i64 1
  %200 = load i8*, i8** %19, align 8
  %201 = load i32, i32* %28, align 4
  %202 = sub nsw i32 %201, 1
  %203 = call i32 @memcpy(i8* %199, i8* %200, i32 %202)
  %204 = load i32, i32* %28, align 4
  %205 = sext i32 %204 to i64
  %206 = load i64, i64* %20, align 8
  %207 = add i64 %206, %205
  store i64 %207, i64* %20, align 8
  br label %208

208:                                              ; preds = %192, %180
  %209 = load i32, i32* %29, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %216

211:                                              ; preds = %208
  %212 = load i8*, i8** %24, align 8
  %213 = load i64, i64* %20, align 8
  %214 = add i64 %213, 1
  store i64 %214, i64* %20, align 8
  %215 = getelementptr inbounds i8, i8* %212, i64 %213
  store i8 13, i8* %215, align 1
  br label %216

216:                                              ; preds = %211, %208
  %217 = load i8*, i8** %24, align 8
  %218 = load i64, i64* %20, align 8
  %219 = add i64 %218, 1
  store i64 %219, i64* %20, align 8
  %220 = getelementptr inbounds i8, i8* %217, i64 %218
  store i8 10, i8* %220, align 1
  br label %221

221:                                              ; preds = %216, %174
  %222 = load i32*, i32** %15, align 8
  %223 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 5
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %226, i32 0, i32 4
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* %29, align 4
  %230 = load i8*, i8** %24, align 8
  %231 = icmp ne i8* %230, null
  br i1 %231, label %232, label %236

232:                                              ; preds = %221
  %233 = load i8*, i8** %24, align 8
  %234 = load i64, i64* %20, align 8
  %235 = getelementptr inbounds i8, i8* %233, i64 %234
  br label %237

236:                                              ; preds = %221
  br label %237

237:                                              ; preds = %236, %232
  %238 = phi i8* [ %235, %232 ], [ null, %236 ]
  %239 = call i64 @xdl_orig_copy(i64* %30, i32* %222, i32 %225, i32 %228, i32 %229, i32 1, i8* %238)
  %240 = icmp slt i64 %239, 0
  br i1 %240, label %241, label %242

241:                                              ; preds = %237
  store i32 -1, i32* %13, align 4
  br label %353

242:                                              ; preds = %237
  %243 = load i64, i64* %20, align 8
  %244 = load i64, i64* %30, align 8
  %245 = call i32 @GIT_ERROR_CHECK_ALLOC_ADD(i64* %20, i64 %243, i64 %244)
  br label %246

246:                                              ; preds = %242, %164
  %247 = load i8*, i8** %24, align 8
  %248 = icmp ne i8* %247, null
  br i1 %248, label %254, label %249

249:                                              ; preds = %246
  %250 = load i64, i64* %20, align 8
  %251 = load i32, i32* %25, align 4
  %252 = load i32, i32* %29, align 4
  %253 = call i32 @GIT_ERROR_CHECK_ALLOC_ADD4(i64* %20, i64 %250, i32 %251, i32 1, i32 %252)
  br label %276

254:                                              ; preds = %246
  %255 = load i8*, i8** %24, align 8
  %256 = load i64, i64* %20, align 8
  %257 = getelementptr inbounds i8, i8* %255, i64 %256
  %258 = load i32, i32* %25, align 4
  %259 = call i32 @memset(i8* %257, i8 signext 61, i32 %258)
  %260 = load i32, i32* %25, align 4
  %261 = sext i32 %260 to i64
  %262 = load i64, i64* %20, align 8
  %263 = add i64 %262, %261
  store i64 %263, i64* %20, align 8
  %264 = load i32, i32* %29, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %271

266:                                              ; preds = %254
  %267 = load i8*, i8** %24, align 8
  %268 = load i64, i64* %20, align 8
  %269 = add i64 %268, 1
  store i64 %269, i64* %20, align 8
  %270 = getelementptr inbounds i8, i8* %267, i64 %268
  store i8 13, i8* %270, align 1
  br label %271

271:                                              ; preds = %266, %254
  %272 = load i8*, i8** %24, align 8
  %273 = load i64, i64* %20, align 8
  %274 = add i64 %273, 1
  store i64 %274, i64* %20, align 8
  %275 = getelementptr inbounds i8, i8* %272, i64 %273
  store i8 10, i8* %275, align 1
  br label %276

276:                                              ; preds = %271, %249
  %277 = load i32*, i32** %17, align 8
  %278 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %279 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %278, i32 0, i32 2
  %280 = load i32, i32* %279, align 4
  %281 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %282 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %281, i32 0, i32 3
  %283 = load i32, i32* %282, align 4
  %284 = load i32, i32* %29, align 4
  %285 = load i8*, i8** %24, align 8
  %286 = icmp ne i8* %285, null
  br i1 %286, label %287, label %291

287:                                              ; preds = %276
  %288 = load i8*, i8** %24, align 8
  %289 = load i64, i64* %20, align 8
  %290 = getelementptr inbounds i8, i8* %288, i64 %289
  br label %292

291:                                              ; preds = %276
  br label %292

292:                                              ; preds = %291, %287
  %293 = phi i8* [ %290, %287 ], [ null, %291 ]
  %294 = call i64 @xdl_recs_copy(i64* %30, i32* %277, i32 %280, i32 %283, i32 %284, i32 1, i8* %293)
  %295 = icmp slt i64 %294, 0
  br i1 %295, label %296, label %297

296:                                              ; preds = %292
  store i32 -1, i32* %13, align 4
  br label %353

297:                                              ; preds = %292
  %298 = load i64, i64* %20, align 8
  %299 = load i64, i64* %30, align 8
  %300 = call i32 @GIT_ERROR_CHECK_ALLOC_ADD(i64* %20, i64 %298, i64 %299)
  %301 = load i8*, i8** %24, align 8
  %302 = icmp ne i8* %301, null
  br i1 %302, label %309, label %303

303:                                              ; preds = %297
  %304 = load i64, i64* %20, align 8
  %305 = load i32, i32* %25, align 4
  %306 = load i32, i32* %29, align 4
  %307 = load i32, i32* %27, align 4
  %308 = call i32 @GIT_ERROR_CHECK_ALLOC_ADD5(i64* %20, i64 %304, i32 %305, i32 1, i32 %306, i32 %307)
  br label %350

309:                                              ; preds = %297
  %310 = load i8*, i8** %24, align 8
  %311 = load i64, i64* %20, align 8
  %312 = getelementptr inbounds i8, i8* %310, i64 %311
  %313 = load i32, i32* %25, align 4
  %314 = call i32 @memset(i8* %312, i8 signext 62, i32 %313)
  %315 = load i32, i32* %25, align 4
  %316 = sext i32 %315 to i64
  %317 = load i64, i64* %20, align 8
  %318 = add i64 %317, %316
  store i64 %318, i64* %20, align 8
  %319 = load i32, i32* %27, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %337

321:                                              ; preds = %309
  %322 = load i8*, i8** %24, align 8
  %323 = load i64, i64* %20, align 8
  %324 = getelementptr inbounds i8, i8* %322, i64 %323
  store i8 32, i8* %324, align 1
  %325 = load i8*, i8** %24, align 8
  %326 = load i64, i64* %20, align 8
  %327 = getelementptr inbounds i8, i8* %325, i64 %326
  %328 = getelementptr inbounds i8, i8* %327, i64 1
  %329 = load i8*, i8** %18, align 8
  %330 = load i32, i32* %27, align 4
  %331 = sub nsw i32 %330, 1
  %332 = call i32 @memcpy(i8* %328, i8* %329, i32 %331)
  %333 = load i32, i32* %27, align 4
  %334 = sext i32 %333 to i64
  %335 = load i64, i64* %20, align 8
  %336 = add i64 %335, %334
  store i64 %336, i64* %20, align 8
  br label %337

337:                                              ; preds = %321, %309
  %338 = load i32, i32* %29, align 4
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %345

340:                                              ; preds = %337
  %341 = load i8*, i8** %24, align 8
  %342 = load i64, i64* %20, align 8
  %343 = add i64 %342, 1
  store i64 %343, i64* %20, align 8
  %344 = getelementptr inbounds i8, i8* %341, i64 %342
  store i8 13, i8* %344, align 1
  br label %345

345:                                              ; preds = %340, %337
  %346 = load i8*, i8** %24, align 8
  %347 = load i64, i64* %20, align 8
  %348 = add i64 %347, 1
  store i64 %348, i64* %20, align 8
  %349 = getelementptr inbounds i8, i8* %346, i64 %347
  store i8 10, i8* %349, align 1
  br label %350

350:                                              ; preds = %345, %303
  %351 = load i64, i64* %20, align 8
  %352 = load i64*, i64** %14, align 8
  store i64 %351, i64* %352, align 8
  store i32 0, i32* %13, align 4
  br label %353

353:                                              ; preds = %350, %296, %241, %163, %89
  %354 = load i32, i32* %13, align 4
  ret i32 %354
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @is_cr_needed(i32*, i32*, %struct.TYPE_4__*) #1

declare dso_local i64 @xdl_recs_copy(i64*, i32*, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC_ADD(i64*, i64, i64) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC_ADD5(i64*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @xdl_orig_copy(i64*, i32*, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC_ADD4(i64*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
