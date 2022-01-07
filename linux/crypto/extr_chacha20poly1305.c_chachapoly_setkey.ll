; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_chacha20poly1305.c_chachapoly_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_chacha20poly1305.c_chachapoly_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aead = type { i32 }
%struct.chachapoly_ctx = type { i32, i32, i32 }

@CHACHA_KEY_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MASK = common dso_local global i32 0, align 4
@CRYPTO_TFM_RES_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_aead*, i32*, i32)* @chachapoly_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chachapoly_setkey(%struct.crypto_aead* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_aead*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.chachapoly_ctx*, align 8
  %9 = alloca i32, align 4
  store %struct.crypto_aead* %0, %struct.crypto_aead** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %11 = call %struct.chachapoly_ctx* @crypto_aead_ctx(%struct.crypto_aead* %10)
  store %struct.chachapoly_ctx* %11, %struct.chachapoly_ctx** %8, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.chachapoly_ctx*, %struct.chachapoly_ctx** %8, align 8
  %14 = getelementptr inbounds %struct.chachapoly_ctx, %struct.chachapoly_ctx* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @CHACHA_KEY_SIZE, align 4
  %17 = add i32 %15, %16
  %18 = icmp ne i32 %12, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %67

22:                                               ; preds = %3
  %23 = load %struct.chachapoly_ctx*, %struct.chachapoly_ctx** %8, align 8
  %24 = getelementptr inbounds %struct.chachapoly_ctx, %struct.chachapoly_ctx* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %7, align 4
  %27 = sub i32 %26, %25
  store i32 %27, i32* %7, align 4
  %28 = load %struct.chachapoly_ctx*, %struct.chachapoly_ctx** %8, align 8
  %29 = getelementptr inbounds %struct.chachapoly_ctx, %struct.chachapoly_ctx* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load %struct.chachapoly_ctx*, %struct.chachapoly_ctx** %8, align 8
  %36 = getelementptr inbounds %struct.chachapoly_ctx, %struct.chachapoly_ctx* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @memcpy(i32 %30, i32* %34, i32 %37)
  %39 = load %struct.chachapoly_ctx*, %struct.chachapoly_ctx** %8, align 8
  %40 = getelementptr inbounds %struct.chachapoly_ctx, %struct.chachapoly_ctx* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @CRYPTO_TFM_REQ_MASK, align 4
  %43 = call i32 @crypto_skcipher_clear_flags(i32 %41, i32 %42)
  %44 = load %struct.chachapoly_ctx*, %struct.chachapoly_ctx** %8, align 8
  %45 = getelementptr inbounds %struct.chachapoly_ctx, %struct.chachapoly_ctx* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %48 = call i32 @crypto_aead_get_flags(%struct.crypto_aead* %47)
  %49 = load i32, i32* @CRYPTO_TFM_REQ_MASK, align 4
  %50 = and i32 %48, %49
  %51 = call i32 @crypto_skcipher_set_flags(i32 %46, i32 %50)
  %52 = load %struct.chachapoly_ctx*, %struct.chachapoly_ctx** %8, align 8
  %53 = getelementptr inbounds %struct.chachapoly_ctx, %struct.chachapoly_ctx* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @crypto_skcipher_setkey(i32 %54, i32* %55, i32 %56)
  store i32 %57, i32* %9, align 4
  %58 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %59 = load %struct.chachapoly_ctx*, %struct.chachapoly_ctx** %8, align 8
  %60 = getelementptr inbounds %struct.chachapoly_ctx, %struct.chachapoly_ctx* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @crypto_skcipher_get_flags(i32 %61)
  %63 = load i32, i32* @CRYPTO_TFM_RES_MASK, align 4
  %64 = and i32 %62, %63
  %65 = call i32 @crypto_aead_set_flags(%struct.crypto_aead* %58, i32 %64)
  %66 = load i32, i32* %9, align 4
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %22, %19
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local %struct.chachapoly_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @crypto_skcipher_clear_flags(i32, i32) #1

declare dso_local i32 @crypto_skcipher_set_flags(i32, i32) #1

declare dso_local i32 @crypto_aead_get_flags(%struct.crypto_aead*) #1

declare dso_local i32 @crypto_skcipher_setkey(i32, i32*, i32) #1

declare dso_local i32 @crypto_aead_set_flags(%struct.crypto_aead*, i32) #1

declare dso_local i32 @crypto_skcipher_get_flags(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
