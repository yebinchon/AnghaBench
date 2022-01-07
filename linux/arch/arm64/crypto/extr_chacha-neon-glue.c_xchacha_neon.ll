; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/crypto/extr_chacha-neon-glue.c_xchacha_neon.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/crypto/extr_chacha-neon-glue.c_xchacha_neon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_request = type { i64, i64 }
%struct.crypto_skcipher = type { i32 }
%struct.chacha_ctx = type { i32, i32 }

@CHACHA_BLOCK_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skcipher_request*)* @xchacha_neon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xchacha_neon(%struct.skcipher_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.skcipher_request*, align 8
  %4 = alloca %struct.crypto_skcipher*, align 8
  %5 = alloca %struct.chacha_ctx*, align 8
  %6 = alloca %struct.chacha_ctx, align 4
  %7 = alloca [16 x i32], align 16
  %8 = alloca [16 x i32], align 16
  store %struct.skcipher_request* %0, %struct.skcipher_request** %3, align 8
  %9 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %10 = call %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request* %9)
  store %struct.crypto_skcipher* %10, %struct.crypto_skcipher** %4, align 8
  %11 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %4, align 8
  %12 = call %struct.chacha_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher* %11)
  store %struct.chacha_ctx* %12, %struct.chacha_ctx** %5, align 8
  %13 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %14 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @CHACHA_BLOCK_SIZE, align 8
  %17 = icmp sle i64 %15, %16
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = call i32 (...) @crypto_simd_usable()
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18, %1
  %22 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %23 = call i32 @crypto_xchacha_crypt(%struct.skcipher_request* %22)
  store i32 %23, i32* %2, align 4
  br label %59

24:                                               ; preds = %18
  %25 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0
  %26 = load %struct.chacha_ctx*, %struct.chacha_ctx** %5, align 8
  %27 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %28 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @crypto_chacha_init(i32* %25, %struct.chacha_ctx* %26, i64 %29)
  %31 = call i32 (...) @kernel_neon_begin()
  %32 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0
  %33 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %6, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.chacha_ctx*, %struct.chacha_ctx** %5, align 8
  %36 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @hchacha_block_neon(i32* %32, i32 %34, i32 %37)
  %39 = call i32 (...) @kernel_neon_end()
  %40 = load %struct.chacha_ctx*, %struct.chacha_ctx** %5, align 8
  %41 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %6, i32 0, i32 0
  store i32 %42, i32* %43, align 4
  %44 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %45 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %46 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 24
  %49 = call i32 @memcpy(i32* %44, i64 %48, i32 8)
  %50 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 8
  %51 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %52 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, 16
  %55 = call i32 @memcpy(i32* %50, i64 %54, i32 8)
  %56 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %57 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %58 = call i32 @chacha_neon_stream_xor(%struct.skcipher_request* %56, %struct.chacha_ctx* %6, i32* %57)
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %24, %21
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request*) #1

declare dso_local %struct.chacha_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher*) #1

declare dso_local i32 @crypto_simd_usable(...) #1

declare dso_local i32 @crypto_xchacha_crypt(%struct.skcipher_request*) #1

declare dso_local i32 @crypto_chacha_init(i32*, %struct.chacha_ctx*, i64) #1

declare dso_local i32 @kernel_neon_begin(...) #1

declare dso_local i32 @hchacha_block_neon(i32*, i32, i32) #1

declare dso_local i32 @kernel_neon_end(...) #1

declare dso_local i32 @memcpy(i32*, i64, i32) #1

declare dso_local i32 @chacha_neon_stream_xor(%struct.skcipher_request*, %struct.chacha_ctx*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
