; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/crypto/extr_aesni-intel_glue.c_aesni_encrypt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/crypto/extr_aesni-intel_glue.c_aesni_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.crypto_aes_ctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_tfm*, i32*, i32*)* @aesni_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aesni_encrypt(%struct.crypto_tfm* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.crypto_tfm*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.crypto_aes_ctx*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.crypto_tfm*, %struct.crypto_tfm** %4, align 8
  %9 = call i32 @crypto_tfm_ctx(%struct.crypto_tfm* %8)
  %10 = call %struct.crypto_aes_ctx* @aes_ctx(i32 %9)
  store %struct.crypto_aes_ctx* %10, %struct.crypto_aes_ctx** %7, align 8
  %11 = call i32 (...) @crypto_simd_usable()
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %3
  %14 = load %struct.crypto_aes_ctx*, %struct.crypto_aes_ctx** %7, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @aes_encrypt(%struct.crypto_aes_ctx* %14, i32* %15, i32* %16)
  br label %25

18:                                               ; preds = %3
  %19 = call i32 (...) @kernel_fpu_begin()
  %20 = load %struct.crypto_aes_ctx*, %struct.crypto_aes_ctx** %7, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @aesni_enc(%struct.crypto_aes_ctx* %20, i32* %21, i32* %22)
  %24 = call i32 (...) @kernel_fpu_end()
  br label %25

25:                                               ; preds = %18, %13
  ret void
}

declare dso_local %struct.crypto_aes_ctx* @aes_ctx(i32) #1

declare dso_local i32 @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i32 @crypto_simd_usable(...) #1

declare dso_local i32 @aes_encrypt(%struct.crypto_aes_ctx*, i32*, i32*) #1

declare dso_local i32 @kernel_fpu_begin(...) #1

declare dso_local i32 @aesni_enc(%struct.crypto_aes_ctx*, i32*, i32*) #1

declare dso_local i32 @kernel_fpu_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
