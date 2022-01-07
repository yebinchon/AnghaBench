; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/crypto/extr_aes-ce-glue.c_xts_set_key.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/crypto/extr_aes-ce-glue.c_xts_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_skcipher = type { i32 }
%struct.crypto_aes_xts_ctx = type { i32, i32 }

@CRYPTO_TFM_RES_BAD_KEY_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_skcipher*, i32*, i32)* @xts_set_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xts_set_key(%struct.crypto_skcipher* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_skcipher*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.crypto_aes_xts_ctx*, align 8
  %9 = alloca i32, align 4
  store %struct.crypto_skcipher* %0, %struct.crypto_skcipher** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %11 = call %struct.crypto_aes_xts_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher* %10)
  store %struct.crypto_aes_xts_ctx* %11, %struct.crypto_aes_xts_ctx** %8, align 8
  %12 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @xts_verify_key(%struct.crypto_skcipher* %12, i32* %13, i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %4, align 4
  br label %50

20:                                               ; preds = %3
  %21 = load %struct.crypto_aes_xts_ctx*, %struct.crypto_aes_xts_ctx** %8, align 8
  %22 = getelementptr inbounds %struct.crypto_aes_xts_ctx, %struct.crypto_aes_xts_ctx* %21, i32 0, i32 1
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = udiv i32 %24, 2
  %26 = call i32 @ce_aes_expandkey(i32* %22, i32* %23, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %20
  %30 = load %struct.crypto_aes_xts_ctx*, %struct.crypto_aes_xts_ctx** %8, align 8
  %31 = getelementptr inbounds %struct.crypto_aes_xts_ctx, %struct.crypto_aes_xts_ctx* %30, i32 0, i32 0
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = udiv i32 %33, 2
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  %37 = load i32, i32* %7, align 4
  %38 = udiv i32 %37, 2
  %39 = call i32 @ce_aes_expandkey(i32* %31, i32* %36, i32 %38)
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %29, %20
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %50

44:                                               ; preds = %40
  %45 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %46 = load i32, i32* @CRYPTO_TFM_RES_BAD_KEY_LEN, align 4
  %47 = call i32 @crypto_skcipher_set_flags(%struct.crypto_skcipher* %45, i32 %46)
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %44, %43, %18
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local %struct.crypto_aes_xts_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher*) #1

declare dso_local i32 @xts_verify_key(%struct.crypto_skcipher*, i32*, i32) #1

declare dso_local i32 @ce_aes_expandkey(i32*, i32*, i32) #1

declare dso_local i32 @crypto_skcipher_set_flags(%struct.crypto_skcipher*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
