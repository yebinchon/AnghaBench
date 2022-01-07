; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_gcm.c_crypto_gcm_create_common.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_gcm.c_crypto_gcm_create_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_template = type { i32 }
%struct.rtattr = type { i32 }
%struct.crypto_attr_type = type { i32, i32, i8* }
%struct.aead_instance = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.skcipher_alg = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, i32, i8*, i32, i32, i32 }
%struct.crypto_alg = type { i32, i32, i8* }
%struct.hash_alg_common = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.gcm_instance_ctx = type { i32, i32 }

@CRYPTO_ALG_TYPE_AEAD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@crypto_ahash_type = common dso_local global i32 0, align 4
@CRYPTO_ALG_TYPE_HASH = common dso_local global i32 0, align 4
@CRYPTO_ALG_TYPE_AHASH_MASK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"ghash\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"ctr(\00", align 1
@ENAMETOOLONG = common dso_local global i32 0, align 4
@CRYPTO_MAX_ALG_NAME = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"gcm(%s\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"gcm_base(%s,%s)\00", align 1
@CRYPTO_ALG_ASYNC = common dso_local global i32 0, align 4
@GCM_AES_IV_SIZE = common dso_local global i32 0, align 4
@crypto_gcm_init_tfm = common dso_local global i32 0, align 4
@crypto_gcm_exit_tfm = common dso_local global i32 0, align 4
@crypto_gcm_setkey = common dso_local global i32 0, align 4
@crypto_gcm_setauthsize = common dso_local global i32 0, align 4
@crypto_gcm_encrypt = common dso_local global i32 0, align 4
@crypto_gcm_decrypt = common dso_local global i32 0, align 4
@crypto_gcm_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_template*, %struct.rtattr**, i8*, i8*)* @crypto_gcm_create_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_gcm_create_common(%struct.crypto_template* %0, %struct.rtattr** %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.crypto_template*, align 8
  %7 = alloca %struct.rtattr**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.crypto_attr_type*, align 8
  %11 = alloca %struct.aead_instance*, align 8
  %12 = alloca %struct.skcipher_alg*, align 8
  %13 = alloca %struct.crypto_alg*, align 8
  %14 = alloca %struct.hash_alg_common*, align 8
  %15 = alloca %struct.gcm_instance_ctx*, align 8
  %16 = alloca i32, align 4
  store %struct.crypto_template* %0, %struct.crypto_template** %6, align 8
  store %struct.rtattr** %1, %struct.rtattr*** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %17 = load %struct.rtattr**, %struct.rtattr*** %7, align 8
  %18 = call %struct.crypto_attr_type* @crypto_get_attr_type(%struct.rtattr** %17)
  store %struct.crypto_attr_type* %18, %struct.crypto_attr_type** %10, align 8
  %19 = load %struct.crypto_attr_type*, %struct.crypto_attr_type** %10, align 8
  %20 = call i64 @IS_ERR(%struct.crypto_attr_type* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load %struct.crypto_attr_type*, %struct.crypto_attr_type** %10, align 8
  %24 = call i32 @PTR_ERR(%struct.crypto_attr_type* %23)
  store i32 %24, i32* %5, align 4
  br label %291

25:                                               ; preds = %4
  %26 = load %struct.crypto_attr_type*, %struct.crypto_attr_type** %10, align 8
  %27 = getelementptr inbounds %struct.crypto_attr_type, %struct.crypto_attr_type* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @CRYPTO_ALG_TYPE_AEAD, align 4
  %30 = xor i32 %28, %29
  %31 = load %struct.crypto_attr_type*, %struct.crypto_attr_type** %10, align 8
  %32 = getelementptr inbounds %struct.crypto_attr_type, %struct.crypto_attr_type* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %30, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %25
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %291

39:                                               ; preds = %25
  %40 = load i8*, i8** %9, align 8
  %41 = load i32, i32* @CRYPTO_ALG_TYPE_HASH, align 4
  %42 = load i32, i32* @CRYPTO_ALG_TYPE_AHASH_MASK, align 4
  %43 = load %struct.crypto_attr_type*, %struct.crypto_attr_type** %10, align 8
  %44 = getelementptr inbounds %struct.crypto_attr_type, %struct.crypto_attr_type* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.crypto_attr_type*, %struct.crypto_attr_type** %10, align 8
  %47 = getelementptr inbounds %struct.crypto_attr_type, %struct.crypto_attr_type* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @crypto_requires_sync(i32 %45, i32 %48)
  %50 = or i32 %42, %49
  %51 = call %struct.crypto_attr_type* @crypto_find_alg(i8* %40, i32* @crypto_ahash_type, i32 %41, i32 %50)
  %52 = bitcast %struct.crypto_attr_type* %51 to %struct.crypto_alg*
  store %struct.crypto_alg* %52, %struct.crypto_alg** %13, align 8
  %53 = load %struct.crypto_alg*, %struct.crypto_alg** %13, align 8
  %54 = bitcast %struct.crypto_alg* %53 to %struct.crypto_attr_type*
  %55 = call i64 @IS_ERR(%struct.crypto_attr_type* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %39
  %58 = load %struct.crypto_alg*, %struct.crypto_alg** %13, align 8
  %59 = bitcast %struct.crypto_alg* %58 to %struct.crypto_attr_type*
  %60 = call i32 @PTR_ERR(%struct.crypto_attr_type* %59)
  store i32 %60, i32* %5, align 4
  br label %291

61:                                               ; preds = %39
  %62 = load %struct.crypto_alg*, %struct.crypto_alg** %13, align 8
  %63 = bitcast %struct.crypto_alg* %62 to %struct.crypto_attr_type*
  %64 = call %struct.hash_alg_common* @__crypto_hash_alg_common(%struct.crypto_attr_type* %63)
  store %struct.hash_alg_common* %64, %struct.hash_alg_common** %14, align 8
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %16, align 4
  %67 = load i32, i32* @GFP_KERNEL, align 4
  %68 = call %struct.aead_instance* @kzalloc(i32 76, i32 %67)
  store %struct.aead_instance* %68, %struct.aead_instance** %11, align 8
  %69 = load %struct.aead_instance*, %struct.aead_instance** %11, align 8
  %70 = icmp ne %struct.aead_instance* %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %61
  br label %275

72:                                               ; preds = %61
  %73 = load %struct.aead_instance*, %struct.aead_instance** %11, align 8
  %74 = call %struct.gcm_instance_ctx* @aead_instance_ctx(%struct.aead_instance* %73)
  store %struct.gcm_instance_ctx* %74, %struct.gcm_instance_ctx** %15, align 8
  %75 = load %struct.gcm_instance_ctx*, %struct.gcm_instance_ctx** %15, align 8
  %76 = getelementptr inbounds %struct.gcm_instance_ctx, %struct.gcm_instance_ctx* %75, i32 0, i32 0
  %77 = load %struct.hash_alg_common*, %struct.hash_alg_common** %14, align 8
  %78 = load %struct.aead_instance*, %struct.aead_instance** %11, align 8
  %79 = call i32 @aead_crypto_instance(%struct.aead_instance* %78)
  %80 = call i32 @crypto_init_ahash_spawn(i32* %76, %struct.hash_alg_common* %77, i32 %79)
  store i32 %80, i32* %16, align 4
  %81 = load i32, i32* %16, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %72
  br label %288

84:                                               ; preds = %72
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %16, align 4
  %87 = load %struct.hash_alg_common*, %struct.hash_alg_common** %14, align 8
  %88 = getelementptr inbounds %struct.hash_alg_common, %struct.hash_alg_common* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @strcmp(i32 %90, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %98, label %93

93:                                               ; preds = %84
  %94 = load %struct.hash_alg_common*, %struct.hash_alg_common** %14, align 8
  %95 = getelementptr inbounds %struct.hash_alg_common, %struct.hash_alg_common* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 16
  br i1 %97, label %98, label %99

98:                                               ; preds = %93, %84
  br label %284

99:                                               ; preds = %93
  %100 = load %struct.gcm_instance_ctx*, %struct.gcm_instance_ctx** %15, align 8
  %101 = getelementptr inbounds %struct.gcm_instance_ctx, %struct.gcm_instance_ctx* %100, i32 0, i32 1
  %102 = load %struct.aead_instance*, %struct.aead_instance** %11, align 8
  %103 = call i32 @aead_crypto_instance(%struct.aead_instance* %102)
  %104 = call i32 @crypto_set_skcipher_spawn(i32* %101, i32 %103)
  %105 = load %struct.gcm_instance_ctx*, %struct.gcm_instance_ctx** %15, align 8
  %106 = getelementptr inbounds %struct.gcm_instance_ctx, %struct.gcm_instance_ctx* %105, i32 0, i32 1
  %107 = load i8*, i8** %8, align 8
  %108 = load %struct.crypto_attr_type*, %struct.crypto_attr_type** %10, align 8
  %109 = getelementptr inbounds %struct.crypto_attr_type, %struct.crypto_attr_type* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.crypto_attr_type*, %struct.crypto_attr_type** %10, align 8
  %112 = getelementptr inbounds %struct.crypto_attr_type, %struct.crypto_attr_type* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @crypto_requires_sync(i32 %110, i32 %113)
  %115 = call i32 @crypto_grab_skcipher(i32* %106, i8* %107, i32 0, i32 %114)
  store i32 %115, i32* %16, align 4
  %116 = load i32, i32* %16, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %99
  br label %284

119:                                              ; preds = %99
  %120 = load %struct.gcm_instance_ctx*, %struct.gcm_instance_ctx** %15, align 8
  %121 = getelementptr inbounds %struct.gcm_instance_ctx, %struct.gcm_instance_ctx* %120, i32 0, i32 1
  %122 = call %struct.skcipher_alg* @crypto_spawn_skcipher_alg(i32* %121)
  store %struct.skcipher_alg* %122, %struct.skcipher_alg** %12, align 8
  %123 = load i32, i32* @EINVAL, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %16, align 4
  %125 = load %struct.skcipher_alg*, %struct.skcipher_alg** %12, align 8
  %126 = getelementptr inbounds %struct.skcipher_alg, %struct.skcipher_alg* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load i8*, i8** %127, align 8
  %129 = call i64 @strncmp(i8* %128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %141, label %131

131:                                              ; preds = %119
  %132 = load %struct.skcipher_alg*, %struct.skcipher_alg** %12, align 8
  %133 = call i32 @crypto_skcipher_alg_ivsize(%struct.skcipher_alg* %132)
  %134 = icmp ne i32 %133, 16
  br i1 %134, label %141, label %135

135:                                              ; preds = %131
  %136 = load %struct.skcipher_alg*, %struct.skcipher_alg** %12, align 8
  %137 = getelementptr inbounds %struct.skcipher_alg, %struct.skcipher_alg* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = icmp ne i32 %139, 1
  br i1 %140, label %141, label %142

141:                                              ; preds = %135, %131, %119
  br label %280

142:                                              ; preds = %135
  %143 = load i32, i32* @ENAMETOOLONG, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %16, align 4
  %145 = load %struct.aead_instance*, %struct.aead_instance** %11, align 8
  %146 = getelementptr inbounds %struct.aead_instance, %struct.aead_instance* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 9
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 6
  %149 = load i32, i32* %148, align 4
  %150 = load i64, i64* @CRYPTO_MAX_ALG_NAME, align 8
  %151 = load %struct.skcipher_alg*, %struct.skcipher_alg** %12, align 8
  %152 = getelementptr inbounds %struct.skcipher_alg, %struct.skcipher_alg* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  %154 = load i8*, i8** %153, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 4
  %156 = call i64 (i32, i64, i8*, i8*, ...) @snprintf(i32 %149, i64 %150, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %155)
  %157 = load i64, i64* @CRYPTO_MAX_ALG_NAME, align 8
  %158 = icmp sge i64 %156, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %142
  br label %280

160:                                              ; preds = %142
  %161 = load %struct.aead_instance*, %struct.aead_instance** %11, align 8
  %162 = getelementptr inbounds %struct.aead_instance, %struct.aead_instance* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 9
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 5
  %165 = load i32, i32* %164, align 4
  %166 = load i64, i64* @CRYPTO_MAX_ALG_NAME, align 8
  %167 = load %struct.skcipher_alg*, %struct.skcipher_alg** %12, align 8
  %168 = getelementptr inbounds %struct.skcipher_alg, %struct.skcipher_alg* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 2
  %170 = load i8*, i8** %169, align 8
  %171 = load %struct.crypto_alg*, %struct.crypto_alg** %13, align 8
  %172 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %171, i32 0, i32 2
  %173 = load i8*, i8** %172, align 8
  %174 = call i64 (i32, i64, i8*, i8*, ...) @snprintf(i32 %165, i64 %166, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* %170, i8* %173)
  %175 = load i64, i64* @CRYPTO_MAX_ALG_NAME, align 8
  %176 = icmp sge i64 %174, %175
  br i1 %176, label %177, label %178

177:                                              ; preds = %160
  br label %280

178:                                              ; preds = %160
  %179 = load %struct.hash_alg_common*, %struct.hash_alg_common** %14, align 8
  %180 = getelementptr inbounds %struct.hash_alg_common, %struct.hash_alg_common* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.skcipher_alg*, %struct.skcipher_alg** %12, align 8
  %184 = getelementptr inbounds %struct.skcipher_alg, %struct.skcipher_alg* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 8
  %187 = or i32 %182, %186
  %188 = load i32, i32* @CRYPTO_ALG_ASYNC, align 4
  %189 = and i32 %187, %188
  %190 = load %struct.aead_instance*, %struct.aead_instance** %11, align 8
  %191 = getelementptr inbounds %struct.aead_instance, %struct.aead_instance* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 9
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 0
  store i32 %189, i32* %193, align 4
  %194 = load %struct.hash_alg_common*, %struct.hash_alg_common** %14, align 8
  %195 = getelementptr inbounds %struct.hash_alg_common, %struct.hash_alg_common* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.skcipher_alg*, %struct.skcipher_alg** %12, align 8
  %199 = getelementptr inbounds %struct.skcipher_alg, %struct.skcipher_alg* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 4
  %201 = load i32, i32* %200, align 4
  %202 = add nsw i32 %197, %201
  %203 = sdiv i32 %202, 2
  %204 = load %struct.aead_instance*, %struct.aead_instance** %11, align 8
  %205 = getelementptr inbounds %struct.aead_instance, %struct.aead_instance* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 9
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 1
  store i32 %203, i32* %207, align 4
  %208 = load %struct.aead_instance*, %struct.aead_instance** %11, align 8
  %209 = getelementptr inbounds %struct.aead_instance, %struct.aead_instance* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 9
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 2
  store i32 1, i32* %211, align 4
  %212 = load %struct.hash_alg_common*, %struct.hash_alg_common** %14, align 8
  %213 = getelementptr inbounds %struct.hash_alg_common, %struct.hash_alg_common* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.skcipher_alg*, %struct.skcipher_alg** %12, align 8
  %217 = getelementptr inbounds %struct.skcipher_alg, %struct.skcipher_alg* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 5
  %219 = load i32, i32* %218, align 8
  %220 = or i32 %215, %219
  %221 = load %struct.aead_instance*, %struct.aead_instance** %11, align 8
  %222 = getelementptr inbounds %struct.aead_instance, %struct.aead_instance* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 9
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i32 0, i32 3
  store i32 %220, i32* %224, align 4
  %225 = load %struct.aead_instance*, %struct.aead_instance** %11, align 8
  %226 = getelementptr inbounds %struct.aead_instance, %struct.aead_instance* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 9
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 4
  store i32 4, i32* %228, align 4
  %229 = load i32, i32* @GCM_AES_IV_SIZE, align 4
  %230 = load %struct.aead_instance*, %struct.aead_instance** %11, align 8
  %231 = getelementptr inbounds %struct.aead_instance, %struct.aead_instance* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 8
  store i32 %229, i32* %232, align 4
  %233 = load %struct.skcipher_alg*, %struct.skcipher_alg** %12, align 8
  %234 = call i32 @crypto_skcipher_alg_chunksize(%struct.skcipher_alg* %233)
  %235 = load %struct.aead_instance*, %struct.aead_instance** %11, align 8
  %236 = getelementptr inbounds %struct.aead_instance, %struct.aead_instance* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i32 0, i32 7
  store i32 %234, i32* %237, align 4
  %238 = load %struct.aead_instance*, %struct.aead_instance** %11, align 8
  %239 = getelementptr inbounds %struct.aead_instance, %struct.aead_instance* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i32 0, i32 0
  store i32 16, i32* %240, align 4
  %241 = load i32, i32* @crypto_gcm_init_tfm, align 4
  %242 = load %struct.aead_instance*, %struct.aead_instance** %11, align 8
  %243 = getelementptr inbounds %struct.aead_instance, %struct.aead_instance* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %243, i32 0, i32 6
  store i32 %241, i32* %244, align 4
  %245 = load i32, i32* @crypto_gcm_exit_tfm, align 4
  %246 = load %struct.aead_instance*, %struct.aead_instance** %11, align 8
  %247 = getelementptr inbounds %struct.aead_instance, %struct.aead_instance* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 5
  store i32 %245, i32* %248, align 4
  %249 = load i32, i32* @crypto_gcm_setkey, align 4
  %250 = load %struct.aead_instance*, %struct.aead_instance** %11, align 8
  %251 = getelementptr inbounds %struct.aead_instance, %struct.aead_instance* %250, i32 0, i32 1
  %252 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %251, i32 0, i32 4
  store i32 %249, i32* %252, align 4
  %253 = load i32, i32* @crypto_gcm_setauthsize, align 4
  %254 = load %struct.aead_instance*, %struct.aead_instance** %11, align 8
  %255 = getelementptr inbounds %struct.aead_instance, %struct.aead_instance* %254, i32 0, i32 1
  %256 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %255, i32 0, i32 3
  store i32 %253, i32* %256, align 4
  %257 = load i32, i32* @crypto_gcm_encrypt, align 4
  %258 = load %struct.aead_instance*, %struct.aead_instance** %11, align 8
  %259 = getelementptr inbounds %struct.aead_instance, %struct.aead_instance* %258, i32 0, i32 1
  %260 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %259, i32 0, i32 2
  store i32 %257, i32* %260, align 4
  %261 = load i32, i32* @crypto_gcm_decrypt, align 4
  %262 = load %struct.aead_instance*, %struct.aead_instance** %11, align 8
  %263 = getelementptr inbounds %struct.aead_instance, %struct.aead_instance* %262, i32 0, i32 1
  %264 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %263, i32 0, i32 1
  store i32 %261, i32* %264, align 4
  %265 = load i32, i32* @crypto_gcm_free, align 4
  %266 = load %struct.aead_instance*, %struct.aead_instance** %11, align 8
  %267 = getelementptr inbounds %struct.aead_instance, %struct.aead_instance* %266, i32 0, i32 0
  store i32 %265, i32* %267, align 4
  %268 = load %struct.crypto_template*, %struct.crypto_template** %6, align 8
  %269 = load %struct.aead_instance*, %struct.aead_instance** %11, align 8
  %270 = call i32 @aead_register_instance(%struct.crypto_template* %268, %struct.aead_instance* %269)
  store i32 %270, i32* %16, align 4
  %271 = load i32, i32* %16, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %274

273:                                              ; preds = %178
  br label %280

274:                                              ; preds = %178
  br label %275

275:                                              ; preds = %288, %274, %71
  %276 = load %struct.crypto_alg*, %struct.crypto_alg** %13, align 8
  %277 = bitcast %struct.crypto_alg* %276 to %struct.crypto_attr_type*
  %278 = call i32 @crypto_mod_put(%struct.crypto_attr_type* %277)
  %279 = load i32, i32* %16, align 4
  store i32 %279, i32* %5, align 4
  br label %291

280:                                              ; preds = %273, %177, %159, %141
  %281 = load %struct.gcm_instance_ctx*, %struct.gcm_instance_ctx** %15, align 8
  %282 = getelementptr inbounds %struct.gcm_instance_ctx, %struct.gcm_instance_ctx* %281, i32 0, i32 1
  %283 = call i32 @crypto_drop_skcipher(i32* %282)
  br label %284

284:                                              ; preds = %280, %118, %98
  %285 = load %struct.gcm_instance_ctx*, %struct.gcm_instance_ctx** %15, align 8
  %286 = getelementptr inbounds %struct.gcm_instance_ctx, %struct.gcm_instance_ctx* %285, i32 0, i32 0
  %287 = call i32 @crypto_drop_ahash(i32* %286)
  br label %288

288:                                              ; preds = %284, %83
  %289 = load %struct.aead_instance*, %struct.aead_instance** %11, align 8
  %290 = call i32 @kfree(%struct.aead_instance* %289)
  br label %275

291:                                              ; preds = %275, %57, %36, %22
  %292 = load i32, i32* %5, align 4
  ret i32 %292
}

declare dso_local %struct.crypto_attr_type* @crypto_get_attr_type(%struct.rtattr**) #1

declare dso_local i64 @IS_ERR(%struct.crypto_attr_type*) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_attr_type*) #1

declare dso_local %struct.crypto_attr_type* @crypto_find_alg(i8*, i32*, i32, i32) #1

declare dso_local i32 @crypto_requires_sync(i32, i32) #1

declare dso_local %struct.hash_alg_common* @__crypto_hash_alg_common(%struct.crypto_attr_type*) #1

declare dso_local %struct.aead_instance* @kzalloc(i32, i32) #1

declare dso_local %struct.gcm_instance_ctx* @aead_instance_ctx(%struct.aead_instance*) #1

declare dso_local i32 @crypto_init_ahash_spawn(i32*, %struct.hash_alg_common*, i32) #1

declare dso_local i32 @aead_crypto_instance(%struct.aead_instance*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @crypto_set_skcipher_spawn(i32*, i32) #1

declare dso_local i32 @crypto_grab_skcipher(i32*, i8*, i32, i32) #1

declare dso_local %struct.skcipher_alg* @crypto_spawn_skcipher_alg(i32*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @crypto_skcipher_alg_ivsize(%struct.skcipher_alg*) #1

declare dso_local i64 @snprintf(i32, i64, i8*, i8*, ...) #1

declare dso_local i32 @crypto_skcipher_alg_chunksize(%struct.skcipher_alg*) #1

declare dso_local i32 @aead_register_instance(%struct.crypto_template*, %struct.aead_instance*) #1

declare dso_local i32 @crypto_mod_put(%struct.crypto_attr_type*) #1

declare dso_local i32 @crypto_drop_skcipher(i32*) #1

declare dso_local i32 @crypto_drop_ahash(i32*) #1

declare dso_local i32 @kfree(%struct.aead_instance*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
