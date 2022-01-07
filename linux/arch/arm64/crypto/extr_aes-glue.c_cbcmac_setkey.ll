; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/crypto/extr_aes-glue.c_cbcmac_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/crypto/extr_aes-glue.c_cbcmac_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_shash = type { i32 }
%struct.mac_tfm_ctx = type { i32 }

@CRYPTO_TFM_RES_BAD_KEY_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_shash*, i32*, i32)* @cbcmac_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbcmac_setkey(%struct.crypto_shash* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.crypto_shash*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mac_tfm_ctx*, align 8
  %8 = alloca i32, align 4
  store %struct.crypto_shash* %0, %struct.crypto_shash** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.crypto_shash*, %struct.crypto_shash** %4, align 8
  %10 = call %struct.mac_tfm_ctx* @crypto_shash_ctx(%struct.crypto_shash* %9)
  store %struct.mac_tfm_ctx* %10, %struct.mac_tfm_ctx** %7, align 8
  %11 = load %struct.mac_tfm_ctx*, %struct.mac_tfm_ctx** %7, align 8
  %12 = getelementptr inbounds %struct.mac_tfm_ctx, %struct.mac_tfm_ctx* %11, i32 0, i32 0
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @aes_expandkey(i32* %12, i32* %13, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load %struct.crypto_shash*, %struct.crypto_shash** %4, align 8
  %20 = load i32, i32* @CRYPTO_TFM_RES_BAD_KEY_LEN, align 4
  %21 = call i32 @crypto_shash_set_flags(%struct.crypto_shash* %19, i32 %20)
  br label %22

22:                                               ; preds = %18, %3
  %23 = load i32, i32* %8, align 4
  ret i32 %23
}

declare dso_local %struct.mac_tfm_ctx* @crypto_shash_ctx(%struct.crypto_shash*) #1

declare dso_local i32 @aes_expandkey(i32*, i32*, i32) #1

declare dso_local i32 @crypto_shash_set_flags(%struct.crypto_shash*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
