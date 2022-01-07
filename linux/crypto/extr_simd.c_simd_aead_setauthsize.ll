; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_simd.c_simd_aead_setauthsize.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_simd.c_simd_aead_setauthsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aead = type { i32 }
%struct.simd_aead_ctx = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.crypto_aead }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_aead*, i32)* @simd_aead_setauthsize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @simd_aead_setauthsize(%struct.crypto_aead* %0, i32 %1) #0 {
  %3 = alloca %struct.crypto_aead*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.simd_aead_ctx*, align 8
  %6 = alloca %struct.crypto_aead*, align 8
  store %struct.crypto_aead* %0, %struct.crypto_aead** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.crypto_aead*, %struct.crypto_aead** %3, align 8
  %8 = call %struct.simd_aead_ctx* @crypto_aead_ctx(%struct.crypto_aead* %7)
  store %struct.simd_aead_ctx* %8, %struct.simd_aead_ctx** %5, align 8
  %9 = load %struct.simd_aead_ctx*, %struct.simd_aead_ctx** %5, align 8
  %10 = getelementptr inbounds %struct.simd_aead_ctx, %struct.simd_aead_ctx* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.crypto_aead* %12, %struct.crypto_aead** %6, align 8
  %13 = load %struct.crypto_aead*, %struct.crypto_aead** %6, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @crypto_aead_setauthsize(%struct.crypto_aead* %13, i32 %14)
  ret i32 %15
}

declare dso_local %struct.simd_aead_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local i32 @crypto_aead_setauthsize(%struct.crypto_aead*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
