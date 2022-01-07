; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/crypto/extr_ghash-ce-glue.c_gcm_encrypt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/crypto/extr_ghash-ce-glue.c_gcm_encrypt.c"
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
@GCM_IV_SIZE = common dso_local global i32 0, align 4
@pmull_ghash_update_p64 = common dso_local global i32 0, align 4
@GHASH_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*)* @gcm_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gcm_encrypt(%struct.aead_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aead_request*, align 8
  %4 = alloca %struct.crypto_aead*, align 8
  %5 = alloca %struct.gcm_aes_ctx*, align 8
  %6 = alloca %struct.skcipher_walk, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca [2 x i32], align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  store %struct.aead_request* %0, %struct.aead_request** %3, align 8
  %26 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %27 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %26)
  store %struct.crypto_aead* %27, %struct.crypto_aead** %4, align 8
  %28 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %29 = call %struct.gcm_aes_ctx* @crypto_aead_ctx(%struct.crypto_aead* %28)
  store %struct.gcm_aes_ctx* %29, %struct.gcm_aes_ctx** %5, align 8
  %30 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %7, align 8
  %33 = alloca i32, i64 %31, align 16
  store i64 %31, i64* %8, align 8
  %34 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %35 = mul nsw i32 2, %34
  %36 = zext i32 %35 to i64
  %37 = alloca i32, i64 %36, align 16
  store i64 %36, i64* %9, align 8
  %38 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %39 = zext i32 %38 to i64
  %40 = alloca i32, i64 %39, align 16
  store i64 %39, i64* %10, align 8
  %41 = bitcast [2 x i32]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %41, i8 0, i64 8, i1 false)
  %42 = load %struct.gcm_aes_ctx*, %struct.gcm_aes_ctx** %5, align 8
  %43 = getelementptr inbounds %struct.gcm_aes_ctx, %struct.gcm_aes_ctx* %42, i32 0, i32 1
  %44 = call i32 @num_rounds(%struct.TYPE_11__* %43)
  store i32 %44, i32* %12, align 4
  %45 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %46 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %1
  %50 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %52 = call i32 @gcm_calculate_auth_mac(%struct.aead_request* %50, i32* %51)
  br label %53

53:                                               ; preds = %49, %1
  %54 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %55 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %54, i32 0, i32 3
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* @GCM_IV_SIZE, align 4
  %58 = call i32 @memcpy(i32* %33, i32* %56, i32 %57)
  %59 = load i32, i32* @GCM_IV_SIZE, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %33, i64 %60
  %62 = call i32 @put_unaligned_be32(i32 1, i32* %61)
  %63 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %64 = call i32 @skcipher_walk_aead_encrypt(%struct.skcipher_walk* %6, %struct.aead_request* %63, i32 0)
  store i32 %64, i32* %13, align 4
  %65 = call i64 (...) @crypto_simd_usable()
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %53
  %68 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %6, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %71 = mul nsw i32 2, %70
  %72 = icmp sge i32 %69, %71
  br label %73

73:                                               ; preds = %67, %53
  %74 = phi i1 [ false, %53 ], [ %72, %67 ]
  %75 = zext i1 %74 to i32
  %76 = call i64 @likely(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %150

78:                                               ; preds = %73
  store i32* null, i32** %14, align 8
  %79 = call i32 (...) @kernel_neon_begin()
  %80 = load %struct.gcm_aes_ctx*, %struct.gcm_aes_ctx** %5, align 8
  %81 = getelementptr inbounds %struct.gcm_aes_ctx, %struct.gcm_aes_ctx* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %12, align 4
  %85 = call i32 @pmull_gcm_encrypt_block(i32* %40, i32* %33, i32* %83, i32 %84)
  %86 = load i32, i32* @GCM_IV_SIZE, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %33, i64 %87
  %89 = call i32 @put_unaligned_be32(i32 2, i32* %88)
  %90 = load i32, i32* %12, align 4
  %91 = call i32 @pmull_gcm_encrypt_block(i32* %37, i32* %33, i32* null, i32 %90)
  %92 = load i32, i32* @GCM_IV_SIZE, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %33, i64 %93
  %95 = call i32 @put_unaligned_be32(i32 3, i32* %94)
  %96 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %37, i64 %97
  %99 = load i32, i32* %12, align 4
  %100 = call i32 @pmull_gcm_encrypt_block(i32* %98, i32* %33, i32* null, i32 %99)
  %101 = load i32, i32* @GCM_IV_SIZE, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %33, i64 %102
  %104 = call i32 @put_unaligned_be32(i32 4, i32* %103)
  br label %105

105:                                              ; preds = %143, %78
  %106 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %6, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %109 = mul nsw i32 2, %108
  %110 = sdiv i32 %107, %109
  %111 = mul nsw i32 %110, 2
  store i32 %111, i32* %15, align 4
  %112 = load i32*, i32** %14, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %114, label %116

114:                                              ; preds = %105
  %115 = call i32 (...) @kernel_neon_begin()
  br label %116

116:                                              ; preds = %114, %105
  %117 = load i32, i32* %15, align 4
  %118 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %119 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %6, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %6, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = load %struct.gcm_aes_ctx*, %struct.gcm_aes_ctx** %5, align 8
  %128 = getelementptr inbounds %struct.gcm_aes_ctx, %struct.gcm_aes_ctx* %127, i32 0, i32 0
  %129 = load i32*, i32** %14, align 8
  %130 = load i32, i32* %12, align 4
  %131 = call i32 @pmull_gcm_encrypt(i32 %117, i32* %118, i32* %122, i32* %126, i32* %128, i32* %33, i32* %129, i32 %130, i32* %37)
  %132 = call i32 (...) @kernel_neon_end()
  %133 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %6, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %136 = mul nsw i32 2, %135
  %137 = srem i32 %134, %136
  %138 = call i32 @skcipher_walk_done(%struct.skcipher_walk* %6, i32 %137)
  store i32 %138, i32* %13, align 4
  %139 = load %struct.gcm_aes_ctx*, %struct.gcm_aes_ctx** %5, align 8
  %140 = getelementptr inbounds %struct.gcm_aes_ctx, %struct.gcm_aes_ctx* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  store i32* %142, i32** %14, align 8
  br label %143

143:                                              ; preds = %116
  %144 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %6, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %147 = mul nsw i32 2, %146
  %148 = icmp sge i32 %145, %147
  br i1 %148, label %105, label %149

149:                                              ; preds = %143
  br label %242

150:                                              ; preds = %73
  %151 = load %struct.gcm_aes_ctx*, %struct.gcm_aes_ctx** %5, align 8
  %152 = getelementptr inbounds %struct.gcm_aes_ctx, %struct.gcm_aes_ctx* %151, i32 0, i32 1
  %153 = call i32 @aes_encrypt(%struct.TYPE_11__* %152, i32* %40, i32* %33)
  %154 = load i32, i32* @GCM_IV_SIZE, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %33, i64 %155
  %157 = call i32 @put_unaligned_be32(i32 2, i32* %156)
  br label %158

158:                                              ; preds = %202, %150
  %159 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %6, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %162 = mul nsw i32 2, %161
  %163 = icmp sge i32 %160, %162
  br i1 %163, label %164, label %219

164:                                              ; preds = %158
  %165 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %6, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %168 = mul nsw i32 2, %167
  %169 = sdiv i32 %166, %168
  %170 = mul nsw i32 %169, 2
  store i32 %170, i32* %16, align 4
  %171 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %6, i32 0, i32 3
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 0
  %174 = load i32*, i32** %173, align 8
  store i32* %174, i32** %17, align 8
  %175 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %6, i32 0, i32 2
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  store i32* %178, i32** %18, align 8
  %179 = load i32, i32* %16, align 4
  store i32 %179, i32* %19, align 4
  br label %180

180:                                              ; preds = %198, %164
  %181 = load %struct.gcm_aes_ctx*, %struct.gcm_aes_ctx** %5, align 8
  %182 = getelementptr inbounds %struct.gcm_aes_ctx, %struct.gcm_aes_ctx* %181, i32 0, i32 1
  %183 = call i32 @aes_encrypt(%struct.TYPE_11__* %182, i32* %37, i32* %33)
  %184 = load i32*, i32** %17, align 8
  %185 = load i32*, i32** %18, align 8
  %186 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %187 = call i32 @crypto_xor_cpy(i32* %184, i32* %185, i32* %37, i32 %186)
  %188 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %189 = call i32 @crypto_inc(i32* %33, i32 %188)
  %190 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %191 = load i32*, i32** %17, align 8
  %192 = sext i32 %190 to i64
  %193 = getelementptr inbounds i32, i32* %191, i64 %192
  store i32* %193, i32** %17, align 8
  %194 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %195 = load i32*, i32** %18, align 8
  %196 = sext i32 %194 to i64
  %197 = getelementptr inbounds i32, i32* %195, i64 %196
  store i32* %197, i32** %18, align 8
  br label %198

198:                                              ; preds = %180
  %199 = load i32, i32* %19, align 4
  %200 = add nsw i32 %199, -1
  store i32 %200, i32* %19, align 4
  %201 = icmp sgt i32 %200, 0
  br i1 %201, label %180, label %202

202:                                              ; preds = %198
  %203 = load i32, i32* %16, align 4
  %204 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %205 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %6, i32 0, i32 3
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 0
  %208 = load i32*, i32** %207, align 8
  %209 = load %struct.gcm_aes_ctx*, %struct.gcm_aes_ctx** %5, align 8
  %210 = getelementptr inbounds %struct.gcm_aes_ctx, %struct.gcm_aes_ctx* %209, i32 0, i32 0
  %211 = load i32, i32* @pmull_ghash_update_p64, align 4
  %212 = call i32 @ghash_do_update(i32 %203, i32* %204, i32* %208, i32* %210, i32* null, i32 %211)
  %213 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %6, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %216 = mul nsw i32 2, %215
  %217 = srem i32 %214, %216
  %218 = call i32 @skcipher_walk_done(%struct.skcipher_walk* %6, i32 %217)
  store i32 %218, i32* %13, align 4
  br label %158

219:                                              ; preds = %158
  %220 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %6, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %241

223:                                              ; preds = %219
  %224 = load %struct.gcm_aes_ctx*, %struct.gcm_aes_ctx** %5, align 8
  %225 = getelementptr inbounds %struct.gcm_aes_ctx, %struct.gcm_aes_ctx* %224, i32 0, i32 1
  %226 = call i32 @aes_encrypt(%struct.TYPE_11__* %225, i32* %37, i32* %33)
  %227 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %6, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %230 = icmp sgt i32 %228, %229
  br i1 %230, label %231, label %240

231:                                              ; preds = %223
  %232 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %233 = call i32 @crypto_inc(i32* %33, i32 %232)
  %234 = load %struct.gcm_aes_ctx*, %struct.gcm_aes_ctx** %5, align 8
  %235 = getelementptr inbounds %struct.gcm_aes_ctx, %struct.gcm_aes_ctx* %234, i32 0, i32 1
  %236 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %37, i64 %237
  %239 = call i32 @aes_encrypt(%struct.TYPE_11__* %235, i32* %238, i32* %33)
  br label %240

240:                                              ; preds = %231, %223
  br label %241

241:                                              ; preds = %240, %219
  br label %242

242:                                              ; preds = %241, %149
  %243 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %6, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %305

246:                                              ; preds = %242
  %247 = load i32, i32* @GHASH_BLOCK_SIZE, align 4
  %248 = zext i32 %247 to i64
  %249 = call i8* @llvm.stacksave()
  store i8* %249, i8** %20, align 8
  %250 = alloca i32, i64 %248, align 16
  store i64 %248, i64* %21, align 8
  %251 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %6, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  store i32 %252, i32* %22, align 4
  %253 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %6, i32 0, i32 3
  %254 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %254, i32 0, i32 0
  %256 = load i32*, i32** %255, align 8
  store i32* %256, i32** %23, align 8
  store i32* null, i32** %24, align 8
  %257 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %6, i32 0, i32 3
  %258 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %258, i32 0, i32 0
  %260 = load i32*, i32** %259, align 8
  %261 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %6, i32 0, i32 2
  %262 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %262, i32 0, i32 0
  %264 = load i32*, i32** %263, align 8
  %265 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %6, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = call i32 @crypto_xor_cpy(i32* %260, i32* %264, i32* %37, i32 %266)
  %268 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %6, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* @GHASH_BLOCK_SIZE, align 4
  %271 = icmp sgt i32 %269, %270
  br i1 %271, label %272, label %281

272:                                              ; preds = %246
  %273 = load i32*, i32** %23, align 8
  store i32* %273, i32** %24, align 8
  %274 = load i32, i32* @GHASH_BLOCK_SIZE, align 4
  %275 = load i32*, i32** %23, align 8
  %276 = sext i32 %274 to i64
  %277 = getelementptr inbounds i32, i32* %275, i64 %276
  store i32* %277, i32** %23, align 8
  %278 = load i32, i32* @GHASH_BLOCK_SIZE, align 4
  %279 = load i32, i32* %22, align 4
  %280 = urem i32 %279, %278
  store i32 %280, i32* %22, align 4
  br label %281

281:                                              ; preds = %272, %246
  %282 = load i32*, i32** %23, align 8
  %283 = load i32, i32* %22, align 4
  %284 = call i32 @memcpy(i32* %250, i32* %282, i32 %283)
  %285 = load i32, i32* %22, align 4
  %286 = zext i32 %285 to i64
  %287 = getelementptr inbounds i32, i32* %250, i64 %286
  %288 = load i32, i32* @GHASH_BLOCK_SIZE, align 4
  %289 = load i32, i32* %22, align 4
  %290 = sub i32 %288, %289
  %291 = call i32 @memset(i32* %287, i32 0, i32 %290)
  %292 = load i32, i32* %22, align 4
  %293 = icmp ne i32 %292, 0
  %294 = xor i1 %293, true
  %295 = xor i1 %294, true
  %296 = zext i1 %295 to i32
  %297 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %298 = load %struct.gcm_aes_ctx*, %struct.gcm_aes_ctx** %5, align 8
  %299 = getelementptr inbounds %struct.gcm_aes_ctx, %struct.gcm_aes_ctx* %298, i32 0, i32 0
  %300 = load i32*, i32** %24, align 8
  %301 = load i32, i32* @pmull_ghash_update_p64, align 4
  %302 = call i32 @ghash_do_update(i32 %296, i32* %297, i32* %250, i32* %299, i32* %300, i32 %301)
  %303 = call i32 @skcipher_walk_done(%struct.skcipher_walk* %6, i32 0)
  store i32 %303, i32* %13, align 4
  %304 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %304)
  br label %305

305:                                              ; preds = %281, %242
  %306 = load i32, i32* %13, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %310

308:                                              ; preds = %305
  %309 = load i32, i32* %13, align 4
  store i32 %309, i32* %2, align 4
  store i32 1, i32* %25, align 4
  br label %331

310:                                              ; preds = %305
  %311 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %312 = load %struct.gcm_aes_ctx*, %struct.gcm_aes_ctx** %5, align 8
  %313 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %314 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %315 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %314, i32 0, i32 0
  %316 = load i64, i64* %315, align 8
  %317 = call i32 @gcm_final(%struct.aead_request* %311, %struct.gcm_aes_ctx* %312, i32* %313, i32* %40, i64 %316)
  %318 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %319 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %318, i32 0, i32 2
  %320 = load i32, i32* %319, align 8
  %321 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %322 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %321, i32 0, i32 1
  %323 = load i64, i64* %322, align 8
  %324 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %325 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %324, i32 0, i32 0
  %326 = load i64, i64* %325, align 8
  %327 = add nsw i64 %323, %326
  %328 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %329 = call i32 @crypto_aead_authsize(%struct.crypto_aead* %328)
  %330 = call i32 @scatterwalk_map_and_copy(i32* %40, i32 %320, i64 %327, i32 %329, i32 1)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %25, align 4
  br label %331

331:                                              ; preds = %310, %308
  %332 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %332)
  %333 = load i32, i32* %2, align 4
  ret i32 %333
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.gcm_aes_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local i32 @num_rounds(%struct.TYPE_11__*) #1

declare dso_local i32 @gcm_calculate_auth_mac(%struct.aead_request*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @put_unaligned_be32(i32, i32*) #1

declare dso_local i32 @skcipher_walk_aead_encrypt(%struct.skcipher_walk*, %struct.aead_request*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @crypto_simd_usable(...) #1

declare dso_local i32 @kernel_neon_begin(...) #1

declare dso_local i32 @pmull_gcm_encrypt_block(i32*, i32*, i32*, i32) #1

declare dso_local i32 @pmull_gcm_encrypt(i32, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @kernel_neon_end(...) #1

declare dso_local i32 @skcipher_walk_done(%struct.skcipher_walk*, i32) #1

declare dso_local i32 @aes_encrypt(%struct.TYPE_11__*, i32*, i32*) #1

declare dso_local i32 @crypto_xor_cpy(i32*, i32*, i32*, i32) #1

declare dso_local i32 @crypto_inc(i32*, i32) #1

declare dso_local i32 @ghash_do_update(i32, i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @gcm_final(%struct.aead_request*, %struct.gcm_aes_ctx*, i32*, i32*, i64) #1

declare dso_local i32 @scatterwalk_map_and_copy(i32*, i32, i64, i32, i32) #1

declare dso_local i32 @crypto_aead_authsize(%struct.crypto_aead*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
