; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/crypto/extr_ghash-ce-glue.c_gcm_decrypt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/crypto/extr_ghash-ce-glue.c_gcm_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i64, i64, i32, i32* }
%struct.crypto_aead = type { i32 }
%struct.gcm_aes_ctx = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32* }
%struct.skcipher_walk = type { i32, i32, %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }

@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@GHASH_BLOCK_SIZE = common dso_local global i32 0, align 4
@GCM_IV_SIZE = common dso_local global i32 0, align 4
@pmull_ghash_update_p64 = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*)* @gcm_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gcm_decrypt(%struct.aead_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aead_request*, align 8
  %4 = alloca %struct.crypto_aead*, align 8
  %5 = alloca %struct.gcm_aes_ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.skcipher_walk, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca [2 x i32], align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.aead_request* %0, %struct.aead_request** %3, align 8
  %27 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %28 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %27)
  store %struct.crypto_aead* %28, %struct.crypto_aead** %4, align 8
  %29 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %30 = call %struct.gcm_aes_ctx* @crypto_aead_ctx(%struct.crypto_aead* %29)
  store %struct.gcm_aes_ctx* %30, %struct.gcm_aes_ctx** %5, align 8
  %31 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %32 = call i32 @crypto_aead_authsize(%struct.crypto_aead* %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %34 = mul nsw i32 2, %33
  %35 = zext i32 %34 to i64
  %36 = call i8* @llvm.stacksave()
  store i8* %36, i8** %8, align 8
  %37 = alloca i32, i64 %35, align 16
  store i64 %35, i64* %9, align 8
  %38 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %39 = zext i32 %38 to i64
  %40 = alloca i32, i64 %39, align 16
  store i64 %39, i64* %10, align 8
  %41 = load i32, i32* @GHASH_BLOCK_SIZE, align 4
  %42 = mul nsw i32 2, %41
  %43 = zext i32 %42 to i64
  %44 = alloca i32, i64 %43, align 16
  store i64 %43, i64* %11, align 8
  %45 = bitcast [2 x i32]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %45, i8 0, i64 8, i1 false)
  %46 = load %struct.gcm_aes_ctx*, %struct.gcm_aes_ctx** %5, align 8
  %47 = getelementptr inbounds %struct.gcm_aes_ctx, %struct.gcm_aes_ctx* %46, i32 0, i32 1
  %48 = call i32 @num_rounds(%struct.TYPE_11__* %47)
  store i32 %48, i32* %13, align 4
  %49 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %50 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %1
  %54 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %55 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %56 = call i32 @gcm_calculate_auth_mac(%struct.aead_request* %54, i32* %55)
  br label %57

57:                                               ; preds = %53, %1
  %58 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %59 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %58, i32 0, i32 3
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* @GCM_IV_SIZE, align 4
  %62 = call i32 @memcpy(i32* %37, i32* %60, i32 %61)
  %63 = load i32, i32* @GCM_IV_SIZE, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %37, i64 %64
  %66 = call i32 @put_unaligned_be32(i32 1, i32* %65)
  %67 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %68 = call i32 @skcipher_walk_aead_decrypt(%struct.skcipher_walk* %7, %struct.aead_request* %67, i32 0)
  store i32 %68, i32* %14, align 4
  %69 = call i64 (...) @crypto_simd_usable()
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %57
  %72 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %7, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %75 = mul nsw i32 2, %74
  %76 = icmp sge i32 %73, %75
  br label %77

77:                                               ; preds = %71, %57
  %78 = phi i1 [ false, %57 ], [ %76, %71 ]
  %79 = zext i1 %78 to i32
  %80 = call i64 @likely(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %176

82:                                               ; preds = %77
  store i32* null, i32** %15, align 8
  %83 = call i32 (...) @kernel_neon_begin()
  %84 = load %struct.gcm_aes_ctx*, %struct.gcm_aes_ctx** %5, align 8
  %85 = getelementptr inbounds %struct.gcm_aes_ctx, %struct.gcm_aes_ctx* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %13, align 4
  %89 = call i32 @pmull_gcm_encrypt_block(i32* %40, i32* %37, i32* %87, i32 %88)
  %90 = load i32, i32* @GCM_IV_SIZE, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %37, i64 %91
  %93 = call i32 @put_unaligned_be32(i32 2, i32* %92)
  br label %94

94:                                               ; preds = %169, %82
  %95 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %7, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %98 = mul nsw i32 2, %97
  %99 = sdiv i32 %96, %98
  %100 = mul nsw i32 %99, 2
  store i32 %100, i32* %16, align 4
  %101 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %7, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %16, align 4
  %104 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %105 = mul nsw i32 %103, %104
  %106 = sub nsw i32 %102, %105
  store i32 %106, i32* %17, align 4
  %107 = load i32*, i32** %15, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %109, label %111

109:                                              ; preds = %94
  %110 = call i32 (...) @kernel_neon_begin()
  br label %111

111:                                              ; preds = %109, %94
  %112 = load i32, i32* %16, align 4
  %113 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %114 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %7, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %7, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = load %struct.gcm_aes_ctx*, %struct.gcm_aes_ctx** %5, align 8
  %123 = getelementptr inbounds %struct.gcm_aes_ctx, %struct.gcm_aes_ctx* %122, i32 0, i32 0
  %124 = load i32*, i32** %15, align 8
  %125 = load i32, i32* %13, align 4
  %126 = call i32 @pmull_gcm_decrypt(i32 %112, i32* %113, i32* %117, i32* %121, i32* %123, i32* %37, i32* %124, i32 %125)
  %127 = load i32, i32* %17, align 4
  %128 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %129 = mul nsw i32 2, %128
  %130 = icmp slt i32 %127, %129
  br i1 %130, label %131, label %157

131:                                              ; preds = %111
  %132 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %37, i64 %133
  store i32* %134, i32** %18, align 8
  %135 = load i32, i32* %17, align 4
  %136 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %137 = icmp sgt i32 %135, %136
  br i1 %137, label %138, label %145

138:                                              ; preds = %131
  %139 = load i32*, i32** %18, align 8
  %140 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %141 = call i32 @memcpy(i32* %139, i32* %37, i32 %140)
  %142 = load i32*, i32** %18, align 8
  %143 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %144 = call i32 @crypto_inc(i32* %142, i32 %143)
  br label %145

145:                                              ; preds = %138, %131
  %146 = load i32, i32* %13, align 4
  %147 = call i32 @pmull_gcm_encrypt_block(i32* %37, i32* %37, i32* null, i32 %146)
  %148 = load i32, i32* %17, align 4
  %149 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %150 = icmp sgt i32 %148, %149
  br i1 %150, label %151, label %156

151:                                              ; preds = %145
  %152 = load i32*, i32** %18, align 8
  %153 = load i32*, i32** %18, align 8
  %154 = load i32, i32* %13, align 4
  %155 = call i32 @pmull_gcm_encrypt_block(i32* %152, i32* %153, i32* null, i32 %154)
  br label %156

156:                                              ; preds = %151, %145
  br label %157

157:                                              ; preds = %156, %111
  %158 = call i32 (...) @kernel_neon_end()
  %159 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %7, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %162 = mul nsw i32 2, %161
  %163 = srem i32 %160, %162
  %164 = call i32 @skcipher_walk_done(%struct.skcipher_walk* %7, i32 %163)
  store i32 %164, i32* %14, align 4
  %165 = load %struct.gcm_aes_ctx*, %struct.gcm_aes_ctx** %5, align 8
  %166 = getelementptr inbounds %struct.gcm_aes_ctx, %struct.gcm_aes_ctx* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  store i32* %168, i32** %15, align 8
  br label %169

169:                                              ; preds = %157
  %170 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %7, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %173 = mul nsw i32 2, %172
  %174 = icmp sge i32 %171, %173
  br i1 %174, label %94, label %175

175:                                              ; preds = %169
  br label %273

176:                                              ; preds = %77
  %177 = load %struct.gcm_aes_ctx*, %struct.gcm_aes_ctx** %5, align 8
  %178 = getelementptr inbounds %struct.gcm_aes_ctx, %struct.gcm_aes_ctx* %177, i32 0, i32 1
  %179 = call i32 @aes_encrypt(%struct.TYPE_11__* %178, i32* %40, i32* %37)
  %180 = load i32, i32* @GCM_IV_SIZE, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %37, i64 %181
  %183 = call i32 @put_unaligned_be32(i32 2, i32* %182)
  br label %184

184:                                              ; preds = %237, %176
  %185 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %7, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %188 = mul nsw i32 2, %187
  %189 = icmp sge i32 %186, %188
  br i1 %189, label %190, label %244

190:                                              ; preds = %184
  %191 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %7, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %194 = mul nsw i32 2, %193
  %195 = sdiv i32 %192, %194
  %196 = mul nsw i32 %195, 2
  store i32 %196, i32* %19, align 4
  %197 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %7, i32 0, i32 3
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 0
  %200 = load i32*, i32** %199, align 8
  store i32* %200, i32** %20, align 8
  %201 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %7, i32 0, i32 2
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 0
  %204 = load i32*, i32** %203, align 8
  store i32* %204, i32** %21, align 8
  %205 = load i32, i32* %19, align 4
  %206 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %207 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %7, i32 0, i32 2
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 0
  %210 = load i32*, i32** %209, align 8
  %211 = load %struct.gcm_aes_ctx*, %struct.gcm_aes_ctx** %5, align 8
  %212 = getelementptr inbounds %struct.gcm_aes_ctx, %struct.gcm_aes_ctx* %211, i32 0, i32 0
  %213 = load i32, i32* @pmull_ghash_update_p64, align 4
  %214 = call i32 @ghash_do_update(i32 %205, i32* %206, i32* %210, i32* %212, i32* null, i32 %213)
  br label %215

215:                                              ; preds = %233, %190
  %216 = load %struct.gcm_aes_ctx*, %struct.gcm_aes_ctx** %5, align 8
  %217 = getelementptr inbounds %struct.gcm_aes_ctx, %struct.gcm_aes_ctx* %216, i32 0, i32 1
  %218 = call i32 @aes_encrypt(%struct.TYPE_11__* %217, i32* %44, i32* %37)
  %219 = load i32*, i32** %20, align 8
  %220 = load i32*, i32** %21, align 8
  %221 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %222 = call i32 @crypto_xor_cpy(i32* %219, i32* %220, i32* %44, i32 %221)
  %223 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %224 = call i32 @crypto_inc(i32* %37, i32 %223)
  %225 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %226 = load i32*, i32** %20, align 8
  %227 = sext i32 %225 to i64
  %228 = getelementptr inbounds i32, i32* %226, i64 %227
  store i32* %228, i32** %20, align 8
  %229 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %230 = load i32*, i32** %21, align 8
  %231 = sext i32 %229 to i64
  %232 = getelementptr inbounds i32, i32* %230, i64 %231
  store i32* %232, i32** %21, align 8
  br label %233

233:                                              ; preds = %215
  %234 = load i32, i32* %19, align 4
  %235 = add nsw i32 %234, -1
  store i32 %235, i32* %19, align 4
  %236 = icmp sgt i32 %235, 0
  br i1 %236, label %215, label %237

237:                                              ; preds = %233
  %238 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %7, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %241 = mul nsw i32 2, %240
  %242 = srem i32 %239, %241
  %243 = call i32 @skcipher_walk_done(%struct.skcipher_walk* %7, i32 %242)
  store i32 %243, i32* %14, align 4
  br label %184

244:                                              ; preds = %184
  %245 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %7, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %272

248:                                              ; preds = %244
  %249 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %7, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %252 = icmp sgt i32 %250, %251
  br i1 %252, label %253, label %268

253:                                              ; preds = %248
  %254 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %37, i64 %255
  store i32* %256, i32** %22, align 8
  %257 = load i32*, i32** %22, align 8
  %258 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %259 = call i32 @memcpy(i32* %257, i32* %37, i32 %258)
  %260 = load i32*, i32** %22, align 8
  %261 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %262 = call i32 @crypto_inc(i32* %260, i32 %261)
  %263 = load %struct.gcm_aes_ctx*, %struct.gcm_aes_ctx** %5, align 8
  %264 = getelementptr inbounds %struct.gcm_aes_ctx, %struct.gcm_aes_ctx* %263, i32 0, i32 1
  %265 = load i32*, i32** %22, align 8
  %266 = load i32*, i32** %22, align 8
  %267 = call i32 @aes_encrypt(%struct.TYPE_11__* %264, i32* %265, i32* %266)
  br label %268

268:                                              ; preds = %253, %248
  %269 = load %struct.gcm_aes_ctx*, %struct.gcm_aes_ctx** %5, align 8
  %270 = getelementptr inbounds %struct.gcm_aes_ctx, %struct.gcm_aes_ctx* %269, i32 0, i32 1
  %271 = call i32 @aes_encrypt(%struct.TYPE_11__* %270, i32* %37, i32* %37)
  br label %272

272:                                              ; preds = %268, %244
  br label %273

273:                                              ; preds = %272, %175
  %274 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %7, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %331

277:                                              ; preds = %273
  %278 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %7, i32 0, i32 2
  %279 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %278, i32 0, i32 0
  %280 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %279, i32 0, i32 0
  %281 = load i32*, i32** %280, align 8
  store i32* %281, i32** %23, align 8
  store i32* null, i32** %24, align 8
  %282 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %7, i32 0, i32 1
  %283 = load i32, i32* %282, align 4
  store i32 %283, i32* %25, align 4
  %284 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %7, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = load i32, i32* @GHASH_BLOCK_SIZE, align 4
  %287 = icmp sgt i32 %285, %286
  br i1 %287, label %288, label %297

288:                                              ; preds = %277
  %289 = load i32*, i32** %23, align 8
  store i32* %289, i32** %24, align 8
  %290 = load i32, i32* @GHASH_BLOCK_SIZE, align 4
  %291 = load i32*, i32** %23, align 8
  %292 = sext i32 %290 to i64
  %293 = getelementptr inbounds i32, i32* %291, i64 %292
  store i32* %293, i32** %23, align 8
  %294 = load i32, i32* @GHASH_BLOCK_SIZE, align 4
  %295 = load i32, i32* %25, align 4
  %296 = urem i32 %295, %294
  store i32 %296, i32* %25, align 4
  br label %297

297:                                              ; preds = %288, %277
  %298 = load i32*, i32** %23, align 8
  %299 = load i32, i32* %25, align 4
  %300 = call i32 @memcpy(i32* %44, i32* %298, i32 %299)
  %301 = load i32, i32* %25, align 4
  %302 = zext i32 %301 to i64
  %303 = getelementptr inbounds i32, i32* %44, i64 %302
  %304 = load i32, i32* @GHASH_BLOCK_SIZE, align 4
  %305 = load i32, i32* %25, align 4
  %306 = sub i32 %304, %305
  %307 = call i32 @memset(i32* %303, i32 0, i32 %306)
  %308 = load i32, i32* %25, align 4
  %309 = icmp ne i32 %308, 0
  %310 = xor i1 %309, true
  %311 = xor i1 %310, true
  %312 = zext i1 %311 to i32
  %313 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %314 = load %struct.gcm_aes_ctx*, %struct.gcm_aes_ctx** %5, align 8
  %315 = getelementptr inbounds %struct.gcm_aes_ctx, %struct.gcm_aes_ctx* %314, i32 0, i32 0
  %316 = load i32*, i32** %24, align 8
  %317 = load i32, i32* @pmull_ghash_update_p64, align 4
  %318 = call i32 @ghash_do_update(i32 %312, i32* %313, i32* %44, i32* %315, i32* %316, i32 %317)
  %319 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %7, i32 0, i32 3
  %320 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %319, i32 0, i32 0
  %321 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %320, i32 0, i32 0
  %322 = load i32*, i32** %321, align 8
  %323 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %7, i32 0, i32 2
  %324 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %323, i32 0, i32 0
  %325 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %324, i32 0, i32 0
  %326 = load i32*, i32** %325, align 8
  %327 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %7, i32 0, i32 1
  %328 = load i32, i32* %327, align 4
  %329 = call i32 @crypto_xor_cpy(i32* %322, i32* %326, i32* %37, i32 %328)
  %330 = call i32 @skcipher_walk_done(%struct.skcipher_walk* %7, i32 0)
  store i32 %330, i32* %14, align 4
  br label %331

331:                                              ; preds = %297, %273
  %332 = load i32, i32* %14, align 4
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %336

334:                                              ; preds = %331
  %335 = load i32, i32* %14, align 4
  store i32 %335, i32* %2, align 4
  store i32 1, i32* %26, align 4
  br label %369

336:                                              ; preds = %331
  %337 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %338 = load %struct.gcm_aes_ctx*, %struct.gcm_aes_ctx** %5, align 8
  %339 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %340 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %341 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %340, i32 0, i32 0
  %342 = load i64, i64* %341, align 8
  %343 = load i32, i32* %6, align 4
  %344 = zext i32 %343 to i64
  %345 = sub nsw i64 %342, %344
  %346 = call i32 @gcm_final(%struct.aead_request* %337, %struct.gcm_aes_ctx* %338, i32* %339, i32* %40, i64 %345)
  %347 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %348 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %347, i32 0, i32 2
  %349 = load i32, i32* %348, align 8
  %350 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %351 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %350, i32 0, i32 1
  %352 = load i64, i64* %351, align 8
  %353 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %354 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %353, i32 0, i32 0
  %355 = load i64, i64* %354, align 8
  %356 = add nsw i64 %352, %355
  %357 = load i32, i32* %6, align 4
  %358 = zext i32 %357 to i64
  %359 = sub nsw i64 %356, %358
  %360 = load i32, i32* %6, align 4
  %361 = call i32 @scatterwalk_map_and_copy(i32* %44, i32 %349, i64 %359, i32 %360, i32 0)
  %362 = load i32, i32* %6, align 4
  %363 = call i64 @crypto_memneq(i32* %40, i32* %44, i32 %362)
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %365, label %368

365:                                              ; preds = %336
  %366 = load i32, i32* @EBADMSG, align 4
  %367 = sub nsw i32 0, %366
  store i32 %367, i32* %2, align 4
  store i32 1, i32* %26, align 4
  br label %369

368:                                              ; preds = %336
  store i32 0, i32* %2, align 4
  store i32 1, i32* %26, align 4
  br label %369

369:                                              ; preds = %368, %365, %334
  %370 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %370)
  %371 = load i32, i32* %2, align 4
  ret i32 %371
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.gcm_aes_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local i32 @crypto_aead_authsize(%struct.crypto_aead*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local i32 @num_rounds(%struct.TYPE_11__*) #1

declare dso_local i32 @gcm_calculate_auth_mac(%struct.aead_request*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @put_unaligned_be32(i32, i32*) #1

declare dso_local i32 @skcipher_walk_aead_decrypt(%struct.skcipher_walk*, %struct.aead_request*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @crypto_simd_usable(...) #1

declare dso_local i32 @kernel_neon_begin(...) #1

declare dso_local i32 @pmull_gcm_encrypt_block(i32*, i32*, i32*, i32) #1

declare dso_local i32 @pmull_gcm_decrypt(i32, i32*, i32*, i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @crypto_inc(i32*, i32) #1

declare dso_local i32 @kernel_neon_end(...) #1

declare dso_local i32 @skcipher_walk_done(%struct.skcipher_walk*, i32) #1

declare dso_local i32 @aes_encrypt(%struct.TYPE_11__*, i32*, i32*) #1

declare dso_local i32 @ghash_do_update(i32, i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @crypto_xor_cpy(i32*, i32*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @gcm_final(%struct.aead_request*, %struct.gcm_aes_ctx*, i32*, i32*, i64) #1

declare dso_local i32 @scatterwalk_map_and_copy(i32*, i32, i64, i32, i32) #1

declare dso_local i64 @crypto_memneq(i32*, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
