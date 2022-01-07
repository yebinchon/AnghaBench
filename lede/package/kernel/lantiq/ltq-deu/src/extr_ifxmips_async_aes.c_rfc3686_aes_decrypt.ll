; ModuleID = '/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-deu/src/extr_ifxmips_async_aes.c_rfc3686_aes_decrypt.c'
source_filename = "/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-deu/src/extr_ifxmips_async_aes.c_rfc3686_aes_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ablkcipher_request = type { i32* }
%struct.crypto_ablkcipher = type { i32 }
%struct.aes_ctx = type { i32* }

@CTR_RFC3686_NONCE_SIZE = common dso_local global i32 0, align 4
@CTR_RFC3686_IV_SIZE = common dso_local global i32 0, align 4
@CRYPTO_DIR_DECRYPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ablkcipher_request*)* @rfc3686_aes_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rfc3686_aes_decrypt(%struct.ablkcipher_request* %0) #0 {
  %2 = alloca %struct.ablkcipher_request*, align 8
  %3 = alloca %struct.crypto_ablkcipher*, align 8
  %4 = alloca %struct.aes_ctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca [16 x i32], align 16
  store %struct.ablkcipher_request* %0, %struct.ablkcipher_request** %2, align 8
  %8 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %2, align 8
  %9 = call %struct.crypto_ablkcipher* @crypto_ablkcipher_reqtfm(%struct.ablkcipher_request* %8)
  store %struct.crypto_ablkcipher* %9, %struct.crypto_ablkcipher** %3, align 8
  %10 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %3, align 8
  %11 = call %struct.aes_ctx* @crypto_ablkcipher_ctx(%struct.crypto_ablkcipher* %10)
  store %struct.aes_ctx* %11, %struct.aes_ctx** %4, align 8
  %12 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %2, align 8
  %13 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %6, align 8
  %15 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0
  %16 = load %struct.aes_ctx*, %struct.aes_ctx** %4, align 8
  %17 = getelementptr inbounds %struct.aes_ctx, %struct.aes_ctx* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* @CTR_RFC3686_NONCE_SIZE, align 4
  %20 = call i32 @memcpy(i32* %15, i32* %18, i32 %19)
  %21 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0
  %22 = load i32, i32* @CTR_RFC3686_NONCE_SIZE, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* @CTR_RFC3686_IV_SIZE, align 4
  %27 = call i32 @memcpy(i32* %24, i32* %25, i32 %26)
  %28 = call i32 @cpu_to_be32(i32 1)
  %29 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0
  %30 = load i32, i32* @CTR_RFC3686_NONCE_SIZE, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* @CTR_RFC3686_IV_SIZE, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  store i32 %28, i32* %35, align 4
  %36 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0
  %37 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %2, align 8
  %38 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %37, i32 0, i32 0
  store i32* %36, i32** %38, align 8
  %39 = load %struct.aes_ctx*, %struct.aes_ctx** %4, align 8
  %40 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %2, align 8
  %41 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %2, align 8
  %42 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* @CRYPTO_DIR_DECRYPT, align 4
  %45 = call i32 @lq_aes_queue_mgr(%struct.aes_ctx* %39, %struct.ablkcipher_request* %40, i32* %43, i32 %44, i32 4)
  store i32 %45, i32* %5, align 4
  %46 = load i32*, i32** %6, align 8
  %47 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %2, align 8
  %48 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %47, i32 0, i32 0
  store i32* %46, i32** %48, align 8
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local %struct.crypto_ablkcipher* @crypto_ablkcipher_reqtfm(%struct.ablkcipher_request*) #1

declare dso_local %struct.aes_ctx* @crypto_ablkcipher_ctx(%struct.crypto_ablkcipher*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @lq_aes_queue_mgr(%struct.aes_ctx*, %struct.ablkcipher_request*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
