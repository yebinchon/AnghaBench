; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_ahash.c_crypto_ahash_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_ahash.c_crypto_ahash_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_ahash = type { {}* }

@CRYPTO_TFM_NEED_KEY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_ahash_setkey(%struct.crypto_ahash* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_ahash*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.crypto_ahash* %0, %struct.crypto_ahash** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %11 = call i64 @crypto_ahash_alignmask(%struct.crypto_ahash* %10)
  store i64 %11, i64* %8, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = ptrtoint i32* %12 to i64
  %14 = load i64, i64* %8, align 8
  %15 = and i64 %13, %14
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @ahash_setkey_unaligned(%struct.crypto_ahash* %18, i32* %19, i32 %20)
  store i32 %21, i32* %9, align 4
  br label %31

22:                                               ; preds = %3
  %23 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %24 = getelementptr inbounds %struct.crypto_ahash, %struct.crypto_ahash* %23, i32 0, i32 0
  %25 = bitcast {}** %24 to i32 (%struct.crypto_ahash*, i32*, i32)**
  %26 = load i32 (%struct.crypto_ahash*, i32*, i32)*, i32 (%struct.crypto_ahash*, i32*, i32)** %25, align 8
  %27 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 %26(%struct.crypto_ahash* %27, i32* %28, i32 %29)
  store i32 %30, i32* %9, align 4
  br label %31

31:                                               ; preds = %22, %17
  %32 = load i32, i32* %9, align 4
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %37 = call i32 @ahash_set_needkey(%struct.crypto_ahash* %36)
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %4, align 4
  br label %43

39:                                               ; preds = %31
  %40 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %41 = load i32, i32* @CRYPTO_TFM_NEED_KEY, align 4
  %42 = call i32 @crypto_ahash_clear_flags(%struct.crypto_ahash* %40, i32 %41)
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %39, %35
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i64 @crypto_ahash_alignmask(%struct.crypto_ahash*) #1

declare dso_local i32 @ahash_setkey_unaligned(%struct.crypto_ahash*, i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ahash_set_needkey(%struct.crypto_ahash*) #1

declare dso_local i32 @crypto_ahash_clear_flags(%struct.crypto_ahash*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
