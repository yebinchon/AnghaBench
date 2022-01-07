; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/crypto/extr_chacha-neon-glue.c_chacha_neon.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/crypto/extr_chacha-neon-glue.c_chacha_neon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_request = type { i64, i32 }
%struct.crypto_skcipher = type { i32 }
%struct.chacha_ctx = type { i32 }

@CHACHA_BLOCK_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skcipher_request*)* @chacha_neon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chacha_neon(%struct.skcipher_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.skcipher_request*, align 8
  %4 = alloca %struct.crypto_skcipher*, align 8
  %5 = alloca %struct.chacha_ctx*, align 8
  store %struct.skcipher_request* %0, %struct.skcipher_request** %3, align 8
  %6 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %7 = call %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request* %6)
  store %struct.crypto_skcipher* %7, %struct.crypto_skcipher** %4, align 8
  %8 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %4, align 8
  %9 = call %struct.chacha_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher* %8)
  store %struct.chacha_ctx* %9, %struct.chacha_ctx** %5, align 8
  %10 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %11 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @CHACHA_BLOCK_SIZE, align 8
  %14 = icmp sle i64 %12, %13
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = call i32 (...) @crypto_simd_usable()
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15, %1
  %19 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %20 = call i32 @crypto_chacha_crypt(%struct.skcipher_request* %19)
  store i32 %20, i32* %2, align 4
  br label %28

21:                                               ; preds = %15
  %22 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %23 = load %struct.chacha_ctx*, %struct.chacha_ctx** %5, align 8
  %24 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %25 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @chacha_neon_stream_xor(%struct.skcipher_request* %22, %struct.chacha_ctx* %23, i32 %26)
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %21, %18
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request*) #1

declare dso_local %struct.chacha_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher*) #1

declare dso_local i32 @crypto_simd_usable(...) #1

declare dso_local i32 @crypto_chacha_crypt(%struct.skcipher_request*) #1

declare dso_local i32 @chacha_neon_stream_xor(%struct.skcipher_request*, %struct.chacha_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
