; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/crypto/extr_aes_s390.c_crypto_aes_decrypt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/crypto/extr_aes_s390.c_crypto_aes_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.s390_aes_ctx = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CPACF_DECRYPT = common dso_local global i32 0, align 4
@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_tfm*, i32*, i32*)* @crypto_aes_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crypto_aes_decrypt(%struct.crypto_tfm* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.crypto_tfm*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.s390_aes_ctx*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.crypto_tfm*, %struct.crypto_tfm** %4, align 8
  %9 = call %struct.s390_aes_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %8)
  store %struct.s390_aes_ctx* %9, %struct.s390_aes_ctx** %7, align 8
  %10 = load %struct.s390_aes_ctx*, %struct.s390_aes_ctx** %7, align 8
  %11 = getelementptr inbounds %struct.s390_aes_ctx, %struct.s390_aes_ctx* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %3
  %19 = load %struct.s390_aes_ctx*, %struct.s390_aes_ctx** %7, align 8
  %20 = getelementptr inbounds %struct.s390_aes_ctx, %struct.s390_aes_ctx* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @crypto_cipher_decrypt_one(i32 %22, i32* %23, i32* %24)
  br label %38

26:                                               ; preds = %3
  %27 = load %struct.s390_aes_ctx*, %struct.s390_aes_ctx** %7, align 8
  %28 = getelementptr inbounds %struct.s390_aes_ctx, %struct.s390_aes_ctx* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @CPACF_DECRYPT, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.s390_aes_ctx*, %struct.s390_aes_ctx** %7, align 8
  %33 = getelementptr inbounds %struct.s390_aes_ctx, %struct.s390_aes_ctx* %32, i32 0, i32 1
  %34 = load i32*, i32** %5, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %37 = call i32 @cpacf_km(i32 %31, i32* %33, i32* %34, i32* %35, i32 %36)
  br label %38

38:                                               ; preds = %26, %18
  ret void
}

declare dso_local %struct.s390_aes_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @crypto_cipher_decrypt_one(i32, i32*, i32*) #1

declare dso_local i32 @cpacf_km(i32, i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
