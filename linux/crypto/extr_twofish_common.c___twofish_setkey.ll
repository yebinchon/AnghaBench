; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_twofish_common.c___twofish_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_twofish_common.c___twofish_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twofish_ctx = type { i32 }

@CRYPTO_TFM_RES_BAD_KEY_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@calc_sb_tbl = common dso_local global i32* null, align 8
@w = common dso_local global i32 0, align 4
@q0 = common dso_local global i32* null, align 8
@q1 = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__twofish_setkey(%struct.twofish_ctx* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.twofish_ctx*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
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
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store %struct.twofish_ctx* %0, %struct.twofish_ctx** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  store i32 0, i32* %27, align 4
  store i32 0, i32* %28, align 4
  store i32 0, i32* %29, align 4
  store i32 0, i32* %30, align 4
  %32 = load i32, i32* %8, align 4
  %33 = urem i32 %32, 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %4
  %36 = load i32, i32* @CRYPTO_TFM_RES_BAD_KEY_LEN, align 4
  %37 = load i32*, i32** %9, align 8
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %36
  store i32 %39, i32* %37, align 4
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %496

42:                                               ; preds = %4
  %43 = load i32, i32* %15, align 4
  %44 = load i32, i32* %16, align 4
  %45 = load i32, i32* %17, align 4
  %46 = load i32, i32* %18, align 4
  %47 = call i32 @CALC_S(i32 %43, i32 %44, i32 %45, i32 %46, i32 0, i32 0, i32 45, i32 1, i32 45)
  %48 = load i32, i32* %15, align 4
  %49 = load i32, i32* %16, align 4
  %50 = load i32, i32* %17, align 4
  %51 = load i32, i32* %18, align 4
  %52 = call i32 @CALC_S(i32 %48, i32 %49, i32 %50, i32 %51, i32 1, i32 45, i32 164, i32 68, i32 138)
  %53 = load i32, i32* %15, align 4
  %54 = load i32, i32* %16, align 4
  %55 = load i32, i32* %17, align 4
  %56 = load i32, i32* %18, align 4
  %57 = call i32 @CALC_S(i32 %53, i32 %54, i32 %55, i32 %56, i32 2, i32 138, i32 213, i32 191, i32 209)
  %58 = load i32, i32* %15, align 4
  %59 = load i32, i32* %16, align 4
  %60 = load i32, i32* %17, align 4
  %61 = load i32, i32* %18, align 4
  %62 = call i32 @CALC_S(i32 %58, i32 %59, i32 %60, i32 %61, i32 3, i32 209, i32 127, i32 61, i32 153)
  %63 = load i32, i32* %15, align 4
  %64 = load i32, i32* %16, align 4
  %65 = load i32, i32* %17, align 4
  %66 = load i32, i32* %18, align 4
  %67 = call i32 @CALC_S(i32 %63, i32 %64, i32 %65, i32 %66, i32 4, i32 153, i32 70, i32 102, i32 150)
  %68 = load i32, i32* %15, align 4
  %69 = load i32, i32* %16, align 4
  %70 = load i32, i32* %17, align 4
  %71 = load i32, i32* %18, align 4
  %72 = call i32 @CALC_S(i32 %68, i32 %69, i32 %70, i32 %71, i32 5, i32 150, i32 60, i32 91, i32 237)
  %73 = load i32, i32* %15, align 4
  %74 = load i32, i32* %16, align 4
  %75 = load i32, i32* %17, align 4
  %76 = load i32, i32* %18, align 4
  %77 = call i32 @CALC_S(i32 %73, i32 %74, i32 %75, i32 %76, i32 6, i32 237, i32 55, i32 79, i32 224)
  %78 = load i32, i32* %15, align 4
  %79 = load i32, i32* %16, align 4
  %80 = load i32, i32* %17, align 4
  %81 = load i32, i32* %18, align 4
  %82 = call i32 @CALC_S(i32 %78, i32 %79, i32 %80, i32 %81, i32 7, i32 224, i32 208, i32 140, i32 23)
  %83 = load i32, i32* %19, align 4
  %84 = load i32, i32* %20, align 4
  %85 = load i32, i32* %21, align 4
  %86 = load i32, i32* %22, align 4
  %87 = call i32 @CALC_S(i32 %83, i32 %84, i32 %85, i32 %86, i32 8, i32 0, i32 45, i32 1, i32 45)
  %88 = load i32, i32* %19, align 4
  %89 = load i32, i32* %20, align 4
  %90 = load i32, i32* %21, align 4
  %91 = load i32, i32* %22, align 4
  %92 = call i32 @CALC_S(i32 %88, i32 %89, i32 %90, i32 %91, i32 9, i32 45, i32 164, i32 68, i32 138)
  %93 = load i32, i32* %19, align 4
  %94 = load i32, i32* %20, align 4
  %95 = load i32, i32* %21, align 4
  %96 = load i32, i32* %22, align 4
  %97 = call i32 @CALC_S(i32 %93, i32 %94, i32 %95, i32 %96, i32 10, i32 138, i32 213, i32 191, i32 209)
  %98 = load i32, i32* %19, align 4
  %99 = load i32, i32* %20, align 4
  %100 = load i32, i32* %21, align 4
  %101 = load i32, i32* %22, align 4
  %102 = call i32 @CALC_S(i32 %98, i32 %99, i32 %100, i32 %101, i32 11, i32 209, i32 127, i32 61, i32 153)
  %103 = load i32, i32* %19, align 4
  %104 = load i32, i32* %20, align 4
  %105 = load i32, i32* %21, align 4
  %106 = load i32, i32* %22, align 4
  %107 = call i32 @CALC_S(i32 %103, i32 %104, i32 %105, i32 %106, i32 12, i32 153, i32 70, i32 102, i32 150)
  %108 = load i32, i32* %19, align 4
  %109 = load i32, i32* %20, align 4
  %110 = load i32, i32* %21, align 4
  %111 = load i32, i32* %22, align 4
  %112 = call i32 @CALC_S(i32 %108, i32 %109, i32 %110, i32 %111, i32 13, i32 150, i32 60, i32 91, i32 237)
  %113 = load i32, i32* %19, align 4
  %114 = load i32, i32* %20, align 4
  %115 = load i32, i32* %21, align 4
  %116 = load i32, i32* %22, align 4
  %117 = call i32 @CALC_S(i32 %113, i32 %114, i32 %115, i32 %116, i32 14, i32 237, i32 55, i32 79, i32 224)
  %118 = load i32, i32* %19, align 4
  %119 = load i32, i32* %20, align 4
  %120 = load i32, i32* %21, align 4
  %121 = load i32, i32* %22, align 4
  %122 = call i32 @CALC_S(i32 %118, i32 %119, i32 %120, i32 %121, i32 15, i32 224, i32 208, i32 140, i32 23)
  %123 = load i32, i32* %8, align 4
  %124 = icmp eq i32 %123, 24
  br i1 %124, label %128, label %125

125:                                              ; preds = %42
  %126 = load i32, i32* %8, align 4
  %127 = icmp eq i32 %126, 32
  br i1 %127, label %128, label %169

128:                                              ; preds = %125, %42
  %129 = load i32, i32* %23, align 4
  %130 = load i32, i32* %24, align 4
  %131 = load i32, i32* %25, align 4
  %132 = load i32, i32* %26, align 4
  %133 = call i32 @CALC_S(i32 %129, i32 %130, i32 %131, i32 %132, i32 16, i32 0, i32 45, i32 1, i32 45)
  %134 = load i32, i32* %23, align 4
  %135 = load i32, i32* %24, align 4
  %136 = load i32, i32* %25, align 4
  %137 = load i32, i32* %26, align 4
  %138 = call i32 @CALC_S(i32 %134, i32 %135, i32 %136, i32 %137, i32 17, i32 45, i32 164, i32 68, i32 138)
  %139 = load i32, i32* %23, align 4
  %140 = load i32, i32* %24, align 4
  %141 = load i32, i32* %25, align 4
  %142 = load i32, i32* %26, align 4
  %143 = call i32 @CALC_S(i32 %139, i32 %140, i32 %141, i32 %142, i32 18, i32 138, i32 213, i32 191, i32 209)
  %144 = load i32, i32* %23, align 4
  %145 = load i32, i32* %24, align 4
  %146 = load i32, i32* %25, align 4
  %147 = load i32, i32* %26, align 4
  %148 = call i32 @CALC_S(i32 %144, i32 %145, i32 %146, i32 %147, i32 19, i32 209, i32 127, i32 61, i32 153)
  %149 = load i32, i32* %23, align 4
  %150 = load i32, i32* %24, align 4
  %151 = load i32, i32* %25, align 4
  %152 = load i32, i32* %26, align 4
  %153 = call i32 @CALC_S(i32 %149, i32 %150, i32 %151, i32 %152, i32 20, i32 153, i32 70, i32 102, i32 150)
  %154 = load i32, i32* %23, align 4
  %155 = load i32, i32* %24, align 4
  %156 = load i32, i32* %25, align 4
  %157 = load i32, i32* %26, align 4
  %158 = call i32 @CALC_S(i32 %154, i32 %155, i32 %156, i32 %157, i32 21, i32 150, i32 60, i32 91, i32 237)
  %159 = load i32, i32* %23, align 4
  %160 = load i32, i32* %24, align 4
  %161 = load i32, i32* %25, align 4
  %162 = load i32, i32* %26, align 4
  %163 = call i32 @CALC_S(i32 %159, i32 %160, i32 %161, i32 %162, i32 22, i32 237, i32 55, i32 79, i32 224)
  %164 = load i32, i32* %23, align 4
  %165 = load i32, i32* %24, align 4
  %166 = load i32, i32* %25, align 4
  %167 = load i32, i32* %26, align 4
  %168 = call i32 @CALC_S(i32 %164, i32 %165, i32 %166, i32 %167, i32 23, i32 224, i32 208, i32 140, i32 23)
  br label %169

169:                                              ; preds = %128, %125
  %170 = load i32, i32* %8, align 4
  %171 = icmp eq i32 %170, 32
  br i1 %171, label %172, label %305

172:                                              ; preds = %169
  %173 = load i32, i32* %27, align 4
  %174 = load i32, i32* %28, align 4
  %175 = load i32, i32* %29, align 4
  %176 = load i32, i32* %30, align 4
  %177 = call i32 @CALC_S(i32 %173, i32 %174, i32 %175, i32 %176, i32 24, i32 0, i32 45, i32 1, i32 45)
  %178 = load i32, i32* %27, align 4
  %179 = load i32, i32* %28, align 4
  %180 = load i32, i32* %29, align 4
  %181 = load i32, i32* %30, align 4
  %182 = call i32 @CALC_S(i32 %178, i32 %179, i32 %180, i32 %181, i32 25, i32 45, i32 164, i32 68, i32 138)
  %183 = load i32, i32* %27, align 4
  %184 = load i32, i32* %28, align 4
  %185 = load i32, i32* %29, align 4
  %186 = load i32, i32* %30, align 4
  %187 = call i32 @CALC_S(i32 %183, i32 %184, i32 %185, i32 %186, i32 26, i32 138, i32 213, i32 191, i32 209)
  %188 = load i32, i32* %27, align 4
  %189 = load i32, i32* %28, align 4
  %190 = load i32, i32* %29, align 4
  %191 = load i32, i32* %30, align 4
  %192 = call i32 @CALC_S(i32 %188, i32 %189, i32 %190, i32 %191, i32 27, i32 209, i32 127, i32 61, i32 153)
  %193 = load i32, i32* %27, align 4
  %194 = load i32, i32* %28, align 4
  %195 = load i32, i32* %29, align 4
  %196 = load i32, i32* %30, align 4
  %197 = call i32 @CALC_S(i32 %193, i32 %194, i32 %195, i32 %196, i32 28, i32 153, i32 70, i32 102, i32 150)
  %198 = load i32, i32* %27, align 4
  %199 = load i32, i32* %28, align 4
  %200 = load i32, i32* %29, align 4
  %201 = load i32, i32* %30, align 4
  %202 = call i32 @CALC_S(i32 %198, i32 %199, i32 %200, i32 %201, i32 29, i32 150, i32 60, i32 91, i32 237)
  %203 = load i32, i32* %27, align 4
  %204 = load i32, i32* %28, align 4
  %205 = load i32, i32* %29, align 4
  %206 = load i32, i32* %30, align 4
  %207 = call i32 @CALC_S(i32 %203, i32 %204, i32 %205, i32 %206, i32 30, i32 237, i32 55, i32 79, i32 224)
  %208 = load i32, i32* %27, align 4
  %209 = load i32, i32* %28, align 4
  %210 = load i32, i32* %29, align 4
  %211 = load i32, i32* %30, align 4
  %212 = call i32 @CALC_S(i32 %208, i32 %209, i32 %210, i32 %211, i32 31, i32 224, i32 208, i32 140, i32 23)
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  store i32 1, i32* %12, align 4
  br label %213

213:                                              ; preds = %229, %172
  %214 = load i32, i32* %10, align 4
  %215 = icmp slt i32 %214, 256
  br i1 %215, label %216, label %236

216:                                              ; preds = %213
  %217 = load i32, i32* %10, align 4
  %218 = load i32*, i32** @calc_sb_tbl, align 8
  %219 = load i32, i32* %11, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %218, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = load i32*, i32** @calc_sb_tbl, align 8
  %224 = load i32, i32* %12, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %223, i64 %225
  %227 = load i32, i32* %226, align 4
  %228 = call i32 @CALC_SB256_2(i32 %217, i32 %222, i32 %227)
  br label %229

229:                                              ; preds = %216
  %230 = load i32, i32* %10, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %10, align 4
  %232 = load i32, i32* %11, align 4
  %233 = add nsw i32 %232, 2
  store i32 %233, i32* %11, align 4
  %234 = load i32, i32* %12, align 4
  %235 = add nsw i32 %234, 2
  store i32 %235, i32* %12, align 4
  br label %213

236:                                              ; preds = %213
  store i32 0, i32* %10, align 4
  br label %237

237:                                              ; preds = %266, %236
  %238 = load i32, i32* %10, align 4
  %239 = icmp slt i32 %238, 8
  br i1 %239, label %240, label %269

240:                                              ; preds = %237
  %241 = load i32, i32* @w, align 4
  %242 = load i32, i32* %10, align 4
  %243 = load i32*, i32** @q0, align 8
  %244 = load i32, i32* %10, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %243, i64 %245
  %247 = load i32, i32* %246, align 4
  %248 = load i32*, i32** @q1, align 8
  %249 = load i32, i32* %10, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %248, i64 %250
  %252 = load i32, i32* %251, align 4
  %253 = load i32*, i32** @q0, align 8
  %254 = load i32, i32* %10, align 4
  %255 = add nsw i32 %254, 1
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %253, i64 %256
  %258 = load i32, i32* %257, align 4
  %259 = load i32*, i32** @q1, align 8
  %260 = load i32, i32* %10, align 4
  %261 = add nsw i32 %260, 1
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %259, i64 %262
  %264 = load i32, i32* %263, align 4
  %265 = call i32 @CALC_K256(i32 %241, i32 %242, i32 %247, i32 %252, i32 %258, i32 %264)
  br label %266

266:                                              ; preds = %240
  %267 = load i32, i32* %10, align 4
  %268 = add nsw i32 %267, 2
  store i32 %268, i32* %10, align 4
  br label %237

269:                                              ; preds = %237
  store i32 0, i32* %10, align 4
  br label %270

270:                                              ; preds = %301, %269
  %271 = load i32, i32* %10, align 4
  %272 = icmp slt i32 %271, 32
  br i1 %272, label %273, label %304

273:                                              ; preds = %270
  %274 = load i32, i32* %12, align 4
  %275 = load i32, i32* %10, align 4
  %276 = load i32*, i32** @q0, align 8
  %277 = load i32, i32* %10, align 4
  %278 = add nsw i32 %277, 8
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32, i32* %276, i64 %279
  %281 = load i32, i32* %280, align 4
  %282 = load i32*, i32** @q1, align 8
  %283 = load i32, i32* %10, align 4
  %284 = add nsw i32 %283, 8
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i32, i32* %282, i64 %285
  %287 = load i32, i32* %286, align 4
  %288 = load i32*, i32** @q0, align 8
  %289 = load i32, i32* %10, align 4
  %290 = add nsw i32 %289, 9
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i32, i32* %288, i64 %291
  %293 = load i32, i32* %292, align 4
  %294 = load i32*, i32** @q1, align 8
  %295 = load i32, i32* %10, align 4
  %296 = add nsw i32 %295, 9
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i32, i32* %294, i64 %297
  %299 = load i32, i32* %298, align 4
  %300 = call i32 @CALC_K256(i32 %274, i32 %275, i32 %281, i32 %287, i32 %293, i32 %299)
  br label %301

301:                                              ; preds = %273
  %302 = load i32, i32* %10, align 4
  %303 = add nsw i32 %302, 2
  store i32 %303, i32* %10, align 4
  br label %270

304:                                              ; preds = %270
  br label %495

305:                                              ; preds = %169
  %306 = load i32, i32* %8, align 4
  %307 = icmp eq i32 %306, 24
  br i1 %307, label %308, label %401

308:                                              ; preds = %305
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  store i32 1, i32* %12, align 4
  br label %309

309:                                              ; preds = %325, %308
  %310 = load i32, i32* %10, align 4
  %311 = icmp slt i32 %310, 256
  br i1 %311, label %312, label %332

312:                                              ; preds = %309
  %313 = load i32, i32* %10, align 4
  %314 = load i32*, i32** @calc_sb_tbl, align 8
  %315 = load i32, i32* %11, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i32, i32* %314, i64 %316
  %318 = load i32, i32* %317, align 4
  %319 = load i32*, i32** @calc_sb_tbl, align 8
  %320 = load i32, i32* %12, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i32, i32* %319, i64 %321
  %323 = load i32, i32* %322, align 4
  %324 = call i32 @CALC_SB192_2(i32 %313, i32 %318, i32 %323)
  br label %325

325:                                              ; preds = %312
  %326 = load i32, i32* %10, align 4
  %327 = add nsw i32 %326, 1
  store i32 %327, i32* %10, align 4
  %328 = load i32, i32* %11, align 4
  %329 = add nsw i32 %328, 2
  store i32 %329, i32* %11, align 4
  %330 = load i32, i32* %12, align 4
  %331 = add nsw i32 %330, 2
  store i32 %331, i32* %12, align 4
  br label %309

332:                                              ; preds = %309
  store i32 0, i32* %10, align 4
  br label %333

333:                                              ; preds = %362, %332
  %334 = load i32, i32* %10, align 4
  %335 = icmp slt i32 %334, 8
  br i1 %335, label %336, label %365

336:                                              ; preds = %333
  %337 = load i32, i32* @w, align 4
  %338 = load i32, i32* %10, align 4
  %339 = load i32*, i32** @q0, align 8
  %340 = load i32, i32* %10, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i32, i32* %339, i64 %341
  %343 = load i32, i32* %342, align 4
  %344 = load i32*, i32** @q1, align 8
  %345 = load i32, i32* %10, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds i32, i32* %344, i64 %346
  %348 = load i32, i32* %347, align 4
  %349 = load i32*, i32** @q0, align 8
  %350 = load i32, i32* %10, align 4
  %351 = add nsw i32 %350, 1
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds i32, i32* %349, i64 %352
  %354 = load i32, i32* %353, align 4
  %355 = load i32*, i32** @q1, align 8
  %356 = load i32, i32* %10, align 4
  %357 = add nsw i32 %356, 1
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds i32, i32* %355, i64 %358
  %360 = load i32, i32* %359, align 4
  %361 = call i32 @CALC_K192(i32 %337, i32 %338, i32 %343, i32 %348, i32 %354, i32 %360)
  br label %362

362:                                              ; preds = %336
  %363 = load i32, i32* %10, align 4
  %364 = add nsw i32 %363, 2
  store i32 %364, i32* %10, align 4
  br label %333

365:                                              ; preds = %333
  store i32 0, i32* %10, align 4
  br label %366

366:                                              ; preds = %397, %365
  %367 = load i32, i32* %10, align 4
  %368 = icmp slt i32 %367, 32
  br i1 %368, label %369, label %400

369:                                              ; preds = %366
  %370 = load i32, i32* %12, align 4
  %371 = load i32, i32* %10, align 4
  %372 = load i32*, i32** @q0, align 8
  %373 = load i32, i32* %10, align 4
  %374 = add nsw i32 %373, 8
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds i32, i32* %372, i64 %375
  %377 = load i32, i32* %376, align 4
  %378 = load i32*, i32** @q1, align 8
  %379 = load i32, i32* %10, align 4
  %380 = add nsw i32 %379, 8
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds i32, i32* %378, i64 %381
  %383 = load i32, i32* %382, align 4
  %384 = load i32*, i32** @q0, align 8
  %385 = load i32, i32* %10, align 4
  %386 = add nsw i32 %385, 9
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds i32, i32* %384, i64 %387
  %389 = load i32, i32* %388, align 4
  %390 = load i32*, i32** @q1, align 8
  %391 = load i32, i32* %10, align 4
  %392 = add nsw i32 %391, 9
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds i32, i32* %390, i64 %393
  %395 = load i32, i32* %394, align 4
  %396 = call i32 @CALC_K192(i32 %370, i32 %371, i32 %377, i32 %383, i32 %389, i32 %395)
  br label %397

397:                                              ; preds = %369
  %398 = load i32, i32* %10, align 4
  %399 = add nsw i32 %398, 2
  store i32 %399, i32* %10, align 4
  br label %366

400:                                              ; preds = %366
  br label %494

401:                                              ; preds = %305
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  store i32 1, i32* %12, align 4
  br label %402

402:                                              ; preds = %418, %401
  %403 = load i32, i32* %10, align 4
  %404 = icmp slt i32 %403, 256
  br i1 %404, label %405, label %425

405:                                              ; preds = %402
  %406 = load i32, i32* %10, align 4
  %407 = load i32*, i32** @calc_sb_tbl, align 8
  %408 = load i32, i32* %11, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds i32, i32* %407, i64 %409
  %411 = load i32, i32* %410, align 4
  %412 = load i32*, i32** @calc_sb_tbl, align 8
  %413 = load i32, i32* %12, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds i32, i32* %412, i64 %414
  %416 = load i32, i32* %415, align 4
  %417 = call i32 @CALC_SB_2(i32 %406, i32 %411, i32 %416)
  br label %418

418:                                              ; preds = %405
  %419 = load i32, i32* %10, align 4
  %420 = add nsw i32 %419, 1
  store i32 %420, i32* %10, align 4
  %421 = load i32, i32* %11, align 4
  %422 = add nsw i32 %421, 2
  store i32 %422, i32* %11, align 4
  %423 = load i32, i32* %12, align 4
  %424 = add nsw i32 %423, 2
  store i32 %424, i32* %12, align 4
  br label %402

425:                                              ; preds = %402
  store i32 0, i32* %10, align 4
  br label %426

426:                                              ; preds = %455, %425
  %427 = load i32, i32* %10, align 4
  %428 = icmp slt i32 %427, 8
  br i1 %428, label %429, label %458

429:                                              ; preds = %426
  %430 = load i32, i32* @w, align 4
  %431 = load i32, i32* %10, align 4
  %432 = load i32*, i32** @q0, align 8
  %433 = load i32, i32* %10, align 4
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds i32, i32* %432, i64 %434
  %436 = load i32, i32* %435, align 4
  %437 = load i32*, i32** @q1, align 8
  %438 = load i32, i32* %10, align 4
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds i32, i32* %437, i64 %439
  %441 = load i32, i32* %440, align 4
  %442 = load i32*, i32** @q0, align 8
  %443 = load i32, i32* %10, align 4
  %444 = add nsw i32 %443, 1
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds i32, i32* %442, i64 %445
  %447 = load i32, i32* %446, align 4
  %448 = load i32*, i32** @q1, align 8
  %449 = load i32, i32* %10, align 4
  %450 = add nsw i32 %449, 1
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds i32, i32* %448, i64 %451
  %453 = load i32, i32* %452, align 4
  %454 = call i32 @CALC_K(i32 %430, i32 %431, i32 %436, i32 %441, i32 %447, i32 %453)
  br label %455

455:                                              ; preds = %429
  %456 = load i32, i32* %10, align 4
  %457 = add nsw i32 %456, 2
  store i32 %457, i32* %10, align 4
  br label %426

458:                                              ; preds = %426
  store i32 0, i32* %10, align 4
  br label %459

459:                                              ; preds = %490, %458
  %460 = load i32, i32* %10, align 4
  %461 = icmp slt i32 %460, 32
  br i1 %461, label %462, label %493

462:                                              ; preds = %459
  %463 = load i32, i32* %12, align 4
  %464 = load i32, i32* %10, align 4
  %465 = load i32*, i32** @q0, align 8
  %466 = load i32, i32* %10, align 4
  %467 = add nsw i32 %466, 8
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds i32, i32* %465, i64 %468
  %470 = load i32, i32* %469, align 4
  %471 = load i32*, i32** @q1, align 8
  %472 = load i32, i32* %10, align 4
  %473 = add nsw i32 %472, 8
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds i32, i32* %471, i64 %474
  %476 = load i32, i32* %475, align 4
  %477 = load i32*, i32** @q0, align 8
  %478 = load i32, i32* %10, align 4
  %479 = add nsw i32 %478, 9
  %480 = sext i32 %479 to i64
  %481 = getelementptr inbounds i32, i32* %477, i64 %480
  %482 = load i32, i32* %481, align 4
  %483 = load i32*, i32** @q1, align 8
  %484 = load i32, i32* %10, align 4
  %485 = add nsw i32 %484, 9
  %486 = sext i32 %485 to i64
  %487 = getelementptr inbounds i32, i32* %483, i64 %486
  %488 = load i32, i32* %487, align 4
  %489 = call i32 @CALC_K(i32 %463, i32 %464, i32 %470, i32 %476, i32 %482, i32 %488)
  br label %490

490:                                              ; preds = %462
  %491 = load i32, i32* %10, align 4
  %492 = add nsw i32 %491, 2
  store i32 %492, i32* %10, align 4
  br label %459

493:                                              ; preds = %459
  br label %494

494:                                              ; preds = %493, %400
  br label %495

495:                                              ; preds = %494, %304
  store i32 0, i32* %5, align 4
  br label %496

496:                                              ; preds = %495, %35
  %497 = load i32, i32* %5, align 4
  ret i32 %497
}

declare dso_local i32 @CALC_S(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @CALC_SB256_2(i32, i32, i32) #1

declare dso_local i32 @CALC_K256(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @CALC_SB192_2(i32, i32, i32) #1

declare dso_local i32 @CALC_K192(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @CALC_SB_2(i32, i32, i32) #1

declare dso_local i32 @CALC_K(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
