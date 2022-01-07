; ModuleID = '/home/carl/AnghaBench/linux/block/extr_badblocks.c_badblocks_set.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_badblocks.c_badblocks_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.badblocks = type { i32, i32, i32, i32, i32, i32* }

@BB_MAX_LEN = common dso_local global i32 0, align 4
@MAX_BADBLOCKS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @badblocks_set(%struct.badblocks* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.badblocks*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.badblocks* %0, %struct.badblocks** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %13, align 4
  %30 = load %struct.badblocks*, %struct.badblocks** %6, align 8
  %31 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %479

35:                                               ; preds = %4
  %36 = load %struct.badblocks*, %struct.badblocks** %6, align 8
  %37 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %64

40:                                               ; preds = %35
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %41, %42
  store i32 %43, i32* %15, align 4
  %44 = load %struct.badblocks*, %struct.badblocks** %6, align 8
  %45 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = ashr i32 %47, %46
  store i32 %48, i32* %7, align 4
  %49 = load %struct.badblocks*, %struct.badblocks** %6, align 8
  %50 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = shl i32 1, %51
  %53 = sub nsw i32 %52, 1
  %54 = load i32, i32* %15, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* %15, align 4
  %56 = load %struct.badblocks*, %struct.badblocks** %6, align 8
  %57 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %15, align 4
  %60 = ashr i32 %59, %58
  store i32 %60, i32* %15, align 4
  %61 = load i32, i32* %15, align 4
  %62 = load i32, i32* %7, align 4
  %63 = sub nsw i32 %61, %62
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %40, %35
  %65 = load %struct.badblocks*, %struct.badblocks** %6, align 8
  %66 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %65, i32 0, i32 4
  %67 = load i64, i64* %14, align 8
  %68 = call i32 @write_seqlock_irqsave(i32* %66, i64 %67)
  %69 = load %struct.badblocks*, %struct.badblocks** %6, align 8
  %70 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %69, i32 0, i32 5
  %71 = load i32*, i32** %70, align 8
  store i32* %71, i32** %10, align 8
  store i32 0, i32* %11, align 4
  %72 = load %struct.badblocks*, %struct.badblocks** %6, align 8
  %73 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %12, align 4
  br label %75

75:                                               ; preds = %98, %64
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %11, align 4
  %78 = sub nsw i32 %76, %77
  %79 = icmp sgt i32 %78, 1
  br i1 %79, label %80, label %99

80:                                               ; preds = %75
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %12, align 4
  %83 = add nsw i32 %81, %82
  %84 = sdiv i32 %83, 2
  store i32 %84, i32* %16, align 4
  %85 = load i32*, i32** %10, align 8
  %86 = load i32, i32* %16, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @BB_OFFSET(i32 %89)
  store i32 %90, i32* %17, align 4
  %91 = load i32, i32* %17, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp sle i32 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %80
  %95 = load i32, i32* %16, align 4
  store i32 %95, i32* %11, align 4
  br label %98

96:                                               ; preds = %80
  %97 = load i32, i32* %16, align 4
  store i32 %97, i32* %12, align 4
  br label %98

98:                                               ; preds = %96, %94
  br label %75

99:                                               ; preds = %75
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* %11, align 4
  %102 = icmp sgt i32 %100, %101
  br i1 %102, label %103, label %114

103:                                              ; preds = %99
  %104 = load i32*, i32** %10, align 8
  %105 = load i32, i32* %11, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @BB_OFFSET(i32 %108)
  %110 = load i32, i32* %7, align 4
  %111 = icmp sgt i32 %109, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %103
  %113 = load i32, i32* %11, align 4
  store i32 %113, i32* %12, align 4
  br label %114

114:                                              ; preds = %112, %103, %99
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* %11, align 4
  %117 = icmp sgt i32 %115, %116
  br i1 %117, label %118, label %218

118:                                              ; preds = %114
  %119 = load i32*, i32** %10, align 8
  %120 = load i32, i32* %11, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @BB_OFFSET(i32 %123)
  store i32 %124, i32* %18, align 4
  %125 = load i32, i32* %18, align 4
  %126 = load i32*, i32** %10, align 8
  %127 = load i32, i32* %11, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @BB_LEN(i32 %130)
  %132 = add nsw i32 %125, %131
  store i32 %132, i32* %19, align 4
  %133 = load i32*, i32** %10, align 8
  %134 = load i32, i32* %11, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @BB_ACK(i32 %137)
  store i32 %138, i32* %20, align 4
  %139 = load i32, i32* %19, align 4
  %140 = load i32, i32* %7, align 4
  %141 = icmp sge i32 %139, %140
  br i1 %141, label %142, label %217

142:                                              ; preds = %118
  %143 = load i32, i32* %7, align 4
  %144 = load i32, i32* %18, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %154

146:                                              ; preds = %142
  %147 = load i32, i32* %7, align 4
  %148 = load i32, i32* %8, align 4
  %149 = add nsw i32 %147, %148
  %150 = load i32, i32* %19, align 4
  %151 = icmp sge i32 %149, %150
  br i1 %151, label %152, label %154

152:                                              ; preds = %146
  %153 = load i32, i32* %9, align 4
  store i32 %153, i32* %20, align 4
  br label %163

154:                                              ; preds = %146, %142
  %155 = load i32, i32* %20, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %154
  %158 = load i32, i32* %9, align 4
  %159 = icmp ne i32 %158, 0
  br label %160

160:                                              ; preds = %157, %154
  %161 = phi i1 [ false, %154 ], [ %159, %157 ]
  %162 = zext i1 %161 to i32
  store i32 %162, i32* %20, align 4
  br label %163

163:                                              ; preds = %160, %152
  %164 = load i32, i32* %19, align 4
  %165 = load i32, i32* %7, align 4
  %166 = load i32, i32* %8, align 4
  %167 = add nsw i32 %165, %166
  %168 = icmp slt i32 %164, %167
  br i1 %168, label %169, label %173

169:                                              ; preds = %163
  %170 = load i32, i32* %7, align 4
  %171 = load i32, i32* %8, align 4
  %172 = add nsw i32 %170, %171
  store i32 %172, i32* %19, align 4
  br label %173

173:                                              ; preds = %169, %163
  %174 = load i32, i32* %19, align 4
  %175 = load i32, i32* %18, align 4
  %176 = sub nsw i32 %174, %175
  %177 = load i32, i32* @BB_MAX_LEN, align 4
  %178 = icmp sle i32 %176, %177
  br i1 %178, label %179, label %191

179:                                              ; preds = %173
  %180 = load i32, i32* %18, align 4
  %181 = load i32, i32* %19, align 4
  %182 = load i32, i32* %18, align 4
  %183 = sub nsw i32 %181, %182
  %184 = load i32, i32* %20, align 4
  %185 = call i32 @BB_MAKE(i32 %180, i32 %183, i32 %184)
  %186 = load i32*, i32** %10, align 8
  %187 = load i32, i32* %11, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  store i32 %185, i32* %189, align 4
  %190 = load i32, i32* %19, align 4
  store i32 %190, i32* %7, align 4
  br label %213

191:                                              ; preds = %173
  %192 = load i32*, i32** %10, align 8
  %193 = load i32, i32* %11, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @BB_LEN(i32 %196)
  %198 = load i32, i32* @BB_MAX_LEN, align 4
  %199 = icmp ne i32 %197, %198
  br i1 %199, label %200, label %209

200:                                              ; preds = %191
  %201 = load i32, i32* %18, align 4
  %202 = load i32, i32* @BB_MAX_LEN, align 4
  %203 = load i32, i32* %20, align 4
  %204 = call i32 @BB_MAKE(i32 %201, i32 %202, i32 %203)
  %205 = load i32*, i32** %10, align 8
  %206 = load i32, i32* %11, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  store i32 %204, i32* %208, align 4
  br label %209

209:                                              ; preds = %200, %191
  %210 = load i32, i32* %18, align 4
  %211 = load i32, i32* @BB_MAX_LEN, align 4
  %212 = add nsw i32 %210, %211
  store i32 %212, i32* %7, align 4
  br label %213

213:                                              ; preds = %209, %179
  %214 = load i32, i32* %19, align 4
  %215 = load i32, i32* %7, align 4
  %216 = sub nsw i32 %214, %215
  store i32 %216, i32* %8, align 4
  br label %217

217:                                              ; preds = %213, %118
  br label %218

218:                                              ; preds = %217, %114
  %219 = load i32, i32* %8, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %312

221:                                              ; preds = %218
  %222 = load i32, i32* %12, align 4
  %223 = load %struct.badblocks*, %struct.badblocks** %6, align 8
  %224 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = icmp slt i32 %222, %225
  br i1 %226, label %227, label %312

227:                                              ; preds = %221
  %228 = load i32*, i32** %10, align 8
  %229 = load i32, i32* %12, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %228, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @BB_OFFSET(i32 %232)
  store i32 %233, i32* %21, align 4
  %234 = load i32, i32* %21, align 4
  %235 = load i32*, i32** %10, align 8
  %236 = load i32, i32* %12, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %235, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @BB_LEN(i32 %239)
  %241 = add nsw i32 %234, %240
  store i32 %241, i32* %22, align 4
  %242 = load i32*, i32** %10, align 8
  %243 = load i32, i32* %12, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %242, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = call i32 @BB_ACK(i32 %246)
  store i32 %247, i32* %23, align 4
  %248 = load i32, i32* %21, align 4
  %249 = load i32, i32* %7, align 4
  %250 = load i32, i32* %8, align 4
  %251 = add nsw i32 %249, %250
  %252 = icmp sle i32 %248, %251
  br i1 %252, label %253, label %311

253:                                              ; preds = %227
  %254 = load i32, i32* %22, align 4
  %255 = load i32, i32* %7, align 4
  %256 = load i32, i32* %8, align 4
  %257 = add nsw i32 %255, %256
  %258 = icmp sle i32 %254, %257
  br i1 %258, label %259, label %264

259:                                              ; preds = %253
  %260 = load i32, i32* %7, align 4
  %261 = load i32, i32* %8, align 4
  %262 = add nsw i32 %260, %261
  store i32 %262, i32* %22, align 4
  %263 = load i32, i32* %9, align 4
  store i32 %263, i32* %23, align 4
  br label %273

264:                                              ; preds = %253
  %265 = load i32, i32* %23, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %270

267:                                              ; preds = %264
  %268 = load i32, i32* %9, align 4
  %269 = icmp ne i32 %268, 0
  br label %270

270:                                              ; preds = %267, %264
  %271 = phi i1 [ false, %264 ], [ %269, %267 ]
  %272 = zext i1 %271 to i32
  store i32 %272, i32* %23, align 4
  br label %273

273:                                              ; preds = %270, %259
  %274 = load i32, i32* %7, align 4
  store i32 %274, i32* %21, align 4
  %275 = load i32, i32* %22, align 4
  %276 = load i32, i32* %21, align 4
  %277 = sub nsw i32 %275, %276
  %278 = load i32, i32* @BB_MAX_LEN, align 4
  %279 = icmp sle i32 %277, %278
  br i1 %279, label %280, label %292

280:                                              ; preds = %273
  %281 = load i32, i32* %21, align 4
  %282 = load i32, i32* %22, align 4
  %283 = load i32, i32* %21, align 4
  %284 = sub nsw i32 %282, %283
  %285 = load i32, i32* %23, align 4
  %286 = call i32 @BB_MAKE(i32 %281, i32 %284, i32 %285)
  %287 = load i32*, i32** %10, align 8
  %288 = load i32, i32* %12, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i32, i32* %287, i64 %289
  store i32 %286, i32* %290, align 4
  %291 = load i32, i32* %22, align 4
  store i32 %291, i32* %7, align 4
  br label %304

292:                                              ; preds = %273
  %293 = load i32, i32* %21, align 4
  %294 = load i32, i32* @BB_MAX_LEN, align 4
  %295 = load i32, i32* %23, align 4
  %296 = call i32 @BB_MAKE(i32 %293, i32 %294, i32 %295)
  %297 = load i32*, i32** %10, align 8
  %298 = load i32, i32* %12, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i32, i32* %297, i64 %299
  store i32 %296, i32* %300, align 4
  %301 = load i32, i32* %21, align 4
  %302 = load i32, i32* @BB_MAX_LEN, align 4
  %303 = add nsw i32 %301, %302
  store i32 %303, i32* %7, align 4
  br label %304

304:                                              ; preds = %292, %280
  %305 = load i32, i32* %22, align 4
  %306 = load i32, i32* %7, align 4
  %307 = sub nsw i32 %305, %306
  store i32 %307, i32* %8, align 4
  %308 = load i32, i32* %12, align 4
  store i32 %308, i32* %11, align 4
  %309 = load i32, i32* %12, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %12, align 4
  br label %311

311:                                              ; preds = %304, %227
  br label %312

312:                                              ; preds = %311, %221, %218
  %313 = load i32, i32* %8, align 4
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %315, label %408

315:                                              ; preds = %312
  %316 = load i32, i32* %12, align 4
  %317 = load %struct.badblocks*, %struct.badblocks** %6, align 8
  %318 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 4
  %320 = icmp slt i32 %316, %319
  br i1 %320, label %321, label %408

321:                                              ; preds = %315
  %322 = load i32*, i32** %10, align 8
  %323 = load i32, i32* %12, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i32, i32* %322, i64 %324
  %326 = load i32, i32* %325, align 4
  %327 = call i32 @BB_OFFSET(i32 %326)
  store i32 %327, i32* %24, align 4
  %328 = load i32*, i32** %10, align 8
  %329 = load i32, i32* %11, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds i32, i32* %328, i64 %330
  %332 = load i32, i32* %331, align 4
  %333 = call i32 @BB_LEN(i32 %332)
  store i32 %333, i32* %25, align 4
  %334 = load i32*, i32** %10, align 8
  %335 = load i32, i32* %12, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i32, i32* %334, i64 %336
  %338 = load i32, i32* %337, align 4
  %339 = call i32 @BB_LEN(i32 %338)
  store i32 %339, i32* %26, align 4
  %340 = load i32, i32* %25, align 4
  %341 = load i32, i32* %26, align 4
  %342 = add nsw i32 %340, %341
  %343 = load i32, i32* %7, align 4
  %344 = load i32, i32* %24, align 4
  %345 = sub nsw i32 %343, %344
  %346 = sub nsw i32 %342, %345
  store i32 %346, i32* %27, align 4
  %347 = load i32, i32* %7, align 4
  %348 = load i32, i32* %24, align 4
  %349 = icmp sge i32 %347, %348
  br i1 %349, label %350, label %407

350:                                              ; preds = %321
  %351 = load i32, i32* %27, align 4
  %352 = load i32, i32* @BB_MAX_LEN, align 4
  %353 = icmp slt i32 %351, %352
  br i1 %353, label %354, label %407

354:                                              ; preds = %350
  %355 = load i32*, i32** %10, align 8
  %356 = load i32, i32* %11, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds i32, i32* %355, i64 %357
  %359 = load i32, i32* %358, align 4
  %360 = call i32 @BB_ACK(i32 %359)
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %370

362:                                              ; preds = %354
  %363 = load i32*, i32** %10, align 8
  %364 = load i32, i32* %12, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i32, i32* %363, i64 %365
  %367 = load i32, i32* %366, align 4
  %368 = call i32 @BB_ACK(i32 %367)
  %369 = icmp ne i32 %368, 0
  br label %370

370:                                              ; preds = %362, %354
  %371 = phi i1 [ false, %354 ], [ %369, %362 ]
  %372 = zext i1 %371 to i32
  store i32 %372, i32* %28, align 4
  %373 = load i32*, i32** %10, align 8
  %374 = load i32, i32* %11, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds i32, i32* %373, i64 %375
  %377 = load i32, i32* %376, align 4
  %378 = call i32 @BB_OFFSET(i32 %377)
  %379 = load i32, i32* %27, align 4
  %380 = load i32, i32* %28, align 4
  %381 = call i32 @BB_MAKE(i32 %378, i32 %379, i32 %380)
  %382 = load i32*, i32** %10, align 8
  %383 = load i32, i32* %11, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds i32, i32* %382, i64 %384
  store i32 %381, i32* %385, align 4
  %386 = load i32*, i32** %10, align 8
  %387 = load i32, i32* %12, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds i32, i32* %386, i64 %388
  %390 = load i32*, i32** %10, align 8
  %391 = load i32, i32* %12, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds i32, i32* %390, i64 %392
  %394 = getelementptr inbounds i32, i32* %393, i64 1
  %395 = load %struct.badblocks*, %struct.badblocks** %6, align 8
  %396 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %395, i32 0, i32 1
  %397 = load i32, i32* %396, align 4
  %398 = load i32, i32* %12, align 4
  %399 = sub nsw i32 %397, %398
  %400 = sub nsw i32 %399, 1
  %401 = mul nsw i32 %400, 8
  %402 = call i32 @memmove(i32* %389, i32* %394, i32 %401)
  %403 = load %struct.badblocks*, %struct.badblocks** %6, align 8
  %404 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %403, i32 0, i32 1
  %405 = load i32, i32* %404, align 4
  %406 = add nsw i32 %405, -1
  store i32 %406, i32* %404, align 4
  br label %407

407:                                              ; preds = %370, %350, %321
  br label %408

408:                                              ; preds = %407, %315, %312
  br label %409

409:                                              ; preds = %461, %408
  %410 = load i32, i32* %8, align 4
  %411 = icmp ne i32 %410, 0
  br i1 %411, label %412, label %462

412:                                              ; preds = %409
  %413 = load %struct.badblocks*, %struct.badblocks** %6, align 8
  %414 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %413, i32 0, i32 1
  %415 = load i32, i32* %414, align 4
  %416 = load i32, i32* @MAX_BADBLOCKS, align 4
  %417 = icmp sge i32 %415, %416
  br i1 %417, label %418, label %419

418:                                              ; preds = %412
  store i32 1, i32* %13, align 4
  br label %462

419:                                              ; preds = %412
  %420 = load i32, i32* %8, align 4
  store i32 %420, i32* %29, align 4
  %421 = load i32*, i32** %10, align 8
  %422 = load i32, i32* %12, align 4
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds i32, i32* %421, i64 %423
  %425 = getelementptr inbounds i32, i32* %424, i64 1
  %426 = load i32*, i32** %10, align 8
  %427 = load i32, i32* %12, align 4
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds i32, i32* %426, i64 %428
  %430 = load %struct.badblocks*, %struct.badblocks** %6, align 8
  %431 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %430, i32 0, i32 1
  %432 = load i32, i32* %431, align 4
  %433 = load i32, i32* %12, align 4
  %434 = sub nsw i32 %432, %433
  %435 = mul nsw i32 %434, 8
  %436 = call i32 @memmove(i32* %425, i32* %429, i32 %435)
  %437 = load %struct.badblocks*, %struct.badblocks** %6, align 8
  %438 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %437, i32 0, i32 1
  %439 = load i32, i32* %438, align 4
  %440 = add nsw i32 %439, 1
  store i32 %440, i32* %438, align 4
  %441 = load i32, i32* %29, align 4
  %442 = load i32, i32* @BB_MAX_LEN, align 4
  %443 = icmp sgt i32 %441, %442
  br i1 %443, label %444, label %446

444:                                              ; preds = %419
  %445 = load i32, i32* @BB_MAX_LEN, align 4
  store i32 %445, i32* %29, align 4
  br label %446

446:                                              ; preds = %444, %419
  %447 = load i32, i32* %7, align 4
  %448 = load i32, i32* %29, align 4
  %449 = load i32, i32* %9, align 4
  %450 = call i32 @BB_MAKE(i32 %447, i32 %448, i32 %449)
  %451 = load i32*, i32** %10, align 8
  %452 = load i32, i32* %12, align 4
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds i32, i32* %451, i64 %453
  store i32 %450, i32* %454, align 4
  %455 = load i32, i32* %29, align 4
  %456 = load i32, i32* %8, align 4
  %457 = sub nsw i32 %456, %455
  store i32 %457, i32* %8, align 4
  %458 = load i32, i32* %29, align 4
  %459 = load i32, i32* %7, align 4
  %460 = add nsw i32 %459, %458
  store i32 %460, i32* %7, align 4
  br label %461

461:                                              ; preds = %446
  br label %409

462:                                              ; preds = %418, %409
  %463 = load %struct.badblocks*, %struct.badblocks** %6, align 8
  %464 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %463, i32 0, i32 2
  store i32 1, i32* %464, align 8
  %465 = load i32, i32* %9, align 4
  %466 = icmp ne i32 %465, 0
  br i1 %466, label %470, label %467

467:                                              ; preds = %462
  %468 = load %struct.badblocks*, %struct.badblocks** %6, align 8
  %469 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %468, i32 0, i32 3
  store i32 1, i32* %469, align 4
  br label %473

470:                                              ; preds = %462
  %471 = load %struct.badblocks*, %struct.badblocks** %6, align 8
  %472 = call i32 @badblocks_update_acked(%struct.badblocks* %471)
  br label %473

473:                                              ; preds = %470, %467
  %474 = load %struct.badblocks*, %struct.badblocks** %6, align 8
  %475 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %474, i32 0, i32 4
  %476 = load i64, i64* %14, align 8
  %477 = call i32 @write_sequnlock_irqrestore(i32* %475, i64 %476)
  %478 = load i32, i32* %13, align 4
  store i32 %478, i32* %5, align 4
  br label %479

479:                                              ; preds = %473, %34
  %480 = load i32, i32* %5, align 4
  ret i32 %480
}

declare dso_local i32 @write_seqlock_irqsave(i32*, i64) #1

declare dso_local i32 @BB_OFFSET(i32) #1

declare dso_local i32 @BB_LEN(i32) #1

declare dso_local i32 @BB_ACK(i32) #1

declare dso_local i32 @BB_MAKE(i32, i32, i32) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i32 @badblocks_update_acked(%struct.badblocks*) #1

declare dso_local i32 @write_sequnlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
