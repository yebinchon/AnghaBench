; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_skcipher.c_skcipher_setkey_blkcipher.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_skcipher.c_skcipher_setkey_blkcipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_skcipher = type { i32 }
%struct.crypto_blkcipher = type { i32 }

@CRYPTO_TFM_REQ_MASK = common dso_local global i32 0, align 4
@CRYPTO_TFM_RES_MASK = common dso_local global i32 0, align 4
@CRYPTO_TFM_NEED_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_skcipher*, i32*, i32)* @skcipher_setkey_blkcipher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skcipher_setkey_blkcipher(%struct.crypto_skcipher* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_skcipher*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.crypto_blkcipher**, align 8
  %9 = alloca %struct.crypto_blkcipher*, align 8
  %10 = alloca i32, align 4
  store %struct.crypto_skcipher* %0, %struct.crypto_skcipher** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %12 = call %struct.crypto_blkcipher** @crypto_skcipher_ctx(%struct.crypto_skcipher* %11)
  store %struct.crypto_blkcipher** %12, %struct.crypto_blkcipher*** %8, align 8
  %13 = load %struct.crypto_blkcipher**, %struct.crypto_blkcipher*** %8, align 8
  %14 = load %struct.crypto_blkcipher*, %struct.crypto_blkcipher** %13, align 8
  store %struct.crypto_blkcipher* %14, %struct.crypto_blkcipher** %9, align 8
  %15 = load %struct.crypto_blkcipher*, %struct.crypto_blkcipher** %9, align 8
  %16 = call i32 @crypto_blkcipher_clear_flags(%struct.crypto_blkcipher* %15, i32 -1)
  %17 = load %struct.crypto_blkcipher*, %struct.crypto_blkcipher** %9, align 8
  %18 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %19 = call i32 @crypto_skcipher_get_flags(%struct.crypto_skcipher* %18)
  %20 = load i32, i32* @CRYPTO_TFM_REQ_MASK, align 4
  %21 = and i32 %19, %20
  %22 = call i32 @crypto_blkcipher_set_flags(%struct.crypto_blkcipher* %17, i32 %21)
  %23 = load %struct.crypto_blkcipher*, %struct.crypto_blkcipher** %9, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @crypto_blkcipher_setkey(%struct.crypto_blkcipher* %23, i32* %24, i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %28 = load %struct.crypto_blkcipher*, %struct.crypto_blkcipher** %9, align 8
  %29 = call i32 @crypto_blkcipher_get_flags(%struct.crypto_blkcipher* %28)
  %30 = load i32, i32* @CRYPTO_TFM_RES_MASK, align 4
  %31 = and i32 %29, %30
  %32 = call i32 @crypto_skcipher_set_flags(%struct.crypto_skcipher* %27, i32 %31)
  %33 = load i32, i32* %10, align 4
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %3
  %37 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %38 = call i32 @skcipher_set_needkey(%struct.crypto_skcipher* %37)
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %4, align 4
  br label %44

40:                                               ; preds = %3
  %41 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %42 = load i32, i32* @CRYPTO_TFM_NEED_KEY, align 4
  %43 = call i32 @crypto_skcipher_clear_flags(%struct.crypto_skcipher* %41, i32 %42)
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %40, %36
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local %struct.crypto_blkcipher** @crypto_skcipher_ctx(%struct.crypto_skcipher*) #1

declare dso_local i32 @crypto_blkcipher_clear_flags(%struct.crypto_blkcipher*, i32) #1

declare dso_local i32 @crypto_blkcipher_set_flags(%struct.crypto_blkcipher*, i32) #1

declare dso_local i32 @crypto_skcipher_get_flags(%struct.crypto_skcipher*) #1

declare dso_local i32 @crypto_blkcipher_setkey(%struct.crypto_blkcipher*, i32*, i32) #1

declare dso_local i32 @crypto_skcipher_set_flags(%struct.crypto_skcipher*, i32) #1

declare dso_local i32 @crypto_blkcipher_get_flags(%struct.crypto_blkcipher*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skcipher_set_needkey(%struct.crypto_skcipher*) #1

declare dso_local i32 @crypto_skcipher_clear_flags(%struct.crypto_skcipher*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
