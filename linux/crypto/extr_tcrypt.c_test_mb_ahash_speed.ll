; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_tcrypt.c_test_mb_ahash_speed.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_tcrypt.c_test_mb_ahash_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_speed = type { i32, i32, i64 }
%struct.test_mb_ahash_data = type { i32*, i32, i32, i64, i32 }
%struct.crypto_ahash = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"failed to load transform for %s: %ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"alg: hash: Failed to allocate request for %s\0A\00", align 1
@crypto_req_done = common dso_local global i32 0, align 4
@XBUFSIZE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"\0Atesting speed of multibuffer %s (%s)\0A\00", align 1
@crypto_ahash = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"template (%u) too big for tvmem (%lu)\0A\00", align 1
@tvmem = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [61 x i8] c"test%3u (%5u byte blocks,%5u bytes per update,%4u updates): \00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"At least one hashing failed ret=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, %struct.hash_speed*, i32)* @test_mb_ahash_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_mb_ahash_speed(i8* %0, i32 %1, %struct.hash_speed* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hash_speed*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.test_mb_ahash_data*, align 8
  %10 = alloca %struct.crypto_ahash*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.hash_speed* %2, %struct.hash_speed** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.test_mb_ahash_data* @kcalloc(i32 %15, i32 32, i32 %16)
  store %struct.test_mb_ahash_data* %17, %struct.test_mb_ahash_data** %9, align 8
  %18 = load %struct.test_mb_ahash_data*, %struct.test_mb_ahash_data** %9, align 8
  %19 = icmp ne %struct.test_mb_ahash_data* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %4
  br label %345

21:                                               ; preds = %4
  %22 = load i8*, i8** %5, align 8
  %23 = call %struct.crypto_ahash* @crypto_alloc_ahash(i8* %22, i32 0, i32 0)
  store %struct.crypto_ahash* %23, %struct.crypto_ahash** %10, align 8
  %24 = load %struct.crypto_ahash*, %struct.crypto_ahash** %10, align 8
  %25 = call i64 @IS_ERR(%struct.crypto_ahash* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load i8*, i8** %5, align 8
  %29 = load %struct.crypto_ahash*, %struct.crypto_ahash** %10, align 8
  %30 = call i32 @PTR_ERR(%struct.crypto_ahash* %29)
  %31 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %28, i32 %30)
  br label %342

32:                                               ; preds = %21
  store i32 0, i32* %11, align 4
  br label %33

33:                                               ; preds = %136, %32
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %37, label %139

37:                                               ; preds = %33
  %38 = load %struct.test_mb_ahash_data*, %struct.test_mb_ahash_data** %9, align 8
  %39 = load i32, i32* %11, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.test_mb_ahash_data, %struct.test_mb_ahash_data* %38, i64 %40
  %42 = getelementptr inbounds %struct.test_mb_ahash_data, %struct.test_mb_ahash_data* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = call i64 @testmgr_alloc_buf(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  br label %307

47:                                               ; preds = %37
  %48 = load %struct.test_mb_ahash_data*, %struct.test_mb_ahash_data** %9, align 8
  %49 = load i32, i32* %11, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.test_mb_ahash_data, %struct.test_mb_ahash_data* %48, i64 %50
  %52 = getelementptr inbounds %struct.test_mb_ahash_data, %struct.test_mb_ahash_data* %51, i32 0, i32 4
  %53 = call i32 @crypto_init_wait(i32* %52)
  %54 = load %struct.crypto_ahash*, %struct.crypto_ahash** %10, align 8
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call i32 @ahash_request_alloc(%struct.crypto_ahash* %54, i32 %55)
  %57 = load %struct.test_mb_ahash_data*, %struct.test_mb_ahash_data** %9, align 8
  %58 = load i32, i32* %11, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.test_mb_ahash_data, %struct.test_mb_ahash_data* %57, i64 %59
  %61 = getelementptr inbounds %struct.test_mb_ahash_data, %struct.test_mb_ahash_data* %60, i32 0, i32 1
  store i32 %56, i32* %61, align 8
  %62 = load %struct.test_mb_ahash_data*, %struct.test_mb_ahash_data** %9, align 8
  %63 = load i32, i32* %11, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.test_mb_ahash_data, %struct.test_mb_ahash_data* %62, i64 %64
  %66 = getelementptr inbounds %struct.test_mb_ahash_data, %struct.test_mb_ahash_data* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %47
  %70 = load i8*, i8** %5, align 8
  %71 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i8* %70)
  br label %307

72:                                               ; preds = %47
  %73 = load %struct.test_mb_ahash_data*, %struct.test_mb_ahash_data** %9, align 8
  %74 = load i32, i32* %11, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.test_mb_ahash_data, %struct.test_mb_ahash_data* %73, i64 %75
  %77 = getelementptr inbounds %struct.test_mb_ahash_data, %struct.test_mb_ahash_data* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @crypto_req_done, align 4
  %80 = load %struct.test_mb_ahash_data*, %struct.test_mb_ahash_data** %9, align 8
  %81 = load i32, i32* %11, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.test_mb_ahash_data, %struct.test_mb_ahash_data* %80, i64 %82
  %84 = getelementptr inbounds %struct.test_mb_ahash_data, %struct.test_mb_ahash_data* %83, i32 0, i32 4
  %85 = call i32 @ahash_request_set_callback(i32 %78, i32 0, i32 %79, i32* %84)
  %86 = load %struct.test_mb_ahash_data*, %struct.test_mb_ahash_data** %9, align 8
  %87 = load i32, i32* %11, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.test_mb_ahash_data, %struct.test_mb_ahash_data* %86, i64 %88
  %90 = getelementptr inbounds %struct.test_mb_ahash_data, %struct.test_mb_ahash_data* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = load i32, i32* @XBUFSIZE, align 4
  %93 = call i32 @sg_init_table(i64 %91, i32 %92)
  store i32 0, i32* %12, align 4
  br label %94

94:                                               ; preds = %132, %72
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* @XBUFSIZE, align 4
  %97 = icmp ult i32 %95, %96
  br i1 %97, label %98, label %135

98:                                               ; preds = %94
  %99 = load %struct.test_mb_ahash_data*, %struct.test_mb_ahash_data** %9, align 8
  %100 = load i32, i32* %11, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds %struct.test_mb_ahash_data, %struct.test_mb_ahash_data* %99, i64 %101
  %103 = getelementptr inbounds %struct.test_mb_ahash_data, %struct.test_mb_ahash_data* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = load i32, i32* %12, align 4
  %106 = zext i32 %105 to i64
  %107 = add nsw i64 %104, %106
  %108 = load %struct.test_mb_ahash_data*, %struct.test_mb_ahash_data** %9, align 8
  %109 = load i32, i32* %11, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.test_mb_ahash_data, %struct.test_mb_ahash_data* %108, i64 %110
  %112 = getelementptr inbounds %struct.test_mb_ahash_data, %struct.test_mb_ahash_data* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %12, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @PAGE_SIZE, align 4
  %119 = call i32 @sg_set_buf(i64 %107, i32 %117, i32 %118)
  %120 = load %struct.test_mb_ahash_data*, %struct.test_mb_ahash_data** %9, align 8
  %121 = load i32, i32* %11, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds %struct.test_mb_ahash_data, %struct.test_mb_ahash_data* %120, i64 %122
  %124 = getelementptr inbounds %struct.test_mb_ahash_data, %struct.test_mb_ahash_data* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %12, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @PAGE_SIZE, align 4
  %131 = call i32 @memset(i32 %129, i32 255, i32 %130)
  br label %132

132:                                              ; preds = %98
  %133 = load i32, i32* %12, align 4
  %134 = add i32 %133, 1
  store i32 %134, i32* %12, align 4
  br label %94

135:                                              ; preds = %94
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %11, align 4
  %138 = add i32 %137, 1
  store i32 %138, i32* %11, align 4
  br label %33

139:                                              ; preds = %33
  %140 = load i8*, i8** %5, align 8
  %141 = load i32, i32* @crypto_ahash, align 4
  %142 = load %struct.crypto_ahash*, %struct.crypto_ahash** %10, align 8
  %143 = call i32 @get_driver_name(i32 %141, %struct.crypto_ahash* %142)
  %144 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* %140, i32 %143)
  store i32 0, i32* %11, align 4
  br label %145

145:                                              ; preds = %303, %139
  %146 = load %struct.hash_speed*, %struct.hash_speed** %7, align 8
  %147 = load i32, i32* %11, align 4
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds %struct.hash_speed, %struct.hash_speed* %146, i64 %148
  %150 = getelementptr inbounds %struct.hash_speed, %struct.hash_speed* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %306

153:                                              ; preds = %145
  %154 = load %struct.hash_speed*, %struct.hash_speed** %7, align 8
  %155 = load i32, i32* %11, align 4
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds %struct.hash_speed, %struct.hash_speed* %154, i64 %156
  %158 = getelementptr inbounds %struct.hash_speed, %struct.hash_speed* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.hash_speed*, %struct.hash_speed** %7, align 8
  %161 = load i32, i32* %11, align 4
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds %struct.hash_speed, %struct.hash_speed* %160, i64 %162
  %164 = getelementptr inbounds %struct.hash_speed, %struct.hash_speed* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = icmp ne i32 %159, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %153
  br label %303

168:                                              ; preds = %153
  %169 = load %struct.hash_speed*, %struct.hash_speed** %7, align 8
  %170 = load i32, i32* %11, align 4
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds %struct.hash_speed, %struct.hash_speed* %169, i64 %171
  %173 = getelementptr inbounds %struct.hash_speed, %struct.hash_speed* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @XBUFSIZE, align 4
  %176 = load i32, i32* @PAGE_SIZE, align 4
  %177 = mul i32 %175, %176
  %178 = icmp ugt i32 %174, %177
  br i1 %178, label %179, label %190

179:                                              ; preds = %168
  %180 = load %struct.hash_speed*, %struct.hash_speed** %7, align 8
  %181 = load i32, i32* %11, align 4
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds %struct.hash_speed, %struct.hash_speed* %180, i64 %182
  %184 = getelementptr inbounds %struct.hash_speed, %struct.hash_speed* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @XBUFSIZE, align 4
  %187 = load i32, i32* @PAGE_SIZE, align 4
  %188 = mul i32 %186, %187
  %189 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %185, i32 %188)
  br label %307

190:                                              ; preds = %168
  %191 = load %struct.hash_speed*, %struct.hash_speed** %7, align 8
  %192 = load i32, i32* %11, align 4
  %193 = zext i32 %192 to i64
  %194 = getelementptr inbounds %struct.hash_speed, %struct.hash_speed* %191, i64 %193
  %195 = getelementptr inbounds %struct.hash_speed, %struct.hash_speed* %194, i32 0, i32 2
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %210

198:                                              ; preds = %190
  %199 = load %struct.crypto_ahash*, %struct.crypto_ahash** %10, align 8
  %200 = load i32*, i32** @tvmem, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 0
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.hash_speed*, %struct.hash_speed** %7, align 8
  %204 = load i32, i32* %11, align 4
  %205 = zext i32 %204 to i64
  %206 = getelementptr inbounds %struct.hash_speed, %struct.hash_speed* %203, i64 %205
  %207 = getelementptr inbounds %struct.hash_speed, %struct.hash_speed* %206, i32 0, i32 2
  %208 = load i64, i64* %207, align 8
  %209 = call i32 @crypto_ahash_setkey(%struct.crypto_ahash* %199, i32 %202, i64 %208)
  br label %210

210:                                              ; preds = %198, %190
  store i32 0, i32* %13, align 4
  br label %211

211:                                              ; preds = %241, %210
  %212 = load i32, i32* %13, align 4
  %213 = load i32, i32* %8, align 4
  %214 = icmp ult i32 %212, %213
  br i1 %214, label %215, label %244

215:                                              ; preds = %211
  %216 = load %struct.test_mb_ahash_data*, %struct.test_mb_ahash_data** %9, align 8
  %217 = load i32, i32* %13, align 4
  %218 = zext i32 %217 to i64
  %219 = getelementptr inbounds %struct.test_mb_ahash_data, %struct.test_mb_ahash_data* %216, i64 %218
  %220 = getelementptr inbounds %struct.test_mb_ahash_data, %struct.test_mb_ahash_data* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 8
  %222 = load %struct.test_mb_ahash_data*, %struct.test_mb_ahash_data** %9, align 8
  %223 = load i32, i32* %13, align 4
  %224 = zext i32 %223 to i64
  %225 = getelementptr inbounds %struct.test_mb_ahash_data, %struct.test_mb_ahash_data* %222, i64 %224
  %226 = getelementptr inbounds %struct.test_mb_ahash_data, %struct.test_mb_ahash_data* %225, i32 0, i32 3
  %227 = load i64, i64* %226, align 8
  %228 = load %struct.test_mb_ahash_data*, %struct.test_mb_ahash_data** %9, align 8
  %229 = load i32, i32* %13, align 4
  %230 = zext i32 %229 to i64
  %231 = getelementptr inbounds %struct.test_mb_ahash_data, %struct.test_mb_ahash_data* %228, i64 %230
  %232 = getelementptr inbounds %struct.test_mb_ahash_data, %struct.test_mb_ahash_data* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.hash_speed*, %struct.hash_speed** %7, align 8
  %235 = load i32, i32* %11, align 4
  %236 = zext i32 %235 to i64
  %237 = getelementptr inbounds %struct.hash_speed, %struct.hash_speed* %234, i64 %236
  %238 = getelementptr inbounds %struct.hash_speed, %struct.hash_speed* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = call i32 @ahash_request_set_crypt(i32 %221, i64 %227, i32 %233, i32 %239)
  br label %241

241:                                              ; preds = %215
  %242 = load i32, i32* %13, align 4
  %243 = add i32 %242, 1
  store i32 %243, i32* %13, align 4
  br label %211

244:                                              ; preds = %211
  %245 = load i32, i32* %11, align 4
  %246 = load %struct.hash_speed*, %struct.hash_speed** %7, align 8
  %247 = load i32, i32* %11, align 4
  %248 = zext i32 %247 to i64
  %249 = getelementptr inbounds %struct.hash_speed, %struct.hash_speed* %246, i64 %248
  %250 = getelementptr inbounds %struct.hash_speed, %struct.hash_speed* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = load %struct.hash_speed*, %struct.hash_speed** %7, align 8
  %253 = load i32, i32* %11, align 4
  %254 = zext i32 %253 to i64
  %255 = getelementptr inbounds %struct.hash_speed, %struct.hash_speed* %252, i64 %254
  %256 = getelementptr inbounds %struct.hash_speed, %struct.hash_speed* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = load %struct.hash_speed*, %struct.hash_speed** %7, align 8
  %259 = load i32, i32* %11, align 4
  %260 = zext i32 %259 to i64
  %261 = getelementptr inbounds %struct.hash_speed, %struct.hash_speed* %258, i64 %260
  %262 = getelementptr inbounds %struct.hash_speed, %struct.hash_speed* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = load %struct.hash_speed*, %struct.hash_speed** %7, align 8
  %265 = load i32, i32* %11, align 4
  %266 = zext i32 %265 to i64
  %267 = getelementptr inbounds %struct.hash_speed, %struct.hash_speed* %264, i64 %266
  %268 = getelementptr inbounds %struct.hash_speed, %struct.hash_speed* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = udiv i32 %263, %269
  %271 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0), i32 %245, i32 %251, i32 %257, i32 %270)
  %272 = load i32, i32* %6, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %286

274:                                              ; preds = %244
  %275 = load %struct.test_mb_ahash_data*, %struct.test_mb_ahash_data** %9, align 8
  %276 = load %struct.hash_speed*, %struct.hash_speed** %7, align 8
  %277 = load i32, i32* %11, align 4
  %278 = zext i32 %277 to i64
  %279 = getelementptr inbounds %struct.hash_speed, %struct.hash_speed* %276, i64 %278
  %280 = getelementptr inbounds %struct.hash_speed, %struct.hash_speed* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = load i32, i32* %6, align 4
  %283 = load i32, i32* %8, align 4
  %284 = call i32 @test_mb_ahash_jiffies(%struct.test_mb_ahash_data* %275, i32 %281, i32 %282, i32 %283)
  store i32 %284, i32* %14, align 4
  %285 = call i32 (...) @cond_resched()
  br label %296

286:                                              ; preds = %244
  %287 = load %struct.test_mb_ahash_data*, %struct.test_mb_ahash_data** %9, align 8
  %288 = load %struct.hash_speed*, %struct.hash_speed** %7, align 8
  %289 = load i32, i32* %11, align 4
  %290 = zext i32 %289 to i64
  %291 = getelementptr inbounds %struct.hash_speed, %struct.hash_speed* %288, i64 %290
  %292 = getelementptr inbounds %struct.hash_speed, %struct.hash_speed* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = load i32, i32* %8, align 4
  %295 = call i32 @test_mb_ahash_cycles(%struct.test_mb_ahash_data* %287, i32 %293, i32 %294)
  store i32 %295, i32* %14, align 4
  br label %296

296:                                              ; preds = %286, %274
  %297 = load i32, i32* %14, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %302

299:                                              ; preds = %296
  %300 = load i32, i32* %14, align 4
  %301 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %300)
  br label %306

302:                                              ; preds = %296
  br label %303

303:                                              ; preds = %302, %167
  %304 = load i32, i32* %11, align 4
  %305 = add i32 %304, 1
  store i32 %305, i32* %11, align 4
  br label %145

306:                                              ; preds = %299, %145
  br label %307

307:                                              ; preds = %306, %179, %69, %46
  store i32 0, i32* %13, align 4
  br label %308

308:                                              ; preds = %320, %307
  %309 = load i32, i32* %13, align 4
  %310 = load i32, i32* %8, align 4
  %311 = icmp ult i32 %309, %310
  br i1 %311, label %312, label %323

312:                                              ; preds = %308
  %313 = load %struct.test_mb_ahash_data*, %struct.test_mb_ahash_data** %9, align 8
  %314 = load i32, i32* %13, align 4
  %315 = zext i32 %314 to i64
  %316 = getelementptr inbounds %struct.test_mb_ahash_data, %struct.test_mb_ahash_data* %313, i64 %315
  %317 = getelementptr inbounds %struct.test_mb_ahash_data, %struct.test_mb_ahash_data* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 8
  %319 = call i32 @ahash_request_free(i32 %318)
  br label %320

320:                                              ; preds = %312
  %321 = load i32, i32* %13, align 4
  %322 = add i32 %321, 1
  store i32 %322, i32* %13, align 4
  br label %308

323:                                              ; preds = %308
  store i32 0, i32* %13, align 4
  br label %324

324:                                              ; preds = %336, %323
  %325 = load i32, i32* %13, align 4
  %326 = load i32, i32* %8, align 4
  %327 = icmp ult i32 %325, %326
  br i1 %327, label %328, label %339

328:                                              ; preds = %324
  %329 = load %struct.test_mb_ahash_data*, %struct.test_mb_ahash_data** %9, align 8
  %330 = load i32, i32* %13, align 4
  %331 = zext i32 %330 to i64
  %332 = getelementptr inbounds %struct.test_mb_ahash_data, %struct.test_mb_ahash_data* %329, i64 %331
  %333 = getelementptr inbounds %struct.test_mb_ahash_data, %struct.test_mb_ahash_data* %332, i32 0, i32 0
  %334 = load i32*, i32** %333, align 8
  %335 = call i32 @testmgr_free_buf(i32* %334)
  br label %336

336:                                              ; preds = %328
  %337 = load i32, i32* %13, align 4
  %338 = add i32 %337, 1
  store i32 %338, i32* %13, align 4
  br label %324

339:                                              ; preds = %324
  %340 = load %struct.crypto_ahash*, %struct.crypto_ahash** %10, align 8
  %341 = call i32 @crypto_free_ahash(%struct.crypto_ahash* %340)
  br label %342

342:                                              ; preds = %339, %27
  %343 = load %struct.test_mb_ahash_data*, %struct.test_mb_ahash_data** %9, align 8
  %344 = call i32 @kfree(%struct.test_mb_ahash_data* %343)
  br label %345

345:                                              ; preds = %342, %20
  ret void
}

declare dso_local %struct.test_mb_ahash_data* @kcalloc(i32, i32, i32) #1

declare dso_local %struct.crypto_ahash* @crypto_alloc_ahash(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.crypto_ahash*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_ahash*) #1

declare dso_local i64 @testmgr_alloc_buf(i32*) #1

declare dso_local i32 @crypto_init_wait(i32*) #1

declare dso_local i32 @ahash_request_alloc(%struct.crypto_ahash*, i32) #1

declare dso_local i32 @ahash_request_set_callback(i32, i32, i32, i32*) #1

declare dso_local i32 @sg_init_table(i64, i32) #1

declare dso_local i32 @sg_set_buf(i64, i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @get_driver_name(i32, %struct.crypto_ahash*) #1

declare dso_local i32 @crypto_ahash_setkey(%struct.crypto_ahash*, i32, i64) #1

declare dso_local i32 @ahash_request_set_crypt(i32, i64, i32, i32) #1

declare dso_local i32 @test_mb_ahash_jiffies(%struct.test_mb_ahash_data*, i32, i32, i32) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @test_mb_ahash_cycles(%struct.test_mb_ahash_data*, i32, i32) #1

declare dso_local i32 @ahash_request_free(i32) #1

declare dso_local i32 @testmgr_free_buf(i32*) #1

declare dso_local i32 @crypto_free_ahash(%struct.crypto_ahash*) #1

declare dso_local i32 @kfree(%struct.test_mb_ahash_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
