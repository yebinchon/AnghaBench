; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_ahash.c_ahash_prepare_alg.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_ahash.c_ahash_prepare_alg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_alg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, %struct.crypto_alg }
%struct.crypto_alg = type { i32, i32* }

@HASH_MAX_DIGESTSIZE = common dso_local global i64 0, align 8
@HASH_MAX_STATESIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@crypto_ahash_type = common dso_local global i32 0, align 4
@CRYPTO_ALG_TYPE_MASK = common dso_local global i32 0, align 4
@CRYPTO_ALG_TYPE_AHASH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_alg*)* @ahash_prepare_alg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahash_prepare_alg(%struct.ahash_alg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahash_alg*, align 8
  %4 = alloca %struct.crypto_alg*, align 8
  store %struct.ahash_alg* %0, %struct.ahash_alg** %3, align 8
  %5 = load %struct.ahash_alg*, %struct.ahash_alg** %3, align 8
  %6 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 2
  store %struct.crypto_alg* %7, %struct.crypto_alg** %4, align 8
  %8 = load %struct.ahash_alg*, %struct.ahash_alg** %3, align 8
  %9 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @HASH_MAX_DIGESTSIZE, align 8
  %13 = icmp sgt i64 %11, %12
  br i1 %13, label %27, label %14

14:                                               ; preds = %1
  %15 = load %struct.ahash_alg*, %struct.ahash_alg** %3, align 8
  %16 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @HASH_MAX_STATESIZE, align 8
  %20 = icmp sgt i64 %18, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %14
  %22 = load %struct.ahash_alg*, %struct.ahash_alg** %3, align 8
  %23 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21, %14, %1
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %44

30:                                               ; preds = %21
  %31 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  %32 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %31, i32 0, i32 1
  store i32* @crypto_ahash_type, i32** %32, align 8
  %33 = load i32, i32* @CRYPTO_ALG_TYPE_MASK, align 4
  %34 = xor i32 %33, -1
  %35 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  %36 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = and i32 %37, %34
  store i32 %38, i32* %36, align 8
  %39 = load i32, i32* @CRYPTO_ALG_TYPE_AHASH, align 4
  %40 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  %41 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 8
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %30, %27
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
