; ModuleID = '/home/carl/AnghaBench/libsodium/test/default/extr_kx.c_tv_kx.c'
source_filename = "/home/carl/AnghaBench/libsodium/test/default/extr_kx.c_tv_kx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crypto_kx_SEEDBYTES = common dso_local global i32 0, align 4
@crypto_kx_PUBLICKEYBYTES = common dso_local global i32 0, align 4
@crypto_kx_SECRETKEYBYTES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"client_pk: [%s]\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"client_sk: [%s]\0A\00", align 1
@crypto_kx_SESSIONKEYBYTES = common dso_local global i32 0, align 4
@small_order_p = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [40 x i8] c"crypto_kx_client_session_keys() failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"crypto_kx_server_session_keys() failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"client session keys != server session keys\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"peer's public key is ignored\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"session keys are constant\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"server_rx: [%s]\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"server_tx: [%s]\0A\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"client_rx: [%s]\0A\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"client_tx: [%s]\0A\00", align 1
@.str.11 = private unnamed_addr constant [52 x i8] c"failure when one of the pointers happens to be NULL\00", align 1
@crypto_kx_PRIMITIVE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [11 x i8] c"tv_kx: ok\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @tv_kx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tv_kx() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [65 x i8], align 16
  %11 = alloca i32, align 4
  %12 = load i32, i32* @crypto_kx_SEEDBYTES, align 4
  %13 = call i64 @sodium_malloc(i32 %12)
  %14 = inttoptr i64 %13 to i8*
  store i8* %14, i8** %1, align 8
  store i32 0, i32* %11, align 4
  br label %15

15:                                               ; preds = %26, %0
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* @crypto_kx_SEEDBYTES, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %15
  %20 = load i32, i32* %11, align 4
  %21 = trunc i32 %20 to i8
  %22 = load i8*, i8** %1, align 8
  %23 = load i32, i32* %11, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  store i8 %21, i8* %25, align 1
  br label %26

26:                                               ; preds = %19
  %27 = load i32, i32* %11, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %11, align 4
  br label %15

29:                                               ; preds = %15
  %30 = load i32, i32* @crypto_kx_PUBLICKEYBYTES, align 4
  %31 = call i64 @sodium_malloc(i32 %30)
  %32 = inttoptr i64 %31 to i8*
  store i8* %32, i8** %2, align 8
  %33 = load i32, i32* @crypto_kx_SECRETKEYBYTES, align 4
  %34 = call i64 @sodium_malloc(i32 %33)
  %35 = inttoptr i64 %34 to i8*
  store i8* %35, i8** %3, align 8
  %36 = load i8*, i8** %2, align 8
  %37 = load i8*, i8** %3, align 8
  %38 = load i8*, i8** %1, align 8
  %39 = call i32 @crypto_kx_seed_keypair(i8* %36, i8* %37, i8* %38)
  %40 = getelementptr inbounds [65 x i8], [65 x i8]* %10, i64 0, i64 0
  %41 = load i8*, i8** %2, align 8
  %42 = load i32, i32* @crypto_kx_PUBLICKEYBYTES, align 4
  %43 = call i32 @sodium_bin2hex(i8* %40, i32 65, i8* %41, i32 %42)
  %44 = getelementptr inbounds [65 x i8], [65 x i8]* %10, i64 0, i64 0
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %44)
  %46 = getelementptr inbounds [65 x i8], [65 x i8]* %10, i64 0, i64 0
  %47 = load i8*, i8** %3, align 8
  %48 = load i32, i32* @crypto_kx_SECRETKEYBYTES, align 4
  %49 = call i32 @sodium_bin2hex(i8* %46, i32 65, i8* %47, i32 %48)
  %50 = getelementptr inbounds [65 x i8], [65 x i8]* %10, i64 0, i64 0
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %50)
  %52 = load i32, i32* @crypto_kx_PUBLICKEYBYTES, align 4
  %53 = call i64 @sodium_malloc(i32 %52)
  %54 = inttoptr i64 %53 to i8*
  store i8* %54, i8** %6, align 8
  %55 = load i32, i32* @crypto_kx_SECRETKEYBYTES, align 4
  %56 = call i64 @sodium_malloc(i32 %55)
  %57 = inttoptr i64 %56 to i8*
  store i8* %57, i8** %7, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = call i32 @crypto_kx_keypair(i8* %58, i8* %59)
  %61 = load i32, i32* @crypto_kx_SESSIONKEYBYTES, align 4
  %62 = call i64 @sodium_malloc(i32 %61)
  %63 = inttoptr i64 %62 to i8*
  store i8* %63, i8** %4, align 8
  %64 = load i32, i32* @crypto_kx_SESSIONKEYBYTES, align 4
  %65 = call i64 @sodium_malloc(i32 %64)
  %66 = inttoptr i64 %65 to i8*
  store i8* %66, i8** %5, align 8
  %67 = load i8*, i8** %4, align 8
  %68 = load i8*, i8** %5, align 8
  %69 = load i8*, i8** %2, align 8
  %70 = load i8*, i8** %3, align 8
  %71 = load i8*, i8** @small_order_p, align 8
  %72 = call i64 @crypto_kx_client_session_keys(i8* %67, i8* %68, i8* %69, i8* %70, i8* %71)
  %73 = icmp eq i64 %72, -1
  %74 = zext i1 %73 to i32
  %75 = call i32 @assert(i32 %74)
  %76 = load i8*, i8** %4, align 8
  %77 = load i8*, i8** %5, align 8
  %78 = load i8*, i8** %2, align 8
  %79 = load i8*, i8** %3, align 8
  %80 = load i8*, i8** %6, align 8
  %81 = call i64 @crypto_kx_client_session_keys(i8* %76, i8* %77, i8* %78, i8* %79, i8* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %29
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %85

85:                                               ; preds = %83, %29
  %86 = load i32, i32* @crypto_kx_SESSIONKEYBYTES, align 4
  %87 = call i64 @sodium_malloc(i32 %86)
  %88 = inttoptr i64 %87 to i8*
  store i8* %88, i8** %8, align 8
  %89 = load i32, i32* @crypto_kx_SESSIONKEYBYTES, align 4
  %90 = call i64 @sodium_malloc(i32 %89)
  %91 = inttoptr i64 %90 to i8*
  store i8* %91, i8** %9, align 8
  %92 = load i8*, i8** %8, align 8
  %93 = load i8*, i8** %9, align 8
  %94 = load i8*, i8** %6, align 8
  %95 = load i8*, i8** %7, align 8
  %96 = load i8*, i8** @small_order_p, align 8
  %97 = call i64 @crypto_kx_server_session_keys(i8* %92, i8* %93, i8* %94, i8* %95, i8* %96)
  %98 = icmp eq i64 %97, -1
  %99 = zext i1 %98 to i32
  %100 = call i32 @assert(i32 %99)
  %101 = load i8*, i8** %8, align 8
  %102 = load i8*, i8** %9, align 8
  %103 = load i8*, i8** %6, align 8
  %104 = load i8*, i8** %7, align 8
  %105 = load i8*, i8** %2, align 8
  %106 = call i64 @crypto_kx_server_session_keys(i8* %101, i8* %102, i8* %103, i8* %104, i8* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %85
  %109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  br label %110

110:                                              ; preds = %108, %85
  %111 = load i8*, i8** %8, align 8
  %112 = load i8*, i8** %5, align 8
  %113 = load i32, i32* @crypto_kx_SESSIONKEYBYTES, align 4
  %114 = call i64 @memcmp(i8* %111, i8* %112, i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %122, label %116

116:                                              ; preds = %110
  %117 = load i8*, i8** %9, align 8
  %118 = load i8*, i8** %4, align 8
  %119 = load i32, i32* @crypto_kx_SESSIONKEYBYTES, align 4
  %120 = call i64 @memcmp(i8* %117, i8* %118, i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %116, %110
  %123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  br label %124

124:                                              ; preds = %122, %116
  %125 = load i8*, i8** %2, align 8
  %126 = load i32, i32* @crypto_kx_PUBLICKEYBYTES, align 4
  %127 = call i32 @sodium_increment(i8* %125, i32 %126)
  %128 = load i8*, i8** %8, align 8
  %129 = load i8*, i8** %9, align 8
  %130 = load i8*, i8** %6, align 8
  %131 = load i8*, i8** %7, align 8
  %132 = load i8*, i8** %2, align 8
  %133 = call i64 @crypto_kx_server_session_keys(i8* %128, i8* %129, i8* %130, i8* %131, i8* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %124
  %136 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  br label %137

137:                                              ; preds = %135, %124
  %138 = load i8*, i8** %8, align 8
  %139 = load i8*, i8** %5, align 8
  %140 = load i32, i32* @crypto_kx_SESSIONKEYBYTES, align 4
  %141 = call i64 @memcmp(i8* %138, i8* %139, i32 %140)
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %143, label %151

143:                                              ; preds = %137
  %144 = load i8*, i8** %9, align 8
  %145 = load i8*, i8** %4, align 8
  %146 = load i32, i32* @crypto_kx_SESSIONKEYBYTES, align 4
  %147 = call i64 @memcmp(i8* %144, i8* %145, i32 %146)
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %143
  %150 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  br label %151

151:                                              ; preds = %149, %143, %137
  %152 = load i8*, i8** %2, align 8
  %153 = load i8*, i8** %3, align 8
  %154 = call i32 @crypto_kx_keypair(i8* %152, i8* %153)
  %155 = load i8*, i8** %8, align 8
  %156 = load i8*, i8** %9, align 8
  %157 = load i8*, i8** %6, align 8
  %158 = load i8*, i8** %7, align 8
  %159 = load i8*, i8** %2, align 8
  %160 = call i64 @crypto_kx_server_session_keys(i8* %155, i8* %156, i8* %157, i8* %158, i8* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %151
  %163 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  br label %164

164:                                              ; preds = %162, %151
  %165 = load i8*, i8** %8, align 8
  %166 = load i8*, i8** %5, align 8
  %167 = load i32, i32* @crypto_kx_SESSIONKEYBYTES, align 4
  %168 = call i64 @memcmp(i8* %165, i8* %166, i32 %167)
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %176, label %170

170:                                              ; preds = %164
  %171 = load i8*, i8** %9, align 8
  %172 = load i8*, i8** %4, align 8
  %173 = load i32, i32* @crypto_kx_SESSIONKEYBYTES, align 4
  %174 = call i64 @memcmp(i8* %171, i8* %172, i32 %173)
  %175 = icmp eq i64 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %170, %164
  %177 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  br label %178

178:                                              ; preds = %176, %170
  %179 = load i8*, i8** %2, align 8
  %180 = load i8*, i8** %3, align 8
  %181 = load i8*, i8** %1, align 8
  %182 = call i32 @crypto_kx_seed_keypair(i8* %179, i8* %180, i8* %181)
  %183 = load i8*, i8** %1, align 8
  %184 = load i32, i32* @crypto_kx_SEEDBYTES, align 4
  %185 = call i32 @sodium_increment(i8* %183, i32 %184)
  %186 = load i8*, i8** %6, align 8
  %187 = load i8*, i8** %7, align 8
  %188 = load i8*, i8** %1, align 8
  %189 = call i32 @crypto_kx_seed_keypair(i8* %186, i8* %187, i8* %188)
  %190 = load i8*, i8** %8, align 8
  %191 = load i8*, i8** %9, align 8
  %192 = load i8*, i8** %6, align 8
  %193 = load i8*, i8** %7, align 8
  %194 = load i8*, i8** %2, align 8
  %195 = call i64 @crypto_kx_server_session_keys(i8* %190, i8* %191, i8* %192, i8* %193, i8* %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %178
  %198 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  br label %199

199:                                              ; preds = %197, %178
  %200 = getelementptr inbounds [65 x i8], [65 x i8]* %10, i64 0, i64 0
  %201 = load i8*, i8** %8, align 8
  %202 = load i32, i32* @crypto_kx_SESSIONKEYBYTES, align 4
  %203 = call i32 @sodium_bin2hex(i8* %200, i32 65, i8* %201, i32 %202)
  %204 = getelementptr inbounds [65 x i8], [65 x i8]* %10, i64 0, i64 0
  %205 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i8* %204)
  %206 = getelementptr inbounds [65 x i8], [65 x i8]* %10, i64 0, i64 0
  %207 = load i8*, i8** %9, align 8
  %208 = load i32, i32* @crypto_kx_SESSIONKEYBYTES, align 4
  %209 = call i32 @sodium_bin2hex(i8* %206, i32 65, i8* %207, i32 %208)
  %210 = getelementptr inbounds [65 x i8], [65 x i8]* %10, i64 0, i64 0
  %211 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* %210)
  %212 = load i8*, i8** %4, align 8
  %213 = load i8*, i8** %5, align 8
  %214 = load i8*, i8** %2, align 8
  %215 = load i8*, i8** %3, align 8
  %216 = load i8*, i8** %6, align 8
  %217 = call i64 @crypto_kx_client_session_keys(i8* %212, i8* %213, i8* %214, i8* %215, i8* %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %199
  %220 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %221

221:                                              ; preds = %219, %199
  %222 = getelementptr inbounds [65 x i8], [65 x i8]* %10, i64 0, i64 0
  %223 = load i8*, i8** %4, align 8
  %224 = load i32, i32* @crypto_kx_SESSIONKEYBYTES, align 4
  %225 = call i32 @sodium_bin2hex(i8* %222, i32 65, i8* %223, i32 %224)
  %226 = getelementptr inbounds [65 x i8], [65 x i8]* %10, i64 0, i64 0
  %227 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i8* %226)
  %228 = getelementptr inbounds [65 x i8], [65 x i8]* %10, i64 0, i64 0
  %229 = load i8*, i8** %5, align 8
  %230 = load i32, i32* @crypto_kx_SESSIONKEYBYTES, align 4
  %231 = call i32 @sodium_bin2hex(i8* %228, i32 65, i8* %229, i32 %230)
  %232 = getelementptr inbounds [65 x i8], [65 x i8]* %10, i64 0, i64 0
  %233 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i8* %232)
  %234 = load i8*, i8** %4, align 8
  %235 = load i32, i32* @crypto_kx_SESSIONKEYBYTES, align 4
  %236 = call i32 @randombytes_buf(i8* %234, i32 %235)
  %237 = load i8*, i8** %5, align 8
  %238 = load i32, i32* @crypto_kx_SESSIONKEYBYTES, align 4
  %239 = call i32 @randombytes_buf(i8* %237, i32 %238)
  %240 = load i8*, i8** %8, align 8
  %241 = load i32, i32* @crypto_kx_SESSIONKEYBYTES, align 4
  %242 = call i32 @randombytes_buf(i8* %240, i32 %241)
  %243 = load i8*, i8** %9, align 8
  %244 = load i32, i32* @crypto_kx_SESSIONKEYBYTES, align 4
  %245 = call i32 @randombytes_buf(i8* %243, i32 %244)
  %246 = load i8*, i8** %4, align 8
  %247 = load i8*, i8** %2, align 8
  %248 = load i8*, i8** %3, align 8
  %249 = load i8*, i8** %6, align 8
  %250 = call i64 @crypto_kx_client_session_keys(i8* %246, i8* null, i8* %247, i8* %248, i8* %249)
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %273, label %252

252:                                              ; preds = %221
  %253 = load i8*, i8** %5, align 8
  %254 = load i8*, i8** %2, align 8
  %255 = load i8*, i8** %3, align 8
  %256 = load i8*, i8** %6, align 8
  %257 = call i64 @crypto_kx_client_session_keys(i8* null, i8* %253, i8* %254, i8* %255, i8* %256)
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %273, label %259

259:                                              ; preds = %252
  %260 = load i8*, i8** %8, align 8
  %261 = load i8*, i8** %6, align 8
  %262 = load i8*, i8** %7, align 8
  %263 = load i8*, i8** %2, align 8
  %264 = call i64 @crypto_kx_server_session_keys(i8* %260, i8* null, i8* %261, i8* %262, i8* %263)
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %273, label %266

266:                                              ; preds = %259
  %267 = load i8*, i8** %9, align 8
  %268 = load i8*, i8** %6, align 8
  %269 = load i8*, i8** %7, align 8
  %270 = load i8*, i8** %2, align 8
  %271 = call i64 @crypto_kx_server_session_keys(i8* null, i8* %267, i8* %268, i8* %269, i8* %270)
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %275

273:                                              ; preds = %266, %259, %252, %221
  %274 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.11, i64 0, i64 0))
  br label %275

275:                                              ; preds = %273, %266
  %276 = load i8*, i8** %4, align 8
  %277 = load i8*, i8** %5, align 8
  %278 = load i32, i32* @crypto_kx_SESSIONKEYBYTES, align 4
  %279 = call i64 @memcmp(i8* %276, i8* %277, i32 %278)
  %280 = icmp eq i64 %279, 0
  %281 = zext i1 %280 to i32
  %282 = call i32 @assert(i32 %281)
  %283 = load i8*, i8** %5, align 8
  %284 = load i8*, i8** %8, align 8
  %285 = load i32, i32* @crypto_kx_SESSIONKEYBYTES, align 4
  %286 = call i64 @memcmp(i8* %283, i8* %284, i32 %285)
  %287 = icmp eq i64 %286, 0
  %288 = zext i1 %287 to i32
  %289 = call i32 @assert(i32 %288)
  %290 = load i8*, i8** %8, align 8
  %291 = load i8*, i8** %9, align 8
  %292 = load i32, i32* @crypto_kx_SESSIONKEYBYTES, align 4
  %293 = call i64 @memcmp(i8* %290, i8* %291, i32 %292)
  %294 = icmp eq i64 %293, 0
  %295 = zext i1 %294 to i32
  %296 = call i32 @assert(i32 %295)
  %297 = load i8*, i8** %4, align 8
  %298 = call i32 @sodium_free(i8* %297)
  %299 = load i8*, i8** %5, align 8
  %300 = call i32 @sodium_free(i8* %299)
  %301 = load i8*, i8** %8, align 8
  %302 = call i32 @sodium_free(i8* %301)
  %303 = load i8*, i8** %9, align 8
  %304 = call i32 @sodium_free(i8* %303)
  %305 = load i8*, i8** %7, align 8
  %306 = call i32 @sodium_free(i8* %305)
  %307 = load i8*, i8** %6, align 8
  %308 = call i32 @sodium_free(i8* %307)
  %309 = load i8*, i8** %3, align 8
  %310 = call i32 @sodium_free(i8* %309)
  %311 = load i8*, i8** %2, align 8
  %312 = call i32 @sodium_free(i8* %311)
  %313 = load i8*, i8** %1, align 8
  %314 = call i32 @sodium_free(i8* %313)
  %315 = call i32 (...) @crypto_kx_primitive()
  %316 = load i32, i32* @crypto_kx_PRIMITIVE, align 4
  %317 = call i64 @strcmp(i32 %315, i32 %316)
  %318 = icmp eq i64 %317, 0
  %319 = zext i1 %318 to i32
  %320 = call i32 @assert(i32 %319)
  %321 = call i32 (...) @crypto_kx_publickeybytes()
  %322 = load i32, i32* @crypto_kx_PUBLICKEYBYTES, align 4
  %323 = icmp eq i32 %321, %322
  %324 = zext i1 %323 to i32
  %325 = call i32 @assert(i32 %324)
  %326 = call i32 (...) @crypto_kx_secretkeybytes()
  %327 = load i32, i32* @crypto_kx_SECRETKEYBYTES, align 4
  %328 = icmp eq i32 %326, %327
  %329 = zext i1 %328 to i32
  %330 = call i32 @assert(i32 %329)
  %331 = call i32 (...) @crypto_kx_seedbytes()
  %332 = load i32, i32* @crypto_kx_SEEDBYTES, align 4
  %333 = icmp eq i32 %331, %332
  %334 = zext i1 %333 to i32
  %335 = call i32 @assert(i32 %334)
  %336 = call i32 (...) @crypto_kx_sessionkeybytes()
  %337 = load i32, i32* @crypto_kx_SESSIONKEYBYTES, align 4
  %338 = icmp eq i32 %336, %337
  %339 = zext i1 %338 to i32
  %340 = call i32 @assert(i32 %339)
  %341 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  ret void
}

declare dso_local i64 @sodium_malloc(i32) #1

declare dso_local i32 @crypto_kx_seed_keypair(i8*, i8*, i8*) #1

declare dso_local i32 @sodium_bin2hex(i8*, i32, i8*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @crypto_kx_keypair(i8*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @crypto_kx_client_session_keys(i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i64 @crypto_kx_server_session_keys(i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @sodium_increment(i8*, i32) #1

declare dso_local i32 @randombytes_buf(i8*, i32) #1

declare dso_local i32 @sodium_free(i8*) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @crypto_kx_primitive(...) #1

declare dso_local i32 @crypto_kx_publickeybytes(...) #1

declare dso_local i32 @crypto_kx_secretkeybytes(...) #1

declare dso_local i32 @crypto_kx_seedbytes(...) #1

declare dso_local i32 @crypto_kx_sessionkeybytes(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
