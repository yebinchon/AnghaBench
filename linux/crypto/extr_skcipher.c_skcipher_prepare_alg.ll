; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_skcipher.c_skcipher_prepare_alg.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_skcipher.c_skcipher_prepare_alg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_alg = type { i32, i32, i32, %struct.crypto_alg }
%struct.crypto_alg = type { i32, i32, i32* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@crypto_skcipher_type2 = common dso_local global i32 0, align 4
@CRYPTO_ALG_TYPE_MASK = common dso_local global i32 0, align 4
@CRYPTO_ALG_TYPE_SKCIPHER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skcipher_alg*)* @skcipher_prepare_alg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skcipher_prepare_alg(%struct.skcipher_alg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.skcipher_alg*, align 8
  %4 = alloca %struct.crypto_alg*, align 8
  store %struct.skcipher_alg* %0, %struct.skcipher_alg** %3, align 8
  %5 = load %struct.skcipher_alg*, %struct.skcipher_alg** %3, align 8
  %6 = getelementptr inbounds %struct.skcipher_alg, %struct.skcipher_alg* %5, i32 0, i32 3
  store %struct.crypto_alg* %6, %struct.crypto_alg** %4, align 8
  %7 = load %struct.skcipher_alg*, %struct.skcipher_alg** %3, align 8
  %8 = getelementptr inbounds %struct.skcipher_alg, %struct.skcipher_alg* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @PAGE_SIZE, align 4
  %11 = sdiv i32 %10, 8
  %12 = icmp sgt i32 %9, %11
  br i1 %12, label %27, label %13

13:                                               ; preds = %1
  %14 = load %struct.skcipher_alg*, %struct.skcipher_alg** %3, align 8
  %15 = getelementptr inbounds %struct.skcipher_alg, %struct.skcipher_alg* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @PAGE_SIZE, align 4
  %18 = sdiv i32 %17, 8
  %19 = icmp sgt i32 %16, %18
  br i1 %19, label %27, label %20

20:                                               ; preds = %13
  %21 = load %struct.skcipher_alg*, %struct.skcipher_alg** %3, align 8
  %22 = getelementptr inbounds %struct.skcipher_alg, %struct.skcipher_alg* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @PAGE_SIZE, align 4
  %25 = sdiv i32 %24, 8
  %26 = icmp sgt i32 %23, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %20, %13, %1
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %66

30:                                               ; preds = %20
  %31 = load %struct.skcipher_alg*, %struct.skcipher_alg** %3, align 8
  %32 = getelementptr inbounds %struct.skcipher_alg, %struct.skcipher_alg* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %30
  %36 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  %37 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.skcipher_alg*, %struct.skcipher_alg** %3, align 8
  %40 = getelementptr inbounds %struct.skcipher_alg, %struct.skcipher_alg* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %35, %30
  %42 = load %struct.skcipher_alg*, %struct.skcipher_alg** %3, align 8
  %43 = getelementptr inbounds %struct.skcipher_alg, %struct.skcipher_alg* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %41
  %47 = load %struct.skcipher_alg*, %struct.skcipher_alg** %3, align 8
  %48 = getelementptr inbounds %struct.skcipher_alg, %struct.skcipher_alg* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.skcipher_alg*, %struct.skcipher_alg** %3, align 8
  %51 = getelementptr inbounds %struct.skcipher_alg, %struct.skcipher_alg* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  br label %52

52:                                               ; preds = %46, %41
  %53 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  %54 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %53, i32 0, i32 2
  store i32* @crypto_skcipher_type2, i32** %54, align 8
  %55 = load i32, i32* @CRYPTO_ALG_TYPE_MASK, align 4
  %56 = xor i32 %55, -1
  %57 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  %58 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, %56
  store i32 %60, i32* %58, align 4
  %61 = load i32, i32* @CRYPTO_ALG_TYPE_SKCIPHER, align 4
  %62 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  %63 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %52, %27
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
