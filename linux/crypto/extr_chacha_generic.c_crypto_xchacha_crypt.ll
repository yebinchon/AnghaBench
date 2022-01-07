; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_chacha_generic.c_crypto_xchacha_crypt.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_chacha_generic.c_crypto_xchacha_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_request = type { i64 }
%struct.crypto_skcipher = type { i32 }
%struct.chacha_ctx = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_xchacha_crypt(%struct.skcipher_request* %0) #0 {
  %2 = alloca %struct.skcipher_request*, align 8
  %3 = alloca %struct.crypto_skcipher*, align 8
  %4 = alloca %struct.chacha_ctx*, align 8
  %5 = alloca %struct.chacha_ctx, align 4
  %6 = alloca [16 x i32], align 16
  %7 = alloca [16 x i32], align 16
  store %struct.skcipher_request* %0, %struct.skcipher_request** %2, align 8
  %8 = load %struct.skcipher_request*, %struct.skcipher_request** %2, align 8
  %9 = call %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request* %8)
  store %struct.crypto_skcipher* %9, %struct.crypto_skcipher** %3, align 8
  %10 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %3, align 8
  %11 = call %struct.chacha_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher* %10)
  store %struct.chacha_ctx* %11, %struct.chacha_ctx** %4, align 8
  %12 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %13 = load %struct.chacha_ctx*, %struct.chacha_ctx** %4, align 8
  %14 = load %struct.skcipher_request*, %struct.skcipher_request** %2, align 8
  %15 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @crypto_chacha_init(i32* %12, %struct.chacha_ctx* %13, i64 %16)
  %18 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %19 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %5, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.chacha_ctx*, %struct.chacha_ctx** %4, align 8
  %22 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @hchacha_block(i32* %18, i32 %20, i32 %23)
  %25 = load %struct.chacha_ctx*, %struct.chacha_ctx** %4, align 8
  %26 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %5, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0
  %30 = load %struct.skcipher_request*, %struct.skcipher_request** %2, align 8
  %31 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, 24
  %34 = call i32 @memcpy(i32* %29, i64 %33, i32 8)
  %35 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 8
  %36 = load %struct.skcipher_request*, %struct.skcipher_request** %2, align 8
  %37 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, 16
  %40 = call i32 @memcpy(i32* %35, i64 %39, i32 8)
  %41 = load %struct.skcipher_request*, %struct.skcipher_request** %2, align 8
  %42 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0
  %43 = call i32 @chacha_stream_xor(%struct.skcipher_request* %41, %struct.chacha_ctx* %5, i32* %42)
  ret i32 %43
}

declare dso_local %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request*) #1

declare dso_local %struct.chacha_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher*) #1

declare dso_local i32 @crypto_chacha_init(i32*, %struct.chacha_ctx*, i64) #1

declare dso_local i32 @hchacha_block(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i64, i32) #1

declare dso_local i32 @chacha_stream_xor(%struct.skcipher_request*, %struct.chacha_ctx*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
