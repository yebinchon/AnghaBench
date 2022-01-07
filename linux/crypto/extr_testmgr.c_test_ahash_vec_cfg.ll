; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_testmgr.c_test_ahash_vec_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_testmgr.c_test_ahash_vec_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_testvec = type { i32, i32, i32, i32, i32 }
%struct.testvec_config = type { i32, i64, i32, i32 }
%struct.ahash_request = type { i32* }
%struct.test_sglist = type { i32, %struct.scatterlist* }
%struct.scatterlist = type { i64 }
%struct.crypto_ahash = type { i32 }
%struct.test_sg_division = type { i64, i32 }

@CRYPTO_TFM_REQ_MAY_BACKLOG = common dso_local global i32 0, align 4
@XBUFSIZE = common dso_local global i32 0, align 4
@wait = common dso_local global i32 0, align 4
@HASH_MAX_DIGESTSIZE = common dso_local global i32 0, align 4
@TESTMGR_POISON_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [95 x i8] c"alg: ahash: %s setkey failed on test vector %s; expected_error=%d, actual_error=%d, flags=%#x\0A\00", align 1
@.str.1 = private unnamed_addr constant [83 x i8] c"alg: ahash: %s setkey unexpectedly succeeded on test vector %s; expected_error=%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [74 x i8] c"alg: ahash: %s: error preparing scatterlist for test vector %s, cfg=\22%s\22\0A\00", align 1
@FINALIZATION_TYPE_DIGEST = common dso_local global i64 0, align 8
@crypto_req_done = common dso_local global i32 0, align 4
@crypto_ahash_digest = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [96 x i8] c"alg: ahash: %s digest() failed on test vector %s; expected_error=%d, actual_error=%d, cfg=\22%s\22\0A\00", align 1
@.str.4 = private unnamed_addr constant [95 x i8] c"alg: ahash: %s digest() unexpectedly succeeded on test vector %s; expected_error=%d, cfg=\22%s\22\0A\00", align 1
@crypto_ahash_init = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"init\00", align 1
@FLUSH_TYPE_NONE = common dso_local global i64 0, align 8
@crypto_ahash_update = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"update\00", align 1
@FLUSH_TYPE_REIMPORT = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [7 x i8] c"export\00", align 1
@.str.8 = private unnamed_addr constant [74 x i8] c"alg: ahash: %s export() overran state buffer on test vector %s, cfg=\22%s\22\0A\00", align 1
@EOVERFLOW = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"import\00", align 1
@FINALIZATION_TYPE_FINAL = common dso_local global i64 0, align 8
@crypto_ahash_final = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [71 x i8] c"alg: ahash: %s final() failed with err %d on test vector %s, cfg=\22%s\22\0A\00", align 1
@crypto_ahash_finup = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [71 x i8] c"alg: ahash: %s finup() failed with err %d on test vector %s, cfg=\22%s\22\0A\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"ahash\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.hash_testvec*, i8*, %struct.testvec_config*, %struct.ahash_request*, %struct.test_sglist*, i32*)* @test_ahash_vec_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_ahash_vec_cfg(i8* %0, %struct.hash_testvec* %1, i8* %2, %struct.testvec_config* %3, %struct.ahash_request* %4, %struct.test_sglist* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.hash_testvec*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.testvec_config*, align 8
  %13 = alloca %struct.ahash_request*, align 8
  %14 = alloca %struct.test_sglist*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.crypto_ahash*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.scatterlist*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store %struct.hash_testvec* %1, %struct.hash_testvec** %10, align 8
  store i8* %2, i8** %11, align 8
  store %struct.testvec_config* %3, %struct.testvec_config** %12, align 8
  store %struct.ahash_request* %4, %struct.ahash_request** %13, align 8
  store %struct.test_sglist* %5, %struct.test_sglist** %14, align 8
  store i32* %6, i32** %15, align 8
  %29 = load %struct.ahash_request*, %struct.ahash_request** %13, align 8
  %30 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request* %29)
  store %struct.crypto_ahash* %30, %struct.crypto_ahash** %16, align 8
  %31 = load %struct.crypto_ahash*, %struct.crypto_ahash** %16, align 8
  %32 = call i32 @crypto_ahash_alignmask(%struct.crypto_ahash* %31)
  store i32 %32, i32* %17, align 4
  %33 = load %struct.crypto_ahash*, %struct.crypto_ahash** %16, align 8
  %34 = call i32 @crypto_ahash_digestsize(%struct.crypto_ahash* %33)
  store i32 %34, i32* %18, align 4
  %35 = load %struct.crypto_ahash*, %struct.crypto_ahash** %16, align 8
  %36 = call i32 @crypto_ahash_statesize(%struct.crypto_ahash* %35)
  store i32 %36, i32* %19, align 4
  %37 = load i32, i32* @CRYPTO_TFM_REQ_MAY_BACKLOG, align 4
  %38 = load %struct.testvec_config*, %struct.testvec_config** %12, align 8
  %39 = getelementptr inbounds %struct.testvec_config, %struct.testvec_config* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = or i32 %37, %40
  store i32 %41, i32* %20, align 4
  %42 = load i32, i32* @XBUFSIZE, align 4
  %43 = zext i32 %42 to i64
  %44 = call i8* @llvm.stacksave()
  store i8* %44, i8** %21, align 8
  %45 = alloca %struct.test_sg_division*, i64 %43, align 16
  store i64 %43, i64* %22, align 8
  %46 = load i32, i32* @wait, align 4
  %47 = call i32 @DECLARE_CRYPTO_WAIT(i32 %46)
  %48 = load i32, i32* @HASH_MAX_DIGESTSIZE, align 4
  %49 = load i32, i32* @TESTMGR_POISON_LEN, align 4
  %50 = add nsw i32 %48, %49
  %51 = zext i32 %50 to i64
  %52 = alloca i32, i64 %51, align 16
  store i64 %51, i64* %26, align 8
  %53 = load %struct.hash_testvec*, %struct.hash_testvec** %10, align 8
  %54 = getelementptr inbounds %struct.hash_testvec, %struct.hash_testvec* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %101

57:                                               ; preds = %7
  %58 = load %struct.crypto_ahash*, %struct.crypto_ahash** %16, align 8
  %59 = load %struct.hash_testvec*, %struct.hash_testvec** %10, align 8
  %60 = getelementptr inbounds %struct.hash_testvec, %struct.hash_testvec* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.hash_testvec*, %struct.hash_testvec** %10, align 8
  %63 = getelementptr inbounds %struct.hash_testvec, %struct.hash_testvec* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @crypto_ahash_setkey(%struct.crypto_ahash* %58, i32 %61, i32 %64)
  store i32 %65, i32* %27, align 4
  %66 = load i32, i32* %27, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %86

68:                                               ; preds = %57
  %69 = load i32, i32* %27, align 4
  %70 = load %struct.hash_testvec*, %struct.hash_testvec** %10, align 8
  %71 = getelementptr inbounds %struct.hash_testvec, %struct.hash_testvec* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %69, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  store i32 0, i32* %8, align 4
  store i32 1, i32* %28, align 4
  br label %437

75:                                               ; preds = %68
  %76 = load i8*, i8** %9, align 8
  %77 = load i8*, i8** %11, align 8
  %78 = load %struct.hash_testvec*, %struct.hash_testvec** %10, align 8
  %79 = getelementptr inbounds %struct.hash_testvec, %struct.hash_testvec* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %27, align 4
  %82 = load %struct.crypto_ahash*, %struct.crypto_ahash** %16, align 8
  %83 = call i32 @crypto_ahash_get_flags(%struct.crypto_ahash* %82)
  %84 = call i32 (i8*, i8*, ...) @pr_err(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str, i64 0, i64 0), i8* %76, i8* %77, i32 %80, i32 %81, i32 %83)
  %85 = load i32, i32* %27, align 4
  store i32 %85, i32* %8, align 4
  store i32 1, i32* %28, align 4
  br label %437

86:                                               ; preds = %57
  %87 = load %struct.hash_testvec*, %struct.hash_testvec** %10, align 8
  %88 = getelementptr inbounds %struct.hash_testvec, %struct.hash_testvec* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %86
  %92 = load i8*, i8** %9, align 8
  %93 = load i8*, i8** %11, align 8
  %94 = load %struct.hash_testvec*, %struct.hash_testvec** %10, align 8
  %95 = getelementptr inbounds %struct.hash_testvec, %struct.hash_testvec* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 (i8*, i8*, ...) @pr_err(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i8* %92, i8* %93, i32 %96)
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %8, align 4
  store i32 1, i32* %28, align 4
  br label %437

100:                                              ; preds = %86
  br label %101

101:                                              ; preds = %100, %7
  %102 = load %struct.test_sglist*, %struct.test_sglist** %14, align 8
  %103 = load %struct.hash_testvec*, %struct.hash_testvec** %10, align 8
  %104 = load %struct.testvec_config*, %struct.testvec_config** %12, align 8
  %105 = load i32, i32* %17, align 4
  %106 = call i32 @build_hash_sglist(%struct.test_sglist* %102, %struct.hash_testvec* %103, %struct.testvec_config* %104, i32 %105, %struct.test_sg_division** %45)
  store i32 %106, i32* %27, align 4
  %107 = load i32, i32* %27, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %101
  %110 = load i8*, i8** %9, align 8
  %111 = load i8*, i8** %11, align 8
  %112 = load %struct.testvec_config*, %struct.testvec_config** %12, align 8
  %113 = getelementptr inbounds %struct.testvec_config, %struct.testvec_config* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = call i32 (i8*, i8*, ...) @pr_err(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0), i8* %110, i8* %111, i32 %114)
  %116 = load i32, i32* %27, align 4
  store i32 %116, i32* %8, align 4
  store i32 1, i32* %28, align 4
  br label %437

117:                                              ; preds = %101
  %118 = load %struct.ahash_request*, %struct.ahash_request** %13, align 8
  %119 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = load %struct.crypto_ahash*, %struct.crypto_ahash** %16, align 8
  %122 = call i32 @crypto_ahash_reqsize(%struct.crypto_ahash* %121)
  %123 = call i32 @testmgr_poison(i32* %120, i32 %122)
  %124 = load i32, i32* %18, align 4
  %125 = load i32, i32* @TESTMGR_POISON_LEN, align 4
  %126 = add i32 %124, %125
  %127 = call i32 @testmgr_poison(i32* %52, i32 %126)
  %128 = load %struct.testvec_config*, %struct.testvec_config** %12, align 8
  %129 = getelementptr inbounds %struct.testvec_config, %struct.testvec_config* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @FINALIZATION_TYPE_DIGEST, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %138, label %133

133:                                              ; preds = %117
  %134 = load %struct.hash_testvec*, %struct.hash_testvec** %10, align 8
  %135 = getelementptr inbounds %struct.hash_testvec, %struct.hash_testvec* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %196

138:                                              ; preds = %133, %117
  %139 = load %struct.ahash_request*, %struct.ahash_request** %13, align 8
  %140 = load i32, i32* %20, align 4
  %141 = load i32, i32* @crypto_req_done, align 4
  %142 = call i32 @ahash_request_set_callback(%struct.ahash_request* %139, i32 %140, i32 %141, i32* @wait)
  %143 = load %struct.ahash_request*, %struct.ahash_request** %13, align 8
  %144 = load %struct.test_sglist*, %struct.test_sglist** %14, align 8
  %145 = getelementptr inbounds %struct.test_sglist, %struct.test_sglist* %144, i32 0, i32 1
  %146 = load %struct.scatterlist*, %struct.scatterlist** %145, align 8
  %147 = load %struct.hash_testvec*, %struct.hash_testvec** %10, align 8
  %148 = getelementptr inbounds %struct.hash_testvec, %struct.hash_testvec* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @ahash_request_set_crypt(%struct.ahash_request* %143, %struct.scatterlist* %146, i32* %52, i32 %149)
  %151 = load i32, i32* @crypto_ahash_digest, align 4
  %152 = load %struct.ahash_request*, %struct.ahash_request** %13, align 8
  %153 = load %struct.testvec_config*, %struct.testvec_config** %12, align 8
  %154 = getelementptr inbounds %struct.testvec_config, %struct.testvec_config* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @do_ahash_op(i32 %151, %struct.ahash_request* %152, i32* @wait, i32 %155)
  store i32 %156, i32* %27, align 4
  %157 = load i32, i32* %27, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %178

159:                                              ; preds = %138
  %160 = load i32, i32* %27, align 4
  %161 = load %struct.hash_testvec*, %struct.hash_testvec** %10, align 8
  %162 = getelementptr inbounds %struct.hash_testvec, %struct.hash_testvec* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = icmp eq i32 %160, %163
  br i1 %164, label %165, label %166

165:                                              ; preds = %159
  store i32 0, i32* %8, align 4
  store i32 1, i32* %28, align 4
  br label %437

166:                                              ; preds = %159
  %167 = load i8*, i8** %9, align 8
  %168 = load i8*, i8** %11, align 8
  %169 = load %struct.hash_testvec*, %struct.hash_testvec** %10, align 8
  %170 = getelementptr inbounds %struct.hash_testvec, %struct.hash_testvec* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* %27, align 4
  %173 = load %struct.testvec_config*, %struct.testvec_config** %12, align 8
  %174 = getelementptr inbounds %struct.testvec_config, %struct.testvec_config* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = call i32 (i8*, i8*, ...) @pr_err(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.3, i64 0, i64 0), i8* %167, i8* %168, i32 %171, i32 %172, i32 %175)
  %177 = load i32, i32* %27, align 4
  store i32 %177, i32* %8, align 4
  store i32 1, i32* %28, align 4
  br label %437

178:                                              ; preds = %138
  %179 = load %struct.hash_testvec*, %struct.hash_testvec** %10, align 8
  %180 = getelementptr inbounds %struct.hash_testvec, %struct.hash_testvec* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %195

183:                                              ; preds = %178
  %184 = load i8*, i8** %9, align 8
  %185 = load i8*, i8** %11, align 8
  %186 = load %struct.hash_testvec*, %struct.hash_testvec** %10, align 8
  %187 = getelementptr inbounds %struct.hash_testvec, %struct.hash_testvec* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.testvec_config*, %struct.testvec_config** %12, align 8
  %190 = getelementptr inbounds %struct.testvec_config, %struct.testvec_config* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = call i32 (i8*, i8*, ...) @pr_err(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.4, i64 0, i64 0), i8* %184, i8* %185, i32 %188, i32 %191)
  %193 = load i32, i32* @EINVAL, align 4
  %194 = sub nsw i32 0, %193
  store i32 %194, i32* %8, align 4
  store i32 1, i32* %28, align 4
  br label %437

195:                                              ; preds = %178
  br label %430

196:                                              ; preds = %133
  %197 = load %struct.ahash_request*, %struct.ahash_request** %13, align 8
  %198 = load i32, i32* %20, align 4
  %199 = load i32, i32* @crypto_req_done, align 4
  %200 = call i32 @ahash_request_set_callback(%struct.ahash_request* %197, i32 %198, i32 %199, i32* @wait)
  %201 = load %struct.ahash_request*, %struct.ahash_request** %13, align 8
  %202 = call i32 @ahash_request_set_crypt(%struct.ahash_request* %201, %struct.scatterlist* null, i32* %52, i32 0)
  %203 = load i32, i32* @crypto_ahash_init, align 4
  %204 = load %struct.ahash_request*, %struct.ahash_request** %13, align 8
  %205 = load %struct.testvec_config*, %struct.testvec_config** %12, align 8
  %206 = getelementptr inbounds %struct.testvec_config, %struct.testvec_config* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @do_ahash_op(i32 %203, %struct.ahash_request* %204, i32* @wait, i32 %207)
  store i32 %208, i32* %27, align 4
  %209 = load i32, i32* %27, align 4
  %210 = load i32, i32* %18, align 4
  %211 = load i8*, i8** %9, align 8
  %212 = load i8*, i8** %11, align 8
  %213 = load %struct.testvec_config*, %struct.testvec_config** %12, align 8
  %214 = call i32 @check_nonfinal_ahash_op(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %209, i32* %52, i32 %210, i8* %211, i8* %212, %struct.testvec_config* %213)
  store i32 %214, i32* %27, align 4
  %215 = load i32, i32* %27, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %196
  %218 = load i32, i32* %27, align 4
  store i32 %218, i32* %8, align 4
  store i32 1, i32* %28, align 4
  br label %437

219:                                              ; preds = %196
  store %struct.scatterlist* null, %struct.scatterlist** %24, align 8
  store i32 0, i32* %25, align 4
  store i32 0, i32* %23, align 4
  br label %220

220:                                              ; preds = %357, %219
  %221 = load i32, i32* %23, align 4
  %222 = load %struct.test_sglist*, %struct.test_sglist** %14, align 8
  %223 = getelementptr inbounds %struct.test_sglist, %struct.test_sglist* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = icmp ult i32 %221, %224
  br i1 %225, label %226, label %360

226:                                              ; preds = %220
  %227 = load i32, i32* %23, align 4
  %228 = zext i32 %227 to i64
  %229 = getelementptr inbounds %struct.test_sg_division*, %struct.test_sg_division** %45, i64 %228
  %230 = load %struct.test_sg_division*, %struct.test_sg_division** %229, align 8
  %231 = getelementptr inbounds %struct.test_sg_division, %struct.test_sg_division* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = load i64, i64* @FLUSH_TYPE_NONE, align 8
  %234 = icmp ne i64 %232, %233
  br i1 %234, label %235, label %267

235:                                              ; preds = %226
  %236 = load %struct.scatterlist*, %struct.scatterlist** %24, align 8
  %237 = icmp ne %struct.scatterlist* %236, null
  br i1 %237, label %238, label %267

238:                                              ; preds = %235
  %239 = load %struct.ahash_request*, %struct.ahash_request** %13, align 8
  %240 = load i32, i32* %20, align 4
  %241 = load i32, i32* @crypto_req_done, align 4
  %242 = call i32 @ahash_request_set_callback(%struct.ahash_request* %239, i32 %240, i32 %241, i32* @wait)
  %243 = load %struct.ahash_request*, %struct.ahash_request** %13, align 8
  %244 = load %struct.scatterlist*, %struct.scatterlist** %24, align 8
  %245 = load i32, i32* %25, align 4
  %246 = call i32 @ahash_request_set_crypt(%struct.ahash_request* %243, %struct.scatterlist* %244, i32* %52, i32 %245)
  %247 = load i32, i32* @crypto_ahash_update, align 4
  %248 = load %struct.ahash_request*, %struct.ahash_request** %13, align 8
  %249 = load i32, i32* %23, align 4
  %250 = zext i32 %249 to i64
  %251 = getelementptr inbounds %struct.test_sg_division*, %struct.test_sg_division** %45, i64 %250
  %252 = load %struct.test_sg_division*, %struct.test_sg_division** %251, align 8
  %253 = getelementptr inbounds %struct.test_sg_division, %struct.test_sg_division* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 8
  %255 = call i32 @do_ahash_op(i32 %247, %struct.ahash_request* %248, i32* @wait, i32 %254)
  store i32 %255, i32* %27, align 4
  %256 = load i32, i32* %27, align 4
  %257 = load i32, i32* %18, align 4
  %258 = load i8*, i8** %9, align 8
  %259 = load i8*, i8** %11, align 8
  %260 = load %struct.testvec_config*, %struct.testvec_config** %12, align 8
  %261 = call i32 @check_nonfinal_ahash_op(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %256, i32* %52, i32 %257, i8* %258, i8* %259, %struct.testvec_config* %260)
  store i32 %261, i32* %27, align 4
  %262 = load i32, i32* %27, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %266

264:                                              ; preds = %238
  %265 = load i32, i32* %27, align 4
  store i32 %265, i32* %8, align 4
  store i32 1, i32* %28, align 4
  br label %437

266:                                              ; preds = %238
  store %struct.scatterlist* null, %struct.scatterlist** %24, align 8
  store i32 0, i32* %25, align 4
  br label %267

267:                                              ; preds = %266, %235, %226
  %268 = load i32, i32* %23, align 4
  %269 = zext i32 %268 to i64
  %270 = getelementptr inbounds %struct.test_sg_division*, %struct.test_sg_division** %45, i64 %269
  %271 = load %struct.test_sg_division*, %struct.test_sg_division** %270, align 8
  %272 = getelementptr inbounds %struct.test_sg_division, %struct.test_sg_division* %271, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = load i64, i64* @FLUSH_TYPE_REIMPORT, align 8
  %275 = icmp eq i64 %273, %274
  br i1 %275, label %276, label %334

276:                                              ; preds = %267
  %277 = load i32*, i32** %15, align 8
  %278 = load i32, i32* %19, align 4
  %279 = zext i32 %278 to i64
  %280 = getelementptr inbounds i32, i32* %277, i64 %279
  %281 = load i32, i32* @TESTMGR_POISON_LEN, align 4
  %282 = call i32 @testmgr_poison(i32* %280, i32 %281)
  %283 = load %struct.ahash_request*, %struct.ahash_request** %13, align 8
  %284 = load i32*, i32** %15, align 8
  %285 = call i32 @crypto_ahash_export(%struct.ahash_request* %283, i32* %284)
  store i32 %285, i32* %27, align 4
  %286 = load i32, i32* %27, align 4
  %287 = load i32, i32* %18, align 4
  %288 = load i8*, i8** %9, align 8
  %289 = load i8*, i8** %11, align 8
  %290 = load %struct.testvec_config*, %struct.testvec_config** %12, align 8
  %291 = call i32 @check_nonfinal_ahash_op(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %286, i32* %52, i32 %287, i8* %288, i8* %289, %struct.testvec_config* %290)
  store i32 %291, i32* %27, align 4
  %292 = load i32, i32* %27, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %296

294:                                              ; preds = %276
  %295 = load i32, i32* %27, align 4
  store i32 %295, i32* %8, align 4
  store i32 1, i32* %28, align 4
  br label %437

296:                                              ; preds = %276
  %297 = load i32*, i32** %15, align 8
  %298 = load i32, i32* %19, align 4
  %299 = zext i32 %298 to i64
  %300 = getelementptr inbounds i32, i32* %297, i64 %299
  %301 = load i32, i32* @TESTMGR_POISON_LEN, align 4
  %302 = call i32 @testmgr_is_poison(i32* %300, i32 %301)
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %313, label %304

304:                                              ; preds = %296
  %305 = load i8*, i8** %9, align 8
  %306 = load i8*, i8** %11, align 8
  %307 = load %struct.testvec_config*, %struct.testvec_config** %12, align 8
  %308 = getelementptr inbounds %struct.testvec_config, %struct.testvec_config* %307, i32 0, i32 2
  %309 = load i32, i32* %308, align 8
  %310 = call i32 (i8*, i8*, ...) @pr_err(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.8, i64 0, i64 0), i8* %305, i8* %306, i32 %309)
  %311 = load i32, i32* @EOVERFLOW, align 4
  %312 = sub nsw i32 0, %311
  store i32 %312, i32* %8, align 4
  store i32 1, i32* %28, align 4
  br label %437

313:                                              ; preds = %296
  %314 = load %struct.ahash_request*, %struct.ahash_request** %13, align 8
  %315 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %314, i32 0, i32 0
  %316 = load i32*, i32** %315, align 8
  %317 = load %struct.crypto_ahash*, %struct.crypto_ahash** %16, align 8
  %318 = call i32 @crypto_ahash_reqsize(%struct.crypto_ahash* %317)
  %319 = call i32 @testmgr_poison(i32* %316, i32 %318)
  %320 = load %struct.ahash_request*, %struct.ahash_request** %13, align 8
  %321 = load i32*, i32** %15, align 8
  %322 = call i32 @crypto_ahash_import(%struct.ahash_request* %320, i32* %321)
  store i32 %322, i32* %27, align 4
  %323 = load i32, i32* %27, align 4
  %324 = load i32, i32* %18, align 4
  %325 = load i8*, i8** %9, align 8
  %326 = load i8*, i8** %11, align 8
  %327 = load %struct.testvec_config*, %struct.testvec_config** %12, align 8
  %328 = call i32 @check_nonfinal_ahash_op(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 %323, i32* %52, i32 %324, i8* %325, i8* %326, %struct.testvec_config* %327)
  store i32 %328, i32* %27, align 4
  %329 = load i32, i32* %27, align 4
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %333

331:                                              ; preds = %313
  %332 = load i32, i32* %27, align 4
  store i32 %332, i32* %8, align 4
  store i32 1, i32* %28, align 4
  br label %437

333:                                              ; preds = %313
  br label %334

334:                                              ; preds = %333, %267
  %335 = load %struct.scatterlist*, %struct.scatterlist** %24, align 8
  %336 = icmp eq %struct.scatterlist* %335, null
  br i1 %336, label %337, label %344

337:                                              ; preds = %334
  %338 = load %struct.test_sglist*, %struct.test_sglist** %14, align 8
  %339 = getelementptr inbounds %struct.test_sglist, %struct.test_sglist* %338, i32 0, i32 1
  %340 = load %struct.scatterlist*, %struct.scatterlist** %339, align 8
  %341 = load i32, i32* %23, align 4
  %342 = zext i32 %341 to i64
  %343 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %340, i64 %342
  store %struct.scatterlist* %343, %struct.scatterlist** %24, align 8
  br label %344

344:                                              ; preds = %337, %334
  %345 = load %struct.test_sglist*, %struct.test_sglist** %14, align 8
  %346 = getelementptr inbounds %struct.test_sglist, %struct.test_sglist* %345, i32 0, i32 1
  %347 = load %struct.scatterlist*, %struct.scatterlist** %346, align 8
  %348 = load i32, i32* %23, align 4
  %349 = zext i32 %348 to i64
  %350 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %347, i64 %349
  %351 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %350, i32 0, i32 0
  %352 = load i64, i64* %351, align 8
  %353 = load i32, i32* %25, align 4
  %354 = zext i32 %353 to i64
  %355 = add nsw i64 %354, %352
  %356 = trunc i64 %355 to i32
  store i32 %356, i32* %25, align 4
  br label %357

357:                                              ; preds = %344
  %358 = load i32, i32* %23, align 4
  %359 = add i32 %358, 1
  store i32 %359, i32* %23, align 4
  br label %220

360:                                              ; preds = %220
  %361 = load %struct.ahash_request*, %struct.ahash_request** %13, align 8
  %362 = load i32, i32* %20, align 4
  %363 = load i32, i32* @crypto_req_done, align 4
  %364 = call i32 @ahash_request_set_callback(%struct.ahash_request* %361, i32 %362, i32 %363, i32* @wait)
  %365 = load %struct.ahash_request*, %struct.ahash_request** %13, align 8
  %366 = load %struct.scatterlist*, %struct.scatterlist** %24, align 8
  %367 = load i32, i32* %25, align 4
  %368 = call i32 @ahash_request_set_crypt(%struct.ahash_request* %365, %struct.scatterlist* %366, i32* %52, i32 %367)
  %369 = load %struct.testvec_config*, %struct.testvec_config** %12, align 8
  %370 = getelementptr inbounds %struct.testvec_config, %struct.testvec_config* %369, i32 0, i32 1
  %371 = load i64, i64* %370, align 8
  %372 = load i64, i64* @FINALIZATION_TYPE_FINAL, align 8
  %373 = icmp eq i64 %371, %372
  br i1 %373, label %374, label %410

374:                                              ; preds = %360
  %375 = load i32, i32* @crypto_ahash_update, align 4
  %376 = load %struct.ahash_request*, %struct.ahash_request** %13, align 8
  %377 = load %struct.testvec_config*, %struct.testvec_config** %12, align 8
  %378 = getelementptr inbounds %struct.testvec_config, %struct.testvec_config* %377, i32 0, i32 3
  %379 = load i32, i32* %378, align 4
  %380 = call i32 @do_ahash_op(i32 %375, %struct.ahash_request* %376, i32* @wait, i32 %379)
  store i32 %380, i32* %27, align 4
  %381 = load i32, i32* %27, align 4
  %382 = load i32, i32* %18, align 4
  %383 = load i8*, i8** %9, align 8
  %384 = load i8*, i8** %11, align 8
  %385 = load %struct.testvec_config*, %struct.testvec_config** %12, align 8
  %386 = call i32 @check_nonfinal_ahash_op(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %381, i32* %52, i32 %382, i8* %383, i8* %384, %struct.testvec_config* %385)
  store i32 %386, i32* %27, align 4
  %387 = load i32, i32* %27, align 4
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %389, label %391

389:                                              ; preds = %374
  %390 = load i32, i32* %27, align 4
  store i32 %390, i32* %8, align 4
  store i32 1, i32* %28, align 4
  br label %437

391:                                              ; preds = %374
  %392 = load i32, i32* @crypto_ahash_final, align 4
  %393 = load %struct.ahash_request*, %struct.ahash_request** %13, align 8
  %394 = load %struct.testvec_config*, %struct.testvec_config** %12, align 8
  %395 = getelementptr inbounds %struct.testvec_config, %struct.testvec_config* %394, i32 0, i32 3
  %396 = load i32, i32* %395, align 4
  %397 = call i32 @do_ahash_op(i32 %392, %struct.ahash_request* %393, i32* @wait, i32 %396)
  store i32 %397, i32* %27, align 4
  %398 = load i32, i32* %27, align 4
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %400, label %409

400:                                              ; preds = %391
  %401 = load i8*, i8** %9, align 8
  %402 = load i32, i32* %27, align 4
  %403 = load i8*, i8** %11, align 8
  %404 = load %struct.testvec_config*, %struct.testvec_config** %12, align 8
  %405 = getelementptr inbounds %struct.testvec_config, %struct.testvec_config* %404, i32 0, i32 2
  %406 = load i32, i32* %405, align 8
  %407 = call i32 (i8*, i8*, ...) @pr_err(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.10, i64 0, i64 0), i8* %401, i32 %402, i8* %403, i32 %406)
  %408 = load i32, i32* %27, align 4
  store i32 %408, i32* %8, align 4
  store i32 1, i32* %28, align 4
  br label %437

409:                                              ; preds = %391
  br label %429

410:                                              ; preds = %360
  %411 = load i32, i32* @crypto_ahash_finup, align 4
  %412 = load %struct.ahash_request*, %struct.ahash_request** %13, align 8
  %413 = load %struct.testvec_config*, %struct.testvec_config** %12, align 8
  %414 = getelementptr inbounds %struct.testvec_config, %struct.testvec_config* %413, i32 0, i32 3
  %415 = load i32, i32* %414, align 4
  %416 = call i32 @do_ahash_op(i32 %411, %struct.ahash_request* %412, i32* @wait, i32 %415)
  store i32 %416, i32* %27, align 4
  %417 = load i32, i32* %27, align 4
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %419, label %428

419:                                              ; preds = %410
  %420 = load i8*, i8** %9, align 8
  %421 = load i32, i32* %27, align 4
  %422 = load i8*, i8** %11, align 8
  %423 = load %struct.testvec_config*, %struct.testvec_config** %12, align 8
  %424 = getelementptr inbounds %struct.testvec_config, %struct.testvec_config* %423, i32 0, i32 2
  %425 = load i32, i32* %424, align 8
  %426 = call i32 (i8*, i8*, ...) @pr_err(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.11, i64 0, i64 0), i8* %420, i32 %421, i8* %422, i32 %425)
  %427 = load i32, i32* %27, align 4
  store i32 %427, i32* %8, align 4
  store i32 1, i32* %28, align 4
  br label %437

428:                                              ; preds = %410
  br label %429

429:                                              ; preds = %428, %409
  br label %430

430:                                              ; preds = %429, %195
  %431 = load i32, i32* %18, align 4
  %432 = load %struct.hash_testvec*, %struct.hash_testvec** %10, align 8
  %433 = load i8*, i8** %11, align 8
  %434 = load i8*, i8** %9, align 8
  %435 = load %struct.testvec_config*, %struct.testvec_config** %12, align 8
  %436 = call i32 @check_hash_result(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i32* %52, i32 %431, %struct.hash_testvec* %432, i8* %433, i8* %434, %struct.testvec_config* %435)
  store i32 %436, i32* %8, align 4
  store i32 1, i32* %28, align 4
  br label %437

437:                                              ; preds = %430, %419, %400, %389, %331, %304, %294, %264, %217, %183, %166, %165, %109, %91, %75, %74
  %438 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %438)
  %439 = load i32, i32* %8, align 4
  ret i32 %439
}

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local i32 @crypto_ahash_alignmask(%struct.crypto_ahash*) #1

declare dso_local i32 @crypto_ahash_digestsize(%struct.crypto_ahash*) #1

declare dso_local i32 @crypto_ahash_statesize(%struct.crypto_ahash*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @DECLARE_CRYPTO_WAIT(i32) #1

declare dso_local i32 @crypto_ahash_setkey(%struct.crypto_ahash*, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i8*, ...) #1

declare dso_local i32 @crypto_ahash_get_flags(%struct.crypto_ahash*) #1

declare dso_local i32 @build_hash_sglist(%struct.test_sglist*, %struct.hash_testvec*, %struct.testvec_config*, i32, %struct.test_sg_division**) #1

declare dso_local i32 @testmgr_poison(i32*, i32) #1

declare dso_local i32 @crypto_ahash_reqsize(%struct.crypto_ahash*) #1

declare dso_local i32 @ahash_request_set_callback(%struct.ahash_request*, i32, i32, i32*) #1

declare dso_local i32 @ahash_request_set_crypt(%struct.ahash_request*, %struct.scatterlist*, i32*, i32) #1

declare dso_local i32 @do_ahash_op(i32, %struct.ahash_request*, i32*, i32) #1

declare dso_local i32 @check_nonfinal_ahash_op(i8*, i32, i32*, i32, i8*, i8*, %struct.testvec_config*) #1

declare dso_local i32 @crypto_ahash_export(%struct.ahash_request*, i32*) #1

declare dso_local i32 @testmgr_is_poison(i32*, i32) #1

declare dso_local i32 @crypto_ahash_import(%struct.ahash_request*, i32*) #1

declare dso_local i32 @check_hash_result(i8*, i32*, i32, %struct.hash_testvec*, i8*, i8*, %struct.testvec_config*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
