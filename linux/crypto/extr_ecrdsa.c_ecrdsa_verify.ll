; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_ecrdsa.c_ecrdsa_verify.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_ecrdsa.c_ecrdsa_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.akcipher_request = type { i32, i32, i32 }
%struct.crypto_akcipher = type { i32 }
%struct.ecrdsa_ctx = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.ecc_point = type { i32* }

@ECRDSA_MAX_SIG_SIZE = common dso_local global i32 0, align 4
@STREEBOG512_DIGEST_SIZE = common dso_local global i32 0, align 4
@ECRDSA_MAX_DIGITS = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@EKEYREJECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.akcipher_request*)* @ecrdsa_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecrdsa_verify(%struct.akcipher_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.akcipher_request*, align 8
  %4 = alloca %struct.crypto_akcipher*, align 8
  %5 = alloca %struct.ecrdsa_ctx*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.ecc_point, align 8
  %18 = alloca i32, align 4
  store %struct.akcipher_request* %0, %struct.akcipher_request** %3, align 8
  %19 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %20 = call %struct.crypto_akcipher* @crypto_akcipher_reqtfm(%struct.akcipher_request* %19)
  store %struct.crypto_akcipher* %20, %struct.crypto_akcipher** %4, align 8
  %21 = load %struct.crypto_akcipher*, %struct.crypto_akcipher** %4, align 8
  %22 = call %struct.ecrdsa_ctx* @akcipher_tfm_ctx(%struct.crypto_akcipher* %21)
  store %struct.ecrdsa_ctx* %22, %struct.ecrdsa_ctx** %5, align 8
  %23 = load i32, i32* @ECRDSA_MAX_SIG_SIZE, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %6, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %7, align 8
  %27 = load i32, i32* @STREEBOG512_DIGEST_SIZE, align 4
  %28 = zext i32 %27 to i64
  %29 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %8, align 8
  %30 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %31 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = udiv i64 %33, 4
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* @ECRDSA_MAX_DIGITS, align 4
  %37 = zext i32 %36 to i64
  %38 = alloca i32, i64 %37, align 16
  store i64 %37, i64* %10, align 8
  %39 = load i32, i32* @ECRDSA_MAX_DIGITS, align 4
  %40 = zext i32 %39 to i64
  %41 = alloca i32, i64 %40, align 16
  store i64 %40, i64* %11, align 8
  %42 = load i32, i32* @ECRDSA_MAX_DIGITS, align 4
  %43 = zext i32 %42 to i64
  %44 = alloca i32, i64 %43, align 16
  store i64 %43, i64* %12, align 8
  %45 = load i32, i32* @ECRDSA_MAX_DIGITS, align 4
  %46 = zext i32 %45 to i64
  %47 = alloca i32, i64 %46, align 16
  store i64 %46, i64* %13, align 8
  store i32* %47, i32** %14, align 8
  %48 = load i32, i32* @ECRDSA_MAX_DIGITS, align 4
  %49 = zext i32 %48 to i64
  %50 = alloca i32, i64 %49, align 16
  store i64 %49, i64* %15, align 8
  store i32* %41, i32** %16, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i32* @ECC_POINT_INIT(i32* %44, i32* %47, i32 %51)
  %53 = getelementptr inbounds %struct.ecc_point, %struct.ecc_point* %17, i32 0, i32 0
  store i32* %52, i32** %53, align 8
  %54 = load %struct.ecrdsa_ctx*, %struct.ecrdsa_ctx** %5, align 8
  %55 = getelementptr inbounds %struct.ecrdsa_ctx, %struct.ecrdsa_ctx* %54, i32 0, i32 1
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = icmp ne %struct.TYPE_6__* %56, null
  br i1 %57, label %58, label %135

58:                                               ; preds = %1
  %59 = load %struct.ecrdsa_ctx*, %struct.ecrdsa_ctx** %5, align 8
  %60 = getelementptr inbounds %struct.ecrdsa_ctx, %struct.ecrdsa_ctx* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %135

63:                                               ; preds = %58
  %64 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %65 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %135

68:                                               ; preds = %63
  %69 = load %struct.ecrdsa_ctx*, %struct.ecrdsa_ctx** %5, align 8
  %70 = getelementptr inbounds %struct.ecrdsa_ctx, %struct.ecrdsa_ctx* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %135

74:                                               ; preds = %68
  %75 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %76 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.ecrdsa_ctx*, %struct.ecrdsa_ctx** %5, align 8
  %79 = getelementptr inbounds %struct.ecrdsa_ctx, %struct.ecrdsa_ctx* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %77, %80
  br i1 %81, label %135, label %82

82:                                               ; preds = %74
  %83 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %84 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = load %struct.ecrdsa_ctx*, %struct.ecrdsa_ctx** %5, align 8
  %88 = getelementptr inbounds %struct.ecrdsa_ctx, %struct.ecrdsa_ctx* %87, i32 0, i32 1
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = sext i32 %92 to i64
  %94 = mul i64 %93, 4
  %95 = icmp ne i64 %86, %94
  br i1 %95, label %135, label %96

96:                                               ; preds = %82
  %97 = load %struct.ecrdsa_ctx*, %struct.ecrdsa_ctx** %5, align 8
  %98 = getelementptr inbounds %struct.ecrdsa_ctx, %struct.ecrdsa_ctx* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.ecrdsa_ctx*, %struct.ecrdsa_ctx** %5, align 8
  %102 = getelementptr inbounds %struct.ecrdsa_ctx, %struct.ecrdsa_ctx* %101, i32 0, i32 1
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %100, %106
  br i1 %107, label %135, label %108

108:                                              ; preds = %96
  %109 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %110 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = mul nsw i32 %111, 2
  %113 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %114 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %112, %115
  br i1 %116, label %135, label %117

117:                                              ; preds = %108
  %118 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %119 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = sext i32 %120 to i64
  %122 = icmp ugt i64 %121, %24
  %123 = zext i1 %122 to i32
  %124 = call i64 @WARN_ON(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %135, label %126

126:                                              ; preds = %117
  %127 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %128 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = sext i32 %129 to i64
  %131 = icmp ugt i64 %130, %28
  %132 = zext i1 %131 to i32
  %133 = call i64 @WARN_ON(i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %126, %117, %108, %96, %82, %74, %68, %63, %58, %1
  %136 = load i32, i32* @EBADMSG, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %2, align 4
  store i32 1, i32* %18, align 4
  br label %311

138:                                              ; preds = %126
  %139 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %140 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %143 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %146 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @sg_nents_for_len(i32 %144, i32 %147)
  %149 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %150 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @sg_copy_to_buffer(i32 %141, i32 %148, i8* %26, i32 %151)
  %153 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %154 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %157 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %160 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %163 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = add nsw i32 %161, %164
  %166 = call i32 @sg_nents_for_len(i32 %158, i32 %165)
  %167 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %168 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %171 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @sg_pcopy_to_buffer(i32 %155, i32 %166, i8* %29, i32 %169, i32 %172)
  %174 = load i32, i32* %9, align 4
  %175 = call i32 @vli_from_be64(i32* %44, i8* %26, i32 %174)
  %176 = load i32, i32* %9, align 4
  %177 = zext i32 %176 to i64
  %178 = mul i64 %177, 4
  %179 = getelementptr inbounds i8, i8* %26, i64 %178
  %180 = load i32, i32* %9, align 4
  %181 = call i32 @vli_from_be64(i32* %38, i8* %179, i32 %180)
  %182 = load i32, i32* %9, align 4
  %183 = call i64 @vli_is_zero(i32* %38, i32 %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %207, label %185

185:                                              ; preds = %138
  %186 = load %struct.ecrdsa_ctx*, %struct.ecrdsa_ctx** %5, align 8
  %187 = getelementptr inbounds %struct.ecrdsa_ctx, %struct.ecrdsa_ctx* %186, i32 0, i32 1
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 0
  %190 = load i32*, i32** %189, align 8
  %191 = load i32, i32* %9, align 4
  %192 = call i32 @vli_cmp(i32* %38, i32* %190, i32 %191)
  %193 = icmp eq i32 %192, 1
  br i1 %193, label %207, label %194

194:                                              ; preds = %185
  %195 = load i32, i32* %9, align 4
  %196 = call i64 @vli_is_zero(i32* %44, i32 %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %207, label %198

198:                                              ; preds = %194
  %199 = load %struct.ecrdsa_ctx*, %struct.ecrdsa_ctx** %5, align 8
  %200 = getelementptr inbounds %struct.ecrdsa_ctx, %struct.ecrdsa_ctx* %199, i32 0, i32 1
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 0
  %203 = load i32*, i32** %202, align 8
  %204 = load i32, i32* %9, align 4
  %205 = call i32 @vli_cmp(i32* %44, i32* %203, i32 %204)
  %206 = icmp eq i32 %205, 1
  br i1 %206, label %207, label %210

207:                                              ; preds = %198, %194, %185, %138
  %208 = load i32, i32* @EKEYREJECTED, align 4
  %209 = sub nsw i32 0, %208
  store i32 %209, i32* %2, align 4
  store i32 1, i32* %18, align 4
  br label %311

210:                                              ; preds = %198
  %211 = load i32, i32* %9, align 4
  %212 = call i32 @vli_from_le64(i32* %47, i8* %29, i32 %211)
  %213 = load %struct.ecrdsa_ctx*, %struct.ecrdsa_ctx** %5, align 8
  %214 = getelementptr inbounds %struct.ecrdsa_ctx, %struct.ecrdsa_ctx* %213, i32 0, i32 1
  %215 = load %struct.TYPE_6__*, %struct.TYPE_6__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 0
  %217 = load i32*, i32** %216, align 8
  %218 = load i32, i32* %9, align 4
  %219 = call i32 @vli_cmp(i32* %47, i32* %217, i32 %218)
  %220 = icmp eq i32 %219, 1
  br i1 %220, label %221, label %229

221:                                              ; preds = %210
  %222 = load %struct.ecrdsa_ctx*, %struct.ecrdsa_ctx** %5, align 8
  %223 = getelementptr inbounds %struct.ecrdsa_ctx, %struct.ecrdsa_ctx* %222, i32 0, i32 1
  %224 = load %struct.TYPE_6__*, %struct.TYPE_6__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 0
  %226 = load i32*, i32** %225, align 8
  %227 = load i32, i32* %9, align 4
  %228 = call i32 @vli_sub(i32* %47, i32* %47, i32* %226, i32 %227)
  br label %229

229:                                              ; preds = %221, %210
  %230 = load i32, i32* %9, align 4
  %231 = call i64 @vli_is_zero(i32* %47, i32 %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %235

233:                                              ; preds = %229
  %234 = getelementptr inbounds i32, i32* %47, i64 0
  store i32 1, i32* %234, align 16
  br label %235

235:                                              ; preds = %233, %229
  %236 = load i32*, i32** %14, align 8
  %237 = load %struct.ecrdsa_ctx*, %struct.ecrdsa_ctx** %5, align 8
  %238 = getelementptr inbounds %struct.ecrdsa_ctx, %struct.ecrdsa_ctx* %237, i32 0, i32 1
  %239 = load %struct.TYPE_6__*, %struct.TYPE_6__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %239, i32 0, i32 0
  %241 = load i32*, i32** %240, align 8
  %242 = load i32, i32* %9, align 4
  %243 = call i32 @vli_mod_inv(i32* %236, i32* %47, i32* %241, i32 %242)
  %244 = load i32*, i32** %14, align 8
  %245 = load %struct.ecrdsa_ctx*, %struct.ecrdsa_ctx** %5, align 8
  %246 = getelementptr inbounds %struct.ecrdsa_ctx, %struct.ecrdsa_ctx* %245, i32 0, i32 1
  %247 = load %struct.TYPE_6__*, %struct.TYPE_6__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %247, i32 0, i32 0
  %249 = load i32*, i32** %248, align 8
  %250 = load i32, i32* %9, align 4
  %251 = call i32 @vli_mod_mult_slow(i32* %50, i32* %44, i32* %244, i32* %249, i32 %250)
  %252 = load %struct.ecrdsa_ctx*, %struct.ecrdsa_ctx** %5, align 8
  %253 = getelementptr inbounds %struct.ecrdsa_ctx, %struct.ecrdsa_ctx* %252, i32 0, i32 1
  %254 = load %struct.TYPE_6__*, %struct.TYPE_6__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %254, i32 0, i32 0
  %256 = load i32*, i32** %255, align 8
  %257 = load i32, i32* %9, align 4
  %258 = call i32 @vli_sub(i32* %41, i32* %256, i32* %38, i32 %257)
  %259 = load i32*, i32** %16, align 8
  %260 = load i32*, i32** %14, align 8
  %261 = load %struct.ecrdsa_ctx*, %struct.ecrdsa_ctx** %5, align 8
  %262 = getelementptr inbounds %struct.ecrdsa_ctx, %struct.ecrdsa_ctx* %261, i32 0, i32 1
  %263 = load %struct.TYPE_6__*, %struct.TYPE_6__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %263, i32 0, i32 0
  %265 = load i32*, i32** %264, align 8
  %266 = load i32, i32* %9, align 4
  %267 = call i32 @vli_mod_mult_slow(i32* %259, i32* %41, i32* %260, i32* %265, i32 %266)
  %268 = load %struct.ecrdsa_ctx*, %struct.ecrdsa_ctx** %5, align 8
  %269 = getelementptr inbounds %struct.ecrdsa_ctx, %struct.ecrdsa_ctx* %268, i32 0, i32 1
  %270 = load %struct.TYPE_6__*, %struct.TYPE_6__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %270, i32 0, i32 1
  %272 = load i32*, i32** %16, align 8
  %273 = load %struct.ecrdsa_ctx*, %struct.ecrdsa_ctx** %5, align 8
  %274 = getelementptr inbounds %struct.ecrdsa_ctx, %struct.ecrdsa_ctx* %273, i32 0, i32 2
  %275 = load %struct.ecrdsa_ctx*, %struct.ecrdsa_ctx** %5, align 8
  %276 = getelementptr inbounds %struct.ecrdsa_ctx, %struct.ecrdsa_ctx* %275, i32 0, i32 1
  %277 = load %struct.TYPE_6__*, %struct.TYPE_6__** %276, align 8
  %278 = call i32 @ecc_point_mult_shamir(%struct.ecc_point* %17, i32* %50, %struct.TYPE_4__* %271, i32* %272, %struct.TYPE_5__* %274, %struct.TYPE_6__* %277)
  %279 = getelementptr inbounds %struct.ecc_point, %struct.ecc_point* %17, i32 0, i32 0
  %280 = load i32*, i32** %279, align 8
  %281 = load %struct.ecrdsa_ctx*, %struct.ecrdsa_ctx** %5, align 8
  %282 = getelementptr inbounds %struct.ecrdsa_ctx, %struct.ecrdsa_ctx* %281, i32 0, i32 1
  %283 = load %struct.TYPE_6__*, %struct.TYPE_6__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %283, i32 0, i32 0
  %285 = load i32*, i32** %284, align 8
  %286 = load i32, i32* %9, align 4
  %287 = call i32 @vli_cmp(i32* %280, i32* %285, i32 %286)
  %288 = icmp eq i32 %287, 1
  br i1 %288, label %289, label %301

289:                                              ; preds = %235
  %290 = getelementptr inbounds %struct.ecc_point, %struct.ecc_point* %17, i32 0, i32 0
  %291 = load i32*, i32** %290, align 8
  %292 = getelementptr inbounds %struct.ecc_point, %struct.ecc_point* %17, i32 0, i32 0
  %293 = load i32*, i32** %292, align 8
  %294 = load %struct.ecrdsa_ctx*, %struct.ecrdsa_ctx** %5, align 8
  %295 = getelementptr inbounds %struct.ecrdsa_ctx, %struct.ecrdsa_ctx* %294, i32 0, i32 1
  %296 = load %struct.TYPE_6__*, %struct.TYPE_6__** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %296, i32 0, i32 0
  %298 = load i32*, i32** %297, align 8
  %299 = load i32, i32* %9, align 4
  %300 = call i32 @vli_sub(i32* %291, i32* %293, i32* %298, i32 %299)
  br label %301

301:                                              ; preds = %289, %235
  %302 = getelementptr inbounds %struct.ecc_point, %struct.ecc_point* %17, i32 0, i32 0
  %303 = load i32*, i32** %302, align 8
  %304 = load i32, i32* %9, align 4
  %305 = call i32 @vli_cmp(i32* %303, i32* %38, i32 %304)
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %308, label %307

307:                                              ; preds = %301
  store i32 0, i32* %2, align 4
  store i32 1, i32* %18, align 4
  br label %311

308:                                              ; preds = %301
  %309 = load i32, i32* @EKEYREJECTED, align 4
  %310 = sub nsw i32 0, %309
  store i32 %310, i32* %2, align 4
  store i32 1, i32* %18, align 4
  br label %311

311:                                              ; preds = %308, %307, %207, %135
  %312 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %312)
  %313 = load i32, i32* %2, align 4
  ret i32 %313
}

declare dso_local %struct.crypto_akcipher* @crypto_akcipher_reqtfm(%struct.akcipher_request*) #1

declare dso_local %struct.ecrdsa_ctx* @akcipher_tfm_ctx(%struct.crypto_akcipher*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32* @ECC_POINT_INIT(i32*, i32*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @sg_copy_to_buffer(i32, i32, i8*, i32) #1

declare dso_local i32 @sg_nents_for_len(i32, i32) #1

declare dso_local i32 @sg_pcopy_to_buffer(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @vli_from_be64(i32*, i8*, i32) #1

declare dso_local i64 @vli_is_zero(i32*, i32) #1

declare dso_local i32 @vli_cmp(i32*, i32*, i32) #1

declare dso_local i32 @vli_from_le64(i32*, i8*, i32) #1

declare dso_local i32 @vli_sub(i32*, i32*, i32*, i32) #1

declare dso_local i32 @vli_mod_inv(i32*, i32*, i32*, i32) #1

declare dso_local i32 @vli_mod_mult_slow(i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @ecc_point_mult_shamir(%struct.ecc_point*, i32*, %struct.TYPE_4__*, i32*, %struct.TYPE_5__*, %struct.TYPE_6__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
