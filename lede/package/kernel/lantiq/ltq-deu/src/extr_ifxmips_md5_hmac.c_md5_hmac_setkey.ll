; ModuleID = '/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-deu/src/extr_ifxmips_md5_hmac.c_md5_hmac_setkey.c'
source_filename = "/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-deu/src/extr_ifxmips_md5_hmac.c_md5_hmac_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_shash = type { i32 }
%struct.md5_hmac_ctx = type { i32, i32 }
%struct.deu_hash_t = type { i32 }

@HASH_START = common dso_local global i64 0, align 8
@MAX_HASH_KEYLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Key length more than what DEU hash can handle\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_shash*, i32*, i32)* @md5_hmac_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @md5_hmac_setkey(%struct.crypto_shash* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_shash*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.md5_hmac_ctx*, align 8
  %9 = alloca %struct.deu_hash_t*, align 8
  store %struct.crypto_shash* %0, %struct.crypto_shash** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.crypto_shash*, %struct.crypto_shash** %5, align 8
  %11 = call %struct.md5_hmac_ctx* @crypto_shash_ctx(%struct.crypto_shash* %10)
  store %struct.md5_hmac_ctx* %11, %struct.md5_hmac_ctx** %8, align 8
  %12 = load i64, i64* @HASH_START, align 8
  %13 = inttoptr i64 %12 to %struct.deu_hash_t*
  store %struct.deu_hash_t* %13, %struct.deu_hash_t** %9, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @MAX_HASH_KEYLEN, align 4
  %16 = icmp ugt i32 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = call i32 @printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %34

21:                                               ; preds = %3
  %22 = load %struct.deu_hash_t*, %struct.deu_hash_t** %9, align 8
  %23 = getelementptr inbounds %struct.deu_hash_t, %struct.deu_hash_t* %22, i32 0, i32 0
  %24 = load volatile i32, i32* %23, align 4
  %25 = or i32 %24, -2147483648
  store volatile i32 %25, i32* %23, align 4
  %26 = load %struct.md5_hmac_ctx*, %struct.md5_hmac_ctx** %8, align 8
  %27 = getelementptr inbounds %struct.md5_hmac_ctx, %struct.md5_hmac_ctx* %26, i32 0, i32 1
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @memcpy(i32* %27, i32* %28, i32 %29)
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.md5_hmac_ctx*, %struct.md5_hmac_ctx** %8, align 8
  %33 = getelementptr inbounds %struct.md5_hmac_ctx, %struct.md5_hmac_ctx* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %21, %17
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local %struct.md5_hmac_ctx* @crypto_shash_ctx(%struct.crypto_shash*) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
