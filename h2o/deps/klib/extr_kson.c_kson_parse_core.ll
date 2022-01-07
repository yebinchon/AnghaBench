; ModuleID = '/home/carl/AnghaBench/h2o/deps/klib/extr_kson.c_kson_parse_core.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/klib/extr_kson.c_kson_parse_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i64, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i8*, %struct.TYPE_6__** }

@KSON_OK = common dso_local global i32 0, align 4
@KSON_ERR_EXTRA_RIGHT = common dso_local global i32 0, align 4
@KSON_TYPE_BRACKET = common dso_local global i32 0, align 4
@KSON_TYPE_BRACE = common dso_local global i32 0, align 4
@KSON_ERR_NO_KEY = common dso_local global i32 0, align 4
@KSON_TYPE_SGL_QUOTE = common dso_local global i32 0, align 4
@KSON_TYPE_DBL_QUOTE = common dso_local global i32 0, align 4
@KSON_TYPE_NO_QUOTE = common dso_local global i32 0, align 4
@KSON_ERR_EXTRA_LEFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @kson_parse_core(i8* %0, i64* %1, i32* %2, i64* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_6__*, align 8
  %17 = alloca %struct.TYPE_6__*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64* %3, i64** %8, align 8
  store i64* null, i64** %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %16, align 8
  %28 = call i32 @assert(i32 1)
  %29 = load i32, i32* @KSON_OK, align 4
  %30 = load i32*, i32** %7, align 8
  store i32 %29, i32* %30, align 4
  %31 = load i8*, i8** %5, align 8
  store i8* %31, i8** %18, align 8
  br label %32

32:                                               ; preds = %585, %4
  %33 = load i8*, i8** %18, align 8
  %34 = load i8, i8* %33, align 1
  %35 = icmp ne i8 %34, 0
  br i1 %35, label %36, label %588

36:                                               ; preds = %32
  br label %37

37:                                               ; preds = %49, %36
  %38 = load i8*, i8** %18, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load i8*, i8** %18, align 8
  %44 = load i8, i8* %43, align 1
  %45 = call i64 @isspace(i8 signext %44)
  %46 = icmp ne i64 %45, 0
  br label %47

47:                                               ; preds = %42, %37
  %48 = phi i1 [ false, %37 ], [ %46, %42 ]
  br i1 %48, label %49, label %52

49:                                               ; preds = %47
  %50 = load i8*, i8** %18, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %18, align 8
  br label %37

52:                                               ; preds = %47
  %53 = load i8*, i8** %18, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %588

58:                                               ; preds = %52
  %59 = load i8*, i8** %18, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 44
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %584

64:                                               ; preds = %58
  %65 = load i8*, i8** %18, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 91
  br i1 %68, label %74, label %69

69:                                               ; preds = %64
  %70 = load i8*, i8** %18, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 123
  br i1 %73, label %74, label %186

74:                                               ; preds = %69, %64
  %75 = load i8*, i8** %18, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 91
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i32 -1, i32 -2
  store i32 %80, i32* %21, align 4
  %81 = load i64, i64* %10, align 8
  %82 = icmp slt i64 %81, 2
  br i1 %82, label %90, label %83

83:                                               ; preds = %74
  %84 = load i64*, i64** %9, align 8
  %85 = load i64, i64* %10, align 8
  %86 = sub nsw i64 %85, 1
  %87 = getelementptr inbounds i64, i64* %84, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, -3
  br i1 %89, label %90, label %178

90:                                               ; preds = %83, %74
  br label %91

91:                                               ; preds = %90
  %92 = load i64, i64* %10, align 8
  %93 = load i64, i64* %11, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %110

95:                                               ; preds = %91
  %96 = load i64, i64* %11, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load i64, i64* %11, align 8
  %100 = shl i64 %99, 1
  br label %102

101:                                              ; preds = %95
  br label %102

102:                                              ; preds = %101, %98
  %103 = phi i64 [ %100, %98 ], [ 4, %101 ]
  store i64 %103, i64* %11, align 8
  %104 = load i64*, i64** %9, align 8
  %105 = bitcast i64* %104 to i8*
  %106 = load i64, i64* %11, align 8
  %107 = mul i64 8, %106
  %108 = call i8* @realloc(i8* %105, i64 %107)
  %109 = bitcast i8* %108 to i64*
  store i64* %109, i64** %9, align 8
  br label %110

110:                                              ; preds = %102, %91
  %111 = load i64, i64* %12, align 8
  %112 = load i64*, i64** %9, align 8
  %113 = load i64, i64* %10, align 8
  %114 = add nsw i64 %113, 1
  store i64 %114, i64* %10, align 8
  %115 = getelementptr inbounds i64, i64* %112, i64 %113
  store i64 %111, i64* %115, align 8
  br label %116

116:                                              ; preds = %110
  br label %117

117:                                              ; preds = %116
  %118 = load i64, i64* %12, align 8
  %119 = load i64, i64* %13, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %145

121:                                              ; preds = %117
  %122 = load i64, i64* %13, align 8
  store i64 %122, i64* %22, align 8
  %123 = load i64, i64* %13, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %121
  %126 = load i64, i64* %13, align 8
  %127 = shl i64 %126, 1
  br label %129

128:                                              ; preds = %121
  br label %129

129:                                              ; preds = %128, %125
  %130 = phi i64 [ %127, %125 ], [ 4, %128 ]
  store i64 %130, i64* %13, align 8
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %132 = bitcast %struct.TYPE_6__* %131 to i8*
  %133 = load i64, i64* %13, align 8
  %134 = mul i64 40, %133
  %135 = call i8* @realloc(i8* %132, i64 %134)
  %136 = bitcast i8* %135 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %136, %struct.TYPE_6__** %16, align 8
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %138 = load i64, i64* %22, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i64 %138
  %140 = bitcast %struct.TYPE_6__* %139 to i8*
  %141 = load i64, i64* %13, align 8
  %142 = load i64, i64* %22, align 8
  %143 = sub nsw i64 %141, %142
  %144 = mul i64 40, %143
  call void @llvm.memset.p0i8.i64(i8* align 8 %140, i8 0, i64 %144, i1 false)
  br label %145

145:                                              ; preds = %129, %117
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %147 = load i64, i64* %12, align 8
  %148 = add nsw i64 %147, 1
  store i64 %148, i64* %12, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i64 %147
  store %struct.TYPE_6__* %149, %struct.TYPE_6__** %17, align 8
  br label %150

150:                                              ; preds = %145
  br label %151

151:                                              ; preds = %150
  %152 = load i64, i64* %10, align 8
  %153 = load i64, i64* %11, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %170

155:                                              ; preds = %151
  %156 = load i64, i64* %11, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %155
  %159 = load i64, i64* %11, align 8
  %160 = shl i64 %159, 1
  br label %162

161:                                              ; preds = %155
  br label %162

162:                                              ; preds = %161, %158
  %163 = phi i64 [ %160, %158 ], [ 4, %161 ]
  store i64 %163, i64* %11, align 8
  %164 = load i64*, i64** %9, align 8
  %165 = bitcast i64* %164 to i8*
  %166 = load i64, i64* %11, align 8
  %167 = mul i64 8, %166
  %168 = call i8* @realloc(i8* %165, i64 %167)
  %169 = bitcast i8* %168 to i64*
  store i64* %169, i64** %9, align 8
  br label %170

170:                                              ; preds = %162, %151
  %171 = load i32, i32* %21, align 4
  %172 = sext i32 %171 to i64
  %173 = load i64*, i64** %9, align 8
  %174 = load i64, i64* %10, align 8
  %175 = add nsw i64 %174, 1
  store i64 %175, i64* %10, align 8
  %176 = getelementptr inbounds i64, i64* %173, i64 %174
  store i64 %172, i64* %176, align 8
  br label %177

177:                                              ; preds = %170
  br label %185

178:                                              ; preds = %83
  %179 = load i32, i32* %21, align 4
  %180 = sext i32 %179 to i64
  %181 = load i64*, i64** %9, align 8
  %182 = load i64, i64* %10, align 8
  %183 = sub nsw i64 %182, 1
  %184 = getelementptr inbounds i64, i64* %181, i64 %183
  store i64 %180, i64* %184, align 8
  br label %185

185:                                              ; preds = %178, %177
  br label %583

186:                                              ; preds = %69
  %187 = load i8*, i8** %18, align 8
  %188 = load i8, i8* %187, align 1
  %189 = sext i8 %188 to i32
  %190 = icmp eq i32 %189, 93
  br i1 %190, label %196, label %191

191:                                              ; preds = %186
  %192 = load i8*, i8** %18, align 8
  %193 = load i8, i8* %192, align 1
  %194 = sext i8 %193 to i32
  %195 = icmp eq i32 %194, 125
  br i1 %195, label %196, label %301

196:                                              ; preds = %191, %186
  %197 = load i8*, i8** %18, align 8
  %198 = load i8, i8* %197, align 1
  %199 = sext i8 %198 to i32
  %200 = icmp eq i32 %199, 93
  %201 = zext i1 %200 to i64
  %202 = select i1 %200, i32 -1, i32 -2
  %203 = sext i32 %202 to i64
  store i64 %203, i64* %25, align 8
  %204 = load i64, i64* %10, align 8
  %205 = sub nsw i64 %204, 1
  store i64 %205, i64* %23, align 8
  br label %206

206:                                              ; preds = %219, %196
  %207 = load i64, i64* %23, align 8
  %208 = icmp sge i64 %207, 0
  br i1 %208, label %209, label %216

209:                                              ; preds = %206
  %210 = load i64*, i64** %9, align 8
  %211 = load i64, i64* %23, align 8
  %212 = getelementptr inbounds i64, i64* %210, i64 %211
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* %25, align 8
  %215 = icmp ne i64 %213, %214
  br label %216

216:                                              ; preds = %209, %206
  %217 = phi i1 [ false, %206 ], [ %215, %209 ]
  br i1 %217, label %218, label %222

218:                                              ; preds = %216
  br label %219

219:                                              ; preds = %218
  %220 = load i64, i64* %23, align 8
  %221 = add nsw i64 %220, -1
  store i64 %221, i64* %23, align 8
  br label %206

222:                                              ; preds = %216
  %223 = load i64, i64* %23, align 8
  %224 = icmp slt i64 %223, 0
  br i1 %224, label %225, label %228

225:                                              ; preds = %222
  %226 = load i32, i32* @KSON_ERR_EXTRA_RIGHT, align 4
  %227 = load i32*, i32** %7, align 8
  store i32 %226, i32* %227, align 4
  br label %588

228:                                              ; preds = %222
  %229 = load i64, i64* %23, align 8
  store i64 %229, i64* %24, align 8
  %230 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %231 = load i64*, i64** %9, align 8
  %232 = load i64, i64* %24, align 8
  %233 = sub nsw i64 %232, 1
  %234 = getelementptr inbounds i64, i64* %231, i64 %233
  %235 = load i64, i64* %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i64 %235
  store %struct.TYPE_6__* %236, %struct.TYPE_6__** %17, align 8
  %237 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 2
  %239 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %238, i32 0, i32 0
  %240 = load i8*, i8** %239, align 8
  %241 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %241, i32 0, i32 0
  store i8* %240, i8** %242, align 8
  %243 = load i64, i64* %10, align 8
  %244 = sub nsw i64 %243, 1
  %245 = load i64, i64* %24, align 8
  %246 = sub nsw i64 %244, %245
  %247 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %248 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %247, i32 0, i32 1
  store i64 %246, i64* %248, align 8
  %249 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 1
  %251 = load i64, i64* %250, align 8
  %252 = mul i64 %251, 8
  %253 = trunc i64 %252 to i32
  %254 = call i64 @malloc(i32 %253)
  %255 = inttoptr i64 %254 to %struct.TYPE_6__**
  %256 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %256, i32 0, i32 2
  %258 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %257, i32 0, i32 1
  store %struct.TYPE_6__** %255, %struct.TYPE_6__*** %258, align 8
  %259 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %260 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %259, i32 0, i32 2
  %261 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %260, i32 0, i32 1
  %262 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %261, align 8
  %263 = bitcast %struct.TYPE_6__** %262 to i64*
  store i64* %263, i64** %20, align 8
  %264 = load i64, i64* %24, align 8
  %265 = add nsw i64 %264, 1
  store i64 %265, i64* %23, align 8
  br label %266

266:                                              ; preds = %281, %228
  %267 = load i64, i64* %23, align 8
  %268 = load i64, i64* %10, align 8
  %269 = icmp slt i64 %267, %268
  br i1 %269, label %270, label %284

270:                                              ; preds = %266
  %271 = load i64*, i64** %9, align 8
  %272 = load i64, i64* %23, align 8
  %273 = getelementptr inbounds i64, i64* %271, i64 %272
  %274 = load i64, i64* %273, align 8
  %275 = load i64*, i64** %20, align 8
  %276 = load i64, i64* %23, align 8
  %277 = load i64, i64* %24, align 8
  %278 = sub nsw i64 %276, %277
  %279 = sub nsw i64 %278, 1
  %280 = getelementptr inbounds i64, i64* %275, i64 %279
  store i64 %274, i64* %280, align 8
  br label %281

281:                                              ; preds = %270
  %282 = load i64, i64* %23, align 8
  %283 = add nsw i64 %282, 1
  store i64 %283, i64* %23, align 8
  br label %266

284:                                              ; preds = %266
  %285 = load i8*, i8** %18, align 8
  %286 = load i8, i8* %285, align 1
  %287 = sext i8 %286 to i32
  %288 = icmp eq i32 %287, 93
  br i1 %288, label %289, label %291

289:                                              ; preds = %284
  %290 = load i32, i32* @KSON_TYPE_BRACKET, align 4
  br label %293

291:                                              ; preds = %284
  %292 = load i32, i32* @KSON_TYPE_BRACE, align 4
  br label %293

293:                                              ; preds = %291, %289
  %294 = phi i32 [ %290, %289 ], [ %292, %291 ]
  %295 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %296 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %295, i32 0, i32 3
  store i32 %294, i32* %296, align 8
  %297 = load i64, i64* %24, align 8
  store i64 %297, i64* %10, align 8
  %298 = icmp eq i64 %297, 1
  br i1 %298, label %299, label %300

299:                                              ; preds = %293
  br label %588

300:                                              ; preds = %293
  br label %582

301:                                              ; preds = %191
  %302 = load i8*, i8** %18, align 8
  %303 = load i8, i8* %302, align 1
  %304 = sext i8 %303 to i32
  %305 = icmp eq i32 %304, 58
  br i1 %305, label %306, label %345

306:                                              ; preds = %301
  %307 = load i64, i64* %10, align 8
  %308 = icmp eq i64 %307, 0
  br i1 %308, label %316, label %309

309:                                              ; preds = %306
  %310 = load i64*, i64** %9, align 8
  %311 = load i64, i64* %10, align 8
  %312 = sub nsw i64 %311, 1
  %313 = getelementptr inbounds i64, i64* %310, i64 %312
  %314 = load i64, i64* %313, align 8
  %315 = icmp eq i64 %314, -3
  br i1 %315, label %316, label %319

316:                                              ; preds = %309, %306
  %317 = load i32, i32* @KSON_ERR_NO_KEY, align 4
  %318 = load i32*, i32** %7, align 8
  store i32 %317, i32* %318, align 4
  br label %588

319:                                              ; preds = %309
  br label %320

320:                                              ; preds = %319
  %321 = load i64, i64* %10, align 8
  %322 = load i64, i64* %11, align 8
  %323 = icmp eq i64 %321, %322
  br i1 %323, label %324, label %339

324:                                              ; preds = %320
  %325 = load i64, i64* %11, align 8
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %327, label %330

327:                                              ; preds = %324
  %328 = load i64, i64* %11, align 8
  %329 = shl i64 %328, 1
  br label %331

330:                                              ; preds = %324
  br label %331

331:                                              ; preds = %330, %327
  %332 = phi i64 [ %329, %327 ], [ 4, %330 ]
  store i64 %332, i64* %11, align 8
  %333 = load i64*, i64** %9, align 8
  %334 = bitcast i64* %333 to i8*
  %335 = load i64, i64* %11, align 8
  %336 = mul i64 8, %335
  %337 = call i8* @realloc(i8* %334, i64 %336)
  %338 = bitcast i8* %337 to i64*
  store i64* %338, i64** %9, align 8
  br label %339

339:                                              ; preds = %331, %320
  %340 = load i64*, i64** %9, align 8
  %341 = load i64, i64* %10, align 8
  %342 = add nsw i64 %341, 1
  store i64 %342, i64* %10, align 8
  %343 = getelementptr inbounds i64, i64* %340, i64 %341
  store i64 -3, i64* %343, align 8
  br label %344

344:                                              ; preds = %339
  br label %581

345:                                              ; preds = %301
  %346 = load i8*, i8** %18, align 8
  %347 = load i8, i8* %346, align 1
  %348 = sext i8 %347 to i32
  store i32 %348, i32* %26, align 4
  %349 = load i64, i64* %10, align 8
  %350 = icmp sge i64 %349, 2
  br i1 %350, label %351, label %374

351:                                              ; preds = %345
  %352 = load i64*, i64** %9, align 8
  %353 = load i64, i64* %10, align 8
  %354 = sub nsw i64 %353, 1
  %355 = getelementptr inbounds i64, i64* %352, i64 %354
  %356 = load i64, i64* %355, align 8
  %357 = icmp eq i64 %356, -3
  br i1 %357, label %358, label %374

358:                                              ; preds = %351
  %359 = load i64, i64* %10, align 8
  %360 = add nsw i64 %359, -1
  store i64 %360, i64* %10, align 8
  %361 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %362 = load i64*, i64** %9, align 8
  %363 = load i64, i64* %10, align 8
  %364 = sub nsw i64 %363, 1
  %365 = getelementptr inbounds i64, i64* %362, i64 %364
  %366 = load i64, i64* %365, align 8
  %367 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %361, i64 %366
  store %struct.TYPE_6__* %367, %struct.TYPE_6__** %17, align 8
  %368 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %369 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %368, i32 0, i32 2
  %370 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %369, i32 0, i32 0
  %371 = load i8*, i8** %370, align 8
  %372 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %373 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %372, i32 0, i32 0
  store i8* %371, i8** %373, align 8
  br label %435

374:                                              ; preds = %351, %345
  br label %375

375:                                              ; preds = %374
  %376 = load i64, i64* %10, align 8
  %377 = load i64, i64* %11, align 8
  %378 = icmp eq i64 %376, %377
  br i1 %378, label %379, label %394

379:                                              ; preds = %375
  %380 = load i64, i64* %11, align 8
  %381 = icmp ne i64 %380, 0
  br i1 %381, label %382, label %385

382:                                              ; preds = %379
  %383 = load i64, i64* %11, align 8
  %384 = shl i64 %383, 1
  br label %386

385:                                              ; preds = %379
  br label %386

386:                                              ; preds = %385, %382
  %387 = phi i64 [ %384, %382 ], [ 4, %385 ]
  store i64 %387, i64* %11, align 8
  %388 = load i64*, i64** %9, align 8
  %389 = bitcast i64* %388 to i8*
  %390 = load i64, i64* %11, align 8
  %391 = mul i64 8, %390
  %392 = call i8* @realloc(i8* %389, i64 %391)
  %393 = bitcast i8* %392 to i64*
  store i64* %393, i64** %9, align 8
  br label %394

394:                                              ; preds = %386, %375
  %395 = load i64, i64* %12, align 8
  %396 = load i64*, i64** %9, align 8
  %397 = load i64, i64* %10, align 8
  %398 = add nsw i64 %397, 1
  store i64 %398, i64* %10, align 8
  %399 = getelementptr inbounds i64, i64* %396, i64 %397
  store i64 %395, i64* %399, align 8
  br label %400

400:                                              ; preds = %394
  br label %401

401:                                              ; preds = %400
  %402 = load i64, i64* %12, align 8
  %403 = load i64, i64* %13, align 8
  %404 = icmp eq i64 %402, %403
  br i1 %404, label %405, label %429

405:                                              ; preds = %401
  %406 = load i64, i64* %13, align 8
  store i64 %406, i64* %27, align 8
  %407 = load i64, i64* %13, align 8
  %408 = icmp ne i64 %407, 0
  br i1 %408, label %409, label %412

409:                                              ; preds = %405
  %410 = load i64, i64* %13, align 8
  %411 = shl i64 %410, 1
  br label %413

412:                                              ; preds = %405
  br label %413

413:                                              ; preds = %412, %409
  %414 = phi i64 [ %411, %409 ], [ 4, %412 ]
  store i64 %414, i64* %13, align 8
  %415 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %416 = bitcast %struct.TYPE_6__* %415 to i8*
  %417 = load i64, i64* %13, align 8
  %418 = mul i64 40, %417
  %419 = call i8* @realloc(i8* %416, i64 %418)
  %420 = bitcast i8* %419 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %420, %struct.TYPE_6__** %16, align 8
  %421 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %422 = load i64, i64* %27, align 8
  %423 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %421, i64 %422
  %424 = bitcast %struct.TYPE_6__* %423 to i8*
  %425 = load i64, i64* %13, align 8
  %426 = load i64, i64* %27, align 8
  %427 = sub nsw i64 %425, %426
  %428 = mul i64 40, %427
  call void @llvm.memset.p0i8.i64(i8* align 8 %424, i8 0, i64 %428, i1 false)
  br label %429

429:                                              ; preds = %413, %401
  %430 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %431 = load i64, i64* %12, align 8
  %432 = add nsw i64 %431, 1
  store i64 %432, i64* %12, align 8
  %433 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %430, i64 %431
  store %struct.TYPE_6__* %433, %struct.TYPE_6__** %17, align 8
  br label %434

434:                                              ; preds = %429
  br label %435

435:                                              ; preds = %434, %358
  %436 = load i32, i32* %26, align 4
  %437 = icmp eq i32 %436, 39
  br i1 %437, label %441, label %438

438:                                              ; preds = %435
  %439 = load i32, i32* %26, align 4
  %440 = icmp eq i32 %439, 34
  br i1 %440, label %441, label %470

441:                                              ; preds = %438, %435
  %442 = load i8*, i8** %18, align 8
  %443 = getelementptr inbounds i8, i8* %442, i32 1
  store i8* %443, i8** %18, align 8
  store i8* %443, i8** %19, align 8
  br label %444

444:                                              ; preds = %466, %441
  %445 = load i8*, i8** %19, align 8
  %446 = load i8, i8* %445, align 1
  %447 = sext i8 %446 to i32
  %448 = icmp ne i32 %447, 0
  br i1 %448, label %449, label %455

449:                                              ; preds = %444
  %450 = load i8*, i8** %19, align 8
  %451 = load i8, i8* %450, align 1
  %452 = sext i8 %451 to i32
  %453 = load i32, i32* %26, align 4
  %454 = icmp ne i32 %452, %453
  br label %455

455:                                              ; preds = %449, %444
  %456 = phi i1 [ false, %444 ], [ %454, %449 ]
  br i1 %456, label %457, label %469

457:                                              ; preds = %455
  %458 = load i8*, i8** %19, align 8
  %459 = load i8, i8* %458, align 1
  %460 = sext i8 %459 to i32
  %461 = icmp eq i32 %460, 92
  br i1 %461, label %462, label %465

462:                                              ; preds = %457
  %463 = load i8*, i8** %19, align 8
  %464 = getelementptr inbounds i8, i8* %463, i32 1
  store i8* %464, i8** %19, align 8
  br label %465

465:                                              ; preds = %462, %457
  br label %466

466:                                              ; preds = %465
  %467 = load i8*, i8** %19, align 8
  %468 = getelementptr inbounds i8, i8* %467, i32 1
  store i8* %468, i8** %19, align 8
  br label %444

469:                                              ; preds = %455
  br label %517

470:                                              ; preds = %438
  %471 = load i8*, i8** %18, align 8
  store i8* %471, i8** %19, align 8
  br label %472

472:                                              ; preds = %513, %470
  %473 = load i8*, i8** %19, align 8
  %474 = load i8, i8* %473, align 1
  %475 = sext i8 %474 to i32
  %476 = icmp ne i32 %475, 0
  br i1 %476, label %477, label %502

477:                                              ; preds = %472
  %478 = load i8*, i8** %19, align 8
  %479 = load i8, i8* %478, align 1
  %480 = sext i8 %479 to i32
  %481 = icmp ne i32 %480, 93
  br i1 %481, label %482, label %502

482:                                              ; preds = %477
  %483 = load i8*, i8** %19, align 8
  %484 = load i8, i8* %483, align 1
  %485 = sext i8 %484 to i32
  %486 = icmp ne i32 %485, 125
  br i1 %486, label %487, label %502

487:                                              ; preds = %482
  %488 = load i8*, i8** %19, align 8
  %489 = load i8, i8* %488, align 1
  %490 = sext i8 %489 to i32
  %491 = icmp ne i32 %490, 44
  br i1 %491, label %492, label %502

492:                                              ; preds = %487
  %493 = load i8*, i8** %19, align 8
  %494 = load i8, i8* %493, align 1
  %495 = sext i8 %494 to i32
  %496 = icmp ne i32 %495, 58
  br i1 %496, label %497, label %502

497:                                              ; preds = %492
  %498 = load i8*, i8** %19, align 8
  %499 = load i8, i8* %498, align 1
  %500 = sext i8 %499 to i32
  %501 = icmp ne i32 %500, 10
  br label %502

502:                                              ; preds = %497, %492, %487, %482, %477, %472
  %503 = phi i1 [ false, %492 ], [ false, %487 ], [ false, %482 ], [ false, %477 ], [ false, %472 ], [ %501, %497 ]
  br i1 %503, label %504, label %516

504:                                              ; preds = %502
  %505 = load i8*, i8** %19, align 8
  %506 = load i8, i8* %505, align 1
  %507 = sext i8 %506 to i32
  %508 = icmp eq i32 %507, 92
  br i1 %508, label %509, label %512

509:                                              ; preds = %504
  %510 = load i8*, i8** %19, align 8
  %511 = getelementptr inbounds i8, i8* %510, i32 1
  store i8* %511, i8** %19, align 8
  br label %512

512:                                              ; preds = %509, %504
  br label %513

513:                                              ; preds = %512
  %514 = load i8*, i8** %19, align 8
  %515 = getelementptr inbounds i8, i8* %514, i32 1
  store i8* %515, i8** %19, align 8
  br label %472

516:                                              ; preds = %502
  br label %517

517:                                              ; preds = %516, %469
  %518 = load i8*, i8** %19, align 8
  %519 = load i8*, i8** %18, align 8
  %520 = ptrtoint i8* %518 to i64
  %521 = ptrtoint i8* %519 to i64
  %522 = sub i64 %520, %521
  %523 = add nsw i64 %522, 1
  %524 = trunc i64 %523 to i32
  %525 = call i64 @malloc(i32 %524)
  %526 = inttoptr i64 %525 to i8*
  %527 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %528 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %527, i32 0, i32 2
  %529 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %528, i32 0, i32 0
  store i8* %526, i8** %529, align 8
  %530 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %531 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %530, i32 0, i32 2
  %532 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %531, i32 0, i32 0
  %533 = load i8*, i8** %532, align 8
  %534 = load i8*, i8** %18, align 8
  %535 = load i8*, i8** %19, align 8
  %536 = load i8*, i8** %18, align 8
  %537 = ptrtoint i8* %535 to i64
  %538 = ptrtoint i8* %536 to i64
  %539 = sub i64 %537, %538
  %540 = trunc i64 %539 to i32
  %541 = call i32 @strncpy(i8* %533, i8* %534, i32 %540)
  %542 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %543 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %542, i32 0, i32 2
  %544 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %543, i32 0, i32 0
  %545 = load i8*, i8** %544, align 8
  %546 = load i8*, i8** %19, align 8
  %547 = load i8*, i8** %18, align 8
  %548 = ptrtoint i8* %546 to i64
  %549 = ptrtoint i8* %547 to i64
  %550 = sub i64 %548, %549
  %551 = getelementptr inbounds i8, i8* %545, i64 %550
  store i8 0, i8* %551, align 1
  %552 = load i32, i32* %26, align 4
  %553 = icmp eq i32 %552, 39
  br i1 %553, label %554, label %556

554:                                              ; preds = %517
  %555 = load i32, i32* @KSON_TYPE_SGL_QUOTE, align 4
  br label %565

556:                                              ; preds = %517
  %557 = load i32, i32* %26, align 4
  %558 = icmp eq i32 %557, 34
  br i1 %558, label %559, label %561

559:                                              ; preds = %556
  %560 = load i32, i32* @KSON_TYPE_DBL_QUOTE, align 4
  br label %563

561:                                              ; preds = %556
  %562 = load i32, i32* @KSON_TYPE_NO_QUOTE, align 4
  br label %563

563:                                              ; preds = %561, %559
  %564 = phi i32 [ %560, %559 ], [ %562, %561 ]
  br label %565

565:                                              ; preds = %563, %554
  %566 = phi i32 [ %555, %554 ], [ %564, %563 ]
  %567 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %568 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %567, i32 0, i32 3
  store i32 %566, i32* %568, align 8
  %569 = load i32, i32* %26, align 4
  %570 = icmp eq i32 %569, 39
  br i1 %570, label %574, label %571

571:                                              ; preds = %565
  %572 = load i32, i32* %26, align 4
  %573 = icmp eq i32 %572, 34
  br i1 %573, label %574, label %576

574:                                              ; preds = %571, %565
  %575 = load i8*, i8** %19, align 8
  br label %579

576:                                              ; preds = %571
  %577 = load i8*, i8** %19, align 8
  %578 = getelementptr inbounds i8, i8* %577, i64 -1
  br label %579

579:                                              ; preds = %576, %574
  %580 = phi i8* [ %575, %574 ], [ %578, %576 ]
  store i8* %580, i8** %18, align 8
  br label %581

581:                                              ; preds = %579, %344
  br label %582

582:                                              ; preds = %581, %300
  br label %583

583:                                              ; preds = %582, %185
  br label %584

584:                                              ; preds = %583, %63
  br label %585

585:                                              ; preds = %584
  %586 = load i8*, i8** %18, align 8
  %587 = getelementptr inbounds i8, i8* %586, i32 1
  store i8* %587, i8** %18, align 8
  br label %32

588:                                              ; preds = %316, %299, %225, %57, %32
  br label %589

589:                                              ; preds = %601, %588
  %590 = load i8*, i8** %18, align 8
  %591 = load i8, i8* %590, align 1
  %592 = sext i8 %591 to i32
  %593 = icmp ne i32 %592, 0
  br i1 %593, label %594, label %599

594:                                              ; preds = %589
  %595 = load i8*, i8** %18, align 8
  %596 = load i8, i8* %595, align 1
  %597 = call i64 @isspace(i8 signext %596)
  %598 = icmp ne i64 %597, 0
  br label %599

599:                                              ; preds = %594, %589
  %600 = phi i1 [ false, %589 ], [ %598, %594 ]
  br i1 %600, label %601, label %604

601:                                              ; preds = %599
  %602 = load i8*, i8** %18, align 8
  %603 = getelementptr inbounds i8, i8* %602, i32 1
  store i8* %603, i8** %18, align 8
  br label %589

604:                                              ; preds = %599
  %605 = load i64*, i64** %8, align 8
  %606 = icmp ne i64* %605, null
  br i1 %606, label %607, label %614

607:                                              ; preds = %604
  %608 = load i8*, i8** %18, align 8
  %609 = load i8*, i8** %5, align 8
  %610 = ptrtoint i8* %608 to i64
  %611 = ptrtoint i8* %609 to i64
  %612 = sub i64 %610, %611
  %613 = load i64*, i64** %8, align 8
  store i64 %612, i64* %613, align 8
  br label %614

614:                                              ; preds = %607, %604
  %615 = load i64, i64* %10, align 8
  %616 = icmp ne i64 %615, 1
  br i1 %616, label %617, label %620

617:                                              ; preds = %614
  %618 = load i32, i32* @KSON_ERR_EXTRA_LEFT, align 4
  %619 = load i32*, i32** %7, align 8
  store i32 %618, i32* %619, align 4
  br label %620

620:                                              ; preds = %617, %614
  store i64 0, i64* %14, align 8
  br label %621

621:                                              ; preds = %657, %620
  %622 = load i64, i64* %14, align 8
  %623 = load i64, i64* %12, align 8
  %624 = icmp slt i64 %622, %623
  br i1 %624, label %625, label %660

625:                                              ; preds = %621
  store i64 0, i64* %15, align 8
  %626 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %627 = load i64, i64* %14, align 8
  %628 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %626, i64 %627
  store %struct.TYPE_6__* %628, %struct.TYPE_6__** %17, align 8
  %629 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %630 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %629, i32 0, i32 2
  %631 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %630, i32 0, i32 1
  %632 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %631, align 8
  %633 = bitcast %struct.TYPE_6__** %632 to i64*
  store i64* %633, i64** %20, align 8
  br label %634

634:                                              ; preds = %653, %625
  %635 = load i64, i64* %15, align 8
  %636 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %637 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %636, i32 0, i32 1
  %638 = load i64, i64* %637, align 8
  %639 = icmp slt i64 %635, %638
  br i1 %639, label %640, label %656

640:                                              ; preds = %634
  %641 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %642 = load i64*, i64** %20, align 8
  %643 = load i64, i64* %15, align 8
  %644 = getelementptr inbounds i64, i64* %642, i64 %643
  %645 = load i64, i64* %644, align 8
  %646 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %641, i64 %645
  %647 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %648 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %647, i32 0, i32 2
  %649 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %648, i32 0, i32 1
  %650 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %649, align 8
  %651 = load i64, i64* %15, align 8
  %652 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %650, i64 %651
  store %struct.TYPE_6__* %646, %struct.TYPE_6__** %652, align 8
  br label %653

653:                                              ; preds = %640
  %654 = load i64, i64* %15, align 8
  %655 = add nsw i64 %654, 1
  store i64 %655, i64* %15, align 8
  br label %634

656:                                              ; preds = %634
  br label %657

657:                                              ; preds = %656
  %658 = load i64, i64* %14, align 8
  %659 = add nsw i64 %658, 1
  store i64 %659, i64* %14, align 8
  br label %621

660:                                              ; preds = %621
  %661 = load i64*, i64** %9, align 8
  %662 = call i32 @free(i64* %661)
  %663 = load i64, i64* %12, align 8
  %664 = load i64*, i64** %6, align 8
  store i64 %663, i64* %664, align 8
  %665 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  ret %struct.TYPE_6__* %665
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i8* @realloc(i8*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
