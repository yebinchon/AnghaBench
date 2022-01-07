; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_skcipher.c_skcipher_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_skcipher.c_skcipher_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_skcipher = type { i32 }
%struct.skcipher_alg = type { i32, i32, i32 (%struct.crypto_skcipher.0*, i32*, i32)* }
%struct.crypto_skcipher.0 = type opaque

@CRYPTO_TFM_RES_BAD_KEY_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CRYPTO_TFM_NEED_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_skcipher*, i32*, i32)* @skcipher_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skcipher_setkey(%struct.crypto_skcipher* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_skcipher*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.skcipher_alg*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.crypto_skcipher* %0, %struct.crypto_skcipher** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %12 = call %struct.skcipher_alg* @crypto_skcipher_alg(%struct.crypto_skcipher* %11)
  store %struct.skcipher_alg* %12, %struct.skcipher_alg** %8, align 8
  %13 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %14 = call i64 @crypto_skcipher_alignmask(%struct.crypto_skcipher* %13)
  store i64 %14, i64* %9, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.skcipher_alg*, %struct.skcipher_alg** %8, align 8
  %17 = getelementptr inbounds %struct.skcipher_alg, %struct.skcipher_alg* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ult i32 %15, %18
  br i1 %19, label %26, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.skcipher_alg*, %struct.skcipher_alg** %8, align 8
  %23 = getelementptr inbounds %struct.skcipher_alg, %struct.skcipher_alg* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ugt i32 %21, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %20, %3
  %27 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %28 = load i32, i32* @CRYPTO_TFM_RES_BAD_KEY_LEN, align 4
  %29 = call i32 @crypto_skcipher_set_flags(%struct.crypto_skcipher* %27, i32 %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %64

32:                                               ; preds = %20
  %33 = load i32*, i32** %6, align 8
  %34 = ptrtoint i32* %33 to i64
  %35 = load i64, i64* %9, align 8
  %36 = and i64 %34, %35
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @skcipher_setkey_unaligned(%struct.crypto_skcipher* %39, i32* %40, i32 %41)
  store i32 %42, i32* %10, align 4
  br label %52

43:                                               ; preds = %32
  %44 = load %struct.skcipher_alg*, %struct.skcipher_alg** %8, align 8
  %45 = getelementptr inbounds %struct.skcipher_alg, %struct.skcipher_alg* %44, i32 0, i32 2
  %46 = load i32 (%struct.crypto_skcipher.0*, i32*, i32)*, i32 (%struct.crypto_skcipher.0*, i32*, i32)** %45, align 8
  %47 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %48 = bitcast %struct.crypto_skcipher* %47 to %struct.crypto_skcipher.0*
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 %46(%struct.crypto_skcipher.0* %48, i32* %49, i32 %50)
  store i32 %51, i32* %10, align 4
  br label %52

52:                                               ; preds = %43, %38
  %53 = load i32, i32* %10, align 4
  %54 = call i64 @unlikely(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %58 = call i32 @skcipher_set_needkey(%struct.crypto_skcipher* %57)
  %59 = load i32, i32* %10, align 4
  store i32 %59, i32* %4, align 4
  br label %64

60:                                               ; preds = %52
  %61 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %62 = load i32, i32* @CRYPTO_TFM_NEED_KEY, align 4
  %63 = call i32 @crypto_skcipher_clear_flags(%struct.crypto_skcipher* %61, i32 %62)
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %60, %56, %26
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local %struct.skcipher_alg* @crypto_skcipher_alg(%struct.crypto_skcipher*) #1

declare dso_local i64 @crypto_skcipher_alignmask(%struct.crypto_skcipher*) #1

declare dso_local i32 @crypto_skcipher_set_flags(%struct.crypto_skcipher*, i32) #1

declare dso_local i32 @skcipher_setkey_unaligned(%struct.crypto_skcipher*, i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skcipher_set_needkey(%struct.crypto_skcipher*) #1

declare dso_local i32 @crypto_skcipher_clear_flags(%struct.crypto_skcipher*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
