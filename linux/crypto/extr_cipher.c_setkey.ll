; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_cipher.c_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_cipher.c_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, {}* }

@CRYPTO_TFM_RES_MASK = common dso_local global i32 0, align 4
@CRYPTO_TFM_RES_BAD_KEY_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*, i32*, i32)* @setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setkey(%struct.crypto_tfm* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_tfm*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cipher_alg*, align 8
  %9 = alloca i64, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %11 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.cipher_alg* %13, %struct.cipher_alg** %8, align 8
  %14 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %15 = call i64 @crypto_tfm_alg_alignmask(%struct.crypto_tfm* %14)
  store i64 %15, i64* %9, align 8
  %16 = load i32, i32* @CRYPTO_TFM_RES_MASK, align 4
  %17 = xor i32 %16, -1
  %18 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %19 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = and i32 %20, %17
  store i32 %21, i32* %19, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.cipher_alg*, %struct.cipher_alg** %8, align 8
  %24 = getelementptr inbounds %struct.cipher_alg, %struct.cipher_alg* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ult i32 %22, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %3
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.cipher_alg*, %struct.cipher_alg** %8, align 8
  %30 = getelementptr inbounds %struct.cipher_alg, %struct.cipher_alg* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ugt i32 %28, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %27, %3
  %34 = load i32, i32* @CRYPTO_TFM_RES_BAD_KEY_LEN, align 4
  %35 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %36 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 8
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %61

41:                                               ; preds = %27
  %42 = load i32*, i32** %6, align 8
  %43 = ptrtoint i32* %42 to i64
  %44 = load i64, i64* %9, align 8
  %45 = and i64 %43, %44
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @setkey_unaligned(%struct.crypto_tfm* %48, i32* %49, i32 %50)
  store i32 %51, i32* %4, align 4
  br label %61

52:                                               ; preds = %41
  %53 = load %struct.cipher_alg*, %struct.cipher_alg** %8, align 8
  %54 = getelementptr inbounds %struct.cipher_alg, %struct.cipher_alg* %53, i32 0, i32 2
  %55 = bitcast {}** %54 to i32 (%struct.crypto_tfm*, i32*, i32)**
  %56 = load i32 (%struct.crypto_tfm*, i32*, i32)*, i32 (%struct.crypto_tfm*, i32*, i32)** %55, align 8
  %57 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 %56(%struct.crypto_tfm* %57, i32* %58, i32 %59)
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %52, %47, %33
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i64 @crypto_tfm_alg_alignmask(%struct.crypto_tfm*) #1

declare dso_local i32 @setkey_unaligned(%struct.crypto_tfm*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
