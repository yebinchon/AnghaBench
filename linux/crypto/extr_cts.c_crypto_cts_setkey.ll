; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_cts.c_crypto_cts_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_cts.c_crypto_cts_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_skcipher = type { i32 }
%struct.crypto_cts_ctx = type { %struct.crypto_skcipher* }

@CRYPTO_TFM_REQ_MASK = common dso_local global i32 0, align 4
@CRYPTO_TFM_RES_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_skcipher*, i32*, i32)* @crypto_cts_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_cts_setkey(%struct.crypto_skcipher* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.crypto_skcipher*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.crypto_cts_ctx*, align 8
  %8 = alloca %struct.crypto_skcipher*, align 8
  %9 = alloca i32, align 4
  store %struct.crypto_skcipher* %0, %struct.crypto_skcipher** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %4, align 8
  %11 = call %struct.crypto_cts_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher* %10)
  store %struct.crypto_cts_ctx* %11, %struct.crypto_cts_ctx** %7, align 8
  %12 = load %struct.crypto_cts_ctx*, %struct.crypto_cts_ctx** %7, align 8
  %13 = getelementptr inbounds %struct.crypto_cts_ctx, %struct.crypto_cts_ctx* %12, i32 0, i32 0
  %14 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %13, align 8
  store %struct.crypto_skcipher* %14, %struct.crypto_skcipher** %8, align 8
  %15 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %8, align 8
  %16 = load i32, i32* @CRYPTO_TFM_REQ_MASK, align 4
  %17 = call i32 @crypto_skcipher_clear_flags(%struct.crypto_skcipher* %15, i32 %16)
  %18 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %8, align 8
  %19 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %4, align 8
  %20 = call i32 @crypto_skcipher_get_flags(%struct.crypto_skcipher* %19)
  %21 = load i32, i32* @CRYPTO_TFM_REQ_MASK, align 4
  %22 = and i32 %20, %21
  %23 = call i32 @crypto_skcipher_set_flags(%struct.crypto_skcipher* %18, i32 %22)
  %24 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %8, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @crypto_skcipher_setkey(%struct.crypto_skcipher* %24, i32* %25, i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %4, align 8
  %29 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %8, align 8
  %30 = call i32 @crypto_skcipher_get_flags(%struct.crypto_skcipher* %29)
  %31 = load i32, i32* @CRYPTO_TFM_RES_MASK, align 4
  %32 = and i32 %30, %31
  %33 = call i32 @crypto_skcipher_set_flags(%struct.crypto_skcipher* %28, i32 %32)
  %34 = load i32, i32* %9, align 4
  ret i32 %34
}

declare dso_local %struct.crypto_cts_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher*) #1

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
