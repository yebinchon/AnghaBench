; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_testmgr.c_test_skcipher_vec_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_testmgr.c_test_skcipher_vec_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cipher_testvec = type { i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i64 }
%struct.testvec_config = type { i64, i32, i32, i64, i64 }
%struct.skcipher_request = type { i64, i64, %struct.TYPE_4__, i32*, i32, i32 }
%struct.TYPE_4__ = type { i64, i64, i32* }
%struct.cipher_test_sglists = type { %struct.TYPE_5__, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64 }
%struct.crypto_skcipher = type { i32 }
%struct.kvec = type { i32, i8* }

@CRYPTO_TFM_REQ_MAY_BACKLOG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"encryption\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"decryption\00", align 1
@wait = common dso_local global i32 0, align 4
@MAX_ALGAPI_ALIGNMASK = common dso_local global i32 0, align 4
@MAX_IVLEN = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_FORBID_WEAK_KEYS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [98 x i8] c"alg: skcipher: %s setkey failed on test vector %s; expected_error=%d, actual_error=%d, flags=%#x\0A\00", align 1
@.str.3 = private unnamed_addr constant [86 x i8] c"alg: skcipher: %s setkey unexpectedly succeeded on test vector %s; expected_error=%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [65 x i8] c"alg: skcipher: %s has ivsize=0 but test vector %s generates IV!\0A\00", align 1
@.str.5 = private unnamed_addr constant [81 x i8] c"alg: skcipher: %s %s: error preparing scatterlists for test vector %s, cfg=\22%s\22\0A\00", align 1
@crypto_req_done = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [75 x i8] c"alg: skcipher: %s %s corrupted request struct on test vector %s, cfg=\22%s\22\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"alg: skcipher: changed 'req->cryptlen'\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"alg: skcipher: changed 'req->iv'\0A\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"alg: skcipher: changed 'req->src'\0A\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"alg: skcipher: changed 'req->dst'\0A\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"alg: skcipher: changed 'req->base.tfm'\0A\00", align 1
@.str.12 = private unnamed_addr constant [45 x i8] c"alg: skcipher: changed 'req->base.complete'\0A\00", align 1
@.str.13 = private unnamed_addr constant [42 x i8] c"alg: skcipher: changed 'req->base.flags'\0A\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"alg: skcipher: changed 'req->base.data'\0A\00", align 1
@.str.15 = private unnamed_addr constant [68 x i8] c"alg: skcipher: %s %s corrupted src sgl on test vector %s, cfg=\22%s\22\0A\00", align 1
@.str.16 = private unnamed_addr constant [68 x i8] c"alg: skcipher: %s %s corrupted dst sgl on test vector %s, cfg=\22%s\22\0A\00", align 1
@.str.17 = private unnamed_addr constant [93 x i8] c"alg: skcipher: %s %s failed on test vector %s; expected_error=%d, actual_error=%d, cfg=\22%s\22\0A\00", align 1
@.str.18 = private unnamed_addr constant [92 x i8] c"alg: skcipher: %s %s unexpectedly succeeded on test vector %s; expected_error=%d, cfg=\22%s\22\0A\00", align 1
@EOVERFLOW = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [69 x i8] c"alg: skcipher: %s %s overran dst buffer on test vector %s, cfg=\22%s\22\0A\00", align 1
@.str.20 = private unnamed_addr constant [77 x i8] c"alg: skcipher: %s %s test failed (wrong result) on test vector %s, cfg=\22%s\22\0A\00", align 1
@.str.21 = private unnamed_addr constant [80 x i8] c"alg: skcipher: %s %s test failed (wrong output IV) on test vector %s, cfg=\22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.cipher_testvec*, i8*, %struct.testvec_config*, %struct.skcipher_request*, %struct.cipher_test_sglists*)* @test_skcipher_vec_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_skcipher_vec_cfg(i8* %0, i32 %1, %struct.cipher_testvec* %2, i8* %3, %struct.testvec_config* %4, %struct.skcipher_request* %5, %struct.cipher_test_sglists* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.cipher_testvec*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.testvec_config*, align 8
  %14 = alloca %struct.skcipher_request*, align 8
  %15 = alloca %struct.cipher_test_sglists*, align 8
  %16 = alloca %struct.crypto_skcipher*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32*, align 8
  %24 = alloca %struct.kvec, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.cipher_testvec* %2, %struct.cipher_testvec** %11, align 8
  store i8* %3, i8** %12, align 8
  store %struct.testvec_config* %4, %struct.testvec_config** %13, align 8
  store %struct.skcipher_request* %5, %struct.skcipher_request** %14, align 8
  store %struct.cipher_test_sglists* %6, %struct.cipher_test_sglists** %15, align 8
  %27 = load %struct.skcipher_request*, %struct.skcipher_request** %14, align 8
  %28 = call %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request* %27)
  store %struct.crypto_skcipher* %28, %struct.crypto_skcipher** %16, align 8
  %29 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %16, align 8
  %30 = call i32 @crypto_skcipher_alignmask(%struct.crypto_skcipher* %29)
  store i32 %30, i32* %17, align 4
  %31 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %16, align 8
  %32 = call i32 @crypto_skcipher_ivsize(%struct.crypto_skcipher* %31)
  store i32 %32, i32* %18, align 4
  %33 = load i64, i64* @CRYPTO_TFM_REQ_MAY_BACKLOG, align 8
  %34 = load %struct.testvec_config*, %struct.testvec_config** %13, align 8
  %35 = getelementptr inbounds %struct.testvec_config, %struct.testvec_config* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = or i64 %33, %36
  store i64 %37, i64* %19, align 8
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0)
  store i8* %41, i8** %20, align 8
  %42 = load i32, i32* @wait, align 4
  %43 = call i32 @DECLARE_CRYPTO_WAIT(i32 %42)
  %44 = load i32, i32* @MAX_ALGAPI_ALIGNMASK, align 4
  %45 = add nsw i32 %44, 1
  %46 = mul nsw i32 3, %45
  %47 = load i32, i32* @MAX_IVLEN, align 4
  %48 = add nsw i32 %46, %47
  %49 = zext i32 %48 to i64
  %50 = call i8* @llvm.stacksave()
  store i8* %50, i8** %21, align 8
  %51 = alloca i32, i64 %49, align 16
  store i64 %49, i64* %22, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* @MAX_ALGAPI_ALIGNMASK, align 4
  %54 = add nsw i32 %53, 1
  %55 = mul nsw i32 2, %54
  %56 = call i32* @PTR_ALIGN(i32* %52, i32 %55)
  %57 = load %struct.testvec_config*, %struct.testvec_config** %13, align 8
  %58 = getelementptr inbounds %struct.testvec_config, %struct.testvec_config* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %56, i64 %60
  %62 = load %struct.testvec_config*, %struct.testvec_config** %13, align 8
  %63 = getelementptr inbounds %struct.testvec_config, %struct.testvec_config* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %7
  %67 = load i32, i32* %17, align 4
  br label %69

68:                                               ; preds = %7
  br label %69

69:                                               ; preds = %68, %66
  %70 = phi i32 [ %67, %66 ], [ 0, %68 ]
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %61, i64 %71
  store i32* %72, i32** %23, align 8
  %73 = load %struct.cipher_testvec*, %struct.cipher_testvec** %11, align 8
  %74 = getelementptr inbounds %struct.cipher_testvec, %struct.cipher_testvec* %73, i32 0, i32 10
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %69
  %78 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %16, align 8
  %79 = load i32, i32* @CRYPTO_TFM_REQ_FORBID_WEAK_KEYS, align 4
  %80 = call i32 @crypto_skcipher_set_flags(%struct.crypto_skcipher* %78, i32 %79)
  br label %85

81:                                               ; preds = %69
  %82 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %16, align 8
  %83 = load i32, i32* @CRYPTO_TFM_REQ_FORBID_WEAK_KEYS, align 4
  %84 = call i32 @crypto_skcipher_clear_flags(%struct.crypto_skcipher* %82, i32 %83)
  br label %85

85:                                               ; preds = %81, %77
  %86 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %16, align 8
  %87 = load %struct.cipher_testvec*, %struct.cipher_testvec** %11, align 8
  %88 = getelementptr inbounds %struct.cipher_testvec, %struct.cipher_testvec* %87, i32 0, i32 9
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.cipher_testvec*, %struct.cipher_testvec** %11, align 8
  %91 = getelementptr inbounds %struct.cipher_testvec, %struct.cipher_testvec* %90, i32 0, i32 8
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @crypto_skcipher_setkey(%struct.crypto_skcipher* %86, i32 %89, i32 %92)
  store i32 %93, i32* %25, align 4
  %94 = load i32, i32* %25, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %114

96:                                               ; preds = %85
  %97 = load i32, i32* %25, align 4
  %98 = load %struct.cipher_testvec*, %struct.cipher_testvec** %11, align 8
  %99 = getelementptr inbounds %struct.cipher_testvec, %struct.cipher_testvec* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp eq i32 %97, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  store i32 0, i32* %8, align 4
  store i32 1, i32* %26, align 4
  br label %569

103:                                              ; preds = %96
  %104 = load i8*, i8** %9, align 8
  %105 = load i8*, i8** %12, align 8
  %106 = load %struct.cipher_testvec*, %struct.cipher_testvec** %11, align 8
  %107 = getelementptr inbounds %struct.cipher_testvec, %struct.cipher_testvec* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* %25, align 4
  %110 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %16, align 8
  %111 = call i32 @crypto_skcipher_get_flags(%struct.crypto_skcipher* %110)
  %112 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.2, i64 0, i64 0), i8* %104, i8* %105, i32 %108, i32 %109, i32 %111)
  %113 = load i32, i32* %25, align 4
  store i32 %113, i32* %8, align 4
  store i32 1, i32* %26, align 4
  br label %569

114:                                              ; preds = %85
  %115 = load %struct.cipher_testvec*, %struct.cipher_testvec** %11, align 8
  %116 = getelementptr inbounds %struct.cipher_testvec, %struct.cipher_testvec* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %114
  %120 = load i8*, i8** %9, align 8
  %121 = load i8*, i8** %12, align 8
  %122 = load %struct.cipher_testvec*, %struct.cipher_testvec** %11, align 8
  %123 = getelementptr inbounds %struct.cipher_testvec, %struct.cipher_testvec* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.3, i64 0, i64 0), i8* %120, i8* %121, i32 %124)
  %126 = load i32, i32* @EINVAL, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %8, align 4
  store i32 1, i32* %26, align 4
  br label %569

128:                                              ; preds = %114
  %129 = load i32, i32* %18, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %174

131:                                              ; preds = %128
  %132 = load i32, i32* %18, align 4
  %133 = load i32, i32* @MAX_IVLEN, align 4
  %134 = icmp ugt i32 %132, %133
  %135 = zext i1 %134 to i32
  %136 = call i64 @WARN_ON(i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %131
  %139 = load i32, i32* @EINVAL, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %8, align 4
  store i32 1, i32* %26, align 4
  br label %569

141:                                              ; preds = %131
  %142 = load %struct.cipher_testvec*, %struct.cipher_testvec** %11, align 8
  %143 = getelementptr inbounds %struct.cipher_testvec, %struct.cipher_testvec* %142, i32 0, i32 6
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %156

146:                                              ; preds = %141
  %147 = load i32, i32* %10, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %156, label %149

149:                                              ; preds = %146
  %150 = load i32*, i32** %23, align 8
  %151 = load %struct.cipher_testvec*, %struct.cipher_testvec** %11, align 8
  %152 = getelementptr inbounds %struct.cipher_testvec, %struct.cipher_testvec* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* %18, align 4
  %155 = call i32 @memcpy(i32* %150, i32 %153, i32 %154)
  br label %173

156:                                              ; preds = %146, %141
  %157 = load %struct.cipher_testvec*, %struct.cipher_testvec** %11, align 8
  %158 = getelementptr inbounds %struct.cipher_testvec, %struct.cipher_testvec* %157, i32 0, i32 7
  %159 = load i32, i32* %158, align 8
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %168

161:                                              ; preds = %156
  %162 = load i32*, i32** %23, align 8
  %163 = load %struct.cipher_testvec*, %struct.cipher_testvec** %11, align 8
  %164 = getelementptr inbounds %struct.cipher_testvec, %struct.cipher_testvec* %163, i32 0, i32 7
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* %18, align 4
  %167 = call i32 @memcpy(i32* %162, i32 %165, i32 %166)
  br label %172

168:                                              ; preds = %156
  %169 = load i32*, i32** %23, align 8
  %170 = load i32, i32* %18, align 4
  %171 = call i32 @memset(i32* %169, i32 0, i32 %170)
  br label %172

172:                                              ; preds = %168, %161
  br label %173

173:                                              ; preds = %172, %149
  br label %186

174:                                              ; preds = %128
  %175 = load %struct.cipher_testvec*, %struct.cipher_testvec** %11, align 8
  %176 = getelementptr inbounds %struct.cipher_testvec, %struct.cipher_testvec* %175, i32 0, i32 6
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %185

179:                                              ; preds = %174
  %180 = load i8*, i8** %9, align 8
  %181 = load i8*, i8** %12, align 8
  %182 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i64 0, i64 0), i8* %180, i8* %181)
  %183 = load i32, i32* @EINVAL, align 4
  %184 = sub nsw i32 0, %183
  store i32 %184, i32* %8, align 4
  store i32 1, i32* %26, align 4
  br label %569

185:                                              ; preds = %174
  store i32* null, i32** %23, align 8
  br label %186

186:                                              ; preds = %185, %173
  %187 = load i32, i32* %10, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %194

189:                                              ; preds = %186
  %190 = load %struct.cipher_testvec*, %struct.cipher_testvec** %11, align 8
  %191 = getelementptr inbounds %struct.cipher_testvec, %struct.cipher_testvec* %190, i32 0, i32 4
  %192 = load i64, i64* %191, align 8
  %193 = inttoptr i64 %192 to i8*
  br label %199

194:                                              ; preds = %186
  %195 = load %struct.cipher_testvec*, %struct.cipher_testvec** %11, align 8
  %196 = getelementptr inbounds %struct.cipher_testvec, %struct.cipher_testvec* %195, i32 0, i32 5
  %197 = load i64, i64* %196, align 8
  %198 = inttoptr i64 %197 to i8*
  br label %199

199:                                              ; preds = %194, %189
  %200 = phi i8* [ %193, %189 ], [ %198, %194 ]
  %201 = getelementptr inbounds %struct.kvec, %struct.kvec* %24, i32 0, i32 1
  store i8* %200, i8** %201, align 8
  %202 = load %struct.cipher_testvec*, %struct.cipher_testvec** %11, align 8
  %203 = getelementptr inbounds %struct.cipher_testvec, %struct.cipher_testvec* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 4
  %205 = getelementptr inbounds %struct.kvec, %struct.kvec* %24, i32 0, i32 0
  store i32 %204, i32* %205, align 8
  %206 = load %struct.cipher_test_sglists*, %struct.cipher_test_sglists** %15, align 8
  %207 = load %struct.testvec_config*, %struct.testvec_config** %13, align 8
  %208 = load i32, i32* %17, align 4
  %209 = load %struct.cipher_testvec*, %struct.cipher_testvec** %11, align 8
  %210 = getelementptr inbounds %struct.cipher_testvec, %struct.cipher_testvec* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.cipher_testvec*, %struct.cipher_testvec** %11, align 8
  %213 = getelementptr inbounds %struct.cipher_testvec, %struct.cipher_testvec* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @build_cipher_test_sglists(%struct.cipher_test_sglists* %206, %struct.testvec_config* %207, i32 %208, i32 %211, i32 %214, %struct.kvec* %24, i32 1)
  store i32 %215, i32* %25, align 4
  %216 = load i32, i32* %25, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %227

218:                                              ; preds = %199
  %219 = load i8*, i8** %9, align 8
  %220 = load i8*, i8** %20, align 8
  %221 = load i8*, i8** %12, align 8
  %222 = load %struct.testvec_config*, %struct.testvec_config** %13, align 8
  %223 = getelementptr inbounds %struct.testvec_config, %struct.testvec_config* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 4
  %225 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.5, i64 0, i64 0), i8* %219, i8* %220, i8* %221, i32 %224)
  %226 = load i32, i32* %25, align 4
  store i32 %226, i32* %8, align 4
  store i32 1, i32* %26, align 4
  br label %569

227:                                              ; preds = %199
  %228 = load %struct.skcipher_request*, %struct.skcipher_request** %14, align 8
  %229 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %228, i32 0, i32 5
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %16, align 8
  %232 = call i32 @crypto_skcipher_reqsize(%struct.crypto_skcipher* %231)
  %233 = call i32 @testmgr_poison(i32 %230, i32 %232)
  %234 = load %struct.skcipher_request*, %struct.skcipher_request** %14, align 8
  %235 = load i64, i64* %19, align 8
  %236 = load i64, i64* @crypto_req_done, align 8
  %237 = call i32 @skcipher_request_set_callback(%struct.skcipher_request* %234, i64 %235, i64 %236, i32* @wait)
  %238 = load %struct.skcipher_request*, %struct.skcipher_request** %14, align 8
  %239 = load %struct.cipher_test_sglists*, %struct.cipher_test_sglists** %15, align 8
  %240 = getelementptr inbounds %struct.cipher_test_sglists, %struct.cipher_test_sglists* %239, i32 0, i32 1
  %241 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = load %struct.cipher_test_sglists*, %struct.cipher_test_sglists** %15, align 8
  %244 = getelementptr inbounds %struct.cipher_test_sglists, %struct.cipher_test_sglists* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = load %struct.cipher_testvec*, %struct.cipher_testvec** %11, align 8
  %248 = getelementptr inbounds %struct.cipher_testvec, %struct.cipher_testvec* %247, i32 0, i32 3
  %249 = load i32, i32* %248, align 4
  %250 = load i32*, i32** %23, align 8
  %251 = call i32 @skcipher_request_set_crypt(%struct.skcipher_request* %238, i64 %242, i64 %246, i32 %249, i32* %250)
  %252 = load %struct.testvec_config*, %struct.testvec_config** %13, align 8
  %253 = getelementptr inbounds %struct.testvec_config, %struct.testvec_config* %252, i32 0, i32 3
  %254 = load i64, i64* %253, align 8
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %258

256:                                              ; preds = %227
  %257 = call i32 (...) @crypto_disable_simd_for_test()
  br label %258

258:                                              ; preds = %256, %227
  %259 = load i32, i32* %10, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %264

261:                                              ; preds = %258
  %262 = load %struct.skcipher_request*, %struct.skcipher_request** %14, align 8
  %263 = call i32 @crypto_skcipher_encrypt(%struct.skcipher_request* %262)
  br label %267

264:                                              ; preds = %258
  %265 = load %struct.skcipher_request*, %struct.skcipher_request** %14, align 8
  %266 = call i32 @crypto_skcipher_decrypt(%struct.skcipher_request* %265)
  br label %267

267:                                              ; preds = %264, %261
  %268 = phi i32 [ %263, %261 ], [ %266, %264 ]
  store i32 %268, i32* %25, align 4
  %269 = load %struct.testvec_config*, %struct.testvec_config** %13, align 8
  %270 = getelementptr inbounds %struct.testvec_config, %struct.testvec_config* %269, i32 0, i32 3
  %271 = load i64, i64* %270, align 8
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %275

273:                                              ; preds = %267
  %274 = call i32 (...) @crypto_reenable_simd_for_test()
  br label %275

275:                                              ; preds = %273, %267
  %276 = load i32, i32* %25, align 4
  %277 = call i32 @crypto_wait_req(i32 %276, i32* @wait)
  store i32 %277, i32* %25, align 4
  %278 = load %struct.skcipher_request*, %struct.skcipher_request** %14, align 8
  %279 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %278, i32 0, i32 4
  %280 = load i32, i32* %279, align 8
  %281 = load %struct.cipher_testvec*, %struct.cipher_testvec** %11, align 8
  %282 = getelementptr inbounds %struct.cipher_testvec, %struct.cipher_testvec* %281, i32 0, i32 3
  %283 = load i32, i32* %282, align 4
  %284 = icmp ne i32 %280, %283
  br i1 %284, label %334, label %285

285:                                              ; preds = %275
  %286 = load %struct.skcipher_request*, %struct.skcipher_request** %14, align 8
  %287 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %286, i32 0, i32 3
  %288 = load i32*, i32** %287, align 8
  %289 = load i32*, i32** %23, align 8
  %290 = icmp ne i32* %288, %289
  br i1 %290, label %334, label %291

291:                                              ; preds = %285
  %292 = load %struct.skcipher_request*, %struct.skcipher_request** %14, align 8
  %293 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %292, i32 0, i32 0
  %294 = load i64, i64* %293, align 8
  %295 = load %struct.cipher_test_sglists*, %struct.cipher_test_sglists** %15, align 8
  %296 = getelementptr inbounds %struct.cipher_test_sglists, %struct.cipher_test_sglists* %295, i32 0, i32 1
  %297 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %296, i32 0, i32 0
  %298 = load i64, i64* %297, align 8
  %299 = icmp ne i64 %294, %298
  br i1 %299, label %334, label %300

300:                                              ; preds = %291
  %301 = load %struct.skcipher_request*, %struct.skcipher_request** %14, align 8
  %302 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %301, i32 0, i32 1
  %303 = load i64, i64* %302, align 8
  %304 = load %struct.cipher_test_sglists*, %struct.cipher_test_sglists** %15, align 8
  %305 = getelementptr inbounds %struct.cipher_test_sglists, %struct.cipher_test_sglists* %304, i32 0, i32 0
  %306 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %305, i32 0, i32 0
  %307 = load i64, i64* %306, align 8
  %308 = icmp ne i64 %303, %307
  br i1 %308, label %334, label %309

309:                                              ; preds = %300
  %310 = load %struct.skcipher_request*, %struct.skcipher_request** %14, align 8
  %311 = call %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request* %310)
  %312 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %16, align 8
  %313 = icmp ne %struct.crypto_skcipher* %311, %312
  br i1 %313, label %334, label %314

314:                                              ; preds = %309
  %315 = load %struct.skcipher_request*, %struct.skcipher_request** %14, align 8
  %316 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %315, i32 0, i32 2
  %317 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %316, i32 0, i32 0
  %318 = load i64, i64* %317, align 8
  %319 = load i64, i64* @crypto_req_done, align 8
  %320 = icmp ne i64 %318, %319
  br i1 %320, label %334, label %321

321:                                              ; preds = %314
  %322 = load %struct.skcipher_request*, %struct.skcipher_request** %14, align 8
  %323 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %322, i32 0, i32 2
  %324 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %323, i32 0, i32 1
  %325 = load i64, i64* %324, align 8
  %326 = load i64, i64* %19, align 8
  %327 = icmp ne i64 %325, %326
  br i1 %327, label %334, label %328

328:                                              ; preds = %321
  %329 = load %struct.skcipher_request*, %struct.skcipher_request** %14, align 8
  %330 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %329, i32 0, i32 2
  %331 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %330, i32 0, i32 2
  %332 = load i32*, i32** %331, align 8
  %333 = icmp ne i32* %332, @wait
  br i1 %333, label %334, label %417

334:                                              ; preds = %328, %321, %314, %309, %300, %291, %285, %275
  %335 = load i8*, i8** %9, align 8
  %336 = load i8*, i8** %20, align 8
  %337 = load i8*, i8** %12, align 8
  %338 = load %struct.testvec_config*, %struct.testvec_config** %13, align 8
  %339 = getelementptr inbounds %struct.testvec_config, %struct.testvec_config* %338, i32 0, i32 2
  %340 = load i32, i32* %339, align 4
  %341 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.6, i64 0, i64 0), i8* %335, i8* %336, i8* %337, i32 %340)
  %342 = load %struct.skcipher_request*, %struct.skcipher_request** %14, align 8
  %343 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %342, i32 0, i32 4
  %344 = load i32, i32* %343, align 8
  %345 = load %struct.cipher_testvec*, %struct.cipher_testvec** %11, align 8
  %346 = getelementptr inbounds %struct.cipher_testvec, %struct.cipher_testvec* %345, i32 0, i32 3
  %347 = load i32, i32* %346, align 4
  %348 = icmp ne i32 %344, %347
  br i1 %348, label %349, label %351

349:                                              ; preds = %334
  %350 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0))
  br label %351

351:                                              ; preds = %349, %334
  %352 = load %struct.skcipher_request*, %struct.skcipher_request** %14, align 8
  %353 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %352, i32 0, i32 3
  %354 = load i32*, i32** %353, align 8
  %355 = load i32*, i32** %23, align 8
  %356 = icmp ne i32* %354, %355
  br i1 %356, label %357, label %359

357:                                              ; preds = %351
  %358 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0))
  br label %359

359:                                              ; preds = %357, %351
  %360 = load %struct.skcipher_request*, %struct.skcipher_request** %14, align 8
  %361 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %360, i32 0, i32 0
  %362 = load i64, i64* %361, align 8
  %363 = load %struct.cipher_test_sglists*, %struct.cipher_test_sglists** %15, align 8
  %364 = getelementptr inbounds %struct.cipher_test_sglists, %struct.cipher_test_sglists* %363, i32 0, i32 1
  %365 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %364, i32 0, i32 0
  %366 = load i64, i64* %365, align 8
  %367 = icmp ne i64 %362, %366
  br i1 %367, label %368, label %370

368:                                              ; preds = %359
  %369 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0))
  br label %370

370:                                              ; preds = %368, %359
  %371 = load %struct.skcipher_request*, %struct.skcipher_request** %14, align 8
  %372 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %371, i32 0, i32 1
  %373 = load i64, i64* %372, align 8
  %374 = load %struct.cipher_test_sglists*, %struct.cipher_test_sglists** %15, align 8
  %375 = getelementptr inbounds %struct.cipher_test_sglists, %struct.cipher_test_sglists* %374, i32 0, i32 0
  %376 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %375, i32 0, i32 0
  %377 = load i64, i64* %376, align 8
  %378 = icmp ne i64 %373, %377
  br i1 %378, label %379, label %381

379:                                              ; preds = %370
  %380 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0))
  br label %381

381:                                              ; preds = %379, %370
  %382 = load %struct.skcipher_request*, %struct.skcipher_request** %14, align 8
  %383 = call %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request* %382)
  %384 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %16, align 8
  %385 = icmp ne %struct.crypto_skcipher* %383, %384
  br i1 %385, label %386, label %388

386:                                              ; preds = %381
  %387 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0))
  br label %388

388:                                              ; preds = %386, %381
  %389 = load %struct.skcipher_request*, %struct.skcipher_request** %14, align 8
  %390 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %389, i32 0, i32 2
  %391 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %390, i32 0, i32 0
  %392 = load i64, i64* %391, align 8
  %393 = load i64, i64* @crypto_req_done, align 8
  %394 = icmp ne i64 %392, %393
  br i1 %394, label %395, label %397

395:                                              ; preds = %388
  %396 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.12, i64 0, i64 0))
  br label %397

397:                                              ; preds = %395, %388
  %398 = load %struct.skcipher_request*, %struct.skcipher_request** %14, align 8
  %399 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %398, i32 0, i32 2
  %400 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %399, i32 0, i32 1
  %401 = load i64, i64* %400, align 8
  %402 = load i64, i64* %19, align 8
  %403 = icmp ne i64 %401, %402
  br i1 %403, label %404, label %406

404:                                              ; preds = %397
  %405 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.13, i64 0, i64 0))
  br label %406

406:                                              ; preds = %404, %397
  %407 = load %struct.skcipher_request*, %struct.skcipher_request** %14, align 8
  %408 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %407, i32 0, i32 2
  %409 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %408, i32 0, i32 2
  %410 = load i32*, i32** %409, align 8
  %411 = icmp ne i32* %410, @wait
  br i1 %411, label %412, label %414

412:                                              ; preds = %406
  %413 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i64 0, i64 0))
  br label %414

414:                                              ; preds = %412, %406
  %415 = load i32, i32* @EINVAL, align 4
  %416 = sub nsw i32 0, %415
  store i32 %416, i32* %8, align 4
  store i32 1, i32* %26, align 4
  br label %569

417:                                              ; preds = %328
  %418 = load %struct.cipher_test_sglists*, %struct.cipher_test_sglists** %15, align 8
  %419 = getelementptr inbounds %struct.cipher_test_sglists, %struct.cipher_test_sglists* %418, i32 0, i32 1
  %420 = call i64 @is_test_sglist_corrupted(%struct.TYPE_5__* %419)
  %421 = icmp ne i64 %420, 0
  br i1 %421, label %422, label %432

422:                                              ; preds = %417
  %423 = load i8*, i8** %9, align 8
  %424 = load i8*, i8** %20, align 8
  %425 = load i8*, i8** %12, align 8
  %426 = load %struct.testvec_config*, %struct.testvec_config** %13, align 8
  %427 = getelementptr inbounds %struct.testvec_config, %struct.testvec_config* %426, i32 0, i32 2
  %428 = load i32, i32* %427, align 4
  %429 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.15, i64 0, i64 0), i8* %423, i8* %424, i8* %425, i32 %428)
  %430 = load i32, i32* @EINVAL, align 4
  %431 = sub nsw i32 0, %430
  store i32 %431, i32* %8, align 4
  store i32 1, i32* %26, align 4
  br label %569

432:                                              ; preds = %417
  %433 = load %struct.cipher_test_sglists*, %struct.cipher_test_sglists** %15, align 8
  %434 = getelementptr inbounds %struct.cipher_test_sglists, %struct.cipher_test_sglists* %433, i32 0, i32 0
  %435 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %434, i32 0, i32 0
  %436 = load i64, i64* %435, align 8
  %437 = load %struct.cipher_test_sglists*, %struct.cipher_test_sglists** %15, align 8
  %438 = getelementptr inbounds %struct.cipher_test_sglists, %struct.cipher_test_sglists* %437, i32 0, i32 1
  %439 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %438, i32 0, i32 1
  %440 = load i64, i64* %439, align 8
  %441 = icmp ne i64 %436, %440
  br i1 %441, label %442, label %457

442:                                              ; preds = %432
  %443 = load %struct.cipher_test_sglists*, %struct.cipher_test_sglists** %15, align 8
  %444 = getelementptr inbounds %struct.cipher_test_sglists, %struct.cipher_test_sglists* %443, i32 0, i32 0
  %445 = call i64 @is_test_sglist_corrupted(%struct.TYPE_5__* %444)
  %446 = icmp ne i64 %445, 0
  br i1 %446, label %447, label %457

447:                                              ; preds = %442
  %448 = load i8*, i8** %9, align 8
  %449 = load i8*, i8** %20, align 8
  %450 = load i8*, i8** %12, align 8
  %451 = load %struct.testvec_config*, %struct.testvec_config** %13, align 8
  %452 = getelementptr inbounds %struct.testvec_config, %struct.testvec_config* %451, i32 0, i32 2
  %453 = load i32, i32* %452, align 4
  %454 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.16, i64 0, i64 0), i8* %448, i8* %449, i8* %450, i32 %453)
  %455 = load i32, i32* @EINVAL, align 4
  %456 = sub nsw i32 0, %455
  store i32 %456, i32* %8, align 4
  store i32 1, i32* %26, align 4
  br label %569

457:                                              ; preds = %442, %432
  %458 = load i32, i32* %25, align 4
  %459 = icmp ne i32 %458, 0
  br i1 %459, label %460, label %480

460:                                              ; preds = %457
  %461 = load i32, i32* %25, align 4
  %462 = load %struct.cipher_testvec*, %struct.cipher_testvec** %11, align 8
  %463 = getelementptr inbounds %struct.cipher_testvec, %struct.cipher_testvec* %462, i32 0, i32 1
  %464 = load i32, i32* %463, align 4
  %465 = icmp eq i32 %461, %464
  br i1 %465, label %466, label %467

466:                                              ; preds = %460
  store i32 0, i32* %8, align 4
  store i32 1, i32* %26, align 4
  br label %569

467:                                              ; preds = %460
  %468 = load i8*, i8** %9, align 8
  %469 = load i8*, i8** %20, align 8
  %470 = load i8*, i8** %12, align 8
  %471 = load %struct.cipher_testvec*, %struct.cipher_testvec** %11, align 8
  %472 = getelementptr inbounds %struct.cipher_testvec, %struct.cipher_testvec* %471, i32 0, i32 1
  %473 = load i32, i32* %472, align 4
  %474 = load i32, i32* %25, align 4
  %475 = load %struct.testvec_config*, %struct.testvec_config** %13, align 8
  %476 = getelementptr inbounds %struct.testvec_config, %struct.testvec_config* %475, i32 0, i32 2
  %477 = load i32, i32* %476, align 4
  %478 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.17, i64 0, i64 0), i8* %468, i8* %469, i8* %470, i32 %473, i32 %474, i32 %477)
  %479 = load i32, i32* %25, align 4
  store i32 %479, i32* %8, align 4
  store i32 1, i32* %26, align 4
  br label %569

480:                                              ; preds = %457
  %481 = load %struct.cipher_testvec*, %struct.cipher_testvec** %11, align 8
  %482 = getelementptr inbounds %struct.cipher_testvec, %struct.cipher_testvec* %481, i32 0, i32 1
  %483 = load i32, i32* %482, align 4
  %484 = icmp ne i32 %483, 0
  br i1 %484, label %485, label %498

485:                                              ; preds = %480
  %486 = load i8*, i8** %9, align 8
  %487 = load i8*, i8** %20, align 8
  %488 = load i8*, i8** %12, align 8
  %489 = load %struct.cipher_testvec*, %struct.cipher_testvec** %11, align 8
  %490 = getelementptr inbounds %struct.cipher_testvec, %struct.cipher_testvec* %489, i32 0, i32 1
  %491 = load i32, i32* %490, align 4
  %492 = load %struct.testvec_config*, %struct.testvec_config** %13, align 8
  %493 = getelementptr inbounds %struct.testvec_config, %struct.testvec_config* %492, i32 0, i32 2
  %494 = load i32, i32* %493, align 4
  %495 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.18, i64 0, i64 0), i8* %486, i8* %487, i8* %488, i32 %491, i32 %494)
  %496 = load i32, i32* @EINVAL, align 4
  %497 = sub nsw i32 0, %496
  store i32 %497, i32* %8, align 4
  store i32 1, i32* %26, align 4
  br label %569

498:                                              ; preds = %480
  %499 = load %struct.cipher_test_sglists*, %struct.cipher_test_sglists** %15, align 8
  %500 = getelementptr inbounds %struct.cipher_test_sglists, %struct.cipher_test_sglists* %499, i32 0, i32 0
  %501 = load i32, i32* %10, align 4
  %502 = icmp ne i32 %501, 0
  br i1 %502, label %503, label %507

503:                                              ; preds = %498
  %504 = load %struct.cipher_testvec*, %struct.cipher_testvec** %11, align 8
  %505 = getelementptr inbounds %struct.cipher_testvec, %struct.cipher_testvec* %504, i32 0, i32 5
  %506 = load i64, i64* %505, align 8
  br label %511

507:                                              ; preds = %498
  %508 = load %struct.cipher_testvec*, %struct.cipher_testvec** %11, align 8
  %509 = getelementptr inbounds %struct.cipher_testvec, %struct.cipher_testvec* %508, i32 0, i32 4
  %510 = load i64, i64* %509, align 8
  br label %511

511:                                              ; preds = %507, %503
  %512 = phi i64 [ %506, %503 ], [ %510, %507 ]
  %513 = load %struct.cipher_testvec*, %struct.cipher_testvec** %11, align 8
  %514 = getelementptr inbounds %struct.cipher_testvec, %struct.cipher_testvec* %513, i32 0, i32 3
  %515 = load i32, i32* %514, align 4
  %516 = call i32 @verify_correct_output(%struct.TYPE_5__* %500, i64 %512, i32 %515, i32 0, i32 1)
  store i32 %516, i32* %25, align 4
  %517 = load i32, i32* %25, align 4
  %518 = load i32, i32* @EOVERFLOW, align 4
  %519 = sub nsw i32 0, %518
  %520 = icmp eq i32 %517, %519
  br i1 %520, label %521, label %530

521:                                              ; preds = %511
  %522 = load i8*, i8** %9, align 8
  %523 = load i8*, i8** %20, align 8
  %524 = load i8*, i8** %12, align 8
  %525 = load %struct.testvec_config*, %struct.testvec_config** %13, align 8
  %526 = getelementptr inbounds %struct.testvec_config, %struct.testvec_config* %525, i32 0, i32 2
  %527 = load i32, i32* %526, align 4
  %528 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.19, i64 0, i64 0), i8* %522, i8* %523, i8* %524, i32 %527)
  %529 = load i32, i32* %25, align 4
  store i32 %529, i32* %8, align 4
  store i32 1, i32* %26, align 4
  br label %569

530:                                              ; preds = %511
  %531 = load i32, i32* %25, align 4
  %532 = icmp ne i32 %531, 0
  br i1 %532, label %533, label %542

533:                                              ; preds = %530
  %534 = load i8*, i8** %9, align 8
  %535 = load i8*, i8** %20, align 8
  %536 = load i8*, i8** %12, align 8
  %537 = load %struct.testvec_config*, %struct.testvec_config** %13, align 8
  %538 = getelementptr inbounds %struct.testvec_config, %struct.testvec_config* %537, i32 0, i32 2
  %539 = load i32, i32* %538, align 4
  %540 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.20, i64 0, i64 0), i8* %534, i8* %535, i8* %536, i32 %539)
  %541 = load i32, i32* %25, align 4
  store i32 %541, i32* %8, align 4
  store i32 1, i32* %26, align 4
  br label %569

542:                                              ; preds = %530
  %543 = load %struct.cipher_testvec*, %struct.cipher_testvec** %11, align 8
  %544 = getelementptr inbounds %struct.cipher_testvec, %struct.cipher_testvec* %543, i32 0, i32 2
  %545 = load i32, i32* %544, align 8
  %546 = icmp ne i32 %545, 0
  br i1 %546, label %547, label %568

547:                                              ; preds = %542
  %548 = load i32*, i32** %23, align 8
  %549 = load %struct.cipher_testvec*, %struct.cipher_testvec** %11, align 8
  %550 = getelementptr inbounds %struct.cipher_testvec, %struct.cipher_testvec* %549, i32 0, i32 2
  %551 = load i32, i32* %550, align 8
  %552 = load i32, i32* %18, align 4
  %553 = call i64 @memcmp(i32* %548, i32 %551, i32 %552)
  %554 = icmp ne i64 %553, 0
  br i1 %554, label %555, label %568

555:                                              ; preds = %547
  %556 = load i8*, i8** %9, align 8
  %557 = load i8*, i8** %20, align 8
  %558 = load i8*, i8** %12, align 8
  %559 = load %struct.testvec_config*, %struct.testvec_config** %13, align 8
  %560 = getelementptr inbounds %struct.testvec_config, %struct.testvec_config* %559, i32 0, i32 2
  %561 = load i32, i32* %560, align 4
  %562 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.21, i64 0, i64 0), i8* %556, i8* %557, i8* %558, i32 %561)
  %563 = load i32*, i32** %23, align 8
  %564 = load i32, i32* %18, align 4
  %565 = call i32 @hexdump(i32* %563, i32 %564)
  %566 = load i32, i32* @EINVAL, align 4
  %567 = sub nsw i32 0, %566
  store i32 %567, i32* %8, align 4
  store i32 1, i32* %26, align 4
  br label %569

568:                                              ; preds = %547, %542
  store i32 0, i32* %8, align 4
  store i32 1, i32* %26, align 4
  br label %569

569:                                              ; preds = %568, %555, %533, %521, %485, %467, %466, %447, %422, %414, %218, %179, %138, %119, %103, %102
  %570 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %570)
  %571 = load i32, i32* %8, align 4
  ret i32 %571
}

declare dso_local %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request*) #1

declare dso_local i32 @crypto_skcipher_alignmask(%struct.crypto_skcipher*) #1

declare dso_local i32 @crypto_skcipher_ivsize(%struct.crypto_skcipher*) #1

declare dso_local i32 @DECLARE_CRYPTO_WAIT(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32* @PTR_ALIGN(i32*, i32) #1

declare dso_local i32 @crypto_skcipher_set_flags(%struct.crypto_skcipher*, i32) #1

declare dso_local i32 @crypto_skcipher_clear_flags(%struct.crypto_skcipher*, i32) #1

declare dso_local i32 @crypto_skcipher_setkey(%struct.crypto_skcipher*, i32, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @crypto_skcipher_get_flags(%struct.crypto_skcipher*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @build_cipher_test_sglists(%struct.cipher_test_sglists*, %struct.testvec_config*, i32, i32, i32, %struct.kvec*, i32) #1

declare dso_local i32 @testmgr_poison(i32, i32) #1

declare dso_local i32 @crypto_skcipher_reqsize(%struct.crypto_skcipher*) #1

declare dso_local i32 @skcipher_request_set_callback(%struct.skcipher_request*, i64, i64, i32*) #1

declare dso_local i32 @skcipher_request_set_crypt(%struct.skcipher_request*, i64, i64, i32, i32*) #1

declare dso_local i32 @crypto_disable_simd_for_test(...) #1

declare dso_local i32 @crypto_skcipher_encrypt(%struct.skcipher_request*) #1

declare dso_local i32 @crypto_skcipher_decrypt(%struct.skcipher_request*) #1

declare dso_local i32 @crypto_reenable_simd_for_test(...) #1

declare dso_local i32 @crypto_wait_req(i32, i32*) #1

declare dso_local i64 @is_test_sglist_corrupted(%struct.TYPE_5__*) #1

declare dso_local i32 @verify_correct_output(%struct.TYPE_5__*, i64, i32, i32, i32) #1

declare dso_local i64 @memcmp(i32*, i32, i32) #1

declare dso_local i32 @hexdump(i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
