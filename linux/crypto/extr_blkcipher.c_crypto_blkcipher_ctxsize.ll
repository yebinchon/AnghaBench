; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_blkcipher.c_crypto_blkcipher_ctxsize.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_blkcipher.c_crypto_blkcipher_ctxsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_alg = type { i32, i64, %struct.blkcipher_alg }
%struct.blkcipher_alg = type { i64 }

@CRYPTO_ALG_TYPE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_alg*, i32, i32)* @crypto_blkcipher_ctxsize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_blkcipher_ctxsize(%struct.crypto_alg* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.crypto_alg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.blkcipher_alg*, align 8
  %8 = alloca i32, align 4
  store %struct.crypto_alg* %0, %struct.crypto_alg** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  %10 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %9, i32 0, i32 2
  store %struct.blkcipher_alg* %10, %struct.blkcipher_alg** %7, align 8
  %11 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  %12 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @CRYPTO_ALG_TYPE_MASK, align 4
  %16 = and i32 %14, %15
  %17 = load i32, i32* @CRYPTO_ALG_TYPE_MASK, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %38

19:                                               ; preds = %3
  %20 = load %struct.blkcipher_alg*, %struct.blkcipher_alg** %7, align 8
  %21 = getelementptr inbounds %struct.blkcipher_alg, %struct.blkcipher_alg* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %19
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  %27 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = add i64 %28, 1
  %30 = call i32 @ALIGN(i32 %25, i64 %29)
  store i32 %30, i32* %8, align 4
  %31 = load %struct.blkcipher_alg*, %struct.blkcipher_alg** %7, align 8
  %32 = getelementptr inbounds %struct.blkcipher_alg, %struct.blkcipher_alg* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = zext i32 %34 to i64
  %36 = add nsw i64 %35, %33
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %24, %19, %3
  %39 = load i32, i32* %8, align 4
  ret i32 %39
}

declare dso_local i32 @ALIGN(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
