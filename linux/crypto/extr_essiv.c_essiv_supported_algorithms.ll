; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_essiv.c_essiv_supported_algorithms.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_essiv.c_essiv_supported_algorithms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_alg = type { i64 }
%struct.crypto_alg = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@CRYPTO_ALG_TYPE_CIPHER = common dso_local global i32 0, align 4
@CRYPTO_ALG_TYPE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.shash_alg*, i32)* @essiv_supported_algorithms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @essiv_supported_algorithms(i8* %0, %struct.shash_alg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.shash_alg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.crypto_alg*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.shash_alg* %1, %struct.shash_alg** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = load i32, i32* @CRYPTO_ALG_TYPE_CIPHER, align 4
  %12 = load i32, i32* @CRYPTO_ALG_TYPE_MASK, align 4
  %13 = call %struct.crypto_alg* @crypto_alg_mod_lookup(i8* %10, i32 %11, i32 %12)
  store %struct.crypto_alg* %13, %struct.crypto_alg** %8, align 8
  %14 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %15 = call i64 @IS_ERR(%struct.crypto_alg* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %54

18:                                               ; preds = %3
  %19 = load %struct.shash_alg*, %struct.shash_alg** %6, align 8
  %20 = getelementptr inbounds %struct.shash_alg, %struct.shash_alg* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %23 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp slt i64 %21, %25
  br i1 %26, label %36, label %27

27:                                               ; preds = %18
  %28 = load %struct.shash_alg*, %struct.shash_alg** %6, align 8
  %29 = getelementptr inbounds %struct.shash_alg, %struct.shash_alg* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %32 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %30, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %27, %18
  br label %50

37:                                               ; preds = %27
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %40 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %38, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %50

44:                                               ; preds = %37
  %45 = load %struct.shash_alg*, %struct.shash_alg** %6, align 8
  %46 = call i64 @crypto_shash_alg_has_setkey(%struct.shash_alg* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br label %50

49:                                               ; preds = %44
  store i32 1, i32* %9, align 4
  br label %50

50:                                               ; preds = %49, %48, %43, %36
  %51 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %52 = call i32 @crypto_mod_put(%struct.crypto_alg* %51)
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %50, %17
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local %struct.crypto_alg* @crypto_alg_mod_lookup(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.crypto_alg*) #1

declare dso_local i64 @crypto_shash_alg_has_setkey(%struct.shash_alg*) #1

declare dso_local i32 @crypto_mod_put(%struct.crypto_alg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
