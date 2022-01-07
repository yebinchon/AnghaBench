; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_essiv.c_essiv_skcipher_exit_tfm.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_essiv.c_essiv_skcipher_exit_tfm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_skcipher = type { i32 }
%struct.essiv_tfm_ctx = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_skcipher*)* @essiv_skcipher_exit_tfm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @essiv_skcipher_exit_tfm(%struct.crypto_skcipher* %0) #0 {
  %2 = alloca %struct.crypto_skcipher*, align 8
  %3 = alloca %struct.essiv_tfm_ctx*, align 8
  store %struct.crypto_skcipher* %0, %struct.crypto_skcipher** %2, align 8
  %4 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %2, align 8
  %5 = call %struct.essiv_tfm_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher* %4)
  store %struct.essiv_tfm_ctx* %5, %struct.essiv_tfm_ctx** %3, align 8
  %6 = load %struct.essiv_tfm_ctx*, %struct.essiv_tfm_ctx** %3, align 8
  %7 = getelementptr inbounds %struct.essiv_tfm_ctx, %struct.essiv_tfm_ctx* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @crypto_free_skcipher(i32 %9)
  %11 = load %struct.essiv_tfm_ctx*, %struct.essiv_tfm_ctx** %3, align 8
  %12 = getelementptr inbounds %struct.essiv_tfm_ctx, %struct.essiv_tfm_ctx* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @crypto_free_cipher(i32 %13)
  %15 = load %struct.essiv_tfm_ctx*, %struct.essiv_tfm_ctx** %3, align 8
  %16 = getelementptr inbounds %struct.essiv_tfm_ctx, %struct.essiv_tfm_ctx* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @crypto_free_shash(i32 %17)
  ret void
}

declare dso_local %struct.essiv_tfm_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher*) #1

declare dso_local i32 @crypto_free_skcipher(i32) #1

declare dso_local i32 @crypto_free_cipher(i32) #1

declare dso_local i32 @crypto_free_shash(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
