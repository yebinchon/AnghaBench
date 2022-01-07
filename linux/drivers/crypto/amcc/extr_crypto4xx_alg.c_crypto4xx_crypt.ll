; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/amcc/extr_crypto4xx_alg.c_crypto4xx_crypt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/amcc/extr_crypto4xx_alg.c_crypto4xx_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_request = type { i32, i32, i32, i32, i32 }
%struct.crypto_skcipher = type { i32 }
%struct.crypto4xx_ctx = type { i32, i32, i32 }

@AES_IV_SIZE = common dso_local global i32 0, align 4
@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skcipher_request*, i32, i32, i32)* @crypto4xx_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto4xx_crypt(%struct.skcipher_request* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.skcipher_request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.crypto_skcipher*, align 8
  %11 = alloca %struct.crypto4xx_ctx*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.skcipher_request* %0, %struct.skcipher_request** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.skcipher_request*, %struct.skcipher_request** %6, align 8
  %16 = call %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request* %15)
  store %struct.crypto_skcipher* %16, %struct.crypto_skcipher** %10, align 8
  %17 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %10, align 8
  %18 = call %struct.crypto4xx_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher* %17)
  store %struct.crypto4xx_ctx* %18, %struct.crypto4xx_ctx** %11, align 8
  %19 = load i32, i32* @AES_IV_SIZE, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %12, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %13, align 8
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %4
  %26 = load %struct.skcipher_request*, %struct.skcipher_request** %6, align 8
  %27 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %30 = call i32 @IS_ALIGNED(i32 %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %25
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %74

35:                                               ; preds = %25, %4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load %struct.skcipher_request*, %struct.skcipher_request** %6, align 8
  %40 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @crypto4xx_memcpy_to_le32(i32* %22, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %38, %35
  %45 = load %struct.skcipher_request*, %struct.skcipher_request** %6, align 8
  %46 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %45, i32 0, i32 3
  %47 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %11, align 8
  %48 = load %struct.skcipher_request*, %struct.skcipher_request** %6, align 8
  %49 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.skcipher_request*, %struct.skcipher_request** %6, align 8
  %52 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.skcipher_request*, %struct.skcipher_request** %6, align 8
  %55 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %44
  %61 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %11, align 8
  %62 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  br label %68

64:                                               ; preds = %44
  %65 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %11, align 8
  %66 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  br label %68

68:                                               ; preds = %64, %60
  %69 = phi i32 [ %63, %60 ], [ %67, %64 ]
  %70 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %11, align 8
  %71 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @crypto4xx_build_pd(i32* %46, %struct.crypto4xx_ctx* %47, i32 %50, i32 %53, i32 %56, i32* %22, i32 %57, i32 %69, i32 %72, i32 0, i32* null)
  store i32 %73, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %74

74:                                               ; preds = %68, %32
  %75 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %75)
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request*) #1

declare dso_local %struct.crypto4xx_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @IS_ALIGNED(i32, i32) #1

declare dso_local i32 @crypto4xx_memcpy_to_le32(i32*, i32, i32) #1

declare dso_local i32 @crypto4xx_build_pd(i32*, %struct.crypto4xx_ctx*, i32, i32, i32, i32*, i32, i32, i32, i32, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
