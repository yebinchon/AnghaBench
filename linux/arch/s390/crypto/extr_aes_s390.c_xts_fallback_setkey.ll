; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/crypto/extr_aes_s390.c_xts_fallback_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/crypto/extr_aes_s390.c_xts_fallback_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.s390_xts_ctx = type { i32 }

@CRYPTO_TFM_REQ_MASK = common dso_local global i32 0, align 4
@CRYPTO_TFM_RES_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*, i32*, i32)* @xts_fallback_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xts_fallback_setkey(%struct.crypto_tfm* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.crypto_tfm*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.s390_xts_ctx*, align 8
  %8 = alloca i32, align 4
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.crypto_tfm*, %struct.crypto_tfm** %4, align 8
  %10 = call %struct.s390_xts_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %9)
  store %struct.s390_xts_ctx* %10, %struct.s390_xts_ctx** %7, align 8
  %11 = load %struct.s390_xts_ctx*, %struct.s390_xts_ctx** %7, align 8
  %12 = getelementptr inbounds %struct.s390_xts_ctx, %struct.s390_xts_ctx* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @CRYPTO_TFM_REQ_MASK, align 4
  %15 = call i32 @crypto_sync_skcipher_clear_flags(i32 %13, i32 %14)
  %16 = load %struct.s390_xts_ctx*, %struct.s390_xts_ctx** %7, align 8
  %17 = getelementptr inbounds %struct.s390_xts_ctx, %struct.s390_xts_ctx* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.crypto_tfm*, %struct.crypto_tfm** %4, align 8
  %20 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @CRYPTO_TFM_REQ_MASK, align 4
  %23 = and i32 %21, %22
  %24 = call i32 @crypto_sync_skcipher_set_flags(i32 %18, i32 %23)
  %25 = load %struct.s390_xts_ctx*, %struct.s390_xts_ctx** %7, align 8
  %26 = getelementptr inbounds %struct.s390_xts_ctx, %struct.s390_xts_ctx* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @crypto_sync_skcipher_setkey(i32 %27, i32* %28, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* @CRYPTO_TFM_RES_MASK, align 4
  %32 = xor i32 %31, -1
  %33 = load %struct.crypto_tfm*, %struct.crypto_tfm** %4, align 8
  %34 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 4
  %37 = load %struct.s390_xts_ctx*, %struct.s390_xts_ctx** %7, align 8
  %38 = getelementptr inbounds %struct.s390_xts_ctx, %struct.s390_xts_ctx* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @crypto_sync_skcipher_get_flags(i32 %39)
  %41 = load i32, i32* @CRYPTO_TFM_RES_MASK, align 4
  %42 = and i32 %40, %41
  %43 = load %struct.crypto_tfm*, %struct.crypto_tfm** %4, align 8
  %44 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  %47 = load i32, i32* %8, align 4
  ret i32 %47
}

declare dso_local %struct.s390_xts_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i32 @crypto_sync_skcipher_clear_flags(i32, i32) #1

declare dso_local i32 @crypto_sync_skcipher_set_flags(i32, i32) #1

declare dso_local i32 @crypto_sync_skcipher_setkey(i32, i32*, i32) #1

declare dso_local i32 @crypto_sync_skcipher_get_flags(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
