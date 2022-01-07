; ModuleID = '/home/carl/AnghaBench/libsodium/test/default/extr_aead_aes256gcm2.c_tv.c'
source_filename = "/home/carl/AnghaBench/libsodium/test/default/extr_aead_aes256gcm2.c_tv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32, i32, i32, i32, i32, i32 }

@crypto_aead_aes256gcm_KEYBYTES = common dso_local global i32 0, align 4
@crypto_aead_aes256gcm_NPUBBYTES = common dso_local global i32 0, align 4
@crypto_aead_aes256gcm_ABYTES = common dso_local global i32 0, align 4
@tests = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"valid\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"*** test case %u succeeded, was supposed to be %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Incorrect decryption of test vector #%u\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"invalid\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"*** test case %u failed, was supposed to be %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @tv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tv() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = load i32, i32* @crypto_aead_aes256gcm_KEYBYTES, align 4
  %13 = sext i32 %12 to i64
  %14 = call i64 @sodium_malloc(i64 %13)
  %15 = inttoptr i64 %14 to i8*
  store i8* %15, i8** %4, align 8
  %16 = load i32, i32* @crypto_aead_aes256gcm_NPUBBYTES, align 4
  %17 = sext i32 %16 to i64
  %18 = call i64 @sodium_malloc(i64 %17)
  %19 = inttoptr i64 %18 to i8*
  store i8* %19, i8** %7, align 8
  %20 = load i32, i32* @crypto_aead_aes256gcm_ABYTES, align 4
  %21 = sext i32 %20 to i64
  %22 = call i64 @sodium_malloc(i64 %21)
  %23 = inttoptr i64 %22 to i8*
  store i8* %23, i8** %6, align 8
  store i32 0, i32* %11, align 4
  br label %24

24:                                               ; preds = %274, %0
  %25 = load i32, i32* %11, align 4
  %26 = zext i32 %25 to i64
  %27 = icmp ult i64 %26, 0
  br i1 %27, label %28, label %277

28:                                               ; preds = %24
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tests, align 8
  %30 = load i32, i32* %11, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @strlen(i32 %34)
  %36 = load i32, i32* @crypto_aead_aes256gcm_KEYBYTES, align 4
  %37 = mul nsw i32 2, %36
  %38 = icmp eq i32 %35, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load i8*, i8** %4, align 8
  %42 = load i32, i32* @crypto_aead_aes256gcm_KEYBYTES, align 4
  %43 = sext i32 %42 to i64
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tests, align 8
  %45 = load i32, i32* %11, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tests, align 8
  %51 = load i32, i32* %11, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @strlen(i32 %55)
  %57 = call i32 @sodium_hex2bin(i8* %41, i64 %43, i32 %49, i32 %56, i32* null, i32* null, i32* null)
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tests, align 8
  %59 = load i32, i32* %11, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @strlen(i32 %63)
  %65 = load i32, i32* @crypto_aead_aes256gcm_NPUBBYTES, align 4
  %66 = mul nsw i32 2, %65
  %67 = icmp eq i32 %64, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @assert(i32 %68)
  %70 = load i8*, i8** %7, align 8
  %71 = load i32, i32* @crypto_aead_aes256gcm_NPUBBYTES, align 4
  %72 = sext i32 %71 to i64
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tests, align 8
  %74 = load i32, i32* %11, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tests, align 8
  %80 = load i32, i32* %11, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @strlen(i32 %84)
  %86 = call i32 @sodium_hex2bin(i8* %70, i64 %72, i32 %78, i32 %85, i32* null, i32* null, i32* null)
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tests, align 8
  %88 = load i32, i32* %11, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @strlen(i32 %92)
  %94 = sdiv i32 %93, 2
  %95 = sext i32 %94 to i64
  store i64 %95, i64* %10, align 8
  %96 = load i64, i64* %10, align 8
  %97 = call i64 @sodium_malloc(i64 %96)
  %98 = inttoptr i64 %97 to i8*
  store i8* %98, i8** %5, align 8
  %99 = load i8*, i8** %5, align 8
  %100 = load i64, i64* %10, align 8
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tests, align 8
  %102 = load i32, i32* %11, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tests, align 8
  %108 = load i32, i32* %11, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @strlen(i32 %112)
  %114 = call i32 @sodium_hex2bin(i8* %99, i64 %100, i32 %106, i32 %113, i32* null, i32* null, i32* null)
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tests, align 8
  %116 = load i32, i32* %11, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @strlen(i32 %120)
  %122 = sdiv i32 %121, 2
  %123 = sext i32 %122 to i64
  store i64 %123, i64* %8, align 8
  %124 = load i64, i64* %8, align 8
  %125 = call i64 @sodium_malloc(i64 %124)
  %126 = inttoptr i64 %125 to i8*
  store i8* %126, i8** %1, align 8
  %127 = load i8*, i8** %1, align 8
  %128 = load i64, i64* %8, align 8
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tests, align 8
  %130 = load i32, i32* %11, align 4
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tests, align 8
  %136 = load i32, i32* %11, align 4
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @strlen(i32 %140)
  %142 = call i32 @sodium_hex2bin(i8* %127, i64 %128, i32 %134, i32 %141, i32* null, i32* null, i32* null)
  %143 = load i64, i64* %10, align 8
  store i64 %143, i64* %9, align 8
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tests, align 8
  %145 = load i32, i32* %11, align 4
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @strlen(i32 %149)
  %151 = sext i32 %150 to i64
  %152 = load i64, i64* %10, align 8
  %153 = mul i64 2, %152
  %154 = icmp eq i64 %151, %153
  %155 = zext i1 %154 to i32
  %156 = call i32 @assert(i32 %155)
  %157 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tests, align 8
  %158 = load i32, i32* %11, align 4
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @strlen(i32 %162)
  %164 = load i32, i32* @crypto_aead_aes256gcm_ABYTES, align 4
  %165 = mul nsw i32 2, %164
  %166 = icmp eq i32 %163, %165
  %167 = zext i1 %166 to i32
  %168 = call i32 @assert(i32 %167)
  %169 = load i8*, i8** %6, align 8
  %170 = load i32, i32* @crypto_aead_aes256gcm_ABYTES, align 4
  %171 = sext i32 %170 to i64
  %172 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tests, align 8
  %173 = load i32, i32* %11, align 4
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tests, align 8
  %179 = load i32, i32* %11, align 4
  %180 = zext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @strlen(i32 %183)
  %185 = call i32 @sodium_hex2bin(i8* %169, i64 %171, i32 %177, i32 %184, i32* null, i32* null, i32* null)
  %186 = load i64, i64* %9, align 8
  %187 = call i64 @sodium_malloc(i64 %186)
  %188 = inttoptr i64 %187 to i8*
  store i8* %188, i8** %3, align 8
  %189 = load i8*, i8** %3, align 8
  %190 = load i64, i64* %9, align 8
  %191 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tests, align 8
  %192 = load i32, i32* %11, align 4
  %193 = zext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tests, align 8
  %198 = load i32, i32* %11, align 4
  %199 = zext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 8
  %203 = call i32 @strlen(i32 %202)
  %204 = call i32 @sodium_hex2bin(i8* %189, i64 %190, i32 %196, i32 %203, i32* null, i32* null, i32* null)
  %205 = load i64, i64* %10, align 8
  %206 = call i64 @sodium_malloc(i64 %205)
  %207 = inttoptr i64 %206 to i8*
  store i8* %207, i8** %2, align 8
  %208 = load i8*, i8** %2, align 8
  %209 = load i8*, i8** %3, align 8
  %210 = load i64, i64* %9, align 8
  %211 = load i8*, i8** %6, align 8
  %212 = load i8*, i8** %1, align 8
  %213 = load i64, i64* %8, align 8
  %214 = load i8*, i8** %7, align 8
  %215 = load i8*, i8** %4, align 8
  %216 = call i64 @crypto_aead_aes256gcm_decrypt_detached(i8* %208, i32* null, i8* %209, i64 %210, i8* %211, i8* %212, i64 %213, i8* %214, i8* %215)
  %217 = icmp eq i64 %216, 0
  br i1 %217, label %218, label %246

218:                                              ; preds = %28
  %219 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tests, align 8
  %220 = load i32, i32* %11, align 4
  %221 = zext i32 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %219, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %222, i32 0, i32 0
  %224 = load i8*, i8** %223, align 8
  %225 = call i64 @strcmp(i8* %224, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %236

227:                                              ; preds = %218
  %228 = load i32, i32* %11, align 4
  %229 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tests, align 8
  %230 = load i32, i32* %11, align 4
  %231 = zext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %229, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %232, i32 0, i32 0
  %234 = load i8*, i8** %233, align 8
  %235 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %228, i8* %234)
  br label %236

236:                                              ; preds = %227, %218
  %237 = load i8*, i8** %2, align 8
  %238 = load i8*, i8** %5, align 8
  %239 = load i64, i64* %10, align 8
  %240 = call i64 @memcmp(i8* %237, i8* %238, i64 %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %245

242:                                              ; preds = %236
  %243 = load i32, i32* %11, align 4
  %244 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %243)
  br label %245

245:                                              ; preds = %242, %236
  br label %265

246:                                              ; preds = %28
  %247 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tests, align 8
  %248 = load i32, i32* %11, align 4
  %249 = zext i32 %248 to i64
  %250 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %247, i64 %249
  %251 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %250, i32 0, i32 0
  %252 = load i8*, i8** %251, align 8
  %253 = call i64 @strcmp(i8* %252, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %264

255:                                              ; preds = %246
  %256 = load i32, i32* %11, align 4
  %257 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tests, align 8
  %258 = load i32, i32* %11, align 4
  %259 = zext i32 %258 to i64
  %260 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %257, i64 %259
  %261 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %260, i32 0, i32 0
  %262 = load i8*, i8** %261, align 8
  %263 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i32 %256, i8* %262)
  br label %264

264:                                              ; preds = %255, %246
  br label %265

265:                                              ; preds = %264, %245
  %266 = load i8*, i8** %5, align 8
  %267 = call i32 @sodium_free(i8* %266)
  %268 = load i8*, i8** %1, align 8
  %269 = call i32 @sodium_free(i8* %268)
  %270 = load i8*, i8** %2, align 8
  %271 = call i32 @sodium_free(i8* %270)
  %272 = load i8*, i8** %3, align 8
  %273 = call i32 @sodium_free(i8* %272)
  br label %274

274:                                              ; preds = %265
  %275 = load i32, i32* %11, align 4
  %276 = add i32 %275, 1
  store i32 %276, i32* %11, align 4
  br label %24

277:                                              ; preds = %24
  %278 = load i8*, i8** %4, align 8
  %279 = call i32 @sodium_free(i8* %278)
  %280 = load i8*, i8** %6, align 8
  %281 = call i32 @sodium_free(i8* %280)
  %282 = load i8*, i8** %7, align 8
  %283 = call i32 @sodium_free(i8* %282)
  ret i32 0
}

declare dso_local i64 @sodium_malloc(i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @sodium_hex2bin(i8*, i64, i32, i32, i32*, i32*, i32*) #1

declare dso_local i64 @crypto_aead_aes256gcm_decrypt_detached(i8*, i32*, i8*, i64, i8*, i8*, i64, i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

declare dso_local i32 @sodium_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
