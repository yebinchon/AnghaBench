; ModuleID = '/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_event_to_rpc.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_event_to_rpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i64, i32*, i32* }

@types = common dso_local global %struct.TYPE_11__* null, align 8
@mode = common dso_local global i32 0, align 4
@TL_PHOTO_PHOTO_LOCATION = common dso_local global i32 0, align 4
@TL_PHOTO_VIDEO_LOCATION = common dso_local global i32 0, align 4
@TL_PHOTO_AUDIO_LOCATION = common dso_local global i32 0, align 4
@TL_PHOTO_PHOTO_LOCATION_STORAGE = common dso_local global i32 0, align 4
@TL_PHOTO_VIDEO_LOCATION_STORAGE = common dso_local global i32 0, align 4
@TL_PHOTO_AUDIO_LOCATION_STORAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @event_to_rpc(%struct.TYPE_13__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i8, align 1
  %27 = alloca i8, align 1
  %28 = alloca i64, align 8
  %29 = alloca [12 x i8], align 1
  %30 = alloca i32, align 4
  %31 = alloca [2 x i8], align 1
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %7, align 8
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %8, align 8
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** @types, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i64 %40
  store %struct.TYPE_11__* %41, %struct.TYPE_11__** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %42

42:                                               ; preds = %80, %3
  %43 = load i32, i32* %11, align 4
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %83

48:                                               ; preds = %42
  %49 = load i64, i64* %6, align 8
  %50 = load i32, i32* %11, align 4
  %51 = zext i32 %50 to i64
  %52 = ashr i64 %49, %51
  %53 = and i64 %52, 1
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %79

55:                                               ; preds = %48
  %56 = load i32*, i32** %8, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %63, label %58

58:                                               ; preds = %55
  %59 = load i32*, i32** %8, align 8
  %60 = load i32, i32* %11, align 4
  %61 = call i64 @has_field(i32* %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %78, label %63

63:                                               ; preds = %58, %55
  %64 = load i32*, i32** %7, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %71, label %66

66:                                               ; preds = %63
  %67 = load i32*, i32** %7, align 8
  %68 = load i32, i32* %11, align 4
  %69 = call i64 @has_field(i32* %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %66, %63
  %72 = load i32, i32* %11, align 4
  %73 = zext i32 %72 to i64
  %74 = shl i64 1, %73
  %75 = load i64, i64* %6, align 8
  %76 = sub nsw i64 %75, %74
  store i64 %76, i64* %6, align 8
  br label %77

77:                                               ; preds = %71, %66
  br label %78

78:                                               ; preds = %77, %58
  br label %79

79:                                               ; preds = %78, %48
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %11, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %11, align 4
  br label %42

83:                                               ; preds = %42
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i32 536870912, i32 0
  store i32 %89, i32* %12, align 4
  %90 = load i64, i64* %6, align 8
  %91 = icmp sge i64 %90, 536870912
  br i1 %91, label %92, label %105

92:                                               ; preds = %83
  %93 = load i64, i64* %6, align 8
  %94 = and i64 %93, 536870911
  %95 = load i32, i32* %12, align 4
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %94, %96
  %98 = add nsw i64 %97, 1073741824
  %99 = trunc i64 %98 to i32
  %100 = call i32 @tl_store_int(i32 %99)
  %101 = load i64, i64* %6, align 8
  %102 = ashr i64 %101, 29
  %103 = trunc i64 %102 to i32
  %104 = call i32 @tl_store_int(i32 %103)
  br label %112

105:                                              ; preds = %83
  %106 = load i64, i64* %6, align 8
  %107 = load i32, i32* %12, align 4
  %108 = sext i32 %107 to i64
  %109 = add nsw i64 %106, %108
  %110 = trunc i64 %109 to i32
  %111 = call i32 @tl_store_int(i32 %110)
  br label %112

112:                                              ; preds = %105, %92
  store i32 0, i32* %11, align 4
  br label %113

113:                                              ; preds = %362, %112
  %114 = load i32, i32* %11, align 4
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp slt i32 %114, %117
  br i1 %118, label %119, label %365

119:                                              ; preds = %113
  %120 = load i64, i64* %6, align 8
  %121 = load i32, i32* %11, align 4
  %122 = zext i32 %121 to i64
  %123 = ashr i64 %120, %122
  %124 = and i64 %123, 1
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %361

126:                                              ; preds = %119
  store i32* null, i32** %13, align 8
  %127 = load i32*, i32** %8, align 8
  %128 = icmp ne i32* %127, null
  br i1 %128, label %129, label %136

129:                                              ; preds = %126
  %130 = load i32*, i32** %8, align 8
  %131 = load i32, i32* %11, align 4
  %132 = call i64 @has_field(i32* %130, i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %129
  %135 = load i32*, i32** %8, align 8
  store i32* %135, i32** %13, align 8
  br label %147

136:                                              ; preds = %129, %126
  %137 = load i32*, i32** %7, align 8
  %138 = icmp ne i32* %137, null
  br i1 %138, label %139, label %146

139:                                              ; preds = %136
  %140 = load i32*, i32** %7, align 8
  %141 = load i32, i32* %11, align 4
  %142 = call i64 @has_field(i32* %140, i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %139
  %145 = load i32*, i32** %7, align 8
  store i32* %145, i32** %13, align 8
  br label %146

146:                                              ; preds = %144, %139, %136
  br label %147

147:                                              ; preds = %146, %134
  %148 = load i32*, i32** %13, align 8
  %149 = ptrtoint i32* %148 to i32
  %150 = call i32 @assert(i32 %149)
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 1
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %152, align 8
  %154 = load i32, i32* %11, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i64 %155
  store %struct.TYPE_12__* %156, %struct.TYPE_12__** %14, align 8
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  switch i32 %159, label %358 [
    i32 131, label %160
    i32 130, label %167
    i32 132, label %173
    i32 128, label %179
    i32 129, label %187
  ]

160:                                              ; preds = %147
  %161 = load i32*, i32** %13, align 8
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %163 = call i32* @GET_INT(i32* %161, %struct.TYPE_12__* %162)
  %164 = load i32, i32* %163, align 4
  store i32 %164, i32* %15, align 4
  %165 = load i32, i32* %15, align 4
  %166 = call i32 @tl_store_int(i32 %165)
  br label %360

167:                                              ; preds = %147
  %168 = load i32*, i32** %13, align 8
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %170 = call i32* @GET_LONG(i32* %168, %struct.TYPE_12__* %169)
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @tl_store_long(i32 %171)
  br label %360

173:                                              ; preds = %147
  %174 = load i32*, i32** %13, align 8
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %176 = call i32* @GET_DOUBLE(i32* %174, %struct.TYPE_12__* %175)
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @tl_store_double(i32 %177)
  br label %360

179:                                              ; preds = %147
  %180 = load i32*, i32** %13, align 8
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %182 = call i8* @GET_STRING(i32* %180, %struct.TYPE_12__* %181)
  store i8* %182, i8** %16, align 8
  %183 = load i8*, i8** %16, align 8
  %184 = load i8*, i8** %16, align 8
  %185 = call i32 @strlen(i8* %184)
  %186 = call i32 @tl_store_string(i8* %183, i32 %185)
  br label %360

187:                                              ; preds = %147
  %188 = load i32*, i32** %13, align 8
  %189 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %190 = call i32 @GET_RAW(i32* %188, %struct.TYPE_12__* %189)
  %191 = call i8* @RAW_DATA(i32 %190)
  store i8* %191, i8** %17, align 8
  %192 = load i8*, i8** %17, align 8
  %193 = icmp ne i8* %192, null
  %194 = zext i1 %193 to i32
  %195 = call i32 @assert(i32 %194)
  %196 = load i8*, i8** %17, align 8
  store i8* %196, i8** %18, align 8
  store i32 0, i32* %19, align 4
  %197 = load i8*, i8** %17, align 8
  %198 = getelementptr inbounds i8, i8* %197, i64 0
  %199 = load i8, i8* %198, align 1
  %200 = sext i8 %199 to i32
  %201 = icmp slt i32 %200, 0
  br i1 %201, label %202, label %215

202:                                              ; preds = %187
  %203 = load i8*, i8** %17, align 8
  %204 = getelementptr inbounds i8, i8* %203, i64 0
  %205 = load i8, i8* %204, align 1
  %206 = sext i8 %205 to i32
  %207 = load i32, i32* @mode, align 4
  %208 = add nsw i32 %206, %207
  %209 = sub nsw i32 0, %208
  %210 = sext i32 %209 to i64
  %211 = add i64 %210, 16
  %212 = add i64 %211, 1
  %213 = load i8*, i8** %17, align 8
  %214 = getelementptr inbounds i8, i8* %213, i64 %212
  store i8* %214, i8** %17, align 8
  store i32 1, i32* %19, align 4
  br label %215

215:                                              ; preds = %202, %187
  %216 = load i8*, i8** %17, align 8
  %217 = load i8, i8* %216, align 1
  %218 = sext i8 %217 to i32
  %219 = load i32, i32* %19, align 4
  %220 = add nsw i32 %219, %218
  store i32 %220, i32* %19, align 4
  %221 = load i8*, i8** %18, align 8
  store i8* %221, i8** %17, align 8
  %222 = load i32, i32* %19, align 4
  %223 = call i32 @tl_store_int(i32 %222)
  %224 = load i8*, i8** %17, align 8
  %225 = getelementptr inbounds i8, i8* %224, i64 0
  %226 = load i8, i8* %225, align 1
  %227 = sext i8 %226 to i32
  %228 = icmp slt i32 %227, 0
  br i1 %228, label %229, label %262

229:                                              ; preds = %215
  %230 = load i32, i32* @mode, align 4
  switch i32 %230, label %237 [
    i32 134, label %231
    i32 133, label %233
    i32 135, label %235
  ]

231:                                              ; preds = %229
  %232 = load i32, i32* @TL_PHOTO_PHOTO_LOCATION, align 4
  store i32 %232, i32* %10, align 4
  br label %239

233:                                              ; preds = %229
  %234 = load i32, i32* @TL_PHOTO_VIDEO_LOCATION, align 4
  store i32 %234, i32* %10, align 4
  br label %239

235:                                              ; preds = %229
  %236 = load i32, i32* @TL_PHOTO_AUDIO_LOCATION, align 4
  store i32 %236, i32* %10, align 4
  br label %239

237:                                              ; preds = %229
  %238 = call i32 @assert(i32 0)
  br label %239

239:                                              ; preds = %237, %235, %233, %231
  %240 = load i32, i32* %10, align 4
  %241 = call i32 @tl_store_int(i32 %240)
  %242 = load i8*, i8** %17, align 8
  %243 = getelementptr inbounds i8, i8* %242, i64 0
  %244 = load i8, i8* %243, align 1
  %245 = sext i8 %244 to i32
  %246 = load i32, i32* @mode, align 4
  %247 = add nsw i32 %245, %246
  %248 = sub nsw i32 0, %247
  store i32 %248, i32* %20, align 4
  %249 = load i8*, i8** %17, align 8
  %250 = getelementptr inbounds i8, i8* %249, i32 1
  store i8* %250, i8** %17, align 8
  %251 = load i8*, i8** %17, align 8
  %252 = call i32 @tl_store_raw_data(i8* %251, i32 16)
  %253 = load i8*, i8** %17, align 8
  %254 = getelementptr inbounds i8, i8* %253, i64 16
  store i8* %254, i8** %17, align 8
  %255 = load i8*, i8** %17, align 8
  %256 = load i32, i32* %20, align 4
  %257 = call i32 @tl_store_string(i8* %255, i32 %256)
  %258 = load i32, i32* %20, align 4
  %259 = load i8*, i8** %17, align 8
  %260 = sext i32 %258 to i64
  %261 = getelementptr inbounds i8, i8* %259, i64 %260
  store i8* %261, i8** %17, align 8
  br label %262

262:                                              ; preds = %239, %215
  %263 = load i32, i32* @mode, align 4
  switch i32 %263, label %270 [
    i32 134, label %264
    i32 133, label %266
    i32 135, label %268
  ]

264:                                              ; preds = %262
  %265 = load i32, i32* @TL_PHOTO_PHOTO_LOCATION_STORAGE, align 4
  store i32 %265, i32* %10, align 4
  br label %272

266:                                              ; preds = %262
  %267 = load i32, i32* @TL_PHOTO_VIDEO_LOCATION_STORAGE, align 4
  store i32 %267, i32* %10, align 4
  br label %272

268:                                              ; preds = %262
  %269 = load i32, i32* @TL_PHOTO_AUDIO_LOCATION_STORAGE, align 4
  store i32 %269, i32* %10, align 4
  br label %272

270:                                              ; preds = %262
  %271 = call i32 @assert(i32 0)
  br label %272

272:                                              ; preds = %270, %268, %266, %264
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i8 0, i8* %26, align 1
  %273 = load i8*, i8** %17, align 8
  %274 = getelementptr inbounds i8, i8* %273, i32 1
  store i8* %274, i8** %17, align 8
  %275 = load i8, i8* %273, align 1
  %276 = sext i8 %275 to i32
  store i32 %276, i32* %24, align 4
  br label %277

277:                                              ; preds = %354, %272
  %278 = load i32, i32* %24, align 4
  %279 = icmp sgt i32 %278, 0
  br i1 %279, label %280, label %357

280:                                              ; preds = %277
  %281 = load i8*, i8** %17, align 8
  %282 = load i8, i8* %26, align 1
  %283 = call i32 @READ_CHAR(i8* %281, i8 signext %282)
  %284 = load i8, i8* %26, align 1
  %285 = sext i8 %284 to i32
  %286 = call i32 @assert(i32 %285)
  %287 = load i8, i8* %26, align 1
  %288 = sext i8 %287 to i32
  %289 = icmp slt i32 %288, 0
  br i1 %289, label %290, label %302

290:                                              ; preds = %280
  %291 = load i8, i8* %26, align 1
  %292 = sext i8 %291 to i32
  %293 = mul nsw i32 %292, -1
  %294 = trunc i32 %293 to i8
  store i8 %294, i8* %26, align 1
  %295 = load i8*, i8** %17, align 8
  %296 = load i8, i8* %27, align 1
  %297 = call i32 @READ_CHAR(i8* %295, i8 signext %296)
  %298 = load i8, i8* %27, align 1
  %299 = sext i8 %298 to i32
  %300 = load i32, i32* %22, align 4
  %301 = add nsw i32 %300, %299
  store i32 %301, i32* %22, align 4
  br label %311

302:                                              ; preds = %280
  %303 = load i8*, i8** %17, align 8
  %304 = load i32, i32* %21, align 4
  %305 = call i32 @READ_INT(i8* %303, i32 %304)
  %306 = load i8*, i8** %17, align 8
  %307 = load i32, i32* %22, align 4
  %308 = call i32 @READ_INT(i8* %306, i32 %307)
  %309 = load i32, i32* %21, align 4
  %310 = call i32 @get_server(i32 %309)
  store i32 %310, i32* %23, align 4
  br label %311

311:                                              ; preds = %302, %290
  %312 = load i8*, i8** %17, align 8
  %313 = load i32, i32* %25, align 4
  %314 = call i32 @READ_INT(i8* %312, i32 %313)
  %315 = load i8*, i8** %17, align 8
  %316 = load i64, i64* %28, align 8
  %317 = call i32 @READ_LONG(i8* %315, i64 %316)
  %318 = bitcast i64* %28 to i8*
  %319 = getelementptr inbounds [12 x i8], [12 x i8]* %29, i64 0, i64 0
  %320 = call i32 @base64url_encode(i8* %318, i32 8, i8* %319, i32 12)
  %321 = icmp ne i32 %320, 0
  %322 = xor i1 %321, true
  %323 = zext i1 %322 to i32
  %324 = call i32 @assert(i32 %323)
  %325 = load i8, i8* %26, align 1
  %326 = sext i8 %325 to i32
  %327 = ashr i32 %326, 5
  store i32 %327, i32* %30, align 4
  %328 = load i8, i8* %26, align 1
  %329 = sext i8 %328 to i32
  %330 = and i32 %329, 31
  %331 = add nsw i32 %330, 97
  %332 = sub nsw i32 %331, 1
  %333 = trunc i32 %332 to i8
  %334 = getelementptr inbounds [2 x i8], [2 x i8]* %31, i64 0, i64 0
  store i8 %333, i8* %334, align 1
  %335 = getelementptr inbounds [2 x i8], [2 x i8]* %31, i64 0, i64 1
  store i8 0, i8* %335, align 1
  %336 = load i32, i32* %10, align 4
  %337 = call i32 @tl_store_int(i32 %336)
  %338 = load i32, i32* %30, align 4
  %339 = call i32 @tl_store_int(i32 %338)
  %340 = getelementptr inbounds [2 x i8], [2 x i8]* %31, i64 0, i64 0
  %341 = call i32 @tl_store_string(i8* %340, i32 1)
  %342 = load i32, i32* %23, align 4
  %343 = call i32 @tl_store_int(i32 %342)
  %344 = load i32, i32* %21, align 4
  %345 = call i32 @tl_store_int(i32 %344)
  %346 = load i32, i32* %22, align 4
  %347 = call i32 @tl_store_int(i32 %346)
  %348 = load i32, i32* %25, align 4
  %349 = call i32 @tl_store_int(i32 %348)
  %350 = getelementptr inbounds [12 x i8], [12 x i8]* %29, i64 0, i64 0
  %351 = getelementptr inbounds [12 x i8], [12 x i8]* %29, i64 0, i64 0
  %352 = call i32 @strlen(i8* %351)
  %353 = call i32 @tl_store_string(i8* %350, i32 %352)
  br label %354

354:                                              ; preds = %311
  %355 = load i32, i32* %24, align 4
  %356 = add nsw i32 %355, -1
  store i32 %356, i32* %24, align 4
  br label %277

357:                                              ; preds = %277
  br label %360

358:                                              ; preds = %147
  %359 = call i32 @assert(i32 0)
  br label %360

360:                                              ; preds = %358, %357, %179, %173, %167, %160
  br label %361

361:                                              ; preds = %360, %119
  br label %362

362:                                              ; preds = %361
  %363 = load i32, i32* %11, align 4
  %364 = add nsw i32 %363, 1
  store i32 %364, i32* %11, align 4
  br label %113

365:                                              ; preds = %113
  ret void
}

declare dso_local i64 @has_field(i32*, i32) #1

declare dso_local i32 @tl_store_int(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @GET_INT(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @tl_store_long(i32) #1

declare dso_local i32* @GET_LONG(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @tl_store_double(i32) #1

declare dso_local i32* @GET_DOUBLE(i32*, %struct.TYPE_12__*) #1

declare dso_local i8* @GET_STRING(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @tl_store_string(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @RAW_DATA(i32) #1

declare dso_local i32 @GET_RAW(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @tl_store_raw_data(i8*, i32) #1

declare dso_local i32 @READ_CHAR(i8*, i8 signext) #1

declare dso_local i32 @READ_INT(i8*, i32) #1

declare dso_local i32 @get_server(i32) #1

declare dso_local i32 @READ_LONG(i8*, i64) #1

declare dso_local i32 @base64url_encode(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
