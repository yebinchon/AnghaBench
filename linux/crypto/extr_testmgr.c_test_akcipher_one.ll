; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_testmgr.c_test_akcipher_one.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_testmgr.c_test_akcipher_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_akcipher = type { i32 }
%struct.akcipher_testvec = type { i32, i32, i32, i8*, i32, i8*, i32, i64, i64, i32, i32 }
%struct.akcipher_request = type { i32 }
%struct.crypto_wait = type { i32 }
%struct.scatterlist = type { i32 }

@XBUFSIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"encrypt\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"verify\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MAY_BACKLOG = common dso_local global i32 0, align 4
@crypto_req_done = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"alg: akcipher: %s test failed. err %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"alg: akcipher: %s test failed. Invalid output len\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [47 x i8] c"alg: akcipher: %s test failed. Invalid output\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"sign\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"decrypt\00", align 1
@.str.7 = private unnamed_addr constant [54 x i8] c"alg: akcipher: %s test failed. Invalid output len %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_akcipher*, %struct.akcipher_testvec*)* @test_akcipher_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_akcipher_one(%struct.crypto_akcipher* %0, %struct.akcipher_testvec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.crypto_akcipher*, align 8
  %5 = alloca %struct.akcipher_testvec*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.akcipher_request*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.crypto_wait, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.scatterlist, align 4
  %16 = alloca %struct.scatterlist, align 4
  %17 = alloca [3 x %struct.scatterlist], align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  store %struct.crypto_akcipher* %0, %struct.crypto_akcipher** %4, align 8
  store %struct.akcipher_testvec* %1, %struct.akcipher_testvec** %5, align 8
  %26 = load i32, i32* @XBUFSIZE, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %6, align 8
  %29 = alloca i8*, i64 %27, align 16
  store i64 %27, i64* %7, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i32 0, i32* %13, align 4
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %14, align 4
  %32 = call i64 @testmgr_alloc_buf(i8** %29)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %2
  %35 = load i32, i32* %14, align 4
  store i32 %35, i32* %3, align 4
  store i32 1, i32* %25, align 4
  br label %402

36:                                               ; preds = %2
  %37 = load %struct.crypto_akcipher*, %struct.crypto_akcipher** %4, align 8
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.akcipher_request* @akcipher_request_alloc(%struct.crypto_akcipher* %37, i32 %38)
  store %struct.akcipher_request* %39, %struct.akcipher_request** %8, align 8
  %40 = load %struct.akcipher_request*, %struct.akcipher_request** %8, align 8
  %41 = icmp ne %struct.akcipher_request* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %36
  br label %399

43:                                               ; preds = %36
  %44 = call i32 @crypto_init_wait(%struct.crypto_wait* %11)
  %45 = load %struct.akcipher_testvec*, %struct.akcipher_testvec** %5, align 8
  %46 = getelementptr inbounds %struct.akcipher_testvec, %struct.akcipher_testvec* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = add i64 %48, 8
  %50 = load %struct.akcipher_testvec*, %struct.akcipher_testvec** %5, align 8
  %51 = getelementptr inbounds %struct.akcipher_testvec, %struct.akcipher_testvec* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = add i64 %49, %53
  %55 = trunc i64 %54 to i32
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call i8* @kmalloc(i32 %55, i32 %56)
  store i8* %57, i8** %23, align 8
  %58 = load i8*, i8** %23, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %43
  br label %399

61:                                               ; preds = %43
  %62 = load i8*, i8** %23, align 8
  %63 = load %struct.akcipher_testvec*, %struct.akcipher_testvec** %5, align 8
  %64 = getelementptr inbounds %struct.akcipher_testvec, %struct.akcipher_testvec* %63, i32 0, i32 10
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = inttoptr i64 %66 to i8*
  %68 = load %struct.akcipher_testvec*, %struct.akcipher_testvec** %5, align 8
  %69 = getelementptr inbounds %struct.akcipher_testvec, %struct.akcipher_testvec* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @memcpy(i8* %62, i8* %67, i32 %70)
  %72 = load i8*, i8** %23, align 8
  %73 = load %struct.akcipher_testvec*, %struct.akcipher_testvec** %5, align 8
  %74 = getelementptr inbounds %struct.akcipher_testvec, %struct.akcipher_testvec* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = getelementptr i8, i8* %72, i64 %76
  store i8* %77, i8** %24, align 8
  %78 = load i8*, i8** %24, align 8
  %79 = load %struct.akcipher_testvec*, %struct.akcipher_testvec** %5, align 8
  %80 = getelementptr inbounds %struct.akcipher_testvec, %struct.akcipher_testvec* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = call i8* @test_pack_u32(i8* %78, i32 %81)
  store i8* %82, i8** %24, align 8
  %83 = load i8*, i8** %24, align 8
  %84 = load %struct.akcipher_testvec*, %struct.akcipher_testvec** %5, align 8
  %85 = getelementptr inbounds %struct.akcipher_testvec, %struct.akcipher_testvec* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i8* @test_pack_u32(i8* %83, i32 %86)
  store i8* %87, i8** %24, align 8
  %88 = load i8*, i8** %24, align 8
  %89 = load %struct.akcipher_testvec*, %struct.akcipher_testvec** %5, align 8
  %90 = getelementptr inbounds %struct.akcipher_testvec, %struct.akcipher_testvec* %89, i32 0, i32 9
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = inttoptr i64 %92 to i8*
  %94 = load %struct.akcipher_testvec*, %struct.akcipher_testvec** %5, align 8
  %95 = getelementptr inbounds %struct.akcipher_testvec, %struct.akcipher_testvec* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @memcpy(i8* %88, i8* %93, i32 %96)
  %98 = load %struct.akcipher_testvec*, %struct.akcipher_testvec** %5, align 8
  %99 = getelementptr inbounds %struct.akcipher_testvec, %struct.akcipher_testvec* %98, i32 0, i32 8
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %61
  %103 = load %struct.crypto_akcipher*, %struct.crypto_akcipher** %4, align 8
  %104 = load i8*, i8** %23, align 8
  %105 = load %struct.akcipher_testvec*, %struct.akcipher_testvec** %5, align 8
  %106 = getelementptr inbounds %struct.akcipher_testvec, %struct.akcipher_testvec* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @crypto_akcipher_set_pub_key(%struct.crypto_akcipher* %103, i8* %104, i32 %107)
  store i32 %108, i32* %14, align 4
  br label %116

109:                                              ; preds = %61
  %110 = load %struct.crypto_akcipher*, %struct.crypto_akcipher** %4, align 8
  %111 = load i8*, i8** %23, align 8
  %112 = load %struct.akcipher_testvec*, %struct.akcipher_testvec** %5, align 8
  %113 = getelementptr inbounds %struct.akcipher_testvec, %struct.akcipher_testvec* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @crypto_akcipher_set_priv_key(%struct.crypto_akcipher* %110, i8* %111, i32 %114)
  store i32 %115, i32* %14, align 4
  br label %116

116:                                              ; preds = %109, %102
  %117 = load i32, i32* %14, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %116
  br label %394

120:                                              ; preds = %116
  %121 = load i32, i32* @ENOMEM, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %14, align 4
  %123 = load %struct.crypto_akcipher*, %struct.crypto_akcipher** %4, align 8
  %124 = call i32 @crypto_akcipher_maxsize(%struct.crypto_akcipher* %123)
  store i32 %124, i32* %12, align 4
  %125 = load i32, i32* %12, align 4
  %126 = load i32, i32* @GFP_KERNEL, align 4
  %127 = call i8* @kzalloc(i32 %125, i32 %126)
  store i8* %127, i8** %9, align 8
  %128 = load i8*, i8** %9, align 8
  %129 = icmp ne i8* %128, null
  br i1 %129, label %131, label %130

130:                                              ; preds = %120
  br label %394

131:                                              ; preds = %120
  %132 = load %struct.akcipher_testvec*, %struct.akcipher_testvec** %5, align 8
  %133 = getelementptr inbounds %struct.akcipher_testvec, %struct.akcipher_testvec* %132, i32 0, i32 7
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %149, label %136

136:                                              ; preds = %131
  %137 = load %struct.akcipher_testvec*, %struct.akcipher_testvec** %5, align 8
  %138 = getelementptr inbounds %struct.akcipher_testvec, %struct.akcipher_testvec* %137, i32 0, i32 3
  %139 = load i8*, i8** %138, align 8
  store i8* %139, i8** %18, align 8
  %140 = load %struct.akcipher_testvec*, %struct.akcipher_testvec** %5, align 8
  %141 = getelementptr inbounds %struct.akcipher_testvec, %struct.akcipher_testvec* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 8
  store i32 %142, i32* %20, align 4
  %143 = load %struct.akcipher_testvec*, %struct.akcipher_testvec** %5, align 8
  %144 = getelementptr inbounds %struct.akcipher_testvec, %struct.akcipher_testvec* %143, i32 0, i32 5
  %145 = load i8*, i8** %144, align 8
  store i8* %145, i8** %19, align 8
  %146 = load %struct.akcipher_testvec*, %struct.akcipher_testvec** %5, align 8
  %147 = getelementptr inbounds %struct.akcipher_testvec, %struct.akcipher_testvec* %146, i32 0, i32 6
  %148 = load i32, i32* %147, align 8
  store i32 %148, i32* %21, align 4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %22, align 8
  br label %162

149:                                              ; preds = %131
  %150 = load %struct.akcipher_testvec*, %struct.akcipher_testvec** %5, align 8
  %151 = getelementptr inbounds %struct.akcipher_testvec, %struct.akcipher_testvec* %150, i32 0, i32 5
  %152 = load i8*, i8** %151, align 8
  store i8* %152, i8** %18, align 8
  %153 = load %struct.akcipher_testvec*, %struct.akcipher_testvec** %5, align 8
  %154 = getelementptr inbounds %struct.akcipher_testvec, %struct.akcipher_testvec* %153, i32 0, i32 6
  %155 = load i32, i32* %154, align 8
  store i32 %155, i32* %20, align 4
  %156 = load %struct.akcipher_testvec*, %struct.akcipher_testvec** %5, align 8
  %157 = getelementptr inbounds %struct.akcipher_testvec, %struct.akcipher_testvec* %156, i32 0, i32 3
  %158 = load i8*, i8** %157, align 8
  store i8* %158, i8** %19, align 8
  %159 = load %struct.akcipher_testvec*, %struct.akcipher_testvec** %5, align 8
  %160 = getelementptr inbounds %struct.akcipher_testvec, %struct.akcipher_testvec* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 8
  store i32 %161, i32* %21, align 4
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %22, align 8
  br label %162

162:                                              ; preds = %149, %136
  %163 = load i32, i32* %20, align 4
  %164 = load i32, i32* @PAGE_SIZE, align 4
  %165 = icmp ugt i32 %163, %164
  %166 = zext i1 %165 to i32
  %167 = call i64 @WARN_ON(i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %162
  br label %389

170:                                              ; preds = %162
  %171 = getelementptr inbounds i8*, i8** %29, i64 0
  %172 = load i8*, i8** %171, align 16
  %173 = load i8*, i8** %18, align 8
  %174 = load i32, i32* %20, align 4
  %175 = call i32 @memcpy(i8* %172, i8* %173, i32 %174)
  %176 = getelementptr inbounds [3 x %struct.scatterlist], [3 x %struct.scatterlist]* %17, i64 0, i64 0
  %177 = call i32 @sg_init_table(%struct.scatterlist* %176, i32 3)
  %178 = getelementptr inbounds [3 x %struct.scatterlist], [3 x %struct.scatterlist]* %17, i64 0, i64 0
  %179 = getelementptr inbounds i8*, i8** %29, i64 0
  %180 = load i8*, i8** %179, align 16
  %181 = call i32 @sg_set_buf(%struct.scatterlist* %178, i8* %180, i32 8)
  %182 = getelementptr inbounds [3 x %struct.scatterlist], [3 x %struct.scatterlist]* %17, i64 0, i64 1
  %183 = getelementptr inbounds i8*, i8** %29, i64 0
  %184 = load i8*, i8** %183, align 16
  %185 = getelementptr inbounds i8, i8* %184, i64 8
  %186 = load i32, i32* %20, align 4
  %187 = sub i32 %186, 8
  %188 = call i32 @sg_set_buf(%struct.scatterlist* %182, i8* %185, i32 %187)
  %189 = load %struct.akcipher_testvec*, %struct.akcipher_testvec** %5, align 8
  %190 = getelementptr inbounds %struct.akcipher_testvec, %struct.akcipher_testvec* %189, i32 0, i32 7
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %217

193:                                              ; preds = %170
  %194 = load i32, i32* %21, align 4
  %195 = load i32, i32* @PAGE_SIZE, align 4
  %196 = icmp ugt i32 %194, %195
  %197 = zext i1 %196 to i32
  %198 = call i64 @WARN_ON(i32 %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %193
  br label %389

201:                                              ; preds = %193
  %202 = getelementptr inbounds i8*, i8** %29, i64 1
  %203 = load i8*, i8** %202, align 8
  %204 = load i8*, i8** %19, align 8
  %205 = load i32, i32* %21, align 4
  %206 = call i32 @memcpy(i8* %203, i8* %204, i32 %205)
  %207 = getelementptr inbounds [3 x %struct.scatterlist], [3 x %struct.scatterlist]* %17, i64 0, i64 2
  %208 = getelementptr inbounds i8*, i8** %29, i64 1
  %209 = load i8*, i8** %208, align 8
  %210 = load i32, i32* %21, align 4
  %211 = call i32 @sg_set_buf(%struct.scatterlist* %207, i8* %209, i32 %210)
  %212 = load %struct.akcipher_request*, %struct.akcipher_request** %8, align 8
  %213 = getelementptr inbounds [3 x %struct.scatterlist], [3 x %struct.scatterlist]* %17, i64 0, i64 0
  %214 = load i32, i32* %20, align 4
  %215 = load i32, i32* %21, align 4
  %216 = call i32 @akcipher_request_set_crypt(%struct.akcipher_request* %212, %struct.scatterlist* %213, %struct.scatterlist* null, i32 %214, i32 %215)
  br label %226

217:                                              ; preds = %170
  %218 = load i8*, i8** %9, align 8
  %219 = load i32, i32* %12, align 4
  %220 = call i32 @sg_init_one(%struct.scatterlist* %16, i8* %218, i32 %219)
  %221 = load %struct.akcipher_request*, %struct.akcipher_request** %8, align 8
  %222 = getelementptr inbounds [3 x %struct.scatterlist], [3 x %struct.scatterlist]* %17, i64 0, i64 0
  %223 = load i32, i32* %20, align 4
  %224 = load i32, i32* %12, align 4
  %225 = call i32 @akcipher_request_set_crypt(%struct.akcipher_request* %221, %struct.scatterlist* %222, %struct.scatterlist* %16, i32 %223, i32 %224)
  br label %226

226:                                              ; preds = %217, %201
  %227 = load %struct.akcipher_request*, %struct.akcipher_request** %8, align 8
  %228 = load i32, i32* @CRYPTO_TFM_REQ_MAY_BACKLOG, align 4
  %229 = load i32, i32* @crypto_req_done, align 4
  %230 = call i32 @akcipher_request_set_callback(%struct.akcipher_request* %227, i32 %228, i32 %229, %struct.crypto_wait* %11)
  %231 = load %struct.akcipher_testvec*, %struct.akcipher_testvec** %5, align 8
  %232 = getelementptr inbounds %struct.akcipher_testvec, %struct.akcipher_testvec* %231, i32 0, i32 7
  %233 = load i64, i64* %232, align 8
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %238

235:                                              ; preds = %226
  %236 = load %struct.akcipher_request*, %struct.akcipher_request** %8, align 8
  %237 = call i32 @crypto_akcipher_verify(%struct.akcipher_request* %236)
  br label %241

238:                                              ; preds = %226
  %239 = load %struct.akcipher_request*, %struct.akcipher_request** %8, align 8
  %240 = call i32 @crypto_akcipher_encrypt(%struct.akcipher_request* %239)
  br label %241

241:                                              ; preds = %238, %235
  %242 = phi i32 [ %237, %235 ], [ %240, %238 ]
  %243 = call i32 @crypto_wait_req(i32 %242, %struct.crypto_wait* %11)
  store i32 %243, i32* %14, align 4
  %244 = load i32, i32* %14, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %250

246:                                              ; preds = %241
  %247 = load i8*, i8** %22, align 8
  %248 = load i32, i32* %14, align 4
  %249 = call i32 (i8*, i8*, ...) @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* %247, i32 %248)
  br label %389

250:                                              ; preds = %241
  %251 = load %struct.akcipher_testvec*, %struct.akcipher_testvec** %5, align 8
  %252 = getelementptr inbounds %struct.akcipher_testvec, %struct.akcipher_testvec* %251, i32 0, i32 7
  %253 = load i64, i64* %252, align 8
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %281, label %255

255:                                              ; preds = %250
  %256 = load %struct.akcipher_request*, %struct.akcipher_request** %8, align 8
  %257 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = load i32, i32* %21, align 4
  %260 = icmp ne i32 %258, %259
  br i1 %260, label %261, label %266

261:                                              ; preds = %255
  %262 = load i8*, i8** %22, align 8
  %263 = call i32 (i8*, i8*, ...) @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i8* %262)
  %264 = load i32, i32* @EINVAL, align 4
  %265 = sub nsw i32 0, %264
  store i32 %265, i32* %14, align 4
  br label %389

266:                                              ; preds = %255
  %267 = load i8*, i8** %19, align 8
  %268 = load i8*, i8** %9, align 8
  %269 = load i32, i32* %21, align 4
  %270 = call i64 @memcmp(i8* %267, i8* %268, i32 %269)
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %280

272:                                              ; preds = %266
  %273 = load i8*, i8** %22, align 8
  %274 = call i32 (i8*, i8*, ...) @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i8* %273)
  %275 = load i8*, i8** %9, align 8
  %276 = load i32, i32* %21, align 4
  %277 = call i32 @hexdump(i8* %275, i32 %276)
  %278 = load i32, i32* @EINVAL, align 4
  %279 = sub nsw i32 0, %278
  store i32 %279, i32* %14, align 4
  br label %389

280:                                              ; preds = %266
  br label %281

281:                                              ; preds = %280, %250
  %282 = load %struct.akcipher_testvec*, %struct.akcipher_testvec** %5, align 8
  %283 = getelementptr inbounds %struct.akcipher_testvec, %struct.akcipher_testvec* %282, i32 0, i32 8
  %284 = load i64, i64* %283, align 8
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %287

286:                                              ; preds = %281
  store i32 0, i32* %14, align 4
  br label %389

287:                                              ; preds = %281
  %288 = load i32, i32* %12, align 4
  %289 = load i32, i32* @GFP_KERNEL, align 4
  %290 = call i8* @kzalloc(i32 %288, i32 %289)
  store i8* %290, i8** %10, align 8
  %291 = load i8*, i8** %10, align 8
  %292 = icmp ne i8* %291, null
  br i1 %292, label %296, label %293

293:                                              ; preds = %287
  %294 = load i32, i32* @ENOMEM, align 4
  %295 = sub nsw i32 0, %294
  store i32 %295, i32* %14, align 4
  br label %389

296:                                              ; preds = %287
  %297 = load %struct.akcipher_testvec*, %struct.akcipher_testvec** %5, align 8
  %298 = getelementptr inbounds %struct.akcipher_testvec, %struct.akcipher_testvec* %297, i32 0, i32 7
  %299 = load i64, i64* %298, align 8
  %300 = icmp ne i64 %299, 0
  %301 = zext i1 %300 to i64
  %302 = select i1 %300, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0)
  store i8* %302, i8** %22, align 8
  %303 = load i32, i32* %21, align 4
  %304 = load i32, i32* @PAGE_SIZE, align 4
  %305 = icmp ugt i32 %303, %304
  %306 = zext i1 %305 to i32
  %307 = call i64 @WARN_ON(i32 %306)
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %310

309:                                              ; preds = %296
  br label %389

310:                                              ; preds = %296
  %311 = getelementptr inbounds i8*, i8** %29, i64 0
  %312 = load i8*, i8** %311, align 16
  %313 = load i8*, i8** %19, align 8
  %314 = load i32, i32* %21, align 4
  %315 = call i32 @memcpy(i8* %312, i8* %313, i32 %314)
  %316 = getelementptr inbounds i8*, i8** %29, i64 0
  %317 = load i8*, i8** %316, align 16
  %318 = load i32, i32* %21, align 4
  %319 = call i32 @sg_init_one(%struct.scatterlist* %15, i8* %317, i32 %318)
  %320 = load i8*, i8** %10, align 8
  %321 = load i32, i32* %12, align 4
  %322 = call i32 @sg_init_one(%struct.scatterlist* %16, i8* %320, i32 %321)
  %323 = call i32 @crypto_init_wait(%struct.crypto_wait* %11)
  %324 = load %struct.akcipher_request*, %struct.akcipher_request** %8, align 8
  %325 = load i32, i32* %21, align 4
  %326 = load i32, i32* %12, align 4
  %327 = call i32 @akcipher_request_set_crypt(%struct.akcipher_request* %324, %struct.scatterlist* %15, %struct.scatterlist* %16, i32 %325, i32 %326)
  %328 = load %struct.akcipher_testvec*, %struct.akcipher_testvec** %5, align 8
  %329 = getelementptr inbounds %struct.akcipher_testvec, %struct.akcipher_testvec* %328, i32 0, i32 7
  %330 = load i64, i64* %329, align 8
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %332, label %335

332:                                              ; preds = %310
  %333 = load %struct.akcipher_request*, %struct.akcipher_request** %8, align 8
  %334 = call i32 @crypto_akcipher_sign(%struct.akcipher_request* %333)
  br label %338

335:                                              ; preds = %310
  %336 = load %struct.akcipher_request*, %struct.akcipher_request** %8, align 8
  %337 = call i32 @crypto_akcipher_decrypt(%struct.akcipher_request* %336)
  br label %338

338:                                              ; preds = %335, %332
  %339 = phi i32 [ %334, %332 ], [ %337, %335 ]
  %340 = call i32 @crypto_wait_req(i32 %339, %struct.crypto_wait* %11)
  store i32 %340, i32* %14, align 4
  %341 = load i32, i32* %14, align 4
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %347

343:                                              ; preds = %338
  %344 = load i8*, i8** %22, align 8
  %345 = load i32, i32* %14, align 4
  %346 = call i32 (i8*, i8*, ...) @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* %344, i32 %345)
  br label %389

347:                                              ; preds = %338
  %348 = load %struct.akcipher_request*, %struct.akcipher_request** %8, align 8
  %349 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 4
  store i32 %350, i32* %13, align 4
  %351 = load i32, i32* %13, align 4
  %352 = load i32, i32* %20, align 4
  %353 = icmp ult i32 %351, %352
  br i1 %353, label %354, label %360

354:                                              ; preds = %347
  %355 = load i8*, i8** %22, align 8
  %356 = load i32, i32* %13, align 4
  %357 = call i32 (i8*, i8*, ...) @pr_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i64 0, i64 0), i8* %355, i32 %356)
  %358 = load i32, i32* @EINVAL, align 4
  %359 = sub nsw i32 0, %358
  store i32 %359, i32* %14, align 4
  br label %389

360:                                              ; preds = %347
  %361 = load i8*, i8** %10, align 8
  %362 = load i32, i32* %13, align 4
  %363 = load i32, i32* %20, align 4
  %364 = sub i32 %362, %363
  %365 = call i64 @memchr_inv(i8* %361, i32 0, i32 %364)
  %366 = icmp ne i64 %365, 0
  br i1 %366, label %380, label %367

367:                                              ; preds = %360
  %368 = load i8*, i8** %18, align 8
  %369 = load i8*, i8** %10, align 8
  %370 = load i32, i32* %13, align 4
  %371 = zext i32 %370 to i64
  %372 = getelementptr i8, i8* %369, i64 %371
  %373 = load i32, i32* %20, align 4
  %374 = zext i32 %373 to i64
  %375 = sub i64 0, %374
  %376 = getelementptr i8, i8* %372, i64 %375
  %377 = load i32, i32* %20, align 4
  %378 = call i64 @memcmp(i8* %368, i8* %376, i32 %377)
  %379 = icmp ne i64 %378, 0
  br i1 %379, label %380, label %388

380:                                              ; preds = %367, %360
  %381 = load i8*, i8** %22, align 8
  %382 = call i32 (i8*, i8*, ...) @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i8* %381)
  %383 = load i8*, i8** %10, align 8
  %384 = load i32, i32* %13, align 4
  %385 = call i32 @hexdump(i8* %383, i32 %384)
  %386 = load i32, i32* @EINVAL, align 4
  %387 = sub nsw i32 0, %386
  store i32 %387, i32* %14, align 4
  br label %388

388:                                              ; preds = %380, %367
  br label %389

389:                                              ; preds = %388, %354, %343, %309, %293, %286, %272, %261, %246, %200, %169
  %390 = load i8*, i8** %10, align 8
  %391 = call i32 @kfree(i8* %390)
  %392 = load i8*, i8** %9, align 8
  %393 = call i32 @kfree(i8* %392)
  br label %394

394:                                              ; preds = %389, %130, %119
  %395 = load %struct.akcipher_request*, %struct.akcipher_request** %8, align 8
  %396 = call i32 @akcipher_request_free(%struct.akcipher_request* %395)
  %397 = load i8*, i8** %23, align 8
  %398 = call i32 @kfree(i8* %397)
  br label %399

399:                                              ; preds = %394, %60, %42
  %400 = call i32 @testmgr_free_buf(i8** %29)
  %401 = load i32, i32* %14, align 4
  store i32 %401, i32* %3, align 4
  store i32 1, i32* %25, align 4
  br label %402

402:                                              ; preds = %399, %34
  %403 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %403)
  %404 = load i32, i32* %3, align 4
  ret i32 %404
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @testmgr_alloc_buf(i8**) #2

declare dso_local %struct.akcipher_request* @akcipher_request_alloc(%struct.crypto_akcipher*, i32) #2

declare dso_local i32 @crypto_init_wait(%struct.crypto_wait*) #2

declare dso_local i8* @kmalloc(i32, i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i8* @test_pack_u32(i8*, i32) #2

declare dso_local i32 @crypto_akcipher_set_pub_key(%struct.crypto_akcipher*, i8*, i32) #2

declare dso_local i32 @crypto_akcipher_set_priv_key(%struct.crypto_akcipher*, i8*, i32) #2

declare dso_local i32 @crypto_akcipher_maxsize(%struct.crypto_akcipher*) #2

declare dso_local i8* @kzalloc(i32, i32) #2

declare dso_local i64 @WARN_ON(i32) #2

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #2

declare dso_local i32 @sg_set_buf(%struct.scatterlist*, i8*, i32) #2

declare dso_local i32 @akcipher_request_set_crypt(%struct.akcipher_request*, %struct.scatterlist*, %struct.scatterlist*, i32, i32) #2

declare dso_local i32 @sg_init_one(%struct.scatterlist*, i8*, i32) #2

declare dso_local i32 @akcipher_request_set_callback(%struct.akcipher_request*, i32, i32, %struct.crypto_wait*) #2

declare dso_local i32 @crypto_wait_req(i32, %struct.crypto_wait*) #2

declare dso_local i32 @crypto_akcipher_verify(%struct.akcipher_request*) #2

declare dso_local i32 @crypto_akcipher_encrypt(%struct.akcipher_request*) #2

declare dso_local i32 @pr_err(i8*, i8*, ...) #2

declare dso_local i64 @memcmp(i8*, i8*, i32) #2

declare dso_local i32 @hexdump(i8*, i32) #2

declare dso_local i32 @crypto_akcipher_sign(%struct.akcipher_request*) #2

declare dso_local i32 @crypto_akcipher_decrypt(%struct.akcipher_request*) #2

declare dso_local i64 @memchr_inv(i8*, i32, i32) #2

declare dso_local i32 @kfree(i8*) #2

declare dso_local i32 @akcipher_request_free(%struct.akcipher_request*) #2

declare dso_local i32 @testmgr_free_buf(i8**) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
