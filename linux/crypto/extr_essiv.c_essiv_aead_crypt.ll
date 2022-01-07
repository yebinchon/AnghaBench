; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_essiv.c_essiv_aead_crypt.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_essiv.c_essiv_aead_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32, i32*, i32, %struct.scatterlist*, %struct.scatterlist* }
%struct.scatterlist = type { i32 }
%struct.crypto_aead = type { i32 }
%struct.essiv_tfm_ctx = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.essiv_aead_request_ctx = type { i32*, %struct.scatterlist*, %struct.aead_request }

@EINVAL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@essiv_aead_done = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*, i32)* @essiv_aead_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @essiv_aead_crypt(%struct.aead_request* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.aead_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.crypto_aead*, align 8
  %7 = alloca %struct.essiv_tfm_ctx*, align 8
  %8 = alloca %struct.essiv_aead_request_ctx*, align 8
  %9 = alloca %struct.aead_request*, align 8
  %10 = alloca %struct.scatterlist*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.scatterlist*, align 8
  %16 = alloca i32, align 4
  store %struct.aead_request* %0, %struct.aead_request** %4, align 8
  store i32 %1, i32* %5, align 4
  %17 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %18 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %17)
  store %struct.crypto_aead* %18, %struct.crypto_aead** %6, align 8
  %19 = load %struct.crypto_aead*, %struct.crypto_aead** %6, align 8
  %20 = call %struct.essiv_tfm_ctx* @crypto_aead_ctx(%struct.crypto_aead* %19)
  store %struct.essiv_tfm_ctx* %20, %struct.essiv_tfm_ctx** %7, align 8
  %21 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %22 = call %struct.essiv_aead_request_ctx* @aead_request_ctx(%struct.aead_request* %21)
  store %struct.essiv_aead_request_ctx* %22, %struct.essiv_aead_request_ctx** %8, align 8
  %23 = load %struct.essiv_aead_request_ctx*, %struct.essiv_aead_request_ctx** %8, align 8
  %24 = getelementptr inbounds %struct.essiv_aead_request_ctx, %struct.essiv_aead_request_ctx* %23, i32 0, i32 2
  store %struct.aead_request* %24, %struct.aead_request** %9, align 8
  %25 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %26 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %25, i32 0, i32 4
  %27 = load %struct.scatterlist*, %struct.scatterlist** %26, align 8
  store %struct.scatterlist* %27, %struct.scatterlist** %10, align 8
  %28 = load %struct.essiv_tfm_ctx*, %struct.essiv_tfm_ctx** %7, align 8
  %29 = getelementptr inbounds %struct.essiv_tfm_ctx, %struct.essiv_tfm_ctx* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %32 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %35 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @crypto_cipher_encrypt_one(i32 %30, i32* %33, i32* %36)
  %38 = load %struct.essiv_aead_request_ctx*, %struct.essiv_aead_request_ctx** %8, align 8
  %39 = getelementptr inbounds %struct.essiv_aead_request_ctx, %struct.essiv_aead_request_ctx* %38, i32 0, i32 0
  store i32* null, i32** %39, align 8
  %40 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %41 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %40, i32 0, i32 4
  %42 = load %struct.scatterlist*, %struct.scatterlist** %41, align 8
  %43 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %44 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %43, i32 0, i32 3
  %45 = load %struct.scatterlist*, %struct.scatterlist** %44, align 8
  %46 = icmp eq %struct.scatterlist* %42, %45
  br i1 %46, label %50, label %47

47:                                               ; preds = %2
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %66, label %50

50:                                               ; preds = %47, %2
  %51 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %52 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %55 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %54, i32 0, i32 3
  %56 = load %struct.scatterlist*, %struct.scatterlist** %55, align 8
  %57 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %58 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.crypto_aead*, %struct.crypto_aead** %6, align 8
  %61 = call i32 @crypto_aead_ivsize(%struct.crypto_aead* %60)
  %62 = sub nsw i32 %59, %61
  %63 = load %struct.crypto_aead*, %struct.crypto_aead** %6, align 8
  %64 = call i32 @crypto_aead_ivsize(%struct.crypto_aead* %63)
  %65 = call i32 @scatterwalk_map_and_copy(i32* %53, %struct.scatterlist* %56, i32 %62, i32 %64, i32 1)
  br label %194

66:                                               ; preds = %47
  %67 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %68 = call %struct.essiv_aead_request_ctx* @aead_request_ctx(%struct.aead_request* %67)
  %69 = bitcast %struct.essiv_aead_request_ctx* %68 to i32*
  %70 = load %struct.essiv_tfm_ctx*, %struct.essiv_tfm_ctx** %7, align 8
  %71 = getelementptr inbounds %struct.essiv_tfm_ctx, %struct.essiv_tfm_ctx* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %69, i64 %73
  store i32* %74, i32** %12, align 8
  %75 = load %struct.crypto_aead*, %struct.crypto_aead** %6, align 8
  %76 = call i32 @crypto_aead_ivsize(%struct.crypto_aead* %75)
  store i32 %76, i32* %13, align 4
  %77 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %78 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %13, align 4
  %81 = sub nsw i32 %79, %80
  store i32 %81, i32* %14, align 4
  %82 = load i32, i32* %14, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %66
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %3, align 4
  br label %250

87:                                               ; preds = %66
  %88 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %89 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %88, i32 0, i32 4
  %90 = load %struct.scatterlist*, %struct.scatterlist** %89, align 8
  %91 = load i32, i32* %14, align 4
  %92 = call i32 @sg_nents_for_len(%struct.scatterlist* %90, i32 %91)
  store i32 %92, i32* %16, align 4
  %93 = load i32, i32* %16, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %87
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %3, align 4
  br label %250

98:                                               ; preds = %87
  %99 = load i32*, i32** %12, align 8
  %100 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %101 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %13, align 4
  %104 = call i32 @memcpy(i32* %99, i32* %102, i32 %103)
  %105 = load %struct.essiv_aead_request_ctx*, %struct.essiv_aead_request_ctx** %8, align 8
  %106 = getelementptr inbounds %struct.essiv_aead_request_ctx, %struct.essiv_aead_request_ctx* %105, i32 0, i32 1
  %107 = load %struct.scatterlist*, %struct.scatterlist** %106, align 8
  %108 = call i32 @sg_init_table(%struct.scatterlist* %107, i32 4)
  %109 = load i32, i32* %16, align 4
  %110 = icmp sgt i32 %109, 1
  %111 = zext i1 %110 to i32
  %112 = call i64 @unlikely(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %144

114:                                              ; preds = %98
  %115 = load i32, i32* %14, align 4
  %116 = load i32, i32* @GFP_ATOMIC, align 4
  %117 = call i32* @kmalloc(i32 %115, i32 %116)
  %118 = load %struct.essiv_aead_request_ctx*, %struct.essiv_aead_request_ctx** %8, align 8
  %119 = getelementptr inbounds %struct.essiv_aead_request_ctx, %struct.essiv_aead_request_ctx* %118, i32 0, i32 0
  store i32* %117, i32** %119, align 8
  %120 = load %struct.essiv_aead_request_ctx*, %struct.essiv_aead_request_ctx** %8, align 8
  %121 = getelementptr inbounds %struct.essiv_aead_request_ctx, %struct.essiv_aead_request_ctx* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %127, label %124

124:                                              ; preds = %114
  %125 = load i32, i32* @ENOMEM, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %3, align 4
  br label %250

127:                                              ; preds = %114
  %128 = load %struct.essiv_aead_request_ctx*, %struct.essiv_aead_request_ctx** %8, align 8
  %129 = getelementptr inbounds %struct.essiv_aead_request_ctx, %struct.essiv_aead_request_ctx* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %132 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %131, i32 0, i32 4
  %133 = load %struct.scatterlist*, %struct.scatterlist** %132, align 8
  %134 = load i32, i32* %14, align 4
  %135 = call i32 @scatterwalk_map_and_copy(i32* %130, %struct.scatterlist* %133, i32 0, i32 %134, i32 0)
  %136 = load %struct.essiv_aead_request_ctx*, %struct.essiv_aead_request_ctx** %8, align 8
  %137 = getelementptr inbounds %struct.essiv_aead_request_ctx, %struct.essiv_aead_request_ctx* %136, i32 0, i32 1
  %138 = load %struct.scatterlist*, %struct.scatterlist** %137, align 8
  %139 = load %struct.essiv_aead_request_ctx*, %struct.essiv_aead_request_ctx** %8, align 8
  %140 = getelementptr inbounds %struct.essiv_aead_request_ctx, %struct.essiv_aead_request_ctx* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %14, align 4
  %143 = call i32 @sg_set_buf(%struct.scatterlist* %138, i32* %141, i32 %142)
  br label %159

144:                                              ; preds = %98
  %145 = load %struct.essiv_aead_request_ctx*, %struct.essiv_aead_request_ctx** %8, align 8
  %146 = getelementptr inbounds %struct.essiv_aead_request_ctx, %struct.essiv_aead_request_ctx* %145, i32 0, i32 1
  %147 = load %struct.scatterlist*, %struct.scatterlist** %146, align 8
  %148 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %149 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %148, i32 0, i32 4
  %150 = load %struct.scatterlist*, %struct.scatterlist** %149, align 8
  %151 = call i32 @sg_page(%struct.scatterlist* %150)
  %152 = load i32, i32* %14, align 4
  %153 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %154 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %153, i32 0, i32 4
  %155 = load %struct.scatterlist*, %struct.scatterlist** %154, align 8
  %156 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @sg_set_page(%struct.scatterlist* %147, i32 %151, i32 %152, i32 %157)
  br label %159

159:                                              ; preds = %144, %127
  %160 = load %struct.essiv_aead_request_ctx*, %struct.essiv_aead_request_ctx** %8, align 8
  %161 = getelementptr inbounds %struct.essiv_aead_request_ctx, %struct.essiv_aead_request_ctx* %160, i32 0, i32 1
  %162 = load %struct.scatterlist*, %struct.scatterlist** %161, align 8
  %163 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %162, i64 1
  %164 = load i32*, i32** %12, align 8
  %165 = load i32, i32* %13, align 4
  %166 = call i32 @sg_set_buf(%struct.scatterlist* %163, i32* %164, i32 %165)
  %167 = load %struct.essiv_aead_request_ctx*, %struct.essiv_aead_request_ctx** %8, align 8
  %168 = getelementptr inbounds %struct.essiv_aead_request_ctx, %struct.essiv_aead_request_ctx* %167, i32 0, i32 1
  %169 = load %struct.scatterlist*, %struct.scatterlist** %168, align 8
  %170 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %169, i64 2
  %171 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %172 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %171, i32 0, i32 4
  %173 = load %struct.scatterlist*, %struct.scatterlist** %172, align 8
  %174 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %175 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = call %struct.scatterlist* @scatterwalk_ffwd(%struct.scatterlist* %170, %struct.scatterlist* %173, i32 %176)
  store %struct.scatterlist* %177, %struct.scatterlist** %15, align 8
  %178 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %179 = load %struct.essiv_aead_request_ctx*, %struct.essiv_aead_request_ctx** %8, align 8
  %180 = getelementptr inbounds %struct.essiv_aead_request_ctx, %struct.essiv_aead_request_ctx* %179, i32 0, i32 1
  %181 = load %struct.scatterlist*, %struct.scatterlist** %180, align 8
  %182 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %181, i64 2
  %183 = icmp ne %struct.scatterlist* %178, %182
  br i1 %183, label %184, label %190

184:                                              ; preds = %159
  %185 = load %struct.essiv_aead_request_ctx*, %struct.essiv_aead_request_ctx** %8, align 8
  %186 = getelementptr inbounds %struct.essiv_aead_request_ctx, %struct.essiv_aead_request_ctx* %185, i32 0, i32 1
  %187 = load %struct.scatterlist*, %struct.scatterlist** %186, align 8
  %188 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %189 = call i32 @sg_chain(%struct.scatterlist* %187, i32 3, %struct.scatterlist* %188)
  br label %190

190:                                              ; preds = %184, %159
  %191 = load %struct.essiv_aead_request_ctx*, %struct.essiv_aead_request_ctx** %8, align 8
  %192 = getelementptr inbounds %struct.essiv_aead_request_ctx, %struct.essiv_aead_request_ctx* %191, i32 0, i32 1
  %193 = load %struct.scatterlist*, %struct.scatterlist** %192, align 8
  store %struct.scatterlist* %193, %struct.scatterlist** %10, align 8
  br label %194

194:                                              ; preds = %190, %50
  %195 = load %struct.aead_request*, %struct.aead_request** %9, align 8
  %196 = load %struct.essiv_tfm_ctx*, %struct.essiv_tfm_ctx** %7, align 8
  %197 = getelementptr inbounds %struct.essiv_tfm_ctx, %struct.essiv_tfm_ctx* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @aead_request_set_tfm(%struct.aead_request* %195, i32 %199)
  %201 = load %struct.aead_request*, %struct.aead_request** %9, align 8
  %202 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %203 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = call i32 @aead_request_set_ad(%struct.aead_request* %201, i32 %204)
  %206 = load %struct.aead_request*, %struct.aead_request** %9, align 8
  %207 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %208 = call i32 @aead_request_flags(%struct.aead_request* %207)
  %209 = load i32, i32* @essiv_aead_done, align 4
  %210 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %211 = call i32 @aead_request_set_callback(%struct.aead_request* %206, i32 %208, i32 %209, %struct.aead_request* %210)
  %212 = load %struct.aead_request*, %struct.aead_request** %9, align 8
  %213 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %214 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %215 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %214, i32 0, i32 3
  %216 = load %struct.scatterlist*, %struct.scatterlist** %215, align 8
  %217 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %218 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %221 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %220, i32 0, i32 1
  %222 = load i32*, i32** %221, align 8
  %223 = call i32 @aead_request_set_crypt(%struct.aead_request* %212, %struct.scatterlist* %213, %struct.scatterlist* %216, i32 %219, i32* %222)
  %224 = load i32, i32* %5, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %229

226:                                              ; preds = %194
  %227 = load %struct.aead_request*, %struct.aead_request** %9, align 8
  %228 = call i32 @crypto_aead_encrypt(%struct.aead_request* %227)
  br label %232

229:                                              ; preds = %194
  %230 = load %struct.aead_request*, %struct.aead_request** %9, align 8
  %231 = call i32 @crypto_aead_decrypt(%struct.aead_request* %230)
  br label %232

232:                                              ; preds = %229, %226
  %233 = phi i32 [ %228, %226 ], [ %231, %229 ]
  store i32 %233, i32* %11, align 4
  %234 = load %struct.essiv_aead_request_ctx*, %struct.essiv_aead_request_ctx** %8, align 8
  %235 = getelementptr inbounds %struct.essiv_aead_request_ctx, %struct.essiv_aead_request_ctx* %234, i32 0, i32 0
  %236 = load i32*, i32** %235, align 8
  %237 = icmp ne i32* %236, null
  br i1 %237, label %238, label %248

238:                                              ; preds = %232
  %239 = load i32, i32* %11, align 4
  %240 = load i32, i32* @EINPROGRESS, align 4
  %241 = sub nsw i32 0, %240
  %242 = icmp ne i32 %239, %241
  br i1 %242, label %243, label %248

243:                                              ; preds = %238
  %244 = load %struct.essiv_aead_request_ctx*, %struct.essiv_aead_request_ctx** %8, align 8
  %245 = getelementptr inbounds %struct.essiv_aead_request_ctx, %struct.essiv_aead_request_ctx* %244, i32 0, i32 0
  %246 = load i32*, i32** %245, align 8
  %247 = call i32 @kfree(i32* %246)
  br label %248

248:                                              ; preds = %243, %238, %232
  %249 = load i32, i32* %11, align 4
  store i32 %249, i32* %3, align 4
  br label %250

250:                                              ; preds = %248, %124, %95, %84
  %251 = load i32, i32* %3, align 4
  ret i32 %251
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.essiv_tfm_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local %struct.essiv_aead_request_ctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local i32 @crypto_cipher_encrypt_one(i32, i32*, i32*) #1

declare dso_local i32 @scatterwalk_map_and_copy(i32*, %struct.scatterlist*, i32, i32, i32) #1

declare dso_local i32 @crypto_aead_ivsize(%struct.crypto_aead*) #1

declare dso_local i32 @sg_nents_for_len(%struct.scatterlist*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @sg_set_buf(%struct.scatterlist*, i32*, i32) #1

declare dso_local i32 @sg_set_page(%struct.scatterlist*, i32, i32, i32) #1

declare dso_local i32 @sg_page(%struct.scatterlist*) #1

declare dso_local %struct.scatterlist* @scatterwalk_ffwd(%struct.scatterlist*, %struct.scatterlist*, i32) #1

declare dso_local i32 @sg_chain(%struct.scatterlist*, i32, %struct.scatterlist*) #1

declare dso_local i32 @aead_request_set_tfm(%struct.aead_request*, i32) #1

declare dso_local i32 @aead_request_set_ad(%struct.aead_request*, i32) #1

declare dso_local i32 @aead_request_set_callback(%struct.aead_request*, i32, i32, %struct.aead_request*) #1

declare dso_local i32 @aead_request_flags(%struct.aead_request*) #1

declare dso_local i32 @aead_request_set_crypt(%struct.aead_request*, %struct.scatterlist*, %struct.scatterlist*, i32, i32*) #1

declare dso_local i32 @crypto_aead_encrypt(%struct.aead_request*) #1

declare dso_local i32 @crypto_aead_decrypt(%struct.aead_request*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
