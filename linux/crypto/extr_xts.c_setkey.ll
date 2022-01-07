; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_xts.c_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_xts.c_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_skcipher = type { i32 }
%struct.priv = type { %struct.crypto_skcipher*, %struct.crypto_cipher* }
%struct.crypto_cipher = type { i32 }

@CRYPTO_TFM_REQ_MASK = common dso_local global i32 0, align 4
@CRYPTO_TFM_RES_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_skcipher*, i32*, i32)* @setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setkey(%struct.crypto_skcipher* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_skcipher*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.priv*, align 8
  %9 = alloca %struct.crypto_skcipher*, align 8
  %10 = alloca %struct.crypto_cipher*, align 8
  %11 = alloca i32, align 4
  store %struct.crypto_skcipher* %0, %struct.crypto_skcipher** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %13 = call %struct.priv* @crypto_skcipher_ctx(%struct.crypto_skcipher* %12)
  store %struct.priv* %13, %struct.priv** %8, align 8
  %14 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @xts_verify_key(%struct.crypto_skcipher* %14, i32* %15, i32 %16)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %11, align 4
  store i32 %21, i32* %4, align 4
  br label %78

22:                                               ; preds = %3
  %23 = load i32, i32* %7, align 4
  %24 = udiv i32 %23, 2
  store i32 %24, i32* %7, align 4
  %25 = load %struct.priv*, %struct.priv** %8, align 8
  %26 = getelementptr inbounds %struct.priv, %struct.priv* %25, i32 0, i32 1
  %27 = load %struct.crypto_cipher*, %struct.crypto_cipher** %26, align 8
  store %struct.crypto_cipher* %27, %struct.crypto_cipher** %10, align 8
  %28 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %29 = load i32, i32* @CRYPTO_TFM_REQ_MASK, align 4
  %30 = call i32 @crypto_cipher_clear_flags(%struct.crypto_cipher* %28, i32 %29)
  %31 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %32 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %33 = call i32 @crypto_skcipher_get_flags(%struct.crypto_skcipher* %32)
  %34 = load i32, i32* @CRYPTO_TFM_REQ_MASK, align 4
  %35 = and i32 %33, %34
  %36 = call i32 @crypto_cipher_set_flags(%struct.crypto_cipher* %31, i32 %35)
  %37 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @crypto_cipher_setkey(%struct.crypto_cipher* %37, i32* %41, i32 %42)
  store i32 %43, i32* %11, align 4
  %44 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %45 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %46 = call i32 @crypto_cipher_get_flags(%struct.crypto_cipher* %45)
  %47 = load i32, i32* @CRYPTO_TFM_RES_MASK, align 4
  %48 = and i32 %46, %47
  %49 = call i32 @crypto_skcipher_set_flags(%struct.crypto_skcipher* %44, i32 %48)
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %22
  %53 = load i32, i32* %11, align 4
  store i32 %53, i32* %4, align 4
  br label %78

54:                                               ; preds = %22
  %55 = load %struct.priv*, %struct.priv** %8, align 8
  %56 = getelementptr inbounds %struct.priv, %struct.priv* %55, i32 0, i32 0
  %57 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %56, align 8
  store %struct.crypto_skcipher* %57, %struct.crypto_skcipher** %9, align 8
  %58 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %9, align 8
  %59 = load i32, i32* @CRYPTO_TFM_REQ_MASK, align 4
  %60 = call i32 @crypto_skcipher_clear_flags(%struct.crypto_skcipher* %58, i32 %59)
  %61 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %9, align 8
  %62 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %63 = call i32 @crypto_skcipher_get_flags(%struct.crypto_skcipher* %62)
  %64 = load i32, i32* @CRYPTO_TFM_REQ_MASK, align 4
  %65 = and i32 %63, %64
  %66 = call i32 @crypto_skcipher_set_flags(%struct.crypto_skcipher* %61, i32 %65)
  %67 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %9, align 8
  %68 = load i32*, i32** %6, align 8
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @crypto_skcipher_setkey(%struct.crypto_skcipher* %67, i32* %68, i32 %69)
  store i32 %70, i32* %11, align 4
  %71 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %72 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %9, align 8
  %73 = call i32 @crypto_skcipher_get_flags(%struct.crypto_skcipher* %72)
  %74 = load i32, i32* @CRYPTO_TFM_RES_MASK, align 4
  %75 = and i32 %73, %74
  %76 = call i32 @crypto_skcipher_set_flags(%struct.crypto_skcipher* %71, i32 %75)
  %77 = load i32, i32* %11, align 4
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %54, %52, %20
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local %struct.priv* @crypto_skcipher_ctx(%struct.crypto_skcipher*) #1

declare dso_local i32 @xts_verify_key(%struct.crypto_skcipher*, i32*, i32) #1

declare dso_local i32 @crypto_cipher_clear_flags(%struct.crypto_cipher*, i32) #1

declare dso_local i32 @crypto_cipher_set_flags(%struct.crypto_cipher*, i32) #1

declare dso_local i32 @crypto_skcipher_get_flags(%struct.crypto_skcipher*) #1

declare dso_local i32 @crypto_cipher_setkey(%struct.crypto_cipher*, i32*, i32) #1

declare dso_local i32 @crypto_skcipher_set_flags(%struct.crypto_skcipher*, i32) #1

declare dso_local i32 @crypto_cipher_get_flags(%struct.crypto_cipher*) #1

declare dso_local i32 @crypto_skcipher_clear_flags(%struct.crypto_skcipher*, i32) #1

declare dso_local i32 @crypto_skcipher_setkey(%struct.crypto_skcipher*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
