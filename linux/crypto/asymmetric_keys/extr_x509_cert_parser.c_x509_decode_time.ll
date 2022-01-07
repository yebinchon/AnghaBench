; ModuleID = '/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_x509_cert_parser.c_x509_decode_time.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_x509_cert_parser.c_x509_decode_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x509_decode_time.month_lengths = internal constant [12 x i8] c"\1F\1C\1F\1E\1F\1E\1F\1F\1E\1F\1E\1F", align 1
@ASN1_UNITIM = common dso_local global i8 0, align 1
@ASN1_GENTIM = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [42 x i8] c"Got unsupported time [tag %02x]: '%*phN'\0A\00", align 1
@EBADMSG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Got invalid time [tag %02x]: '%*phN'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @x509_decode_time(i32* %0, i64 %1, i8 zeroext %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8, align 1
  %22 = alloca i8, align 1
  %23 = alloca i8, align 1
  %24 = alloca i8, align 1
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i8, align 1
  %28 = alloca i8, align 1
  %29 = alloca i8, align 1
  %30 = alloca i8, align 1
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i8, align 1
  %34 = alloca i8, align 1
  %35 = alloca i8, align 1
  %36 = alloca i8, align 1
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i8, align 1
  %40 = alloca i8, align 1
  %41 = alloca i8, align 1
  %42 = alloca i8, align 1
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i8, align 1
  %46 = alloca i8, align 1
  %47 = alloca i8, align 1
  %48 = alloca i8, align 1
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca i8, align 1
  %52 = alloca i8, align 1
  %53 = alloca i8, align 1
  %54 = alloca i8, align 1
  %55 = alloca i32, align 4
  %56 = alloca i32, align 4
  %57 = alloca i8, align 1
  %58 = alloca i8, align 1
  %59 = alloca i8, align 1
  %60 = alloca i8, align 1
  %61 = alloca i32, align 4
  %62 = alloca i32, align 4
  %63 = alloca i8, align 1
  %64 = alloca i8, align 1
  %65 = alloca i8, align 1
  %66 = alloca i8, align 1
  %67 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8 %2, i8* %9, align 1
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %68 = load i8*, i8** %10, align 8
  store i8* %68, i8** %12, align 8
  %69 = load i8, i8* %9, align 1
  %70 = zext i8 %69 to i32
  %71 = load i8, i8* @ASN1_UNITIM, align 1
  %72 = zext i8 %71 to i32
  %73 = icmp eq i32 %70, %72
  br i1 %73, label %74, label %122

74:                                               ; preds = %5
  %75 = load i64, i64* %11, align 8
  %76 = icmp ne i64 %75, 13
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  br label %449

78:                                               ; preds = %74
  %79 = load i8*, i8** %12, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 0
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  %83 = sub nsw i32 %82, 48
  %84 = trunc i32 %83 to i8
  store i8 %84, i8* %21, align 1
  %85 = load i8, i8* %21, align 1
  %86 = zext i8 %85 to i32
  %87 = icmp sgt i32 %86, 9
  br i1 %87, label %88, label %89

88:                                               ; preds = %78
  br label %457

89:                                               ; preds = %78
  %90 = load i8, i8* %21, align 1
  store i8 %90, i8* %22, align 1
  %91 = load i8, i8* %22, align 1
  %92 = zext i8 %91 to i32
  %93 = mul nsw i32 %92, 10
  %94 = load i8*, i8** %12, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 1
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i32
  %98 = sub nsw i32 %97, 48
  %99 = trunc i32 %98 to i8
  store i8 %99, i8* %23, align 1
  %100 = load i8, i8* %23, align 1
  %101 = zext i8 %100 to i32
  %102 = icmp sgt i32 %101, 9
  br i1 %102, label %103, label %104

103:                                              ; preds = %89
  br label %457

104:                                              ; preds = %89
  %105 = load i8, i8* %23, align 1
  store i8 %105, i8* %24, align 1
  %106 = load i8, i8* %24, align 1
  %107 = zext i8 %106 to i32
  %108 = add nsw i32 %93, %107
  store i32 %108, i32* %20, align 4
  %109 = load i8*, i8** %12, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 2
  store i8* %110, i8** %12, align 8
  %111 = load i32, i32* %20, align 4
  store i32 %111, i32* %25, align 4
  %112 = load i32, i32* %25, align 4
  store i32 %112, i32* %13, align 4
  %113 = load i32, i32* %13, align 4
  %114 = icmp uge i32 %113, 50
  br i1 %114, label %115, label %118

115:                                              ; preds = %104
  %116 = load i32, i32* %13, align 4
  %117 = add i32 %116, 1900
  store i32 %117, i32* %13, align 4
  br label %121

118:                                              ; preds = %104
  %119 = load i32, i32* %13, align 4
  %120 = add i32 %119, 2000
  store i32 %120, i32* %13, align 4
  br label %121

121:                                              ; preds = %118, %115
  br label %212

122:                                              ; preds = %5
  %123 = load i8, i8* %9, align 1
  %124 = zext i8 %123 to i32
  %125 = load i8, i8* @ASN1_GENTIM, align 1
  %126 = zext i8 %125 to i32
  %127 = icmp eq i32 %124, %126
  br i1 %127, label %128, label %210

128:                                              ; preds = %122
  %129 = load i64, i64* %11, align 8
  %130 = icmp ne i64 %129, 15
  br i1 %130, label %131, label %132

131:                                              ; preds = %128
  br label %449

132:                                              ; preds = %128
  %133 = load i8*, i8** %12, align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 0
  %135 = load i8, i8* %134, align 1
  %136 = zext i8 %135 to i32
  %137 = sub nsw i32 %136, 48
  %138 = trunc i32 %137 to i8
  store i8 %138, i8* %27, align 1
  %139 = load i8, i8* %27, align 1
  %140 = zext i8 %139 to i32
  %141 = icmp sgt i32 %140, 9
  br i1 %141, label %142, label %143

142:                                              ; preds = %132
  br label %457

143:                                              ; preds = %132
  %144 = load i8, i8* %27, align 1
  store i8 %144, i8* %28, align 1
  %145 = load i8, i8* %28, align 1
  %146 = zext i8 %145 to i32
  %147 = mul nsw i32 %146, 10
  %148 = load i8*, i8** %12, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 1
  %150 = load i8, i8* %149, align 1
  %151 = zext i8 %150 to i32
  %152 = sub nsw i32 %151, 48
  %153 = trunc i32 %152 to i8
  store i8 %153, i8* %29, align 1
  %154 = load i8, i8* %29, align 1
  %155 = zext i8 %154 to i32
  %156 = icmp sgt i32 %155, 9
  br i1 %156, label %157, label %158

157:                                              ; preds = %143
  br label %457

158:                                              ; preds = %143
  %159 = load i8, i8* %29, align 1
  store i8 %159, i8* %30, align 1
  %160 = load i8, i8* %30, align 1
  %161 = zext i8 %160 to i32
  %162 = add nsw i32 %147, %161
  store i32 %162, i32* %26, align 4
  %163 = load i8*, i8** %12, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 2
  store i8* %164, i8** %12, align 8
  %165 = load i32, i32* %26, align 4
  store i32 %165, i32* %31, align 4
  %166 = load i32, i32* %31, align 4
  %167 = mul i32 %166, 100
  %168 = load i8*, i8** %12, align 8
  %169 = getelementptr inbounds i8, i8* %168, i64 0
  %170 = load i8, i8* %169, align 1
  %171 = zext i8 %170 to i32
  %172 = sub nsw i32 %171, 48
  %173 = trunc i32 %172 to i8
  store i8 %173, i8* %33, align 1
  %174 = load i8, i8* %33, align 1
  %175 = zext i8 %174 to i32
  %176 = icmp sgt i32 %175, 9
  br i1 %176, label %177, label %178

177:                                              ; preds = %158
  br label %457

178:                                              ; preds = %158
  %179 = load i8, i8* %33, align 1
  store i8 %179, i8* %34, align 1
  %180 = load i8, i8* %34, align 1
  %181 = zext i8 %180 to i32
  %182 = mul nsw i32 %181, 10
  %183 = load i8*, i8** %12, align 8
  %184 = getelementptr inbounds i8, i8* %183, i64 1
  %185 = load i8, i8* %184, align 1
  %186 = zext i8 %185 to i32
  %187 = sub nsw i32 %186, 48
  %188 = trunc i32 %187 to i8
  store i8 %188, i8* %35, align 1
  %189 = load i8, i8* %35, align 1
  %190 = zext i8 %189 to i32
  %191 = icmp sgt i32 %190, 9
  br i1 %191, label %192, label %193

192:                                              ; preds = %178
  br label %457

193:                                              ; preds = %178
  %194 = load i8, i8* %35, align 1
  store i8 %194, i8* %36, align 1
  %195 = load i8, i8* %36, align 1
  %196 = zext i8 %195 to i32
  %197 = add nsw i32 %182, %196
  store i32 %197, i32* %32, align 4
  %198 = load i8*, i8** %12, align 8
  %199 = getelementptr inbounds i8, i8* %198, i64 2
  store i8* %199, i8** %12, align 8
  %200 = load i32, i32* %32, align 4
  store i32 %200, i32* %37, align 4
  %201 = load i32, i32* %37, align 4
  %202 = add i32 %167, %201
  store i32 %202, i32* %13, align 4
  %203 = load i32, i32* %13, align 4
  %204 = icmp uge i32 %203, 1950
  br i1 %204, label %205, label %209

205:                                              ; preds = %193
  %206 = load i32, i32* %13, align 4
  %207 = icmp ule i32 %206, 2049
  br i1 %207, label %208, label %209

208:                                              ; preds = %205
  br label %457

209:                                              ; preds = %205, %193
  br label %211

210:                                              ; preds = %122
  br label %449

211:                                              ; preds = %209
  br label %212

212:                                              ; preds = %211, %121
  %213 = load i8*, i8** %12, align 8
  %214 = getelementptr inbounds i8, i8* %213, i64 0
  %215 = load i8, i8* %214, align 1
  %216 = zext i8 %215 to i32
  %217 = sub nsw i32 %216, 48
  %218 = trunc i32 %217 to i8
  store i8 %218, i8* %39, align 1
  %219 = load i8, i8* %39, align 1
  %220 = zext i8 %219 to i32
  %221 = icmp sgt i32 %220, 9
  br i1 %221, label %222, label %223

222:                                              ; preds = %212
  br label %457

223:                                              ; preds = %212
  %224 = load i8, i8* %39, align 1
  store i8 %224, i8* %40, align 1
  %225 = load i8, i8* %40, align 1
  %226 = zext i8 %225 to i32
  %227 = mul nsw i32 %226, 10
  %228 = load i8*, i8** %12, align 8
  %229 = getelementptr inbounds i8, i8* %228, i64 1
  %230 = load i8, i8* %229, align 1
  %231 = zext i8 %230 to i32
  %232 = sub nsw i32 %231, 48
  %233 = trunc i32 %232 to i8
  store i8 %233, i8* %41, align 1
  %234 = load i8, i8* %41, align 1
  %235 = zext i8 %234 to i32
  %236 = icmp sgt i32 %235, 9
  br i1 %236, label %237, label %238

237:                                              ; preds = %223
  br label %457

238:                                              ; preds = %223
  %239 = load i8, i8* %41, align 1
  store i8 %239, i8* %42, align 1
  %240 = load i8, i8* %42, align 1
  %241 = zext i8 %240 to i32
  %242 = add nsw i32 %227, %241
  store i32 %242, i32* %38, align 4
  %243 = load i8*, i8** %12, align 8
  %244 = getelementptr inbounds i8, i8* %243, i64 2
  store i8* %244, i8** %12, align 8
  %245 = load i32, i32* %38, align 4
  store i32 %245, i32* %43, align 4
  %246 = load i32, i32* %43, align 4
  store i32 %246, i32* %14, align 4
  %247 = load i8*, i8** %12, align 8
  %248 = getelementptr inbounds i8, i8* %247, i64 0
  %249 = load i8, i8* %248, align 1
  %250 = zext i8 %249 to i32
  %251 = sub nsw i32 %250, 48
  %252 = trunc i32 %251 to i8
  store i8 %252, i8* %45, align 1
  %253 = load i8, i8* %45, align 1
  %254 = zext i8 %253 to i32
  %255 = icmp sgt i32 %254, 9
  br i1 %255, label %256, label %257

256:                                              ; preds = %238
  br label %457

257:                                              ; preds = %238
  %258 = load i8, i8* %45, align 1
  store i8 %258, i8* %46, align 1
  %259 = load i8, i8* %46, align 1
  %260 = zext i8 %259 to i32
  %261 = mul nsw i32 %260, 10
  %262 = load i8*, i8** %12, align 8
  %263 = getelementptr inbounds i8, i8* %262, i64 1
  %264 = load i8, i8* %263, align 1
  %265 = zext i8 %264 to i32
  %266 = sub nsw i32 %265, 48
  %267 = trunc i32 %266 to i8
  store i8 %267, i8* %47, align 1
  %268 = load i8, i8* %47, align 1
  %269 = zext i8 %268 to i32
  %270 = icmp sgt i32 %269, 9
  br i1 %270, label %271, label %272

271:                                              ; preds = %257
  br label %457

272:                                              ; preds = %257
  %273 = load i8, i8* %47, align 1
  store i8 %273, i8* %48, align 1
  %274 = load i8, i8* %48, align 1
  %275 = zext i8 %274 to i32
  %276 = add nsw i32 %261, %275
  store i32 %276, i32* %44, align 4
  %277 = load i8*, i8** %12, align 8
  %278 = getelementptr inbounds i8, i8* %277, i64 2
  store i8* %278, i8** %12, align 8
  %279 = load i32, i32* %44, align 4
  store i32 %279, i32* %49, align 4
  %280 = load i32, i32* %49, align 4
  store i32 %280, i32* %15, align 4
  %281 = load i8*, i8** %12, align 8
  %282 = getelementptr inbounds i8, i8* %281, i64 0
  %283 = load i8, i8* %282, align 1
  %284 = zext i8 %283 to i32
  %285 = sub nsw i32 %284, 48
  %286 = trunc i32 %285 to i8
  store i8 %286, i8* %51, align 1
  %287 = load i8, i8* %51, align 1
  %288 = zext i8 %287 to i32
  %289 = icmp sgt i32 %288, 9
  br i1 %289, label %290, label %291

290:                                              ; preds = %272
  br label %457

291:                                              ; preds = %272
  %292 = load i8, i8* %51, align 1
  store i8 %292, i8* %52, align 1
  %293 = load i8, i8* %52, align 1
  %294 = zext i8 %293 to i32
  %295 = mul nsw i32 %294, 10
  %296 = load i8*, i8** %12, align 8
  %297 = getelementptr inbounds i8, i8* %296, i64 1
  %298 = load i8, i8* %297, align 1
  %299 = zext i8 %298 to i32
  %300 = sub nsw i32 %299, 48
  %301 = trunc i32 %300 to i8
  store i8 %301, i8* %53, align 1
  %302 = load i8, i8* %53, align 1
  %303 = zext i8 %302 to i32
  %304 = icmp sgt i32 %303, 9
  br i1 %304, label %305, label %306

305:                                              ; preds = %291
  br label %457

306:                                              ; preds = %291
  %307 = load i8, i8* %53, align 1
  store i8 %307, i8* %54, align 1
  %308 = load i8, i8* %54, align 1
  %309 = zext i8 %308 to i32
  %310 = add nsw i32 %295, %309
  store i32 %310, i32* %50, align 4
  %311 = load i8*, i8** %12, align 8
  %312 = getelementptr inbounds i8, i8* %311, i64 2
  store i8* %312, i8** %12, align 8
  %313 = load i32, i32* %50, align 4
  store i32 %313, i32* %55, align 4
  %314 = load i32, i32* %55, align 4
  store i32 %314, i32* %16, align 4
  %315 = load i8*, i8** %12, align 8
  %316 = getelementptr inbounds i8, i8* %315, i64 0
  %317 = load i8, i8* %316, align 1
  %318 = zext i8 %317 to i32
  %319 = sub nsw i32 %318, 48
  %320 = trunc i32 %319 to i8
  store i8 %320, i8* %57, align 1
  %321 = load i8, i8* %57, align 1
  %322 = zext i8 %321 to i32
  %323 = icmp sgt i32 %322, 9
  br i1 %323, label %324, label %325

324:                                              ; preds = %306
  br label %457

325:                                              ; preds = %306
  %326 = load i8, i8* %57, align 1
  store i8 %326, i8* %58, align 1
  %327 = load i8, i8* %58, align 1
  %328 = zext i8 %327 to i32
  %329 = mul nsw i32 %328, 10
  %330 = load i8*, i8** %12, align 8
  %331 = getelementptr inbounds i8, i8* %330, i64 1
  %332 = load i8, i8* %331, align 1
  %333 = zext i8 %332 to i32
  %334 = sub nsw i32 %333, 48
  %335 = trunc i32 %334 to i8
  store i8 %335, i8* %59, align 1
  %336 = load i8, i8* %59, align 1
  %337 = zext i8 %336 to i32
  %338 = icmp sgt i32 %337, 9
  br i1 %338, label %339, label %340

339:                                              ; preds = %325
  br label %457

340:                                              ; preds = %325
  %341 = load i8, i8* %59, align 1
  store i8 %341, i8* %60, align 1
  %342 = load i8, i8* %60, align 1
  %343 = zext i8 %342 to i32
  %344 = add nsw i32 %329, %343
  store i32 %344, i32* %56, align 4
  %345 = load i8*, i8** %12, align 8
  %346 = getelementptr inbounds i8, i8* %345, i64 2
  store i8* %346, i8** %12, align 8
  %347 = load i32, i32* %56, align 4
  store i32 %347, i32* %61, align 4
  %348 = load i32, i32* %61, align 4
  store i32 %348, i32* %17, align 4
  %349 = load i8*, i8** %12, align 8
  %350 = getelementptr inbounds i8, i8* %349, i64 0
  %351 = load i8, i8* %350, align 1
  %352 = zext i8 %351 to i32
  %353 = sub nsw i32 %352, 48
  %354 = trunc i32 %353 to i8
  store i8 %354, i8* %63, align 1
  %355 = load i8, i8* %63, align 1
  %356 = zext i8 %355 to i32
  %357 = icmp sgt i32 %356, 9
  br i1 %357, label %358, label %359

358:                                              ; preds = %340
  br label %457

359:                                              ; preds = %340
  %360 = load i8, i8* %63, align 1
  store i8 %360, i8* %64, align 1
  %361 = load i8, i8* %64, align 1
  %362 = zext i8 %361 to i32
  %363 = mul nsw i32 %362, 10
  %364 = load i8*, i8** %12, align 8
  %365 = getelementptr inbounds i8, i8* %364, i64 1
  %366 = load i8, i8* %365, align 1
  %367 = zext i8 %366 to i32
  %368 = sub nsw i32 %367, 48
  %369 = trunc i32 %368 to i8
  store i8 %369, i8* %65, align 1
  %370 = load i8, i8* %65, align 1
  %371 = zext i8 %370 to i32
  %372 = icmp sgt i32 %371, 9
  br i1 %372, label %373, label %374

373:                                              ; preds = %359
  br label %457

374:                                              ; preds = %359
  %375 = load i8, i8* %65, align 1
  store i8 %375, i8* %66, align 1
  %376 = load i8, i8* %66, align 1
  %377 = zext i8 %376 to i32
  %378 = add nsw i32 %363, %377
  store i32 %378, i32* %62, align 4
  %379 = load i8*, i8** %12, align 8
  %380 = getelementptr inbounds i8, i8* %379, i64 2
  store i8* %380, i8** %12, align 8
  %381 = load i32, i32* %62, align 4
  store i32 %381, i32* %67, align 4
  %382 = load i32, i32* %67, align 4
  store i32 %382, i32* %18, align 4
  %383 = load i8*, i8** %12, align 8
  %384 = load i8, i8* %383, align 1
  %385 = zext i8 %384 to i32
  %386 = icmp ne i32 %385, 90
  br i1 %386, label %387, label %388

387:                                              ; preds = %374
  br label %449

388:                                              ; preds = %374
  %389 = load i32, i32* %13, align 4
  %390 = icmp ult i32 %389, 1970
  br i1 %390, label %397, label %391

391:                                              ; preds = %388
  %392 = load i32, i32* %14, align 4
  %393 = icmp ult i32 %392, 1
  br i1 %393, label %397, label %394

394:                                              ; preds = %391
  %395 = load i32, i32* %14, align 4
  %396 = icmp ugt i32 %395, 12
  br i1 %396, label %397, label %398

397:                                              ; preds = %394, %391, %388
  br label %457

398:                                              ; preds = %394
  %399 = load i32, i32* %14, align 4
  %400 = sub i32 %399, 1
  %401 = zext i32 %400 to i64
  %402 = getelementptr inbounds [12 x i8], [12 x i8]* @x509_decode_time.month_lengths, i64 0, i64 %401
  %403 = load i8, i8* %402, align 1
  %404 = zext i8 %403 to i32
  store i32 %404, i32* %19, align 4
  %405 = load i32, i32* %14, align 4
  %406 = icmp eq i32 %405, 2
  br i1 %406, label %407, label %423

407:                                              ; preds = %398
  %408 = load i32, i32* %13, align 4
  %409 = urem i32 %408, 4
  %410 = icmp eq i32 %409, 0
  br i1 %410, label %411, label %422

411:                                              ; preds = %407
  store i32 29, i32* %19, align 4
  %412 = load i32, i32* %13, align 4
  %413 = urem i32 %412, 100
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %415, label %421

415:                                              ; preds = %411
  store i32 28, i32* %19, align 4
  %416 = load i32, i32* %13, align 4
  %417 = urem i32 %416, 400
  %418 = icmp eq i32 %417, 0
  br i1 %418, label %419, label %420

419:                                              ; preds = %415
  store i32 29, i32* %19, align 4
  br label %420

420:                                              ; preds = %419, %415
  br label %421

421:                                              ; preds = %420, %411
  br label %422

422:                                              ; preds = %421, %407
  br label %423

423:                                              ; preds = %422, %398
  %424 = load i32, i32* %15, align 4
  %425 = icmp ult i32 %424, 1
  br i1 %425, label %439, label %426

426:                                              ; preds = %423
  %427 = load i32, i32* %15, align 4
  %428 = load i32, i32* %19, align 4
  %429 = icmp ugt i32 %427, %428
  br i1 %429, label %439, label %430

430:                                              ; preds = %426
  %431 = load i32, i32* %16, align 4
  %432 = icmp ugt i32 %431, 24
  br i1 %432, label %439, label %433

433:                                              ; preds = %430
  %434 = load i32, i32* %17, align 4
  %435 = icmp ugt i32 %434, 59
  br i1 %435, label %439, label %436

436:                                              ; preds = %433
  %437 = load i32, i32* %18, align 4
  %438 = icmp ugt i32 %437, 60
  br i1 %438, label %439, label %440

439:                                              ; preds = %436, %433, %430, %426, %423
  br label %457

440:                                              ; preds = %436
  %441 = load i32, i32* %13, align 4
  %442 = load i32, i32* %14, align 4
  %443 = load i32, i32* %15, align 4
  %444 = load i32, i32* %16, align 4
  %445 = load i32, i32* %17, align 4
  %446 = load i32, i32* %18, align 4
  %447 = call i32 @mktime64(i32 %441, i32 %442, i32 %443, i32 %444, i32 %445, i32 %446)
  %448 = load i32*, i32** %7, align 8
  store i32 %447, i32* %448, align 4
  store i32 0, i32* %6, align 4
  br label %465

449:                                              ; preds = %387, %210, %131, %77
  %450 = load i8, i8* %9, align 1
  %451 = load i64, i64* %11, align 8
  %452 = trunc i64 %451 to i32
  %453 = load i8*, i8** %10, align 8
  %454 = call i32 @pr_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8 zeroext %450, i32 %452, i8* %453)
  %455 = load i32, i32* @EBADMSG, align 4
  %456 = sub nsw i32 0, %455
  store i32 %456, i32* %6, align 4
  br label %465

457:                                              ; preds = %439, %397, %373, %358, %339, %324, %305, %290, %271, %256, %237, %222, %208, %192, %177, %157, %142, %103, %88
  %458 = load i8, i8* %9, align 1
  %459 = load i64, i64* %11, align 8
  %460 = trunc i64 %459 to i32
  %461 = load i8*, i8** %10, align 8
  %462 = call i32 @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %458, i32 %460, i8* %461)
  %463 = load i32, i32* @EBADMSG, align 4
  %464 = sub nsw i32 0, %463
  store i32 %464, i32* %6, align 4
  br label %465

465:                                              ; preds = %457, %449, %440
  %466 = load i32, i32* %6, align 4
  ret i32 %466
}

declare dso_local i32 @mktime64(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i8 zeroext, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
