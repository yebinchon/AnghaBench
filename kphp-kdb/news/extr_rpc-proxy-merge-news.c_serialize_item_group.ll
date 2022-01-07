; ModuleID = '/home/carl/AnghaBench/kphp-kdb/news/extr_rpc-proxy-merge-news.c_serialize_item_group.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/news/extr_rpc-proxy-merge-news.c_serialize_item_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_3__* }

@TL_NEWS_FLAG_TYPE = common dso_local global i32 0, align 4
@TL_NEWS_FLAG_USER_ID = common dso_local global i32 0, align 4
@TL_NEWS_FLAG_DATE = common dso_local global i32 0, align 4
@TL_NEWS_FLAG_TAG = common dso_local global i32 0, align 4
@TL_NEWS_FLAG_USER = common dso_local global i32 0, align 4
@TL_NEWS_FLAG_GROUP = common dso_local global i32 0, align 4
@TL_NEWS_FLAG_OWNER = common dso_local global i32 0, align 4
@TL_NEWS_FLAG_PLACE = common dso_local global i32 0, align 4
@TL_NEWS_FLAG_ITEM = common dso_local global i32 0, align 4
@TypeFlags = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i32)* @serialize_item_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serialize_item_group(%struct.TYPE_3__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %20, 32
  br label %22

22:                                               ; preds = %19, %3
  %23 = phi i1 [ false, %3 ], [ %21, %19 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 9
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = icmp ne %struct.TYPE_3__* %28, null
  br i1 %29, label %98, label %30

30:                                               ; preds = %22
  %31 = load i32, i32* @TL_NEWS_FLAG_TYPE, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp sle i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @TL_NEWS_FLAG_USER_ID, align 4
  br label %37

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %36, %34
  %38 = phi i32 [ %35, %34 ], [ 0, %36 ]
  %39 = or i32 %31, %38
  %40 = load i32, i32* @TL_NEWS_FLAG_DATE, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @TL_NEWS_FLAG_TAG, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @TL_NEWS_FLAG_USER, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @TL_NEWS_FLAG_GROUP, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @TL_NEWS_FLAG_OWNER, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @TL_NEWS_FLAG_PLACE, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @TL_NEWS_FLAG_ITEM, align 4
  %53 = or i32 %51, %52
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @tl_store_int(i32 %54)
  %56 = call i32 @tl_store_int(i32 1)
  %57 = call i32 @tl_store_int(i32 1)
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @tl_store_int(i32 %60)
  %62 = load i32, i32* %7, align 4
  %63 = icmp sle i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %37
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @tl_store_int(i32 %67)
  br label %69

69:                                               ; preds = %64, %37
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @tl_store_int(i32 %72)
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @tl_store_int(i32 %76)
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @tl_store_int(i32 %80)
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @tl_store_int(i32 %84)
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 6
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @tl_store_int(i32 %88)
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 7
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @tl_store_int(i32 %92)
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 8
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @tl_store_int(i32 %96)
  store i32 1, i32* %4, align 4
  br label %348

98:                                               ; preds = %22
  store i32 0, i32* %12, align 4
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  store %struct.TYPE_3__* %99, %struct.TYPE_3__** %8, align 8
  br label %100

100:                                              ; preds = %106, %98
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %102 = icmp ne %struct.TYPE_3__* %101, null
  br i1 %102, label %103, label %110

103:                                              ; preds = %100
  %104 = load i32, i32* %12, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %12, align 4
  br label %106

106:                                              ; preds = %103
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 9
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %108, align 8
  store %struct.TYPE_3__* %109, %struct.TYPE_3__** %8, align 8
  br label %100

110:                                              ; preds = %100
  %111 = call i32* @tl_store_get_ptr(i32 4)
  store i32* %111, i32** %13, align 8
  %112 = load i32, i32* %12, align 4
  %113 = call i32 @tl_store_int(i32 %112)
  %114 = load i32, i32* %12, align 4
  %115 = load i32, i32* %6, align 4
  %116 = icmp sgt i32 %114, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %110
  %118 = load i32, i32* %6, align 4
  store i32 %118, i32* %12, align 4
  br label %119

119:                                              ; preds = %117, %110
  %120 = load i32, i32* %12, align 4
  %121 = call i32 @tl_store_int(i32 %120)
  %122 = load i32, i32* @TL_NEWS_FLAG_TYPE, align 4
  %123 = load i32, i32* @TL_NEWS_FLAG_DATE, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @TL_NEWS_FLAG_TAG, align 4
  %126 = or i32 %124, %125
  %127 = load i32*, i32** %13, align 8
  store i32 %126, i32* %127, align 4
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @tl_store_int(i32 %130)
  %132 = load i32, i32* %7, align 4
  %133 = icmp sle i32 %132, 0
  br i1 %133, label %134, label %175

134:                                              ; preds = %119
  %135 = load i32*, i32** @TypeFlags, align 8
  %136 = load i32, i32* %9, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = and i32 %139, 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %151

142:                                              ; preds = %134
  %143 = load i32, i32* @TL_NEWS_FLAG_USER_ID, align 4
  %144 = load i32*, i32** %13, align 8
  %145 = load i32, i32* %144, align 4
  %146 = or i32 %145, %143
  store i32 %146, i32* %144, align 4
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @tl_store_int(i32 %149)
  br label %174

151:                                              ; preds = %134
  %152 = load i32, i32* @TL_NEWS_FLAG_USER_ID, align 4
  %153 = mul nsw i32 2, %152
  %154 = load i32*, i32** %13, align 8
  %155 = load i32, i32* %154, align 4
  %156 = or i32 %155, %153
  store i32 %156, i32* %154, align 4
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  store %struct.TYPE_3__* %157, %struct.TYPE_3__** %8, align 8
  store i32 0, i32* %10, align 4
  br label %158

158:                                              ; preds = %167, %151
  %159 = load i32, i32* %10, align 4
  %160 = load i32, i32* %12, align 4
  %161 = icmp slt i32 %159, %160
  br i1 %161, label %162, label %173

162:                                              ; preds = %158
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @tl_store_int(i32 %165)
  br label %167

167:                                              ; preds = %162
  %168 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 9
  %170 = load %struct.TYPE_3__*, %struct.TYPE_3__** %169, align 8
  store %struct.TYPE_3__* %170, %struct.TYPE_3__** %8, align 8
  %171 = load i32, i32* %10, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %10, align 4
  br label %158

173:                                              ; preds = %158
  br label %174

174:                                              ; preds = %173, %142
  br label %175

175:                                              ; preds = %174, %119
  %176 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = call i32 @tl_store_int(i32 %178)
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @tl_store_int(i32 %182)
  %184 = load i32, i32* @TL_NEWS_FLAG_USER, align 4
  %185 = mul nsw i32 2, %184
  %186 = load i32*, i32** %13, align 8
  %187 = load i32, i32* %186, align 4
  %188 = or i32 %187, %185
  store i32 %188, i32* %186, align 4
  %189 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  store %struct.TYPE_3__* %189, %struct.TYPE_3__** %8, align 8
  store i32 0, i32* %10, align 4
  br label %190

190:                                              ; preds = %199, %175
  %191 = load i32, i32* %10, align 4
  %192 = load i32, i32* %12, align 4
  %193 = icmp slt i32 %191, %192
  br i1 %193, label %194, label %205

194:                                              ; preds = %190
  %195 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 4
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @tl_store_int(i32 %197)
  br label %199

199:                                              ; preds = %194
  %200 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i32 0, i32 9
  %202 = load %struct.TYPE_3__*, %struct.TYPE_3__** %201, align 8
  store %struct.TYPE_3__* %202, %struct.TYPE_3__** %8, align 8
  %203 = load i32, i32* %10, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %10, align 4
  br label %190

205:                                              ; preds = %190
  %206 = load i32, i32* @TL_NEWS_FLAG_GROUP, align 4
  %207 = mul nsw i32 2, %206
  %208 = load i32*, i32** %13, align 8
  %209 = load i32, i32* %208, align 4
  %210 = or i32 %209, %207
  store i32 %210, i32* %208, align 4
  %211 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  store %struct.TYPE_3__* %211, %struct.TYPE_3__** %8, align 8
  store i32 0, i32* %10, align 4
  br label %212

212:                                              ; preds = %221, %205
  %213 = load i32, i32* %10, align 4
  %214 = load i32, i32* %12, align 4
  %215 = icmp slt i32 %213, %214
  br i1 %215, label %216, label %227

216:                                              ; preds = %212
  %217 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i32 0, i32 5
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @tl_store_int(i32 %219)
  br label %221

221:                                              ; preds = %216
  %222 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %223 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %222, i32 0, i32 9
  %224 = load %struct.TYPE_3__*, %struct.TYPE_3__** %223, align 8
  store %struct.TYPE_3__* %224, %struct.TYPE_3__** %8, align 8
  %225 = load i32, i32* %10, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %10, align 4
  br label %212

227:                                              ; preds = %212
  %228 = load i32*, i32** @TypeFlags, align 8
  %229 = load i32, i32* %9, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %228, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = and i32 %232, 1
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %244

235:                                              ; preds = %227
  %236 = load i32, i32* @TL_NEWS_FLAG_OWNER, align 4
  %237 = load i32*, i32** %13, align 8
  %238 = load i32, i32* %237, align 4
  %239 = or i32 %238, %236
  store i32 %239, i32* %237, align 4
  %240 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %240, i32 0, i32 6
  %242 = load i32, i32* %241, align 8
  %243 = call i32 @tl_store_int(i32 %242)
  br label %267

244:                                              ; preds = %227
  %245 = load i32, i32* @TL_NEWS_FLAG_OWNER, align 4
  %246 = mul nsw i32 2, %245
  %247 = load i32*, i32** %13, align 8
  %248 = load i32, i32* %247, align 4
  %249 = or i32 %248, %246
  store i32 %249, i32* %247, align 4
  %250 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  store %struct.TYPE_3__* %250, %struct.TYPE_3__** %8, align 8
  store i32 0, i32* %10, align 4
  br label %251

251:                                              ; preds = %260, %244
  %252 = load i32, i32* %10, align 4
  %253 = load i32, i32* %12, align 4
  %254 = icmp slt i32 %252, %253
  br i1 %254, label %255, label %266

255:                                              ; preds = %251
  %256 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %257 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %256, i32 0, i32 6
  %258 = load i32, i32* %257, align 8
  %259 = call i32 @tl_store_int(i32 %258)
  br label %260

260:                                              ; preds = %255
  %261 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %262 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %261, i32 0, i32 9
  %263 = load %struct.TYPE_3__*, %struct.TYPE_3__** %262, align 8
  store %struct.TYPE_3__* %263, %struct.TYPE_3__** %8, align 8
  %264 = load i32, i32* %10, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %10, align 4
  br label %251

266:                                              ; preds = %251
  br label %267

267:                                              ; preds = %266, %235
  %268 = load i32*, i32** @TypeFlags, align 8
  %269 = load i32, i32* %9, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i32, i32* %268, i64 %270
  %272 = load i32, i32* %271, align 4
  %273 = and i32 %272, 2
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %284

275:                                              ; preds = %267
  %276 = load i32, i32* @TL_NEWS_FLAG_PLACE, align 4
  %277 = load i32*, i32** %13, align 8
  %278 = load i32, i32* %277, align 4
  %279 = or i32 %278, %276
  store i32 %279, i32* %277, align 4
  %280 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %281 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %280, i32 0, i32 7
  %282 = load i32, i32* %281, align 4
  %283 = call i32 @tl_store_int(i32 %282)
  br label %307

284:                                              ; preds = %267
  %285 = load i32, i32* @TL_NEWS_FLAG_PLACE, align 4
  %286 = mul nsw i32 2, %285
  %287 = load i32*, i32** %13, align 8
  %288 = load i32, i32* %287, align 4
  %289 = or i32 %288, %286
  store i32 %289, i32* %287, align 4
  %290 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  store %struct.TYPE_3__* %290, %struct.TYPE_3__** %8, align 8
  store i32 0, i32* %10, align 4
  br label %291

291:                                              ; preds = %300, %284
  %292 = load i32, i32* %10, align 4
  %293 = load i32, i32* %12, align 4
  %294 = icmp slt i32 %292, %293
  br i1 %294, label %295, label %306

295:                                              ; preds = %291
  %296 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %297 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %296, i32 0, i32 7
  %298 = load i32, i32* %297, align 4
  %299 = call i32 @tl_store_int(i32 %298)
  br label %300

300:                                              ; preds = %295
  %301 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %302 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %301, i32 0, i32 9
  %303 = load %struct.TYPE_3__*, %struct.TYPE_3__** %302, align 8
  store %struct.TYPE_3__* %303, %struct.TYPE_3__** %8, align 8
  %304 = load i32, i32* %10, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %10, align 4
  br label %291

306:                                              ; preds = %291
  br label %307

307:                                              ; preds = %306, %275
  %308 = load i32*, i32** @TypeFlags, align 8
  %309 = load i32, i32* %9, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i32, i32* %308, i64 %310
  %312 = load i32, i32* %311, align 4
  %313 = and i32 %312, 8
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %324

315:                                              ; preds = %307
  %316 = load i32, i32* @TL_NEWS_FLAG_ITEM, align 4
  %317 = load i32*, i32** %13, align 8
  %318 = load i32, i32* %317, align 4
  %319 = or i32 %318, %316
  store i32 %319, i32* %317, align 4
  %320 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %321 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %320, i32 0, i32 8
  %322 = load i32, i32* %321, align 8
  %323 = call i32 @tl_store_int(i32 %322)
  br label %347

324:                                              ; preds = %307
  %325 = load i32, i32* @TL_NEWS_FLAG_ITEM, align 4
  %326 = mul nsw i32 2, %325
  %327 = load i32*, i32** %13, align 8
  %328 = load i32, i32* %327, align 4
  %329 = or i32 %328, %326
  store i32 %329, i32* %327, align 4
  %330 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  store %struct.TYPE_3__* %330, %struct.TYPE_3__** %8, align 8
  store i32 0, i32* %10, align 4
  br label %331

331:                                              ; preds = %340, %324
  %332 = load i32, i32* %10, align 4
  %333 = load i32, i32* %12, align 4
  %334 = icmp slt i32 %332, %333
  br i1 %334, label %335, label %346

335:                                              ; preds = %331
  %336 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %337 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %336, i32 0, i32 8
  %338 = load i32, i32* %337, align 8
  %339 = call i32 @tl_store_int(i32 %338)
  br label %340

340:                                              ; preds = %335
  %341 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %342 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %341, i32 0, i32 9
  %343 = load %struct.TYPE_3__*, %struct.TYPE_3__** %342, align 8
  store %struct.TYPE_3__* %343, %struct.TYPE_3__** %8, align 8
  %344 = load i32, i32* %10, align 4
  %345 = add nsw i32 %344, 1
  store i32 %345, i32* %10, align 4
  br label %331

346:                                              ; preds = %331
  br label %347

347:                                              ; preds = %346, %315
  store i32 1, i32* %4, align 4
  br label %348

348:                                              ; preds = %347, %69
  %349 = load i32, i32* %4, align 4
  ret i32 %349
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @tl_store_int(i32) #1

declare dso_local i32* @tl_store_get_ptr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
