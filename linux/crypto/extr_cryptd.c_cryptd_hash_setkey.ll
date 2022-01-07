; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_cryptd.c_cryptd_hash_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_cryptd.c_cryptd_hash_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_ahash = type { i32 }
%struct.cryptd_hash_ctx = type { %struct.crypto_shash* }
%struct.crypto_shash = type { i32 }

@CRYPTO_TFM_REQ_MASK = common dso_local global i32 0, align 4
@CRYPTO_TFM_RES_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_ahash*, i32*, i32)* @cryptd_hash_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cryptd_hash_setkey(%struct.crypto_ahash* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.crypto_ahash*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cryptd_hash_ctx*, align 8
  %8 = alloca %struct.crypto_shash*, align 8
  %9 = alloca i32, align 4
  store %struct.crypto_ahash* %0, %struct.crypto_ahash** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.crypto_ahash*, %struct.crypto_ahash** %4, align 8
  %11 = call %struct.cryptd_hash_ctx* @crypto_ahash_ctx(%struct.crypto_ahash* %10)
  store %struct.cryptd_hash_ctx* %11, %struct.cryptd_hash_ctx** %7, align 8
  %12 = load %struct.cryptd_hash_ctx*, %struct.cryptd_hash_ctx** %7, align 8
  %13 = getelementptr inbounds %struct.cryptd_hash_ctx, %struct.cryptd_hash_ctx* %12, i32 0, i32 0
  %14 = load %struct.crypto_shash*, %struct.crypto_shash** %13, align 8
  store %struct.crypto_shash* %14, %struct.crypto_shash** %8, align 8
  %15 = load %struct.crypto_shash*, %struct.crypto_shash** %8, align 8
  %16 = load i32, i32* @CRYPTO_TFM_REQ_MASK, align 4
  %17 = call i32 @crypto_shash_clear_flags(%struct.crypto_shash* %15, i32 %16)
  %18 = load %struct.crypto_shash*, %struct.crypto_shash** %8, align 8
  %19 = load %struct.crypto_ahash*, %struct.crypto_ahash** %4, align 8
  %20 = call i32 @crypto_ahash_get_flags(%struct.crypto_ahash* %19)
  %21 = load i32, i32* @CRYPTO_TFM_REQ_MASK, align 4
  %22 = and i32 %20, %21
  %23 = call i32 @crypto_shash_set_flags(%struct.crypto_shash* %18, i32 %22)
  %24 = load %struct.crypto_shash*, %struct.crypto_shash** %8, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @crypto_shash_setkey(%struct.crypto_shash* %24, i32* %25, i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load %struct.crypto_ahash*, %struct.crypto_ahash** %4, align 8
  %29 = load %struct.crypto_shash*, %struct.crypto_shash** %8, align 8
  %30 = call i32 @crypto_shash_get_flags(%struct.crypto_shash* %29)
  %31 = load i32, i32* @CRYPTO_TFM_RES_MASK, align 4
  %32 = and i32 %30, %31
  %33 = call i32 @crypto_ahash_set_flags(%struct.crypto_ahash* %28, i32 %32)
  %34 = load i32, i32* %9, align 4
  ret i32 %34
}

declare dso_local %struct.cryptd_hash_ctx* @crypto_ahash_ctx(%struct.crypto_ahash*) #1

declare dso_local i32 @crypto_shash_clear_flags(%struct.crypto_shash*, i32) #1

declare dso_local i32 @crypto_shash_set_flags(%struct.crypto_shash*, i32) #1

declare dso_local i32 @crypto_ahash_get_flags(%struct.crypto_ahash*) #1

declare dso_local i32 @crypto_shash_setkey(%struct.crypto_shash*, i32*, i32) #1

declare dso_local i32 @crypto_ahash_set_flags(%struct.crypto_ahash*, i32) #1

declare dso_local i32 @crypto_shash_get_flags(%struct.crypto_shash*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
