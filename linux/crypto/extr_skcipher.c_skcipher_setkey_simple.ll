; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_skcipher.c_skcipher_setkey_simple.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_skcipher.c_skcipher_setkey_simple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_skcipher = type { i32 }
%struct.crypto_cipher = type { i32 }

@CRYPTO_TFM_REQ_MASK = common dso_local global i32 0, align 4
@CRYPTO_TFM_RES_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_skcipher*, i32*, i32)* @skcipher_setkey_simple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skcipher_setkey_simple(%struct.crypto_skcipher* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.crypto_skcipher*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.crypto_cipher*, align 8
  %8 = alloca i32, align 4
  store %struct.crypto_skcipher* %0, %struct.crypto_skcipher** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %4, align 8
  %10 = call %struct.crypto_cipher* @skcipher_cipher_simple(%struct.crypto_skcipher* %9)
  store %struct.crypto_cipher* %10, %struct.crypto_cipher** %7, align 8
  %11 = load %struct.crypto_cipher*, %struct.crypto_cipher** %7, align 8
  %12 = load i32, i32* @CRYPTO_TFM_REQ_MASK, align 4
  %13 = call i32 @crypto_cipher_clear_flags(%struct.crypto_cipher* %11, i32 %12)
  %14 = load %struct.crypto_cipher*, %struct.crypto_cipher** %7, align 8
  %15 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %4, align 8
  %16 = call i32 @crypto_skcipher_get_flags(%struct.crypto_skcipher* %15)
  %17 = load i32, i32* @CRYPTO_TFM_REQ_MASK, align 4
  %18 = and i32 %16, %17
  %19 = call i32 @crypto_cipher_set_flags(%struct.crypto_cipher* %14, i32 %18)
  %20 = load %struct.crypto_cipher*, %struct.crypto_cipher** %7, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @crypto_cipher_setkey(%struct.crypto_cipher* %20, i32* %21, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %4, align 8
  %25 = load %struct.crypto_cipher*, %struct.crypto_cipher** %7, align 8
  %26 = call i32 @crypto_cipher_get_flags(%struct.crypto_cipher* %25)
  %27 = load i32, i32* @CRYPTO_TFM_RES_MASK, align 4
  %28 = and i32 %26, %27
  %29 = call i32 @crypto_skcipher_set_flags(%struct.crypto_skcipher* %24, i32 %28)
  %30 = load i32, i32* %8, align 4
  ret i32 %30
}

declare dso_local %struct.crypto_cipher* @skcipher_cipher_simple(%struct.crypto_skcipher*) #1

declare dso_local i32 @crypto_cipher_clear_flags(%struct.crypto_cipher*, i32) #1

declare dso_local i32 @crypto_cipher_set_flags(%struct.crypto_cipher*, i32) #1

declare dso_local i32 @crypto_skcipher_get_flags(%struct.crypto_skcipher*) #1

declare dso_local i32 @crypto_cipher_setkey(%struct.crypto_cipher*, i32*, i32) #1

declare dso_local i32 @crypto_skcipher_set_flags(%struct.crypto_skcipher*, i32) #1

declare dso_local i32 @crypto_cipher_get_flags(%struct.crypto_cipher*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
