; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/crypto/extr_aesni-intel_glue.c_aes_set_key_common.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/crypto/extr_aesni-intel_glue.c_aes_set_key_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.crypto_aes_ctx = type { i32 }

@AES_KEYSIZE_128 = common dso_local global i32 0, align 4
@AES_KEYSIZE_192 = common dso_local global i32 0, align 4
@AES_KEYSIZE_256 = common dso_local global i32 0, align 4
@CRYPTO_TFM_RES_BAD_KEY_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*, i8*, i32*, i32)* @aes_set_key_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aes_set_key_common(%struct.crypto_tfm* %0, i8* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.crypto_tfm*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.crypto_aes_ctx*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = call %struct.crypto_aes_ctx* @aes_ctx(i8* %13)
  store %struct.crypto_aes_ctx* %14, %struct.crypto_aes_ctx** %10, align 8
  %15 = load %struct.crypto_tfm*, %struct.crypto_tfm** %6, align 8
  %16 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %15, i32 0, i32 0
  store i32* %16, i32** %11, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @AES_KEYSIZE_128, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %35

20:                                               ; preds = %4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @AES_KEYSIZE_192, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %20
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @AES_KEYSIZE_256, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = load i32, i32* @CRYPTO_TFM_RES_BAD_KEY_LEN, align 4
  %30 = load i32*, i32** %11, align 8
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %29
  store i32 %32, i32* %30, align 4
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %52

35:                                               ; preds = %24, %20, %4
  %36 = call i32 (...) @crypto_simd_usable()
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %35
  %39 = load %struct.crypto_aes_ctx*, %struct.crypto_aes_ctx** %10, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @aes_expandkey(%struct.crypto_aes_ctx* %39, i32* %40, i32 %41)
  store i32 %42, i32* %12, align 4
  br label %50

43:                                               ; preds = %35
  %44 = call i32 (...) @kernel_fpu_begin()
  %45 = load %struct.crypto_aes_ctx*, %struct.crypto_aes_ctx** %10, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @aesni_set_key(%struct.crypto_aes_ctx* %45, i32* %46, i32 %47)
  store i32 %48, i32* %12, align 4
  %49 = call i32 (...) @kernel_fpu_end()
  br label %50

50:                                               ; preds = %43, %38
  %51 = load i32, i32* %12, align 4
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %50, %28
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local %struct.crypto_aes_ctx* @aes_ctx(i8*) #1

declare dso_local i32 @crypto_simd_usable(...) #1

declare dso_local i32 @aes_expandkey(%struct.crypto_aes_ctx*, i32*, i32) #1

declare dso_local i32 @kernel_fpu_begin(...) #1

declare dso_local i32 @aesni_set_key(%struct.crypto_aes_ctx*, i32*, i32) #1

declare dso_local i32 @kernel_fpu_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
