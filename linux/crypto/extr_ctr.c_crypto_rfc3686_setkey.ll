; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_ctr.c_crypto_rfc3686_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_ctr.c_crypto_rfc3686_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_skcipher = type { i32 }
%struct.crypto_rfc3686_ctx = type { i32, %struct.crypto_skcipher* }

@CTR_RFC3686_NONCE_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MASK = common dso_local global i32 0, align 4
@CRYPTO_TFM_RES_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_skcipher*, i32*, i32)* @crypto_rfc3686_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_rfc3686_setkey(%struct.crypto_skcipher* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_skcipher*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.crypto_rfc3686_ctx*, align 8
  %9 = alloca %struct.crypto_skcipher*, align 8
  %10 = alloca i32, align 4
  store %struct.crypto_skcipher* %0, %struct.crypto_skcipher** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %12 = call %struct.crypto_rfc3686_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher* %11)
  store %struct.crypto_rfc3686_ctx* %12, %struct.crypto_rfc3686_ctx** %8, align 8
  %13 = load %struct.crypto_rfc3686_ctx*, %struct.crypto_rfc3686_ctx** %8, align 8
  %14 = getelementptr inbounds %struct.crypto_rfc3686_ctx, %struct.crypto_rfc3686_ctx* %13, i32 0, i32 1
  %15 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %14, align 8
  store %struct.crypto_skcipher* %15, %struct.crypto_skcipher** %9, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @CTR_RFC3686_NONCE_SIZE, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %57

22:                                               ; preds = %3
  %23 = load %struct.crypto_rfc3686_ctx*, %struct.crypto_rfc3686_ctx** %8, align 8
  %24 = getelementptr inbounds %struct.crypto_rfc3686_ctx, %struct.crypto_rfc3686_ctx* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @CTR_RFC3686_NONCE_SIZE, align 4
  %29 = sub i32 %27, %28
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %26, i64 %30
  %32 = load i32, i32* @CTR_RFC3686_NONCE_SIZE, align 4
  %33 = call i32 @memcpy(i32 %25, i32* %31, i32 %32)
  %34 = load i32, i32* @CTR_RFC3686_NONCE_SIZE, align 4
  %35 = load i32, i32* %7, align 4
  %36 = sub i32 %35, %34
  store i32 %36, i32* %7, align 4
  %37 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %9, align 8
  %38 = load i32, i32* @CRYPTO_TFM_REQ_MASK, align 4
  %39 = call i32 @crypto_skcipher_clear_flags(%struct.crypto_skcipher* %37, i32 %38)
  %40 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %9, align 8
  %41 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %42 = call i32 @crypto_skcipher_get_flags(%struct.crypto_skcipher* %41)
  %43 = load i32, i32* @CRYPTO_TFM_REQ_MASK, align 4
  %44 = and i32 %42, %43
  %45 = call i32 @crypto_skcipher_set_flags(%struct.crypto_skcipher* %40, i32 %44)
  %46 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %9, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @crypto_skcipher_setkey(%struct.crypto_skcipher* %46, i32* %47, i32 %48)
  store i32 %49, i32* %10, align 4
  %50 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %51 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %9, align 8
  %52 = call i32 @crypto_skcipher_get_flags(%struct.crypto_skcipher* %51)
  %53 = load i32, i32* @CRYPTO_TFM_RES_MASK, align 4
  %54 = and i32 %52, %53
  %55 = call i32 @crypto_skcipher_set_flags(%struct.crypto_skcipher* %50, i32 %54)
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %22, %19
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local %struct.crypto_rfc3686_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @crypto_skcipher_clear_flags(%struct.crypto_skcipher*, i32) #1

declare dso_local i32 @crypto_skcipher_set_flags(%struct.crypto_skcipher*, i32) #1

declare dso_local i32 @crypto_skcipher_get_flags(%struct.crypto_skcipher*) #1

declare dso_local i32 @crypto_skcipher_setkey(%struct.crypto_skcipher*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
