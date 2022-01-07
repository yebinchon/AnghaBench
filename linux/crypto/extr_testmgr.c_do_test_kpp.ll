; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_testmgr.c_do_test_kpp.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_testmgr.c_do_test_kpp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_kpp = type { i32 }
%struct.kpp_testvec = type { i8*, i32, i32, i32, i64, i32, i32, i64, i32, i32, i32 }
%struct.kpp_request = type { i32 }
%struct.crypto_wait = type { i32 }
%struct.scatterlist = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MAY_BACKLOG = common dso_local global i32 0, align 4
@crypto_req_done = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"alg: %s: Party A: generate public key test failed. err %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"alg: %s: Party A: generate public key test failed. Invalid output\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [61 x i8] c"alg: %s: Party A: compute shared secret test failed. err %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"alg: %s: Party B: compute shared secret failed. err %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [60 x i8] c"alg: %s: compute shared secret test failed. Invalid output\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_kpp*, %struct.kpp_testvec*, i8*)* @do_test_kpp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_test_kpp(%struct.crypto_kpp* %0, %struct.kpp_testvec* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_kpp*, align 8
  %6 = alloca %struct.kpp_testvec*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.kpp_request*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.crypto_wait, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.scatterlist, align 4
  %18 = alloca %struct.scatterlist, align 4
  store %struct.crypto_kpp* %0, %struct.crypto_kpp** %5, align 8
  store %struct.kpp_testvec* %1, %struct.kpp_testvec** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %16, align 4
  %21 = load %struct.crypto_kpp*, %struct.crypto_kpp** %5, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.kpp_request* @kpp_request_alloc(%struct.crypto_kpp* %21, i32 %22)
  store %struct.kpp_request* %23, %struct.kpp_request** %8, align 8
  %24 = load %struct.kpp_request*, %struct.kpp_request** %8, align 8
  %25 = icmp ne %struct.kpp_request* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %3
  %27 = load i32, i32* %16, align 4
  store i32 %27, i32* %4, align 4
  br label %256

28:                                               ; preds = %3
  %29 = call i32 @crypto_init_wait(%struct.crypto_wait* %14)
  %30 = load %struct.crypto_kpp*, %struct.crypto_kpp** %5, align 8
  %31 = load %struct.kpp_testvec*, %struct.kpp_testvec** %6, align 8
  %32 = getelementptr inbounds %struct.kpp_testvec, %struct.kpp_testvec* %31, i32 0, i32 10
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.kpp_testvec*, %struct.kpp_testvec** %6, align 8
  %35 = getelementptr inbounds %struct.kpp_testvec, %struct.kpp_testvec* %34, i32 0, i32 9
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @crypto_kpp_set_secret(%struct.crypto_kpp* %30, i32 %33, i32 %36)
  store i32 %37, i32* %16, align 4
  %38 = load i32, i32* %16, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %28
  br label %252

41:                                               ; preds = %28
  %42 = load %struct.crypto_kpp*, %struct.crypto_kpp** %5, align 8
  %43 = call i32 @crypto_kpp_maxsize(%struct.crypto_kpp* %42)
  store i32 %43, i32* %15, align 4
  %44 = load i32, i32* %15, align 4
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call i8* @kzalloc(i32 %44, i32 %45)
  store i8* %46, i8** %10, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %41
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %16, align 4
  br label %252

52:                                               ; preds = %41
  %53 = load %struct.kpp_request*, %struct.kpp_request** %8, align 8
  %54 = call i32 @kpp_request_set_input(%struct.kpp_request* %53, %struct.scatterlist* null, i32 0)
  %55 = load i8*, i8** %10, align 8
  %56 = load i32, i32* %15, align 4
  %57 = call i32 @sg_init_one(%struct.scatterlist* %18, i8* %55, i32 %56)
  %58 = load %struct.kpp_request*, %struct.kpp_request** %8, align 8
  %59 = load i32, i32* %15, align 4
  %60 = call i32 @kpp_request_set_output(%struct.kpp_request* %58, %struct.scatterlist* %18, i32 %59)
  %61 = load %struct.kpp_request*, %struct.kpp_request** %8, align 8
  %62 = load i32, i32* @CRYPTO_TFM_REQ_MAY_BACKLOG, align 4
  %63 = load i32, i32* @crypto_req_done, align 4
  %64 = call i32 @kpp_request_set_callback(%struct.kpp_request* %61, i32 %62, i32 %63, %struct.crypto_wait* %14)
  %65 = load %struct.kpp_request*, %struct.kpp_request** %8, align 8
  %66 = call i32 @crypto_kpp_generate_public_key(%struct.kpp_request* %65)
  %67 = call i32 @crypto_wait_req(i32 %66, %struct.crypto_wait* %14)
  store i32 %67, i32* %16, align 4
  %68 = load i32, i32* %16, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %52
  %71 = load i8*, i8** %7, align 8
  %72 = load i32, i32* %16, align 4
  %73 = call i32 (i8*, i8*, ...) @pr_err(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i8* %71, i32 %72)
  br label %247

74:                                               ; preds = %52
  %75 = load %struct.kpp_testvec*, %struct.kpp_testvec** %6, align 8
  %76 = getelementptr inbounds %struct.kpp_testvec, %struct.kpp_testvec* %75, i32 0, i32 7
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %93

79:                                               ; preds = %74
  %80 = load %struct.kpp_request*, %struct.kpp_request** %8, align 8
  %81 = getelementptr inbounds %struct.kpp_request, %struct.kpp_request* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @sg_virt(i32 %82)
  %84 = load i32, i32* %15, align 4
  %85 = load i32, i32* @GFP_KERNEL, align 4
  %86 = call i8* @kmemdup(i32 %83, i32 %84, i32 %85)
  store i8* %86, i8** %11, align 8
  %87 = load i8*, i8** %11, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %79
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %16, align 4
  br label %247

92:                                               ; preds = %79
  br label %112

93:                                               ; preds = %74
  %94 = load %struct.kpp_testvec*, %struct.kpp_testvec** %6, align 8
  %95 = getelementptr inbounds %struct.kpp_testvec, %struct.kpp_testvec* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = load %struct.kpp_request*, %struct.kpp_request** %8, align 8
  %98 = getelementptr inbounds %struct.kpp_request, %struct.kpp_request* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @sg_virt(i32 %99)
  %101 = load %struct.kpp_testvec*, %struct.kpp_testvec** %6, align 8
  %102 = getelementptr inbounds %struct.kpp_testvec, %struct.kpp_testvec* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = call i64 @memcmp(i8* %96, i32 %100, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %93
  %107 = load i8*, i8** %7, align 8
  %108 = call i32 (i8*, i8*, ...) @pr_err(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i8* %107)
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %16, align 4
  br label %247

111:                                              ; preds = %93
  br label %112

112:                                              ; preds = %111, %92
  %113 = load %struct.kpp_testvec*, %struct.kpp_testvec** %6, align 8
  %114 = getelementptr inbounds %struct.kpp_testvec, %struct.kpp_testvec* %113, i32 0, i32 8
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.kpp_testvec*, %struct.kpp_testvec** %6, align 8
  %117 = getelementptr inbounds %struct.kpp_testvec, %struct.kpp_testvec* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @GFP_KERNEL, align 4
  %120 = call i8* @kmemdup(i32 %115, i32 %118, i32 %119)
  store i8* %120, i8** %9, align 8
  %121 = load i8*, i8** %9, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %126, label %123

123:                                              ; preds = %112
  %124 = load i32, i32* @ENOMEM, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %16, align 4
  br label %247

126:                                              ; preds = %112
  %127 = load i8*, i8** %9, align 8
  %128 = load %struct.kpp_testvec*, %struct.kpp_testvec** %6, align 8
  %129 = getelementptr inbounds %struct.kpp_testvec, %struct.kpp_testvec* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @sg_init_one(%struct.scatterlist* %17, i8* %127, i32 %130)
  %132 = load i8*, i8** %10, align 8
  %133 = load i32, i32* %15, align 4
  %134 = call i32 @sg_init_one(%struct.scatterlist* %18, i8* %132, i32 %133)
  %135 = load %struct.kpp_request*, %struct.kpp_request** %8, align 8
  %136 = load %struct.kpp_testvec*, %struct.kpp_testvec** %6, align 8
  %137 = getelementptr inbounds %struct.kpp_testvec, %struct.kpp_testvec* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @kpp_request_set_input(%struct.kpp_request* %135, %struct.scatterlist* %17, i32 %138)
  %140 = load %struct.kpp_request*, %struct.kpp_request** %8, align 8
  %141 = load i32, i32* %15, align 4
  %142 = call i32 @kpp_request_set_output(%struct.kpp_request* %140, %struct.scatterlist* %18, i32 %141)
  %143 = load %struct.kpp_request*, %struct.kpp_request** %8, align 8
  %144 = load i32, i32* @CRYPTO_TFM_REQ_MAY_BACKLOG, align 4
  %145 = load i32, i32* @crypto_req_done, align 4
  %146 = call i32 @kpp_request_set_callback(%struct.kpp_request* %143, i32 %144, i32 %145, %struct.crypto_wait* %14)
  %147 = load %struct.kpp_request*, %struct.kpp_request** %8, align 8
  %148 = call i32 @crypto_kpp_compute_shared_secret(%struct.kpp_request* %147)
  %149 = call i32 @crypto_wait_req(i32 %148, %struct.crypto_wait* %14)
  store i32 %149, i32* %16, align 4
  %150 = load i32, i32* %16, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %126
  %153 = load i8*, i8** %7, align 8
  %154 = load i32, i32* %16, align 4
  %155 = call i32 (i8*, i8*, ...) @pr_err(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i8* %153, i32 %154)
  br label %242

156:                                              ; preds = %126
  %157 = load %struct.kpp_testvec*, %struct.kpp_testvec** %6, align 8
  %158 = getelementptr inbounds %struct.kpp_testvec, %struct.kpp_testvec* %157, i32 0, i32 7
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %220

161:                                              ; preds = %156
  %162 = load %struct.kpp_request*, %struct.kpp_request** %8, align 8
  %163 = getelementptr inbounds %struct.kpp_request, %struct.kpp_request* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @sg_virt(i32 %164)
  %166 = load %struct.kpp_testvec*, %struct.kpp_testvec** %6, align 8
  %167 = getelementptr inbounds %struct.kpp_testvec, %struct.kpp_testvec* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @GFP_KERNEL, align 4
  %170 = call i8* @kmemdup(i32 %165, i32 %168, i32 %169)
  store i8* %170, i8** %12, align 8
  %171 = load i8*, i8** %12, align 8
  %172 = icmp ne i8* %171, null
  br i1 %172, label %176, label %173

173:                                              ; preds = %161
  %174 = load i32, i32* @ENOMEM, align 4
  %175 = sub nsw i32 0, %174
  store i32 %175, i32* %16, align 4
  br label %242

176:                                              ; preds = %161
  %177 = load %struct.crypto_kpp*, %struct.crypto_kpp** %5, align 8
  %178 = load %struct.kpp_testvec*, %struct.kpp_testvec** %6, align 8
  %179 = getelementptr inbounds %struct.kpp_testvec, %struct.kpp_testvec* %178, i32 0, i32 6
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.kpp_testvec*, %struct.kpp_testvec** %6, align 8
  %182 = getelementptr inbounds %struct.kpp_testvec, %struct.kpp_testvec* %181, i32 0, i32 5
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @crypto_kpp_set_secret(%struct.crypto_kpp* %177, i32 %180, i32 %183)
  store i32 %184, i32* %16, align 4
  %185 = load i32, i32* %16, align 4
  %186 = icmp slt i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %176
  br label %242

188:                                              ; preds = %176
  %189 = load i8*, i8** %11, align 8
  %190 = load %struct.kpp_testvec*, %struct.kpp_testvec** %6, align 8
  %191 = getelementptr inbounds %struct.kpp_testvec, %struct.kpp_testvec* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @sg_init_one(%struct.scatterlist* %17, i8* %189, i32 %192)
  %194 = load i8*, i8** %10, align 8
  %195 = load i32, i32* %15, align 4
  %196 = call i32 @sg_init_one(%struct.scatterlist* %18, i8* %194, i32 %195)
  %197 = load %struct.kpp_request*, %struct.kpp_request** %8, align 8
  %198 = load %struct.kpp_testvec*, %struct.kpp_testvec** %6, align 8
  %199 = getelementptr inbounds %struct.kpp_testvec, %struct.kpp_testvec* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 8
  %201 = call i32 @kpp_request_set_input(%struct.kpp_request* %197, %struct.scatterlist* %17, i32 %200)
  %202 = load %struct.kpp_request*, %struct.kpp_request** %8, align 8
  %203 = load i32, i32* %15, align 4
  %204 = call i32 @kpp_request_set_output(%struct.kpp_request* %202, %struct.scatterlist* %18, i32 %203)
  %205 = load %struct.kpp_request*, %struct.kpp_request** %8, align 8
  %206 = load i32, i32* @CRYPTO_TFM_REQ_MAY_BACKLOG, align 4
  %207 = load i32, i32* @crypto_req_done, align 4
  %208 = call i32 @kpp_request_set_callback(%struct.kpp_request* %205, i32 %206, i32 %207, %struct.crypto_wait* %14)
  %209 = load %struct.kpp_request*, %struct.kpp_request** %8, align 8
  %210 = call i32 @crypto_kpp_compute_shared_secret(%struct.kpp_request* %209)
  %211 = call i32 @crypto_wait_req(i32 %210, %struct.crypto_wait* %14)
  store i32 %211, i32* %16, align 4
  %212 = load i32, i32* %16, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %218

214:                                              ; preds = %188
  %215 = load i8*, i8** %7, align 8
  %216 = load i32, i32* %16, align 4
  %217 = call i32 (i8*, i8*, ...) @pr_err(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i8* %215, i32 %216)
  br label %242

218:                                              ; preds = %188
  %219 = load i8*, i8** %12, align 8
  store i8* %219, i8** %13, align 8
  br label %225

220:                                              ; preds = %156
  %221 = load %struct.kpp_testvec*, %struct.kpp_testvec** %6, align 8
  %222 = getelementptr inbounds %struct.kpp_testvec, %struct.kpp_testvec* %221, i32 0, i32 4
  %223 = load i64, i64* %222, align 8
  %224 = inttoptr i64 %223 to i8*
  store i8* %224, i8** %13, align 8
  br label %225

225:                                              ; preds = %220, %218
  %226 = load i8*, i8** %13, align 8
  %227 = load %struct.kpp_request*, %struct.kpp_request** %8, align 8
  %228 = getelementptr inbounds %struct.kpp_request, %struct.kpp_request* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @sg_virt(i32 %229)
  %231 = load %struct.kpp_testvec*, %struct.kpp_testvec** %6, align 8
  %232 = getelementptr inbounds %struct.kpp_testvec, %struct.kpp_testvec* %231, i32 0, i32 3
  %233 = load i32, i32* %232, align 8
  %234 = call i64 @memcmp(i8* %226, i32 %230, i32 %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %241

236:                                              ; preds = %225
  %237 = load i8*, i8** %7, align 8
  %238 = call i32 (i8*, i8*, ...) @pr_err(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i64 0, i64 0), i8* %237)
  %239 = load i32, i32* @EINVAL, align 4
  %240 = sub nsw i32 0, %239
  store i32 %240, i32* %16, align 4
  br label %241

241:                                              ; preds = %236, %225
  br label %242

242:                                              ; preds = %241, %214, %187, %173, %152
  %243 = load i8*, i8** %12, align 8
  %244 = call i32 @kfree(i8* %243)
  %245 = load i8*, i8** %9, align 8
  %246 = call i32 @kfree(i8* %245)
  br label %247

247:                                              ; preds = %242, %123, %106, %89, %70
  %248 = load i8*, i8** %11, align 8
  %249 = call i32 @kfree(i8* %248)
  %250 = load i8*, i8** %10, align 8
  %251 = call i32 @kfree(i8* %250)
  br label %252

252:                                              ; preds = %247, %49, %40
  %253 = load %struct.kpp_request*, %struct.kpp_request** %8, align 8
  %254 = call i32 @kpp_request_free(%struct.kpp_request* %253)
  %255 = load i32, i32* %16, align 4
  store i32 %255, i32* %4, align 4
  br label %256

256:                                              ; preds = %252, %26
  %257 = load i32, i32* %4, align 4
  ret i32 %257
}

declare dso_local %struct.kpp_request* @kpp_request_alloc(%struct.crypto_kpp*, i32) #1

declare dso_local i32 @crypto_init_wait(%struct.crypto_wait*) #1

declare dso_local i32 @crypto_kpp_set_secret(%struct.crypto_kpp*, i32, i32) #1

declare dso_local i32 @crypto_kpp_maxsize(%struct.crypto_kpp*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @kpp_request_set_input(%struct.kpp_request*, %struct.scatterlist*, i32) #1

declare dso_local i32 @sg_init_one(%struct.scatterlist*, i8*, i32) #1

declare dso_local i32 @kpp_request_set_output(%struct.kpp_request*, %struct.scatterlist*, i32) #1

declare dso_local i32 @kpp_request_set_callback(%struct.kpp_request*, i32, i32, %struct.crypto_wait*) #1

declare dso_local i32 @crypto_wait_req(i32, %struct.crypto_wait*) #1

declare dso_local i32 @crypto_kpp_generate_public_key(%struct.kpp_request*) #1

declare dso_local i32 @pr_err(i8*, i8*, ...) #1

declare dso_local i8* @kmemdup(i32, i32, i32) #1

declare dso_local i32 @sg_virt(i32) #1

declare dso_local i64 @memcmp(i8*, i32, i32) #1

declare dso_local i32 @crypto_kpp_compute_shared_secret(%struct.kpp_request*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @kpp_request_free(%struct.kpp_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
