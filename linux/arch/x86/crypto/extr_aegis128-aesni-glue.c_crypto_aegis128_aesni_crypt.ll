; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/crypto/extr_aegis128-aesni-glue.c_crypto_aegis128_aesni_crypt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/crypto/extr_aegis128-aesni-glue.c_crypto_aegis128_aesni_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32, i32, i32 }
%struct.aegis_block = type { i32 }
%struct.aegis_crypt_ops = type { i32 (%struct.skcipher_walk*, %struct.aead_request.0*, i32)* }
%struct.skcipher_walk = type { i32 }
%struct.aead_request.0 = type opaque
%struct.crypto_aead = type { i32 }
%struct.aegis_ctx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.aegis_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aead_request*, %struct.aegis_block*, i32, %struct.aegis_crypt_ops*)* @crypto_aegis128_aesni_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crypto_aegis128_aesni_crypt(%struct.aead_request* %0, %struct.aegis_block* %1, i32 %2, %struct.aegis_crypt_ops* %3) #0 {
  %5 = alloca %struct.aead_request*, align 8
  %6 = alloca %struct.aegis_block*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.aegis_crypt_ops*, align 8
  %9 = alloca %struct.crypto_aead*, align 8
  %10 = alloca %struct.aegis_ctx*, align 8
  %11 = alloca %struct.skcipher_walk, align 4
  %12 = alloca %struct.aegis_state, align 4
  store %struct.aead_request* %0, %struct.aead_request** %5, align 8
  store %struct.aegis_block* %1, %struct.aegis_block** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.aegis_crypt_ops* %3, %struct.aegis_crypt_ops** %8, align 8
  %13 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %14 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %13)
  store %struct.crypto_aead* %14, %struct.crypto_aead** %9, align 8
  %15 = load %struct.crypto_aead*, %struct.crypto_aead** %9, align 8
  %16 = call %struct.aegis_ctx* @crypto_aegis128_aesni_ctx(%struct.crypto_aead* %15)
  store %struct.aegis_ctx* %16, %struct.aegis_ctx** %10, align 8
  %17 = load %struct.aegis_crypt_ops*, %struct.aegis_crypt_ops** %8, align 8
  %18 = getelementptr inbounds %struct.aegis_crypt_ops, %struct.aegis_crypt_ops* %17, i32 0, i32 0
  %19 = load i32 (%struct.skcipher_walk*, %struct.aead_request.0*, i32)*, i32 (%struct.skcipher_walk*, %struct.aead_request.0*, i32)** %18, align 8
  %20 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %21 = bitcast %struct.aead_request* %20 to %struct.aead_request.0*
  %22 = call i32 %19(%struct.skcipher_walk* %11, %struct.aead_request.0* %21, i32 1)
  %23 = call i32 (...) @kernel_fpu_begin()
  %24 = load %struct.aegis_ctx*, %struct.aegis_ctx** %10, align 8
  %25 = getelementptr inbounds %struct.aegis_ctx, %struct.aegis_ctx* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %29 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @crypto_aegis128_aesni_init(%struct.aegis_state* %12, i32 %27, i32 %30)
  %32 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %33 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %36 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @crypto_aegis128_aesni_process_ad(%struct.aegis_state* %12, i32 %34, i32 %37)
  %39 = load %struct.aegis_crypt_ops*, %struct.aegis_crypt_ops** %8, align 8
  %40 = call i32 @crypto_aegis128_aesni_process_crypt(%struct.aegis_state* %12, %struct.skcipher_walk* %11, %struct.aegis_crypt_ops* %39)
  %41 = load %struct.aegis_block*, %struct.aegis_block** %6, align 8
  %42 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %43 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @crypto_aegis128_aesni_final(%struct.aegis_state* %12, %struct.aegis_block* %41, i32 %44, i32 %45)
  %47 = call i32 (...) @kernel_fpu_end()
  ret void
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.aegis_ctx* @crypto_aegis128_aesni_ctx(%struct.crypto_aead*) #1

declare dso_local i32 @kernel_fpu_begin(...) #1

declare dso_local i32 @crypto_aegis128_aesni_init(%struct.aegis_state*, i32, i32) #1

declare dso_local i32 @crypto_aegis128_aesni_process_ad(%struct.aegis_state*, i32, i32) #1

declare dso_local i32 @crypto_aegis128_aesni_process_crypt(%struct.aegis_state*, %struct.skcipher_walk*, %struct.aegis_crypt_ops*) #1

declare dso_local i32 @crypto_aegis128_aesni_final(%struct.aegis_state*, %struct.aegis_block*, i32, i32) #1

declare dso_local i32 @kernel_fpu_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
