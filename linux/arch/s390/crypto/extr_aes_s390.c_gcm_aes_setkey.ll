; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/crypto/extr_aes_s390.c_gcm_aes_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/crypto/extr_aes_s390.c_gcm_aes_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aead = type { i32 }
%struct.s390_aes_ctx = type { i32, i32, i32 }

@CPACF_KMA_GCM_AES_128 = common dso_local global i32 0, align 4
@CPACF_KMA_GCM_AES_192 = common dso_local global i32 0, align 4
@CPACF_KMA_GCM_AES_256 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_aead*, i32*, i32)* @gcm_aes_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gcm_aes_setkey(%struct.crypto_aead* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_aead*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.s390_aes_ctx*, align 8
  store %struct.crypto_aead* %0, %struct.crypto_aead** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %10 = call %struct.s390_aes_ctx* @crypto_aead_ctx(%struct.crypto_aead* %9)
  store %struct.s390_aes_ctx* %10, %struct.s390_aes_ctx** %8, align 8
  %11 = load i32, i32* %7, align 4
  switch i32 %11, label %24 [
    i32 130, label %12
    i32 129, label %16
    i32 128, label %20
  ]

12:                                               ; preds = %3
  %13 = load i32, i32* @CPACF_KMA_GCM_AES_128, align 4
  %14 = load %struct.s390_aes_ctx*, %struct.s390_aes_ctx** %8, align 8
  %15 = getelementptr inbounds %struct.s390_aes_ctx, %struct.s390_aes_ctx* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 4
  br label %27

16:                                               ; preds = %3
  %17 = load i32, i32* @CPACF_KMA_GCM_AES_192, align 4
  %18 = load %struct.s390_aes_ctx*, %struct.s390_aes_ctx** %8, align 8
  %19 = getelementptr inbounds %struct.s390_aes_ctx, %struct.s390_aes_ctx* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  br label %27

20:                                               ; preds = %3
  %21 = load i32, i32* @CPACF_KMA_GCM_AES_256, align 4
  %22 = load %struct.s390_aes_ctx*, %struct.s390_aes_ctx** %8, align 8
  %23 = getelementptr inbounds %struct.s390_aes_ctx, %struct.s390_aes_ctx* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  br label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %37

27:                                               ; preds = %20, %16, %12
  %28 = load %struct.s390_aes_ctx*, %struct.s390_aes_ctx** %8, align 8
  %29 = getelementptr inbounds %struct.s390_aes_ctx, %struct.s390_aes_ctx* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @memcpy(i32 %30, i32* %31, i32 %32)
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.s390_aes_ctx*, %struct.s390_aes_ctx** %8, align 8
  %36 = getelementptr inbounds %struct.s390_aes_ctx, %struct.s390_aes_ctx* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %27, %24
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local %struct.s390_aes_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
