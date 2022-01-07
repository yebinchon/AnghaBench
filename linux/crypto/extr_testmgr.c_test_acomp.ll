; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_testmgr.c_test_acomp.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_testmgr.c_test_acomp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_acomp = type { i32 }
%struct.comp_testvec = type { i32, i32, i32, i32 }
%struct.scatterlist = type { i32 }
%struct.acomp_req = type { i32 }
%struct.crypto_wait = type { i32 }

@COMP_BUF_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"alg: acomp: request alloc failed for %s\0A\00", align 1
@CRYPTO_TFM_REQ_MAY_BACKLOG = common dso_local global i32 0, align 4
@crypto_req_done = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"alg: acomp: compression failed on test %d for %s: ret=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"alg: acomp: Compression test %d failed for %s: output len = %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"alg: acomp: Compression test %d failed for %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [60 x i8] c"alg: acomp: decompression failed on test %d for %s: ret=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [66 x i8] c"alg: acomp: Decompression test %d failed for %s: output len = %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"alg: acomp: Decompression test %d failed for %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_acomp*, %struct.comp_testvec*, %struct.comp_testvec*, i32, i32)* @test_acomp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_acomp(%struct.crypto_acomp* %0, %struct.comp_testvec* %1, %struct.comp_testvec* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.crypto_acomp*, align 8
  %8 = alloca %struct.comp_testvec*, align 8
  %9 = alloca %struct.comp_testvec*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.scatterlist, align 4
  %18 = alloca %struct.scatterlist, align 4
  %19 = alloca %struct.acomp_req*, align 8
  %20 = alloca %struct.crypto_wait, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  store %struct.crypto_acomp* %0, %struct.crypto_acomp** %7, align 8
  store %struct.comp_testvec* %1, %struct.comp_testvec** %8, align 8
  store %struct.comp_testvec* %2, %struct.comp_testvec** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %27 = load %struct.crypto_acomp*, %struct.crypto_acomp** %7, align 8
  %28 = call i32 @crypto_acomp_tfm(%struct.crypto_acomp* %27)
  %29 = call i8* @crypto_tfm_alg_driver_name(i32 %28)
  store i8* %29, i8** %12, align 8
  %30 = load i32, i32* @COMP_BUF_SIZE, align 4
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i8* @kmalloc(i32 %30, i32 %31)
  store i8* %32, i8** %14, align 8
  %33 = load i8*, i8** %14, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %5
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %357

38:                                               ; preds = %5
  %39 = load i32, i32* @COMP_BUF_SIZE, align 4
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i8* @kmalloc(i32 %39, i32 %40)
  store i8* %41, i8** %15, align 8
  %42 = load i8*, i8** %15, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %38
  %45 = load i8*, i8** %14, align 8
  %46 = call i32 @kfree(i8* %45)
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %6, align 4
  br label %357

49:                                               ; preds = %38
  store i32 0, i32* %13, align 4
  br label %50

50:                                               ; preds = %209, %49
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp ult i32 %51, %52
  br i1 %53, label %54, label %212

54:                                               ; preds = %50
  %55 = load i32, i32* @COMP_BUF_SIZE, align 4
  store i32 %55, i32* %21, align 4
  %56 = load %struct.comp_testvec*, %struct.comp_testvec** %8, align 8
  %57 = load i32, i32* %13, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.comp_testvec, %struct.comp_testvec* %56, i64 %58
  %60 = getelementptr inbounds %struct.comp_testvec, %struct.comp_testvec* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %22, align 4
  %62 = load %struct.comp_testvec*, %struct.comp_testvec** %8, align 8
  %63 = load i32, i32* %13, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.comp_testvec, %struct.comp_testvec* %62, i64 %64
  %66 = getelementptr inbounds %struct.comp_testvec, %struct.comp_testvec* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %22, align 4
  %69 = load i32, i32* @GFP_KERNEL, align 4
  %70 = call i8* @kmemdup(i32 %67, i32 %68, i32 %69)
  store i8* %70, i8** %23, align 8
  %71 = load i8*, i8** %23, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %54
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %16, align 4
  br label %351

76:                                               ; preds = %54
  %77 = load i8*, i8** %14, align 8
  %78 = load i32, i32* %21, align 4
  %79 = call i32 @memset(i8* %77, i32 0, i32 %78)
  %80 = call i32 @crypto_init_wait(%struct.crypto_wait* %20)
  %81 = load i8*, i8** %23, align 8
  %82 = load i32, i32* %22, align 4
  %83 = call i32 @sg_init_one(%struct.scatterlist* %17, i8* %81, i32 %82)
  %84 = load i8*, i8** %14, align 8
  %85 = load i32, i32* %21, align 4
  %86 = call i32 @sg_init_one(%struct.scatterlist* %18, i8* %84, i32 %85)
  %87 = load %struct.crypto_acomp*, %struct.crypto_acomp** %7, align 8
  %88 = call %struct.acomp_req* @acomp_request_alloc(%struct.crypto_acomp* %87)
  store %struct.acomp_req* %88, %struct.acomp_req** %19, align 8
  %89 = load %struct.acomp_req*, %struct.acomp_req** %19, align 8
  %90 = icmp ne %struct.acomp_req* %89, null
  br i1 %90, label %98, label %91

91:                                               ; preds = %76
  %92 = load i8*, i8** %12, align 8
  %93 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %92)
  %94 = load i8*, i8** %23, align 8
  %95 = call i32 @kfree(i8* %94)
  %96 = load i32, i32* @ENOMEM, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %16, align 4
  br label %351

98:                                               ; preds = %76
  %99 = load %struct.acomp_req*, %struct.acomp_req** %19, align 8
  %100 = load i32, i32* %22, align 4
  %101 = load i32, i32* %21, align 4
  %102 = call i32 @acomp_request_set_params(%struct.acomp_req* %99, %struct.scatterlist* %17, %struct.scatterlist* %18, i32 %100, i32 %101)
  %103 = load %struct.acomp_req*, %struct.acomp_req** %19, align 8
  %104 = load i32, i32* @CRYPTO_TFM_REQ_MAY_BACKLOG, align 4
  %105 = load i32, i32* @crypto_req_done, align 4
  %106 = call i32 @acomp_request_set_callback(%struct.acomp_req* %103, i32 %104, i32 %105, %struct.crypto_wait* %20)
  %107 = load %struct.acomp_req*, %struct.acomp_req** %19, align 8
  %108 = call i32 @crypto_acomp_compress(%struct.acomp_req* %107)
  %109 = call i32 @crypto_wait_req(i32 %108, %struct.crypto_wait* %20)
  store i32 %109, i32* %16, align 4
  %110 = load i32, i32* %16, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %123

112:                                              ; preds = %98
  %113 = load i32, i32* %13, align 4
  %114 = add i32 %113, 1
  %115 = load i8*, i8** %12, align 8
  %116 = load i32, i32* %16, align 4
  %117 = sub nsw i32 0, %116
  %118 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %114, i8* %115, i32 %117)
  %119 = load i8*, i8** %23, align 8
  %120 = call i32 @kfree(i8* %119)
  %121 = load %struct.acomp_req*, %struct.acomp_req** %19, align 8
  %122 = call i32 @acomp_request_free(%struct.acomp_req* %121)
  br label %351

123:                                              ; preds = %98
  %124 = load %struct.acomp_req*, %struct.acomp_req** %19, align 8
  %125 = getelementptr inbounds %struct.acomp_req, %struct.acomp_req* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %22, align 4
  %127 = load i32, i32* @COMP_BUF_SIZE, align 4
  store i32 %127, i32* %21, align 4
  %128 = load i8*, i8** %14, align 8
  %129 = load i32, i32* %22, align 4
  %130 = call i32 @sg_init_one(%struct.scatterlist* %17, i8* %128, i32 %129)
  %131 = load i8*, i8** %15, align 8
  %132 = load i32, i32* %21, align 4
  %133 = call i32 @sg_init_one(%struct.scatterlist* %18, i8* %131, i32 %132)
  %134 = call i32 @crypto_init_wait(%struct.crypto_wait* %20)
  %135 = load %struct.acomp_req*, %struct.acomp_req** %19, align 8
  %136 = load i32, i32* %22, align 4
  %137 = load i32, i32* %21, align 4
  %138 = call i32 @acomp_request_set_params(%struct.acomp_req* %135, %struct.scatterlist* %17, %struct.scatterlist* %18, i32 %136, i32 %137)
  %139 = load %struct.acomp_req*, %struct.acomp_req** %19, align 8
  %140 = call i32 @crypto_acomp_decompress(%struct.acomp_req* %139)
  %141 = call i32 @crypto_wait_req(i32 %140, %struct.crypto_wait* %20)
  store i32 %141, i32* %16, align 4
  %142 = load i32, i32* %16, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %155

144:                                              ; preds = %123
  %145 = load i32, i32* %13, align 4
  %146 = add i32 %145, 1
  %147 = load i8*, i8** %12, align 8
  %148 = load i32, i32* %16, align 4
  %149 = sub nsw i32 0, %148
  %150 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %146, i8* %147, i32 %149)
  %151 = load i8*, i8** %23, align 8
  %152 = call i32 @kfree(i8* %151)
  %153 = load %struct.acomp_req*, %struct.acomp_req** %19, align 8
  %154 = call i32 @acomp_request_free(%struct.acomp_req* %153)
  br label %351

155:                                              ; preds = %123
  %156 = load %struct.acomp_req*, %struct.acomp_req** %19, align 8
  %157 = getelementptr inbounds %struct.acomp_req, %struct.acomp_req* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.comp_testvec*, %struct.comp_testvec** %8, align 8
  %160 = load i32, i32* %13, align 4
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds %struct.comp_testvec, %struct.comp_testvec* %159, i64 %161
  %163 = getelementptr inbounds %struct.comp_testvec, %struct.comp_testvec* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = icmp ne i32 %158, %164
  br i1 %165, label %166, label %180

166:                                              ; preds = %155
  %167 = load i32, i32* %13, align 4
  %168 = add i32 %167, 1
  %169 = load i8*, i8** %12, align 8
  %170 = load %struct.acomp_req*, %struct.acomp_req** %19, align 8
  %171 = getelementptr inbounds %struct.acomp_req, %struct.acomp_req* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i32 %168, i8* %169, i32 %172)
  %174 = load i32, i32* @EINVAL, align 4
  %175 = sub nsw i32 0, %174
  store i32 %175, i32* %16, align 4
  %176 = load i8*, i8** %23, align 8
  %177 = call i32 @kfree(i8* %176)
  %178 = load %struct.acomp_req*, %struct.acomp_req** %19, align 8
  %179 = call i32 @acomp_request_free(%struct.acomp_req* %178)
  br label %351

180:                                              ; preds = %155
  %181 = load i8*, i8** %23, align 8
  %182 = load i8*, i8** %15, align 8
  %183 = load %struct.acomp_req*, %struct.acomp_req** %19, align 8
  %184 = getelementptr inbounds %struct.acomp_req, %struct.acomp_req* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = call i64 @memcmp(i8* %181, i8* %182, i32 %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %204

188:                                              ; preds = %180
  %189 = load i32, i32* %13, align 4
  %190 = add i32 %189, 1
  %191 = load i8*, i8** %12, align 8
  %192 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %190, i8* %191)
  %193 = load i8*, i8** %14, align 8
  %194 = load %struct.acomp_req*, %struct.acomp_req** %19, align 8
  %195 = getelementptr inbounds %struct.acomp_req, %struct.acomp_req* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @hexdump(i8* %193, i32 %196)
  %198 = load i32, i32* @EINVAL, align 4
  %199 = sub nsw i32 0, %198
  store i32 %199, i32* %16, align 4
  %200 = load i8*, i8** %23, align 8
  %201 = call i32 @kfree(i8* %200)
  %202 = load %struct.acomp_req*, %struct.acomp_req** %19, align 8
  %203 = call i32 @acomp_request_free(%struct.acomp_req* %202)
  br label %351

204:                                              ; preds = %180
  %205 = load i8*, i8** %23, align 8
  %206 = call i32 @kfree(i8* %205)
  %207 = load %struct.acomp_req*, %struct.acomp_req** %19, align 8
  %208 = call i32 @acomp_request_free(%struct.acomp_req* %207)
  br label %209

209:                                              ; preds = %204
  %210 = load i32, i32* %13, align 4
  %211 = add i32 %210, 1
  store i32 %211, i32* %13, align 4
  br label %50

212:                                              ; preds = %50
  store i32 0, i32* %13, align 4
  br label %213

213:                                              ; preds = %347, %212
  %214 = load i32, i32* %13, align 4
  %215 = load i32, i32* %11, align 4
  %216 = icmp ult i32 %214, %215
  br i1 %216, label %217, label %350

217:                                              ; preds = %213
  %218 = load i32, i32* @COMP_BUF_SIZE, align 4
  store i32 %218, i32* %24, align 4
  %219 = load %struct.comp_testvec*, %struct.comp_testvec** %9, align 8
  %220 = load i32, i32* %13, align 4
  %221 = zext i32 %220 to i64
  %222 = getelementptr inbounds %struct.comp_testvec, %struct.comp_testvec* %219, i64 %221
  %223 = getelementptr inbounds %struct.comp_testvec, %struct.comp_testvec* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  store i32 %224, i32* %25, align 4
  %225 = load %struct.comp_testvec*, %struct.comp_testvec** %9, align 8
  %226 = load i32, i32* %13, align 4
  %227 = zext i32 %226 to i64
  %228 = getelementptr inbounds %struct.comp_testvec, %struct.comp_testvec* %225, i64 %227
  %229 = getelementptr inbounds %struct.comp_testvec, %struct.comp_testvec* %228, i32 0, i32 3
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* %25, align 4
  %232 = load i32, i32* @GFP_KERNEL, align 4
  %233 = call i8* @kmemdup(i32 %230, i32 %231, i32 %232)
  store i8* %233, i8** %26, align 8
  %234 = load i8*, i8** %26, align 8
  %235 = icmp ne i8* %234, null
  br i1 %235, label %239, label %236

236:                                              ; preds = %217
  %237 = load i32, i32* @ENOMEM, align 4
  %238 = sub nsw i32 0, %237
  store i32 %238, i32* %16, align 4
  br label %351

239:                                              ; preds = %217
  %240 = load i8*, i8** %14, align 8
  %241 = load i32, i32* %24, align 4
  %242 = call i32 @memset(i8* %240, i32 0, i32 %241)
  %243 = call i32 @crypto_init_wait(%struct.crypto_wait* %20)
  %244 = load i8*, i8** %26, align 8
  %245 = load i32, i32* %25, align 4
  %246 = call i32 @sg_init_one(%struct.scatterlist* %17, i8* %244, i32 %245)
  %247 = load i8*, i8** %14, align 8
  %248 = load i32, i32* %24, align 4
  %249 = call i32 @sg_init_one(%struct.scatterlist* %18, i8* %247, i32 %248)
  %250 = load %struct.crypto_acomp*, %struct.crypto_acomp** %7, align 8
  %251 = call %struct.acomp_req* @acomp_request_alloc(%struct.crypto_acomp* %250)
  store %struct.acomp_req* %251, %struct.acomp_req** %19, align 8
  %252 = load %struct.acomp_req*, %struct.acomp_req** %19, align 8
  %253 = icmp ne %struct.acomp_req* %252, null
  br i1 %253, label %261, label %254

254:                                              ; preds = %239
  %255 = load i8*, i8** %12, align 8
  %256 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %255)
  %257 = load i8*, i8** %26, align 8
  %258 = call i32 @kfree(i8* %257)
  %259 = load i32, i32* @ENOMEM, align 4
  %260 = sub nsw i32 0, %259
  store i32 %260, i32* %16, align 4
  br label %351

261:                                              ; preds = %239
  %262 = load %struct.acomp_req*, %struct.acomp_req** %19, align 8
  %263 = load i32, i32* %25, align 4
  %264 = load i32, i32* %24, align 4
  %265 = call i32 @acomp_request_set_params(%struct.acomp_req* %262, %struct.scatterlist* %17, %struct.scatterlist* %18, i32 %263, i32 %264)
  %266 = load %struct.acomp_req*, %struct.acomp_req** %19, align 8
  %267 = load i32, i32* @CRYPTO_TFM_REQ_MAY_BACKLOG, align 4
  %268 = load i32, i32* @crypto_req_done, align 4
  %269 = call i32 @acomp_request_set_callback(%struct.acomp_req* %266, i32 %267, i32 %268, %struct.crypto_wait* %20)
  %270 = load %struct.acomp_req*, %struct.acomp_req** %19, align 8
  %271 = call i32 @crypto_acomp_decompress(%struct.acomp_req* %270)
  %272 = call i32 @crypto_wait_req(i32 %271, %struct.crypto_wait* %20)
  store i32 %272, i32* %16, align 4
  %273 = load i32, i32* %16, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %286

275:                                              ; preds = %261
  %276 = load i32, i32* %13, align 4
  %277 = add i32 %276, 1
  %278 = load i8*, i8** %12, align 8
  %279 = load i32, i32* %16, align 4
  %280 = sub nsw i32 0, %279
  %281 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i64 0, i64 0), i32 %277, i8* %278, i32 %280)
  %282 = load i8*, i8** %26, align 8
  %283 = call i32 @kfree(i8* %282)
  %284 = load %struct.acomp_req*, %struct.acomp_req** %19, align 8
  %285 = call i32 @acomp_request_free(%struct.acomp_req* %284)
  br label %351

286:                                              ; preds = %261
  %287 = load %struct.acomp_req*, %struct.acomp_req** %19, align 8
  %288 = getelementptr inbounds %struct.acomp_req, %struct.acomp_req* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = load %struct.comp_testvec*, %struct.comp_testvec** %9, align 8
  %291 = load i32, i32* %13, align 4
  %292 = zext i32 %291 to i64
  %293 = getelementptr inbounds %struct.comp_testvec, %struct.comp_testvec* %290, i64 %292
  %294 = getelementptr inbounds %struct.comp_testvec, %struct.comp_testvec* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 4
  %296 = icmp ne i32 %289, %295
  br i1 %296, label %297, label %311

297:                                              ; preds = %286
  %298 = load i32, i32* %13, align 4
  %299 = add i32 %298, 1
  %300 = load i8*, i8** %12, align 8
  %301 = load %struct.acomp_req*, %struct.acomp_req** %19, align 8
  %302 = getelementptr inbounds %struct.acomp_req, %struct.acomp_req* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 4
  %304 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.5, i64 0, i64 0), i32 %299, i8* %300, i32 %303)
  %305 = load i32, i32* @EINVAL, align 4
  %306 = sub nsw i32 0, %305
  store i32 %306, i32* %16, align 4
  %307 = load i8*, i8** %26, align 8
  %308 = call i32 @kfree(i8* %307)
  %309 = load %struct.acomp_req*, %struct.acomp_req** %19, align 8
  %310 = call i32 @acomp_request_free(%struct.acomp_req* %309)
  br label %351

311:                                              ; preds = %286
  %312 = load i8*, i8** %14, align 8
  %313 = load %struct.comp_testvec*, %struct.comp_testvec** %9, align 8
  %314 = load i32, i32* %13, align 4
  %315 = zext i32 %314 to i64
  %316 = getelementptr inbounds %struct.comp_testvec, %struct.comp_testvec* %313, i64 %315
  %317 = getelementptr inbounds %struct.comp_testvec, %struct.comp_testvec* %316, i32 0, i32 2
  %318 = load i32, i32* %317, align 4
  %319 = sext i32 %318 to i64
  %320 = inttoptr i64 %319 to i8*
  %321 = load %struct.acomp_req*, %struct.acomp_req** %19, align 8
  %322 = getelementptr inbounds %struct.acomp_req, %struct.acomp_req* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 4
  %324 = call i64 @memcmp(i8* %312, i8* %320, i32 %323)
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %326, label %342

326:                                              ; preds = %311
  %327 = load i32, i32* %13, align 4
  %328 = add i32 %327, 1
  %329 = load i8*, i8** %12, align 8
  %330 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i32 %328, i8* %329)
  %331 = load i8*, i8** %14, align 8
  %332 = load %struct.acomp_req*, %struct.acomp_req** %19, align 8
  %333 = getelementptr inbounds %struct.acomp_req, %struct.acomp_req* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 4
  %335 = call i32 @hexdump(i8* %331, i32 %334)
  %336 = load i32, i32* @EINVAL, align 4
  %337 = sub nsw i32 0, %336
  store i32 %337, i32* %16, align 4
  %338 = load i8*, i8** %26, align 8
  %339 = call i32 @kfree(i8* %338)
  %340 = load %struct.acomp_req*, %struct.acomp_req** %19, align 8
  %341 = call i32 @acomp_request_free(%struct.acomp_req* %340)
  br label %351

342:                                              ; preds = %311
  %343 = load i8*, i8** %26, align 8
  %344 = call i32 @kfree(i8* %343)
  %345 = load %struct.acomp_req*, %struct.acomp_req** %19, align 8
  %346 = call i32 @acomp_request_free(%struct.acomp_req* %345)
  br label %347

347:                                              ; preds = %342
  %348 = load i32, i32* %13, align 4
  %349 = add i32 %348, 1
  store i32 %349, i32* %13, align 4
  br label %213

350:                                              ; preds = %213
  store i32 0, i32* %16, align 4
  br label %351

351:                                              ; preds = %350, %326, %297, %275, %254, %236, %188, %166, %144, %112, %91, %73
  %352 = load i8*, i8** %15, align 8
  %353 = call i32 @kfree(i8* %352)
  %354 = load i8*, i8** %14, align 8
  %355 = call i32 @kfree(i8* %354)
  %356 = load i32, i32* %16, align 4
  store i32 %356, i32* %6, align 4
  br label %357

357:                                              ; preds = %351, %44, %35
  %358 = load i32, i32* %6, align 4
  ret i32 %358
}

declare dso_local i8* @crypto_tfm_alg_driver_name(i32) #1

declare dso_local i32 @crypto_acomp_tfm(%struct.crypto_acomp*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i8* @kmemdup(i32, i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @crypto_init_wait(%struct.crypto_wait*) #1

declare dso_local i32 @sg_init_one(%struct.scatterlist*, i8*, i32) #1

declare dso_local %struct.acomp_req* @acomp_request_alloc(%struct.crypto_acomp*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @acomp_request_set_params(%struct.acomp_req*, %struct.scatterlist*, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @acomp_request_set_callback(%struct.acomp_req*, i32, i32, %struct.crypto_wait*) #1

declare dso_local i32 @crypto_wait_req(i32, %struct.crypto_wait*) #1

declare dso_local i32 @crypto_acomp_compress(%struct.acomp_req*) #1

declare dso_local i32 @acomp_request_free(%struct.acomp_req*) #1

declare dso_local i32 @crypto_acomp_decompress(%struct.acomp_req*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @hexdump(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
