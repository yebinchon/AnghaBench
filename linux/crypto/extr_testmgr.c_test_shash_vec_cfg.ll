; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_testmgr.c_test_shash_vec_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_testmgr.c_test_shash_vec_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_testvec = type { i32, i32, i32, i32 }
%struct.testvec_config = type { i32, i64, i64 }
%struct.shash_desc = type { i32*, %struct.crypto_shash* }
%struct.crypto_shash = type { i32 }
%struct.test_sglist = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.test_sg_division = type { i64, i64 }

@XBUFSIZE = common dso_local global i32 0, align 4
@HASH_MAX_DIGESTSIZE = common dso_local global i32 0, align 4
@TESTMGR_POISON_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [95 x i8] c"alg: shash: %s setkey failed on test vector %s; expected_error=%d, actual_error=%d, flags=%#x\0A\00", align 1
@.str.1 = private unnamed_addr constant [83 x i8] c"alg: shash: %s setkey unexpectedly succeeded on test vector %s; expected_error=%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [74 x i8] c"alg: shash: %s: error preparing scatterlist for test vector %s, cfg=\22%s\22\0A\00", align 1
@FINALIZATION_TYPE_DIGEST = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [96 x i8] c"alg: shash: %s digest() failed on test vector %s; expected_error=%d, actual_error=%d, cfg=\22%s\22\0A\00", align 1
@.str.4 = private unnamed_addr constant [95 x i8] c"alg: shash: %s digest() unexpectedly succeeded on test vector %s; expected_error=%d, cfg=\22%s\22\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"init\00", align 1
@FINALIZATION_TYPE_FINUP = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [6 x i8] c"finup\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"update\00", align 1
@FLUSH_TYPE_REIMPORT = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [7 x i8] c"export\00", align 1
@.str.9 = private unnamed_addr constant [74 x i8] c"alg: shash: %s export() overran state buffer on test vector %s, cfg=\22%s\22\0A\00", align 1
@EOVERFLOW = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"import\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"final\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"shash\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.hash_testvec*, i8*, %struct.testvec_config*, %struct.shash_desc*, %struct.test_sglist*, i32*)* @test_shash_vec_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_shash_vec_cfg(i8* %0, %struct.hash_testvec* %1, i8* %2, %struct.testvec_config* %3, %struct.shash_desc* %4, %struct.test_sglist* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.hash_testvec*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.testvec_config*, align 8
  %13 = alloca %struct.shash_desc*, align 8
  %14 = alloca %struct.test_sglist*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.crypto_shash*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store %struct.hash_testvec* %1, %struct.hash_testvec** %10, align 8
  store i8* %2, i8** %11, align 8
  store %struct.testvec_config* %3, %struct.testvec_config** %12, align 8
  store %struct.shash_desc* %4, %struct.shash_desc** %13, align 8
  store %struct.test_sglist* %5, %struct.test_sglist** %14, align 8
  store i32* %6, i32** %15, align 8
  %26 = load %struct.shash_desc*, %struct.shash_desc** %13, align 8
  %27 = getelementptr inbounds %struct.shash_desc, %struct.shash_desc* %26, i32 0, i32 1
  %28 = load %struct.crypto_shash*, %struct.crypto_shash** %27, align 8
  store %struct.crypto_shash* %28, %struct.crypto_shash** %16, align 8
  %29 = load %struct.crypto_shash*, %struct.crypto_shash** %16, align 8
  %30 = call i32 @crypto_shash_alignmask(%struct.crypto_shash* %29)
  store i32 %30, i32* %17, align 4
  %31 = load %struct.crypto_shash*, %struct.crypto_shash** %16, align 8
  %32 = call i32 @crypto_shash_digestsize(%struct.crypto_shash* %31)
  store i32 %32, i32* %18, align 4
  %33 = load %struct.crypto_shash*, %struct.crypto_shash** %16, align 8
  %34 = call i32 @crypto_shash_statesize(%struct.crypto_shash* %33)
  store i32 %34, i32* %19, align 4
  %35 = load i32, i32* @XBUFSIZE, align 4
  %36 = zext i32 %35 to i64
  %37 = call i8* @llvm.stacksave()
  store i8* %37, i8** %20, align 8
  %38 = alloca %struct.test_sg_division*, i64 %36, align 16
  store i64 %36, i64* %21, align 8
  %39 = load i32, i32* @HASH_MAX_DIGESTSIZE, align 4
  %40 = load i32, i32* @TESTMGR_POISON_LEN, align 4
  %41 = add nsw i32 %39, %40
  %42 = zext i32 %41 to i64
  %43 = alloca i32, i64 %42, align 16
  store i64 %42, i64* %23, align 8
  %44 = load %struct.hash_testvec*, %struct.hash_testvec** %10, align 8
  %45 = getelementptr inbounds %struct.hash_testvec, %struct.hash_testvec* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %92

48:                                               ; preds = %7
  %49 = load %struct.crypto_shash*, %struct.crypto_shash** %16, align 8
  %50 = load %struct.hash_testvec*, %struct.hash_testvec** %10, align 8
  %51 = getelementptr inbounds %struct.hash_testvec, %struct.hash_testvec* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.hash_testvec*, %struct.hash_testvec** %10, align 8
  %54 = getelementptr inbounds %struct.hash_testvec, %struct.hash_testvec* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @crypto_shash_setkey(%struct.crypto_shash* %49, i32 %52, i32 %55)
  store i32 %56, i32* %24, align 4
  %57 = load i32, i32* %24, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %77

59:                                               ; preds = %48
  %60 = load i32, i32* %24, align 4
  %61 = load %struct.hash_testvec*, %struct.hash_testvec** %10, align 8
  %62 = getelementptr inbounds %struct.hash_testvec, %struct.hash_testvec* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %60, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  store i32 0, i32* %8, align 4
  store i32 1, i32* %25, align 4
  br label %446

66:                                               ; preds = %59
  %67 = load i8*, i8** %9, align 8
  %68 = load i8*, i8** %11, align 8
  %69 = load %struct.hash_testvec*, %struct.hash_testvec** %10, align 8
  %70 = getelementptr inbounds %struct.hash_testvec, %struct.hash_testvec* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %24, align 4
  %73 = load %struct.crypto_shash*, %struct.crypto_shash** %16, align 8
  %74 = call i32 @crypto_shash_get_flags(%struct.crypto_shash* %73)
  %75 = call i32 (i8*, i8*, i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str, i64 0, i64 0), i8* %67, i8* %68, i32 %71, i32 %72, i32 %74)
  %76 = load i32, i32* %24, align 4
  store i32 %76, i32* %8, align 4
  store i32 1, i32* %25, align 4
  br label %446

77:                                               ; preds = %48
  %78 = load %struct.hash_testvec*, %struct.hash_testvec** %10, align 8
  %79 = getelementptr inbounds %struct.hash_testvec, %struct.hash_testvec* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %77
  %83 = load i8*, i8** %9, align 8
  %84 = load i8*, i8** %11, align 8
  %85 = load %struct.hash_testvec*, %struct.hash_testvec** %10, align 8
  %86 = getelementptr inbounds %struct.hash_testvec, %struct.hash_testvec* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 (i8*, i8*, i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i8* %83, i8* %84, i32 %87)
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %8, align 4
  store i32 1, i32* %25, align 4
  br label %446

91:                                               ; preds = %77
  br label %92

92:                                               ; preds = %91, %7
  %93 = load %struct.test_sglist*, %struct.test_sglist** %14, align 8
  %94 = load %struct.hash_testvec*, %struct.hash_testvec** %10, align 8
  %95 = load %struct.testvec_config*, %struct.testvec_config** %12, align 8
  %96 = load i32, i32* %17, align 4
  %97 = call i32 @build_hash_sglist(%struct.test_sglist* %93, %struct.hash_testvec* %94, %struct.testvec_config* %95, i32 %96, %struct.test_sg_division** %38)
  store i32 %97, i32* %24, align 4
  %98 = load i32, i32* %24, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %92
  %101 = load i8*, i8** %9, align 8
  %102 = load i8*, i8** %11, align 8
  %103 = load %struct.testvec_config*, %struct.testvec_config** %12, align 8
  %104 = getelementptr inbounds %struct.testvec_config, %struct.testvec_config* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 (i8*, i8*, i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0), i8* %101, i8* %102, i32 %105)
  %107 = load i32, i32* %24, align 4
  store i32 %107, i32* %8, align 4
  store i32 1, i32* %25, align 4
  br label %446

108:                                              ; preds = %92
  %109 = load %struct.shash_desc*, %struct.shash_desc** %13, align 8
  %110 = getelementptr inbounds %struct.shash_desc, %struct.shash_desc* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = load %struct.crypto_shash*, %struct.crypto_shash** %16, align 8
  %113 = call i32 @crypto_shash_descsize(%struct.crypto_shash* %112)
  %114 = call i32 @testmgr_poison(i32* %111, i32 %113)
  %115 = load i32, i32* %18, align 4
  %116 = load i32, i32* @TESTMGR_POISON_LEN, align 4
  %117 = add i32 %115, %116
  %118 = call i32 @testmgr_poison(i32* %43, i32 %117)
  %119 = load %struct.testvec_config*, %struct.testvec_config** %12, align 8
  %120 = getelementptr inbounds %struct.testvec_config, %struct.testvec_config* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @FINALIZATION_TYPE_DIGEST, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %129, label %124

124:                                              ; preds = %108
  %125 = load %struct.hash_testvec*, %struct.hash_testvec** %10, align 8
  %126 = getelementptr inbounds %struct.hash_testvec, %struct.hash_testvec* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %202

129:                                              ; preds = %124, %108
  %130 = load %struct.test_sglist*, %struct.test_sglist** %14, align 8
  %131 = getelementptr inbounds %struct.test_sglist, %struct.test_sglist* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = icmp ne i32 %132, 1
  br i1 %133, label %134, label %135

134:                                              ; preds = %129
  store i32 0, i32* %8, align 4
  store i32 1, i32* %25, align 4
  br label %446

135:                                              ; preds = %129
  %136 = load %struct.testvec_config*, %struct.testvec_config** %12, align 8
  %137 = getelementptr inbounds %struct.testvec_config, %struct.testvec_config* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %135
  %141 = call i32 (...) @crypto_disable_simd_for_test()
  br label %142

142:                                              ; preds = %140, %135
  %143 = load %struct.shash_desc*, %struct.shash_desc** %13, align 8
  %144 = load %struct.test_sglist*, %struct.test_sglist** %14, align 8
  %145 = getelementptr inbounds %struct.test_sglist, %struct.test_sglist* %144, i32 0, i32 1
  %146 = load %struct.TYPE_2__*, %struct.TYPE_2__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i64 0
  %148 = call i32 @sg_data(%struct.TYPE_2__* %147)
  %149 = load %struct.test_sglist*, %struct.test_sglist** %14, align 8
  %150 = getelementptr inbounds %struct.test_sglist, %struct.test_sglist* %149, i32 0, i32 1
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i64 0
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @crypto_shash_digest(%struct.shash_desc* %143, i32 %148, i32 %154, i32* %43)
  store i32 %155, i32* %24, align 4
  %156 = load %struct.testvec_config*, %struct.testvec_config** %12, align 8
  %157 = getelementptr inbounds %struct.testvec_config, %struct.testvec_config* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %142
  %161 = call i32 (...) @crypto_reenable_simd_for_test()
  br label %162

162:                                              ; preds = %160, %142
  %163 = load i32, i32* %24, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %184

165:                                              ; preds = %162
  %166 = load i32, i32* %24, align 4
  %167 = load %struct.hash_testvec*, %struct.hash_testvec** %10, align 8
  %168 = getelementptr inbounds %struct.hash_testvec, %struct.hash_testvec* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = icmp eq i32 %166, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %165
  store i32 0, i32* %8, align 4
  store i32 1, i32* %25, align 4
  br label %446

172:                                              ; preds = %165
  %173 = load i8*, i8** %9, align 8
  %174 = load i8*, i8** %11, align 8
  %175 = load %struct.hash_testvec*, %struct.hash_testvec** %10, align 8
  %176 = getelementptr inbounds %struct.hash_testvec, %struct.hash_testvec* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* %24, align 4
  %179 = load %struct.testvec_config*, %struct.testvec_config** %12, align 8
  %180 = getelementptr inbounds %struct.testvec_config, %struct.testvec_config* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = call i32 (i8*, i8*, i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.3, i64 0, i64 0), i8* %173, i8* %174, i32 %177, i32 %178, i32 %181)
  %183 = load i32, i32* %24, align 4
  store i32 %183, i32* %8, align 4
  store i32 1, i32* %25, align 4
  br label %446

184:                                              ; preds = %162
  %185 = load %struct.hash_testvec*, %struct.hash_testvec** %10, align 8
  %186 = getelementptr inbounds %struct.hash_testvec, %struct.hash_testvec* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %201

189:                                              ; preds = %184
  %190 = load i8*, i8** %9, align 8
  %191 = load i8*, i8** %11, align 8
  %192 = load %struct.hash_testvec*, %struct.hash_testvec** %10, align 8
  %193 = getelementptr inbounds %struct.hash_testvec, %struct.hash_testvec* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.testvec_config*, %struct.testvec_config** %12, align 8
  %196 = getelementptr inbounds %struct.testvec_config, %struct.testvec_config* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = call i32 (i8*, i8*, i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.4, i64 0, i64 0), i8* %190, i8* %191, i32 %194, i32 %197)
  %199 = load i32, i32* @EINVAL, align 4
  %200 = sub nsw i32 0, %199
  store i32 %200, i32* %8, align 4
  store i32 1, i32* %25, align 4
  br label %446

201:                                              ; preds = %184
  br label %439

202:                                              ; preds = %124
  %203 = load %struct.testvec_config*, %struct.testvec_config** %12, align 8
  %204 = getelementptr inbounds %struct.testvec_config, %struct.testvec_config* %203, i32 0, i32 2
  %205 = load i64, i64* %204, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %209

207:                                              ; preds = %202
  %208 = call i32 (...) @crypto_disable_simd_for_test()
  br label %209

209:                                              ; preds = %207, %202
  %210 = load %struct.shash_desc*, %struct.shash_desc** %13, align 8
  %211 = call i32 @crypto_shash_init(%struct.shash_desc* %210)
  store i32 %211, i32* %24, align 4
  %212 = load %struct.testvec_config*, %struct.testvec_config** %12, align 8
  %213 = getelementptr inbounds %struct.testvec_config, %struct.testvec_config* %212, i32 0, i32 2
  %214 = load i64, i64* %213, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %209
  %217 = call i32 (...) @crypto_reenable_simd_for_test()
  br label %218

218:                                              ; preds = %216, %209
  %219 = load i32, i32* %24, align 4
  %220 = load i8*, i8** %9, align 8
  %221 = load i8*, i8** %11, align 8
  %222 = load %struct.testvec_config*, %struct.testvec_config** %12, align 8
  %223 = call i32 @check_shash_op(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %219, i8* %220, i8* %221, %struct.testvec_config* %222)
  store i32 %223, i32* %24, align 4
  %224 = load i32, i32* %24, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %228

226:                                              ; preds = %218
  %227 = load i32, i32* %24, align 4
  store i32 %227, i32* %8, align 4
  store i32 1, i32* %25, align 4
  br label %446

228:                                              ; preds = %218
  store i32 0, i32* %22, align 4
  br label %229

229:                                              ; preds = %409, %228
  %230 = load i32, i32* %22, align 4
  %231 = load %struct.test_sglist*, %struct.test_sglist** %14, align 8
  %232 = getelementptr inbounds %struct.test_sglist, %struct.test_sglist* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = icmp ult i32 %230, %233
  br i1 %234, label %235, label %412

235:                                              ; preds = %229
  %236 = load i32, i32* %22, align 4
  %237 = add i32 %236, 1
  %238 = load %struct.test_sglist*, %struct.test_sglist** %14, align 8
  %239 = getelementptr inbounds %struct.test_sglist, %struct.test_sglist* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = icmp eq i32 %237, %240
  br i1 %241, label %242, label %296

242:                                              ; preds = %235
  %243 = load %struct.testvec_config*, %struct.testvec_config** %12, align 8
  %244 = getelementptr inbounds %struct.testvec_config, %struct.testvec_config* %243, i32 0, i32 1
  %245 = load i64, i64* %244, align 8
  %246 = load i64, i64* @FINALIZATION_TYPE_FINUP, align 8
  %247 = icmp eq i64 %245, %246
  br i1 %247, label %248, label %296

248:                                              ; preds = %242
  %249 = load i32, i32* %22, align 4
  %250 = zext i32 %249 to i64
  %251 = getelementptr inbounds %struct.test_sg_division*, %struct.test_sg_division** %38, i64 %250
  %252 = load %struct.test_sg_division*, %struct.test_sg_division** %251, align 8
  %253 = getelementptr inbounds %struct.test_sg_division, %struct.test_sg_division* %252, i32 0, i32 1
  %254 = load i64, i64* %253, align 8
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %258

256:                                              ; preds = %248
  %257 = call i32 (...) @crypto_disable_simd_for_test()
  br label %258

258:                                              ; preds = %256, %248
  %259 = load %struct.shash_desc*, %struct.shash_desc** %13, align 8
  %260 = load %struct.test_sglist*, %struct.test_sglist** %14, align 8
  %261 = getelementptr inbounds %struct.test_sglist, %struct.test_sglist* %260, i32 0, i32 1
  %262 = load %struct.TYPE_2__*, %struct.TYPE_2__** %261, align 8
  %263 = load i32, i32* %22, align 4
  %264 = zext i32 %263 to i64
  %265 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %262, i64 %264
  %266 = call i32 @sg_data(%struct.TYPE_2__* %265)
  %267 = load %struct.test_sglist*, %struct.test_sglist** %14, align 8
  %268 = getelementptr inbounds %struct.test_sglist, %struct.test_sglist* %267, i32 0, i32 1
  %269 = load %struct.TYPE_2__*, %struct.TYPE_2__** %268, align 8
  %270 = load i32, i32* %22, align 4
  %271 = zext i32 %270 to i64
  %272 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %269, i64 %271
  %273 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  %275 = call i32 @crypto_shash_finup(%struct.shash_desc* %259, i32 %266, i32 %274, i32* %43)
  store i32 %275, i32* %24, align 4
  %276 = load i32, i32* %22, align 4
  %277 = zext i32 %276 to i64
  %278 = getelementptr inbounds %struct.test_sg_division*, %struct.test_sg_division** %38, i64 %277
  %279 = load %struct.test_sg_division*, %struct.test_sg_division** %278, align 8
  %280 = getelementptr inbounds %struct.test_sg_division, %struct.test_sg_division* %279, i32 0, i32 1
  %281 = load i64, i64* %280, align 8
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %285

283:                                              ; preds = %258
  %284 = call i32 (...) @crypto_reenable_simd_for_test()
  br label %285

285:                                              ; preds = %283, %258
  %286 = load i32, i32* %24, align 4
  %287 = load i8*, i8** %9, align 8
  %288 = load i8*, i8** %11, align 8
  %289 = load %struct.testvec_config*, %struct.testvec_config** %12, align 8
  %290 = call i32 @check_shash_op(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %286, i8* %287, i8* %288, %struct.testvec_config* %289)
  store i32 %290, i32* %24, align 4
  %291 = load i32, i32* %24, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %295

293:                                              ; preds = %285
  %294 = load i32, i32* %24, align 4
  store i32 %294, i32* %8, align 4
  store i32 1, i32* %25, align 4
  br label %446

295:                                              ; preds = %285
  br label %439

296:                                              ; preds = %242, %235
  %297 = load i32, i32* %22, align 4
  %298 = zext i32 %297 to i64
  %299 = getelementptr inbounds %struct.test_sg_division*, %struct.test_sg_division** %38, i64 %298
  %300 = load %struct.test_sg_division*, %struct.test_sg_division** %299, align 8
  %301 = getelementptr inbounds %struct.test_sg_division, %struct.test_sg_division* %300, i32 0, i32 1
  %302 = load i64, i64* %301, align 8
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %306

304:                                              ; preds = %296
  %305 = call i32 (...) @crypto_disable_simd_for_test()
  br label %306

306:                                              ; preds = %304, %296
  %307 = load %struct.shash_desc*, %struct.shash_desc** %13, align 8
  %308 = load %struct.test_sglist*, %struct.test_sglist** %14, align 8
  %309 = getelementptr inbounds %struct.test_sglist, %struct.test_sglist* %308, i32 0, i32 1
  %310 = load %struct.TYPE_2__*, %struct.TYPE_2__** %309, align 8
  %311 = load i32, i32* %22, align 4
  %312 = zext i32 %311 to i64
  %313 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %310, i64 %312
  %314 = call i32 @sg_data(%struct.TYPE_2__* %313)
  %315 = load %struct.test_sglist*, %struct.test_sglist** %14, align 8
  %316 = getelementptr inbounds %struct.test_sglist, %struct.test_sglist* %315, i32 0, i32 1
  %317 = load %struct.TYPE_2__*, %struct.TYPE_2__** %316, align 8
  %318 = load i32, i32* %22, align 4
  %319 = zext i32 %318 to i64
  %320 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %317, i64 %319
  %321 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 4
  %323 = call i32 @crypto_shash_update(%struct.shash_desc* %307, i32 %314, i32 %322)
  store i32 %323, i32* %24, align 4
  %324 = load i32, i32* %22, align 4
  %325 = zext i32 %324 to i64
  %326 = getelementptr inbounds %struct.test_sg_division*, %struct.test_sg_division** %38, i64 %325
  %327 = load %struct.test_sg_division*, %struct.test_sg_division** %326, align 8
  %328 = getelementptr inbounds %struct.test_sg_division, %struct.test_sg_division* %327, i32 0, i32 1
  %329 = load i64, i64* %328, align 8
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %333

331:                                              ; preds = %306
  %332 = call i32 (...) @crypto_reenable_simd_for_test()
  br label %333

333:                                              ; preds = %331, %306
  %334 = load i32, i32* %24, align 4
  %335 = load i8*, i8** %9, align 8
  %336 = load i8*, i8** %11, align 8
  %337 = load %struct.testvec_config*, %struct.testvec_config** %12, align 8
  %338 = call i32 @check_shash_op(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %334, i8* %335, i8* %336, %struct.testvec_config* %337)
  store i32 %338, i32* %24, align 4
  %339 = load i32, i32* %24, align 4
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %343

341:                                              ; preds = %333
  %342 = load i32, i32* %24, align 4
  store i32 %342, i32* %8, align 4
  store i32 1, i32* %25, align 4
  br label %446

343:                                              ; preds = %333
  %344 = load i32, i32* %22, align 4
  %345 = zext i32 %344 to i64
  %346 = getelementptr inbounds %struct.test_sg_division*, %struct.test_sg_division** %38, i64 %345
  %347 = load %struct.test_sg_division*, %struct.test_sg_division** %346, align 8
  %348 = getelementptr inbounds %struct.test_sg_division, %struct.test_sg_division* %347, i32 0, i32 0
  %349 = load i64, i64* %348, align 8
  %350 = load i64, i64* @FLUSH_TYPE_REIMPORT, align 8
  %351 = icmp eq i64 %349, %350
  br i1 %351, label %352, label %408

352:                                              ; preds = %343
  %353 = load i32*, i32** %15, align 8
  %354 = load i32, i32* %19, align 4
  %355 = zext i32 %354 to i64
  %356 = getelementptr inbounds i32, i32* %353, i64 %355
  %357 = load i32, i32* @TESTMGR_POISON_LEN, align 4
  %358 = call i32 @testmgr_poison(i32* %356, i32 %357)
  %359 = load %struct.shash_desc*, %struct.shash_desc** %13, align 8
  %360 = load i32*, i32** %15, align 8
  %361 = call i32 @crypto_shash_export(%struct.shash_desc* %359, i32* %360)
  store i32 %361, i32* %24, align 4
  %362 = load i32, i32* %24, align 4
  %363 = load i8*, i8** %9, align 8
  %364 = load i8*, i8** %11, align 8
  %365 = load %struct.testvec_config*, %struct.testvec_config** %12, align 8
  %366 = call i32 @check_shash_op(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 %362, i8* %363, i8* %364, %struct.testvec_config* %365)
  store i32 %366, i32* %24, align 4
  %367 = load i32, i32* %24, align 4
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %371

369:                                              ; preds = %352
  %370 = load i32, i32* %24, align 4
  store i32 %370, i32* %8, align 4
  store i32 1, i32* %25, align 4
  br label %446

371:                                              ; preds = %352
  %372 = load i32*, i32** %15, align 8
  %373 = load i32, i32* %19, align 4
  %374 = zext i32 %373 to i64
  %375 = getelementptr inbounds i32, i32* %372, i64 %374
  %376 = load i32, i32* @TESTMGR_POISON_LEN, align 4
  %377 = call i32 @testmgr_is_poison(i32* %375, i32 %376)
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %388, label %379

379:                                              ; preds = %371
  %380 = load i8*, i8** %9, align 8
  %381 = load i8*, i8** %11, align 8
  %382 = load %struct.testvec_config*, %struct.testvec_config** %12, align 8
  %383 = getelementptr inbounds %struct.testvec_config, %struct.testvec_config* %382, i32 0, i32 0
  %384 = load i32, i32* %383, align 8
  %385 = call i32 (i8*, i8*, i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.9, i64 0, i64 0), i8* %380, i8* %381, i32 %384)
  %386 = load i32, i32* @EOVERFLOW, align 4
  %387 = sub nsw i32 0, %386
  store i32 %387, i32* %8, align 4
  store i32 1, i32* %25, align 4
  br label %446

388:                                              ; preds = %371
  %389 = load %struct.shash_desc*, %struct.shash_desc** %13, align 8
  %390 = getelementptr inbounds %struct.shash_desc, %struct.shash_desc* %389, i32 0, i32 0
  %391 = load i32*, i32** %390, align 8
  %392 = load %struct.crypto_shash*, %struct.crypto_shash** %16, align 8
  %393 = call i32 @crypto_shash_descsize(%struct.crypto_shash* %392)
  %394 = call i32 @testmgr_poison(i32* %391, i32 %393)
  %395 = load %struct.shash_desc*, %struct.shash_desc** %13, align 8
  %396 = load i32*, i32** %15, align 8
  %397 = call i32 @crypto_shash_import(%struct.shash_desc* %395, i32* %396)
  store i32 %397, i32* %24, align 4
  %398 = load i32, i32* %24, align 4
  %399 = load i8*, i8** %9, align 8
  %400 = load i8*, i8** %11, align 8
  %401 = load %struct.testvec_config*, %struct.testvec_config** %12, align 8
  %402 = call i32 @check_shash_op(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 %398, i8* %399, i8* %400, %struct.testvec_config* %401)
  store i32 %402, i32* %24, align 4
  %403 = load i32, i32* %24, align 4
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %405, label %407

405:                                              ; preds = %388
  %406 = load i32, i32* %24, align 4
  store i32 %406, i32* %8, align 4
  store i32 1, i32* %25, align 4
  br label %446

407:                                              ; preds = %388
  br label %408

408:                                              ; preds = %407, %343
  br label %409

409:                                              ; preds = %408
  %410 = load i32, i32* %22, align 4
  %411 = add i32 %410, 1
  store i32 %411, i32* %22, align 4
  br label %229

412:                                              ; preds = %229
  %413 = load %struct.testvec_config*, %struct.testvec_config** %12, align 8
  %414 = getelementptr inbounds %struct.testvec_config, %struct.testvec_config* %413, i32 0, i32 2
  %415 = load i64, i64* %414, align 8
  %416 = icmp ne i64 %415, 0
  br i1 %416, label %417, label %419

417:                                              ; preds = %412
  %418 = call i32 (...) @crypto_disable_simd_for_test()
  br label %419

419:                                              ; preds = %417, %412
  %420 = load %struct.shash_desc*, %struct.shash_desc** %13, align 8
  %421 = call i32 @crypto_shash_final(%struct.shash_desc* %420, i32* %43)
  store i32 %421, i32* %24, align 4
  %422 = load %struct.testvec_config*, %struct.testvec_config** %12, align 8
  %423 = getelementptr inbounds %struct.testvec_config, %struct.testvec_config* %422, i32 0, i32 2
  %424 = load i64, i64* %423, align 8
  %425 = icmp ne i64 %424, 0
  br i1 %425, label %426, label %428

426:                                              ; preds = %419
  %427 = call i32 (...) @crypto_reenable_simd_for_test()
  br label %428

428:                                              ; preds = %426, %419
  %429 = load i32, i32* %24, align 4
  %430 = load i8*, i8** %9, align 8
  %431 = load i8*, i8** %11, align 8
  %432 = load %struct.testvec_config*, %struct.testvec_config** %12, align 8
  %433 = call i32 @check_shash_op(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i32 %429, i8* %430, i8* %431, %struct.testvec_config* %432)
  store i32 %433, i32* %24, align 4
  %434 = load i32, i32* %24, align 4
  %435 = icmp ne i32 %434, 0
  br i1 %435, label %436, label %438

436:                                              ; preds = %428
  %437 = load i32, i32* %24, align 4
  store i32 %437, i32* %8, align 4
  store i32 1, i32* %25, align 4
  br label %446

438:                                              ; preds = %428
  br label %439

439:                                              ; preds = %438, %295, %201
  %440 = load i32, i32* %18, align 4
  %441 = load %struct.hash_testvec*, %struct.hash_testvec** %10, align 8
  %442 = load i8*, i8** %11, align 8
  %443 = load i8*, i8** %9, align 8
  %444 = load %struct.testvec_config*, %struct.testvec_config** %12, align 8
  %445 = call i32 @check_hash_result(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i32* %43, i32 %440, %struct.hash_testvec* %441, i8* %442, i8* %443, %struct.testvec_config* %444)
  store i32 %445, i32* %8, align 4
  store i32 1, i32* %25, align 4
  br label %446

446:                                              ; preds = %439, %436, %405, %379, %369, %341, %293, %226, %189, %172, %171, %134, %100, %82, %66, %65
  %447 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %447)
  %448 = load i32, i32* %8, align 4
  ret i32 %448
}

declare dso_local i32 @crypto_shash_alignmask(%struct.crypto_shash*) #1

declare dso_local i32 @crypto_shash_digestsize(%struct.crypto_shash*) #1

declare dso_local i32 @crypto_shash_statesize(%struct.crypto_shash*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @crypto_shash_setkey(%struct.crypto_shash*, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i8*, i8*, i32, ...) #1

declare dso_local i32 @crypto_shash_get_flags(%struct.crypto_shash*) #1

declare dso_local i32 @build_hash_sglist(%struct.test_sglist*, %struct.hash_testvec*, %struct.testvec_config*, i32, %struct.test_sg_division**) #1

declare dso_local i32 @testmgr_poison(i32*, i32) #1

declare dso_local i32 @crypto_shash_descsize(%struct.crypto_shash*) #1

declare dso_local i32 @crypto_disable_simd_for_test(...) #1

declare dso_local i32 @crypto_shash_digest(%struct.shash_desc*, i32, i32, i32*) #1

declare dso_local i32 @sg_data(%struct.TYPE_2__*) #1

declare dso_local i32 @crypto_reenable_simd_for_test(...) #1

declare dso_local i32 @crypto_shash_init(%struct.shash_desc*) #1

declare dso_local i32 @check_shash_op(i8*, i32, i8*, i8*, %struct.testvec_config*) #1

declare dso_local i32 @crypto_shash_finup(%struct.shash_desc*, i32, i32, i32*) #1

declare dso_local i32 @crypto_shash_update(%struct.shash_desc*, i32, i32) #1

declare dso_local i32 @crypto_shash_export(%struct.shash_desc*, i32*) #1

declare dso_local i32 @testmgr_is_poison(i32*, i32) #1

declare dso_local i32 @crypto_shash_import(%struct.shash_desc*, i32*) #1

declare dso_local i32 @crypto_shash_final(%struct.shash_desc*, i32*) #1

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
