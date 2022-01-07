; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_essiv.c_essiv_skcipher_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_essiv.c_essiv_skcipher_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.crypto_skcipher = type { i32 }
%struct.essiv_tfm_ctx = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.crypto_skcipher* }

@desc = common dso_local global %struct.TYPE_6__* null, align 8
@HASH_MAX_DIGESTSIZE = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MASK = common dso_local global i32 0, align 4
@CRYPTO_TFM_RES_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_skcipher*, i32*, i32)* @essiv_skcipher_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @essiv_skcipher_setkey(%struct.crypto_skcipher* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_skcipher*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.essiv_tfm_ctx*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.crypto_skcipher* %0, %struct.crypto_skcipher** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %14 = call %struct.essiv_tfm_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher* %13)
  store %struct.essiv_tfm_ctx* %14, %struct.essiv_tfm_ctx** %8, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** @desc, align 8
  %16 = load %struct.essiv_tfm_ctx*, %struct.essiv_tfm_ctx** %8, align 8
  %17 = getelementptr inbounds %struct.essiv_tfm_ctx, %struct.essiv_tfm_ctx* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @SHASH_DESC_ON_STACK(%struct.TYPE_6__* %15, i32 %18)
  %20 = load i32, i32* @HASH_MAX_DIGESTSIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %9, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %10, align 8
  %24 = load %struct.essiv_tfm_ctx*, %struct.essiv_tfm_ctx** %8, align 8
  %25 = getelementptr inbounds %struct.essiv_tfm_ctx, %struct.essiv_tfm_ctx* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %26, align 8
  %28 = load i32, i32* @CRYPTO_TFM_REQ_MASK, align 4
  %29 = call i32 @crypto_skcipher_clear_flags(%struct.crypto_skcipher* %27, i32 %28)
  %30 = load %struct.essiv_tfm_ctx*, %struct.essiv_tfm_ctx** %8, align 8
  %31 = getelementptr inbounds %struct.essiv_tfm_ctx, %struct.essiv_tfm_ctx* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %32, align 8
  %34 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %35 = call i32 @crypto_skcipher_get_flags(%struct.crypto_skcipher* %34)
  %36 = load i32, i32* @CRYPTO_TFM_REQ_MASK, align 4
  %37 = and i32 %35, %36
  %38 = call i32 @crypto_skcipher_set_flags(%struct.crypto_skcipher* %33, i32 %37)
  %39 = load %struct.essiv_tfm_ctx*, %struct.essiv_tfm_ctx** %8, align 8
  %40 = getelementptr inbounds %struct.essiv_tfm_ctx, %struct.essiv_tfm_ctx* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %41, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @crypto_skcipher_setkey(%struct.crypto_skcipher* %42, i32* %43, i32 %44)
  store i32 %45, i32* %11, align 4
  %46 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %47 = load %struct.essiv_tfm_ctx*, %struct.essiv_tfm_ctx** %8, align 8
  %48 = getelementptr inbounds %struct.essiv_tfm_ctx, %struct.essiv_tfm_ctx* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %49, align 8
  %51 = call i32 @crypto_skcipher_get_flags(%struct.crypto_skcipher* %50)
  %52 = load i32, i32* @CRYPTO_TFM_RES_MASK, align 4
  %53 = and i32 %51, %52
  %54 = call i32 @crypto_skcipher_set_flags(%struct.crypto_skcipher* %46, i32 %53)
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %3
  %58 = load i32, i32* %11, align 4
  store i32 %58, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %104

59:                                               ; preds = %3
  %60 = load %struct.essiv_tfm_ctx*, %struct.essiv_tfm_ctx** %8, align 8
  %61 = getelementptr inbounds %struct.essiv_tfm_ctx, %struct.essiv_tfm_ctx* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** @desc, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** @desc, align 8
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @crypto_shash_digest(%struct.TYPE_6__* %65, i32* %66, i32 %67, i32* %23)
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %59
  %72 = load i32, i32* %11, align 4
  store i32 %72, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %104

73:                                               ; preds = %59
  %74 = load %struct.essiv_tfm_ctx*, %struct.essiv_tfm_ctx** %8, align 8
  %75 = getelementptr inbounds %struct.essiv_tfm_ctx, %struct.essiv_tfm_ctx* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @CRYPTO_TFM_REQ_MASK, align 4
  %78 = call i32 @crypto_cipher_clear_flags(i32 %76, i32 %77)
  %79 = load %struct.essiv_tfm_ctx*, %struct.essiv_tfm_ctx** %8, align 8
  %80 = getelementptr inbounds %struct.essiv_tfm_ctx, %struct.essiv_tfm_ctx* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %83 = call i32 @crypto_skcipher_get_flags(%struct.crypto_skcipher* %82)
  %84 = load i32, i32* @CRYPTO_TFM_REQ_MASK, align 4
  %85 = and i32 %83, %84
  %86 = call i32 @crypto_cipher_set_flags(i32 %81, i32 %85)
  %87 = load %struct.essiv_tfm_ctx*, %struct.essiv_tfm_ctx** %8, align 8
  %88 = getelementptr inbounds %struct.essiv_tfm_ctx, %struct.essiv_tfm_ctx* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.essiv_tfm_ctx*, %struct.essiv_tfm_ctx** %8, align 8
  %91 = getelementptr inbounds %struct.essiv_tfm_ctx, %struct.essiv_tfm_ctx* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @crypto_shash_digestsize(i32 %92)
  %94 = call i32 @crypto_cipher_setkey(i32 %89, i32* %23, i32 %93)
  store i32 %94, i32* %11, align 4
  %95 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %96 = load %struct.essiv_tfm_ctx*, %struct.essiv_tfm_ctx** %8, align 8
  %97 = getelementptr inbounds %struct.essiv_tfm_ctx, %struct.essiv_tfm_ctx* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @crypto_cipher_get_flags(i32 %98)
  %100 = load i32, i32* @CRYPTO_TFM_RES_MASK, align 4
  %101 = and i32 %99, %100
  %102 = call i32 @crypto_skcipher_set_flags(%struct.crypto_skcipher* %95, i32 %101)
  %103 = load i32, i32* %11, align 4
  store i32 %103, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %104

104:                                              ; preds = %73, %71, %57
  %105 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %105)
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local %struct.essiv_tfm_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher*) #1

declare dso_local i32 @SHASH_DESC_ON_STACK(%struct.TYPE_6__*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @crypto_skcipher_clear_flags(%struct.crypto_skcipher*, i32) #1

declare dso_local i32 @crypto_skcipher_set_flags(%struct.crypto_skcipher*, i32) #1

declare dso_local i32 @crypto_skcipher_get_flags(%struct.crypto_skcipher*) #1

declare dso_local i32 @crypto_skcipher_setkey(%struct.crypto_skcipher*, i32*, i32) #1

declare dso_local i32 @crypto_shash_digest(%struct.TYPE_6__*, i32*, i32, i32*) #1

declare dso_local i32 @crypto_cipher_clear_flags(i32, i32) #1

declare dso_local i32 @crypto_cipher_set_flags(i32, i32) #1

declare dso_local i32 @crypto_cipher_setkey(i32, i32*, i32) #1

declare dso_local i32 @crypto_shash_digestsize(i32) #1

declare dso_local i32 @crypto_cipher_get_flags(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
