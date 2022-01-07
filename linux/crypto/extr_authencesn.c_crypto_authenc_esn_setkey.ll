; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_authencesn.c_crypto_authenc_esn_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_authencesn.c_crypto_authenc_esn_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aead = type { i32 }
%struct.crypto_authenc_esn_ctx = type { %struct.crypto_skcipher*, %struct.crypto_ahash* }
%struct.crypto_skcipher = type { i32 }
%struct.crypto_ahash = type { i32 }
%struct.crypto_authenc_keys = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MASK = common dso_local global i32 0, align 4
@CRYPTO_TFM_RES_MASK = common dso_local global i32 0, align 4
@CRYPTO_TFM_RES_BAD_KEY_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_aead*, i32*, i32)* @crypto_authenc_esn_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_authenc_esn_setkey(%struct.crypto_aead* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.crypto_aead*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.crypto_authenc_esn_ctx*, align 8
  %8 = alloca %struct.crypto_ahash*, align 8
  %9 = alloca %struct.crypto_skcipher*, align 8
  %10 = alloca %struct.crypto_authenc_keys, align 4
  %11 = alloca i32, align 4
  store %struct.crypto_aead* %0, %struct.crypto_aead** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %13 = call %struct.crypto_authenc_esn_ctx* @crypto_aead_ctx(%struct.crypto_aead* %12)
  store %struct.crypto_authenc_esn_ctx* %13, %struct.crypto_authenc_esn_ctx** %7, align 8
  %14 = load %struct.crypto_authenc_esn_ctx*, %struct.crypto_authenc_esn_ctx** %7, align 8
  %15 = getelementptr inbounds %struct.crypto_authenc_esn_ctx, %struct.crypto_authenc_esn_ctx* %14, i32 0, i32 1
  %16 = load %struct.crypto_ahash*, %struct.crypto_ahash** %15, align 8
  store %struct.crypto_ahash* %16, %struct.crypto_ahash** %8, align 8
  %17 = load %struct.crypto_authenc_esn_ctx*, %struct.crypto_authenc_esn_ctx** %7, align 8
  %18 = getelementptr inbounds %struct.crypto_authenc_esn_ctx, %struct.crypto_authenc_esn_ctx* %17, i32 0, i32 0
  %19 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %18, align 8
  store %struct.crypto_skcipher* %19, %struct.crypto_skcipher** %9, align 8
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %11, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i64 @crypto_authenc_extractkeys(%struct.crypto_authenc_keys* %10, i32* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  br label %77

27:                                               ; preds = %3
  %28 = load %struct.crypto_ahash*, %struct.crypto_ahash** %8, align 8
  %29 = load i32, i32* @CRYPTO_TFM_REQ_MASK, align 4
  %30 = call i32 @crypto_ahash_clear_flags(%struct.crypto_ahash* %28, i32 %29)
  %31 = load %struct.crypto_ahash*, %struct.crypto_ahash** %8, align 8
  %32 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %33 = call i32 @crypto_aead_get_flags(%struct.crypto_aead* %32)
  %34 = load i32, i32* @CRYPTO_TFM_REQ_MASK, align 4
  %35 = and i32 %33, %34
  %36 = call i32 @crypto_ahash_set_flags(%struct.crypto_ahash* %31, i32 %35)
  %37 = load %struct.crypto_ahash*, %struct.crypto_ahash** %8, align 8
  %38 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %10, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %10, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @crypto_ahash_setkey(%struct.crypto_ahash* %37, i32 %39, i32 %41)
  store i32 %42, i32* %11, align 4
  %43 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %44 = load %struct.crypto_ahash*, %struct.crypto_ahash** %8, align 8
  %45 = call i32 @crypto_ahash_get_flags(%struct.crypto_ahash* %44)
  %46 = load i32, i32* @CRYPTO_TFM_RES_MASK, align 4
  %47 = and i32 %45, %46
  %48 = call i32 @crypto_aead_set_flags(%struct.crypto_aead* %43, i32 %47)
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %27
  br label %74

52:                                               ; preds = %27
  %53 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %9, align 8
  %54 = load i32, i32* @CRYPTO_TFM_REQ_MASK, align 4
  %55 = call i32 @crypto_skcipher_clear_flags(%struct.crypto_skcipher* %53, i32 %54)
  %56 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %9, align 8
  %57 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %58 = call i32 @crypto_aead_get_flags(%struct.crypto_aead* %57)
  %59 = load i32, i32* @CRYPTO_TFM_REQ_MASK, align 4
  %60 = and i32 %58, %59
  %61 = call i32 @crypto_skcipher_set_flags(%struct.crypto_skcipher* %56, i32 %60)
  %62 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %9, align 8
  %63 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %10, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %10, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @crypto_skcipher_setkey(%struct.crypto_skcipher* %62, i32 %64, i32 %66)
  store i32 %67, i32* %11, align 4
  %68 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %69 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %9, align 8
  %70 = call i32 @crypto_skcipher_get_flags(%struct.crypto_skcipher* %69)
  %71 = load i32, i32* @CRYPTO_TFM_RES_MASK, align 4
  %72 = and i32 %70, %71
  %73 = call i32 @crypto_aead_set_flags(%struct.crypto_aead* %68, i32 %72)
  br label %74

74:                                               ; preds = %77, %52, %51
  %75 = call i32 @memzero_explicit(%struct.crypto_authenc_keys* %10, i32 16)
  %76 = load i32, i32* %11, align 4
  ret i32 %76

77:                                               ; preds = %26
  %78 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %79 = load i32, i32* @CRYPTO_TFM_RES_BAD_KEY_LEN, align 4
  %80 = call i32 @crypto_aead_set_flags(%struct.crypto_aead* %78, i32 %79)
  br label %74
}

declare dso_local %struct.crypto_authenc_esn_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local i64 @crypto_authenc_extractkeys(%struct.crypto_authenc_keys*, i32*, i32) #1

declare dso_local i32 @crypto_ahash_clear_flags(%struct.crypto_ahash*, i32) #1

declare dso_local i32 @crypto_ahash_set_flags(%struct.crypto_ahash*, i32) #1

declare dso_local i32 @crypto_aead_get_flags(%struct.crypto_aead*) #1

declare dso_local i32 @crypto_ahash_setkey(%struct.crypto_ahash*, i32, i32) #1

declare dso_local i32 @crypto_aead_set_flags(%struct.crypto_aead*, i32) #1

declare dso_local i32 @crypto_ahash_get_flags(%struct.crypto_ahash*) #1

declare dso_local i32 @crypto_skcipher_clear_flags(%struct.crypto_skcipher*, i32) #1

declare dso_local i32 @crypto_skcipher_set_flags(%struct.crypto_skcipher*, i32) #1

declare dso_local i32 @crypto_skcipher_setkey(%struct.crypto_skcipher*, i32, i32) #1

declare dso_local i32 @crypto_skcipher_get_flags(%struct.crypto_skcipher*) #1

declare dso_local i32 @memzero_explicit(%struct.crypto_authenc_keys*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
