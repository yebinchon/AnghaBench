; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_ccm.c_crypto_ccm_create_common.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_ccm.c_crypto_ccm_create_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_template = type { i32 }
%struct.rtattr = type { i32 }
%struct.crypto_attr_type = type { i32, i32 }
%struct.aead_instance = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.skcipher_alg = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, i32, i8*, i32, i32, i32 }
%struct.crypto_alg = type { i32, i32 }
%struct.hash_alg_common = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, i8*, i32, i32 }
%struct.ccm_instance_ctx = type { i32, i32 }

@CRYPTO_ALG_TYPE_AEAD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@crypto_ahash_type = common dso_local global i32 0, align 4
@CRYPTO_ALG_TYPE_HASH = common dso_local global i32 0, align 4
@CRYPTO_ALG_TYPE_AHASH_MASK = common dso_local global i32 0, align 4
@CRYPTO_ALG_ASYNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"cbcmac(\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"ctr(\00", align 1
@ENAMETOOLONG = common dso_local global i32 0, align 4
@CRYPTO_MAX_ALG_NAME = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"ccm(%s\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"ccm_base(%s,%s)\00", align 1
@crypto_ccm_init_tfm = common dso_local global i32 0, align 4
@crypto_ccm_exit_tfm = common dso_local global i32 0, align 4
@crypto_ccm_setkey = common dso_local global i32 0, align 4
@crypto_ccm_setauthsize = common dso_local global i32 0, align 4
@crypto_ccm_encrypt = common dso_local global i32 0, align 4
@crypto_ccm_decrypt = common dso_local global i32 0, align 4
@crypto_ccm_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_template*, %struct.rtattr**, i8*, i8*)* @crypto_ccm_create_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_ccm_create_common(%struct.crypto_template* %0, %struct.rtattr** %1, i8* %2, i8* %3) #0 {
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
  %15 = alloca %struct.ccm_instance_ctx*, align 8
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
  br label %294

25:                                               ; preds = %4
  %26 = load %struct.crypto_attr_type*, %struct.crypto_attr_type** %10, align 8
  %27 = getelementptr inbounds %struct.crypto_attr_type, %struct.crypto_attr_type* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
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
  br label %294

39:                                               ; preds = %25
  %40 = load i8*, i8** %9, align 8
  %41 = load i32, i32* @CRYPTO_ALG_TYPE_HASH, align 4
  %42 = load i32, i32* @CRYPTO_ALG_TYPE_AHASH_MASK, align 4
  %43 = load i32, i32* @CRYPTO_ALG_ASYNC, align 4
  %44 = or i32 %42, %43
  %45 = call %struct.crypto_attr_type* @crypto_find_alg(i8* %40, i32* @crypto_ahash_type, i32 %41, i32 %44)
  %46 = bitcast %struct.crypto_attr_type* %45 to %struct.crypto_alg*
  store %struct.crypto_alg* %46, %struct.crypto_alg** %13, align 8
  %47 = load %struct.crypto_alg*, %struct.crypto_alg** %13, align 8
  %48 = bitcast %struct.crypto_alg* %47 to %struct.crypto_attr_type*
  %49 = call i64 @IS_ERR(%struct.crypto_attr_type* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %39
  %52 = load %struct.crypto_alg*, %struct.crypto_alg** %13, align 8
  %53 = bitcast %struct.crypto_alg* %52 to %struct.crypto_attr_type*
  %54 = call i32 @PTR_ERR(%struct.crypto_attr_type* %53)
  store i32 %54, i32* %5, align 4
  br label %294

55:                                               ; preds = %39
  %56 = load %struct.crypto_alg*, %struct.crypto_alg** %13, align 8
  %57 = bitcast %struct.crypto_alg* %56 to %struct.crypto_attr_type*
  %58 = call %struct.hash_alg_common* @__crypto_hash_alg_common(%struct.crypto_attr_type* %57)
  store %struct.hash_alg_common* %58, %struct.hash_alg_common** %14, align 8
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %16, align 4
  %61 = load %struct.hash_alg_common*, %struct.hash_alg_common** %14, align 8
  %62 = getelementptr inbounds %struct.hash_alg_common, %struct.hash_alg_common* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = call i64 @strncmp(i8* %64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %55
  %68 = load %struct.hash_alg_common*, %struct.hash_alg_common** %14, align 8
  %69 = getelementptr inbounds %struct.hash_alg_common, %struct.hash_alg_common* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 16
  br i1 %71, label %72, label %73

72:                                               ; preds = %67, %55
  br label %278

73:                                               ; preds = %67
  %74 = load i32, i32* @GFP_KERNEL, align 4
  %75 = call %struct.aead_instance* @kzalloc(i32 76, i32 %74)
  store %struct.aead_instance* %75, %struct.aead_instance** %11, align 8
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %16, align 4
  %78 = load %struct.aead_instance*, %struct.aead_instance** %11, align 8
  %79 = icmp ne %struct.aead_instance* %78, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %73
  br label %278

81:                                               ; preds = %73
  %82 = load %struct.aead_instance*, %struct.aead_instance** %11, align 8
  %83 = call %struct.ccm_instance_ctx* @aead_instance_ctx(%struct.aead_instance* %82)
  store %struct.ccm_instance_ctx* %83, %struct.ccm_instance_ctx** %15, align 8
  %84 = load %struct.ccm_instance_ctx*, %struct.ccm_instance_ctx** %15, align 8
  %85 = getelementptr inbounds %struct.ccm_instance_ctx, %struct.ccm_instance_ctx* %84, i32 0, i32 0
  %86 = load %struct.hash_alg_common*, %struct.hash_alg_common** %14, align 8
  %87 = load %struct.aead_instance*, %struct.aead_instance** %11, align 8
  %88 = call i32 @aead_crypto_instance(%struct.aead_instance* %87)
  %89 = call i32 @crypto_init_ahash_spawn(i32* %85, %struct.hash_alg_common* %86, i32 %88)
  store i32 %89, i32* %16, align 4
  %90 = load i32, i32* %16, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %81
  br label %291

93:                                               ; preds = %81
  %94 = load %struct.ccm_instance_ctx*, %struct.ccm_instance_ctx** %15, align 8
  %95 = getelementptr inbounds %struct.ccm_instance_ctx, %struct.ccm_instance_ctx* %94, i32 0, i32 1
  %96 = load %struct.aead_instance*, %struct.aead_instance** %11, align 8
  %97 = call i32 @aead_crypto_instance(%struct.aead_instance* %96)
  %98 = call i32 @crypto_set_skcipher_spawn(i32* %95, i32 %97)
  %99 = load %struct.ccm_instance_ctx*, %struct.ccm_instance_ctx** %15, align 8
  %100 = getelementptr inbounds %struct.ccm_instance_ctx, %struct.ccm_instance_ctx* %99, i32 0, i32 1
  %101 = load i8*, i8** %8, align 8
  %102 = load %struct.crypto_attr_type*, %struct.crypto_attr_type** %10, align 8
  %103 = getelementptr inbounds %struct.crypto_attr_type, %struct.crypto_attr_type* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.crypto_attr_type*, %struct.crypto_attr_type** %10, align 8
  %106 = getelementptr inbounds %struct.crypto_attr_type, %struct.crypto_attr_type* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @crypto_requires_sync(i32 %104, i32 %107)
  %109 = call i32 @crypto_grab_skcipher(i32* %100, i8* %101, i32 0, i32 %108)
  store i32 %109, i32* %16, align 4
  %110 = load i32, i32* %16, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %93
  br label %287

113:                                              ; preds = %93
  %114 = load %struct.ccm_instance_ctx*, %struct.ccm_instance_ctx** %15, align 8
  %115 = getelementptr inbounds %struct.ccm_instance_ctx, %struct.ccm_instance_ctx* %114, i32 0, i32 1
  %116 = call %struct.skcipher_alg* @crypto_spawn_skcipher_alg(i32* %115)
  store %struct.skcipher_alg* %116, %struct.skcipher_alg** %12, align 8
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %16, align 4
  %119 = load %struct.skcipher_alg*, %struct.skcipher_alg** %12, align 8
  %120 = getelementptr inbounds %struct.skcipher_alg, %struct.skcipher_alg* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = call i64 @strncmp(i8* %122, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %135, label %125

125:                                              ; preds = %113
  %126 = load %struct.skcipher_alg*, %struct.skcipher_alg** %12, align 8
  %127 = call i32 @crypto_skcipher_alg_ivsize(%struct.skcipher_alg* %126)
  %128 = icmp ne i32 %127, 16
  br i1 %128, label %135, label %129

129:                                              ; preds = %125
  %130 = load %struct.skcipher_alg*, %struct.skcipher_alg** %12, align 8
  %131 = getelementptr inbounds %struct.skcipher_alg, %struct.skcipher_alg* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = icmp ne i32 %133, 1
  br i1 %134, label %135, label %136

135:                                              ; preds = %129, %125, %113
  br label %283

136:                                              ; preds = %129
  %137 = load %struct.skcipher_alg*, %struct.skcipher_alg** %12, align 8
  %138 = getelementptr inbounds %struct.skcipher_alg, %struct.skcipher_alg* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = load i8*, i8** %139, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 4
  %142 = load %struct.hash_alg_common*, %struct.hash_alg_common** %14, align 8
  %143 = getelementptr inbounds %struct.hash_alg_common, %struct.hash_alg_common* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 7
  %147 = call i64 @strcmp(i8* %141, i8* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %136
  br label %283

150:                                              ; preds = %136
  %151 = load i32, i32* @ENAMETOOLONG, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %16, align 4
  %153 = load %struct.aead_instance*, %struct.aead_instance** %11, align 8
  %154 = getelementptr inbounds %struct.aead_instance, %struct.aead_instance* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 6
  %157 = load i32, i32* %156, align 4
  %158 = load i64, i64* @CRYPTO_MAX_ALG_NAME, align 8
  %159 = load %struct.skcipher_alg*, %struct.skcipher_alg** %12, align 8
  %160 = getelementptr inbounds %struct.skcipher_alg, %struct.skcipher_alg* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  %162 = load i8*, i8** %161, align 8
  %163 = getelementptr inbounds i8, i8* %162, i64 4
  %164 = call i64 (i32, i64, i8*, i8*, ...) @snprintf(i32 %157, i64 %158, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %163)
  %165 = load i64, i64* @CRYPTO_MAX_ALG_NAME, align 8
  %166 = icmp sge i64 %164, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %150
  br label %283

168:                                              ; preds = %150
  %169 = load %struct.aead_instance*, %struct.aead_instance** %11, align 8
  %170 = getelementptr inbounds %struct.aead_instance, %struct.aead_instance* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 5
  %173 = load i32, i32* %172, align 4
  %174 = load i64, i64* @CRYPTO_MAX_ALG_NAME, align 8
  %175 = load %struct.skcipher_alg*, %struct.skcipher_alg** %12, align 8
  %176 = getelementptr inbounds %struct.skcipher_alg, %struct.skcipher_alg* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 2
  %178 = load i8*, i8** %177, align 8
  %179 = load %struct.hash_alg_common*, %struct.hash_alg_common** %14, align 8
  %180 = getelementptr inbounds %struct.hash_alg_common, %struct.hash_alg_common* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 1
  %182 = load i8*, i8** %181, align 8
  %183 = call i64 (i32, i64, i8*, i8*, ...) @snprintf(i32 %173, i64 %174, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* %178, i8* %182)
  %184 = load i64, i64* @CRYPTO_MAX_ALG_NAME, align 8
  %185 = icmp sge i64 %183, %184
  br i1 %185, label %186, label %187

186:                                              ; preds = %168
  br label %283

187:                                              ; preds = %168
  %188 = load %struct.skcipher_alg*, %struct.skcipher_alg** %12, align 8
  %189 = getelementptr inbounds %struct.skcipher_alg, %struct.skcipher_alg* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @CRYPTO_ALG_ASYNC, align 4
  %193 = and i32 %191, %192
  %194 = load %struct.aead_instance*, %struct.aead_instance** %11, align 8
  %195 = getelementptr inbounds %struct.aead_instance, %struct.aead_instance* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 8
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 0
  store i32 %193, i32* %197, align 4
  %198 = load %struct.hash_alg_common*, %struct.hash_alg_common** %14, align 8
  %199 = getelementptr inbounds %struct.hash_alg_common, %struct.hash_alg_common* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.skcipher_alg*, %struct.skcipher_alg** %12, align 8
  %203 = getelementptr inbounds %struct.skcipher_alg, %struct.skcipher_alg* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 4
  %205 = load i32, i32* %204, align 4
  %206 = add nsw i32 %201, %205
  %207 = sdiv i32 %206, 2
  %208 = load %struct.aead_instance*, %struct.aead_instance** %11, align 8
  %209 = getelementptr inbounds %struct.aead_instance, %struct.aead_instance* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 8
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 1
  store i32 %207, i32* %211, align 4
  %212 = load %struct.aead_instance*, %struct.aead_instance** %11, align 8
  %213 = getelementptr inbounds %struct.aead_instance, %struct.aead_instance* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 8
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 2
  store i32 1, i32* %215, align 4
  %216 = load %struct.hash_alg_common*, %struct.hash_alg_common** %14, align 8
  %217 = getelementptr inbounds %struct.hash_alg_common, %struct.hash_alg_common* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.skcipher_alg*, %struct.skcipher_alg** %12, align 8
  %221 = getelementptr inbounds %struct.skcipher_alg, %struct.skcipher_alg* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i32 0, i32 5
  %223 = load i32, i32* %222, align 8
  %224 = or i32 %219, %223
  %225 = load %struct.aead_instance*, %struct.aead_instance** %11, align 8
  %226 = getelementptr inbounds %struct.aead_instance, %struct.aead_instance* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 8
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 3
  store i32 %224, i32* %228, align 4
  %229 = load %struct.aead_instance*, %struct.aead_instance** %11, align 8
  %230 = getelementptr inbounds %struct.aead_instance, %struct.aead_instance* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i32 0, i32 0
  store i32 16, i32* %231, align 4
  %232 = load %struct.skcipher_alg*, %struct.skcipher_alg** %12, align 8
  %233 = call i32 @crypto_skcipher_alg_chunksize(%struct.skcipher_alg* %232)
  %234 = load %struct.aead_instance*, %struct.aead_instance** %11, align 8
  %235 = getelementptr inbounds %struct.aead_instance, %struct.aead_instance* %234, i32 0, i32 1
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %235, i32 0, i32 9
  store i32 %233, i32* %236, align 4
  %237 = load %struct.aead_instance*, %struct.aead_instance** %11, align 8
  %238 = getelementptr inbounds %struct.aead_instance, %struct.aead_instance* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %238, i32 0, i32 1
  store i32 16, i32* %239, align 4
  %240 = load %struct.aead_instance*, %struct.aead_instance** %11, align 8
  %241 = getelementptr inbounds %struct.aead_instance, %struct.aead_instance* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %241, i32 0, i32 8
  %243 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %242, i32 0, i32 4
  store i32 4, i32* %243, align 4
  %244 = load i32, i32* @crypto_ccm_init_tfm, align 4
  %245 = load %struct.aead_instance*, %struct.aead_instance** %11, align 8
  %246 = getelementptr inbounds %struct.aead_instance, %struct.aead_instance* %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %246, i32 0, i32 7
  store i32 %244, i32* %247, align 4
  %248 = load i32, i32* @crypto_ccm_exit_tfm, align 4
  %249 = load %struct.aead_instance*, %struct.aead_instance** %11, align 8
  %250 = getelementptr inbounds %struct.aead_instance, %struct.aead_instance* %249, i32 0, i32 1
  %251 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %250, i32 0, i32 6
  store i32 %248, i32* %251, align 4
  %252 = load i32, i32* @crypto_ccm_setkey, align 4
  %253 = load %struct.aead_instance*, %struct.aead_instance** %11, align 8
  %254 = getelementptr inbounds %struct.aead_instance, %struct.aead_instance* %253, i32 0, i32 1
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %254, i32 0, i32 5
  store i32 %252, i32* %255, align 4
  %256 = load i32, i32* @crypto_ccm_setauthsize, align 4
  %257 = load %struct.aead_instance*, %struct.aead_instance** %11, align 8
  %258 = getelementptr inbounds %struct.aead_instance, %struct.aead_instance* %257, i32 0, i32 1
  %259 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %258, i32 0, i32 4
  store i32 %256, i32* %259, align 4
  %260 = load i32, i32* @crypto_ccm_encrypt, align 4
  %261 = load %struct.aead_instance*, %struct.aead_instance** %11, align 8
  %262 = getelementptr inbounds %struct.aead_instance, %struct.aead_instance* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %262, i32 0, i32 3
  store i32 %260, i32* %263, align 4
  %264 = load i32, i32* @crypto_ccm_decrypt, align 4
  %265 = load %struct.aead_instance*, %struct.aead_instance** %11, align 8
  %266 = getelementptr inbounds %struct.aead_instance, %struct.aead_instance* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %266, i32 0, i32 2
  store i32 %264, i32* %267, align 4
  %268 = load i32, i32* @crypto_ccm_free, align 4
  %269 = load %struct.aead_instance*, %struct.aead_instance** %11, align 8
  %270 = getelementptr inbounds %struct.aead_instance, %struct.aead_instance* %269, i32 0, i32 0
  store i32 %268, i32* %270, align 4
  %271 = load %struct.crypto_template*, %struct.crypto_template** %6, align 8
  %272 = load %struct.aead_instance*, %struct.aead_instance** %11, align 8
  %273 = call i32 @aead_register_instance(%struct.crypto_template* %271, %struct.aead_instance* %272)
  store i32 %273, i32* %16, align 4
  %274 = load i32, i32* %16, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %277

276:                                              ; preds = %187
  br label %283

277:                                              ; preds = %187
  br label %278

278:                                              ; preds = %291, %277, %80, %72
  %279 = load %struct.crypto_alg*, %struct.crypto_alg** %13, align 8
  %280 = bitcast %struct.crypto_alg* %279 to %struct.crypto_attr_type*
  %281 = call i32 @crypto_mod_put(%struct.crypto_attr_type* %280)
  %282 = load i32, i32* %16, align 4
  store i32 %282, i32* %5, align 4
  br label %294

283:                                              ; preds = %276, %186, %167, %149, %135
  %284 = load %struct.ccm_instance_ctx*, %struct.ccm_instance_ctx** %15, align 8
  %285 = getelementptr inbounds %struct.ccm_instance_ctx, %struct.ccm_instance_ctx* %284, i32 0, i32 1
  %286 = call i32 @crypto_drop_skcipher(i32* %285)
  br label %287

287:                                              ; preds = %283, %112
  %288 = load %struct.ccm_instance_ctx*, %struct.ccm_instance_ctx** %15, align 8
  %289 = getelementptr inbounds %struct.ccm_instance_ctx, %struct.ccm_instance_ctx* %288, i32 0, i32 0
  %290 = call i32 @crypto_drop_ahash(i32* %289)
  br label %291

291:                                              ; preds = %287, %92
  %292 = load %struct.aead_instance*, %struct.aead_instance** %11, align 8
  %293 = call i32 @kfree(%struct.aead_instance* %292)
  br label %278

294:                                              ; preds = %278, %51, %36, %22
  %295 = load i32, i32* %5, align 4
  ret i32 %295
}

declare dso_local %struct.crypto_attr_type* @crypto_get_attr_type(%struct.rtattr**) #1

declare dso_local i64 @IS_ERR(%struct.crypto_attr_type*) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_attr_type*) #1

declare dso_local %struct.crypto_attr_type* @crypto_find_alg(i8*, i32*, i32, i32) #1

declare dso_local %struct.hash_alg_common* @__crypto_hash_alg_common(%struct.crypto_attr_type*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local %struct.aead_instance* @kzalloc(i32, i32) #1

declare dso_local %struct.ccm_instance_ctx* @aead_instance_ctx(%struct.aead_instance*) #1

declare dso_local i32 @crypto_init_ahash_spawn(i32*, %struct.hash_alg_common*, i32) #1

declare dso_local i32 @aead_crypto_instance(%struct.aead_instance*) #1

declare dso_local i32 @crypto_set_skcipher_spawn(i32*, i32) #1

declare dso_local i32 @crypto_grab_skcipher(i32*, i8*, i32, i32) #1

declare dso_local i32 @crypto_requires_sync(i32, i32) #1

declare dso_local %struct.skcipher_alg* @crypto_spawn_skcipher_alg(i32*) #1

declare dso_local i32 @crypto_skcipher_alg_ivsize(%struct.skcipher_alg*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

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
