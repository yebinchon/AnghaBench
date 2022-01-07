; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_ablkcipher.c_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_ablkcipher.c_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_ablkcipher = type { i32 }
%struct.ablkcipher_alg = type { i32, i32, i32 (%struct.crypto_ablkcipher*, i32*, i32)* }

@CRYPTO_TFM_RES_BAD_KEY_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_ablkcipher*, i32*, i32)* @setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setkey(%struct.crypto_ablkcipher* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_ablkcipher*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ablkcipher_alg*, align 8
  %9 = alloca i64, align 8
  store %struct.crypto_ablkcipher* %0, %struct.crypto_ablkcipher** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %5, align 8
  %11 = call %struct.ablkcipher_alg* @crypto_ablkcipher_alg(%struct.crypto_ablkcipher* %10)
  store %struct.ablkcipher_alg* %11, %struct.ablkcipher_alg** %8, align 8
  %12 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %5, align 8
  %13 = call i64 @crypto_ablkcipher_alignmask(%struct.crypto_ablkcipher* %12)
  store i64 %13, i64* %9, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.ablkcipher_alg*, %struct.ablkcipher_alg** %8, align 8
  %16 = getelementptr inbounds %struct.ablkcipher_alg, %struct.ablkcipher_alg* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ult i32 %14, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.ablkcipher_alg*, %struct.ablkcipher_alg** %8, align 8
  %22 = getelementptr inbounds %struct.ablkcipher_alg, %struct.ablkcipher_alg* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ugt i32 %20, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %19, %3
  %26 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %5, align 8
  %27 = load i32, i32* @CRYPTO_TFM_RES_BAD_KEY_LEN, align 4
  %28 = call i32 @crypto_ablkcipher_set_flags(%struct.crypto_ablkcipher* %26, i32 %27)
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %50

31:                                               ; preds = %19
  %32 = load i32*, i32** %6, align 8
  %33 = ptrtoint i32* %32 to i64
  %34 = load i64, i64* %9, align 8
  %35 = and i64 %33, %34
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %5, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @setkey_unaligned(%struct.crypto_ablkcipher* %38, i32* %39, i32 %40)
  store i32 %41, i32* %4, align 4
  br label %50

42:                                               ; preds = %31
  %43 = load %struct.ablkcipher_alg*, %struct.ablkcipher_alg** %8, align 8
  %44 = getelementptr inbounds %struct.ablkcipher_alg, %struct.ablkcipher_alg* %43, i32 0, i32 2
  %45 = load i32 (%struct.crypto_ablkcipher*, i32*, i32)*, i32 (%struct.crypto_ablkcipher*, i32*, i32)** %44, align 8
  %46 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %5, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 %45(%struct.crypto_ablkcipher* %46, i32* %47, i32 %48)
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %42, %37, %25
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local %struct.ablkcipher_alg* @crypto_ablkcipher_alg(%struct.crypto_ablkcipher*) #1

declare dso_local i64 @crypto_ablkcipher_alignmask(%struct.crypto_ablkcipher*) #1

declare dso_local i32 @crypto_ablkcipher_set_flags(%struct.crypto_ablkcipher*, i32) #1

declare dso_local i32 @setkey_unaligned(%struct.crypto_ablkcipher*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
