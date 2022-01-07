; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_aead.c_aead_prepare_alg.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_aead.c_aead_prepare_alg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_alg = type { i32, i32, i32, %struct.crypto_alg }
%struct.crypto_alg = type { i32, i32*, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@crypto_aead_type = common dso_local global i32 0, align 4
@CRYPTO_ALG_TYPE_MASK = common dso_local global i32 0, align 4
@CRYPTO_ALG_TYPE_AEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_alg*)* @aead_prepare_alg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aead_prepare_alg(%struct.aead_alg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aead_alg*, align 8
  %4 = alloca %struct.crypto_alg*, align 8
  store %struct.aead_alg* %0, %struct.aead_alg** %3, align 8
  %5 = load %struct.aead_alg*, %struct.aead_alg** %3, align 8
  %6 = getelementptr inbounds %struct.aead_alg, %struct.aead_alg* %5, i32 0, i32 3
  store %struct.crypto_alg* %6, %struct.crypto_alg** %4, align 8
  %7 = load %struct.aead_alg*, %struct.aead_alg** %3, align 8
  %8 = getelementptr inbounds %struct.aead_alg, %struct.aead_alg* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.aead_alg*, %struct.aead_alg** %3, align 8
  %11 = getelementptr inbounds %struct.aead_alg, %struct.aead_alg* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.aead_alg*, %struct.aead_alg** %3, align 8
  %14 = getelementptr inbounds %struct.aead_alg, %struct.aead_alg* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @max3(i32 %9, i32 %12, i32 %15)
  %17 = load i32, i32* @PAGE_SIZE, align 4
  %18 = sdiv i32 %17, 8
  %19 = icmp sgt i32 %16, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %48

23:                                               ; preds = %1
  %24 = load %struct.aead_alg*, %struct.aead_alg** %3, align 8
  %25 = getelementptr inbounds %struct.aead_alg, %struct.aead_alg* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %23
  %29 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  %30 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.aead_alg*, %struct.aead_alg** %3, align 8
  %33 = getelementptr inbounds %struct.aead_alg, %struct.aead_alg* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  br label %34

34:                                               ; preds = %28, %23
  %35 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  %36 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %35, i32 0, i32 1
  store i32* @crypto_aead_type, i32** %36, align 8
  %37 = load i32, i32* @CRYPTO_ALG_TYPE_MASK, align 4
  %38 = xor i32 %37, -1
  %39 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  %40 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = and i32 %41, %38
  store i32 %42, i32* %40, align 8
  %43 = load i32, i32* @CRYPTO_ALG_TYPE_AEAD, align 4
  %44 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  %45 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 8
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %34, %20
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @max3(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
