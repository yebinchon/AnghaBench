; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_adiantum.c_adiantum_finish.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_adiantum.c_adiantum_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_request = type { i32, i32 }
%struct.crypto_skcipher = type { i32 }
%struct.adiantum_tfm_ctx = type { i32 }
%struct.adiantum_request_ctx = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@BLOCKCIPHER_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skcipher_request*)* @adiantum_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adiantum_finish(%struct.skcipher_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.skcipher_request*, align 8
  %4 = alloca %struct.crypto_skcipher*, align 8
  %5 = alloca %struct.adiantum_tfm_ctx*, align 8
  %6 = alloca %struct.adiantum_request_ctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.skcipher_request* %0, %struct.skcipher_request** %3, align 8
  %10 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %11 = call %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request* %10)
  store %struct.crypto_skcipher* %11, %struct.crypto_skcipher** %4, align 8
  %12 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %4, align 8
  %13 = call %struct.adiantum_tfm_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher* %12)
  store %struct.adiantum_tfm_ctx* %13, %struct.adiantum_tfm_ctx** %5, align 8
  %14 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %15 = call %struct.adiantum_request_ctx* @skcipher_request_ctx(%struct.skcipher_request* %14)
  store %struct.adiantum_request_ctx* %15, %struct.adiantum_request_ctx** %6, align 8
  %16 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %17 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @BLOCKCIPHER_BLOCK_SIZE, align 4
  %20 = sub i32 %18, %19
  store i32 %20, i32* %7, align 4
  %21 = load %struct.adiantum_request_ctx*, %struct.adiantum_request_ctx** %6, align 8
  %22 = getelementptr inbounds %struct.adiantum_request_ctx, %struct.adiantum_request_ctx* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %38, label %25

25:                                               ; preds = %1
  %26 = load %struct.adiantum_tfm_ctx*, %struct.adiantum_tfm_ctx** %5, align 8
  %27 = getelementptr inbounds %struct.adiantum_tfm_ctx, %struct.adiantum_tfm_ctx* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.adiantum_request_ctx*, %struct.adiantum_request_ctx** %6, align 8
  %30 = getelementptr inbounds %struct.adiantum_request_ctx, %struct.adiantum_request_ctx* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.adiantum_request_ctx*, %struct.adiantum_request_ctx** %6, align 8
  %34 = getelementptr inbounds %struct.adiantum_request_ctx, %struct.adiantum_request_ctx* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @crypto_cipher_decrypt_one(i32 %28, i32 %32, i32 %36)
  br label %38

38:                                               ; preds = %25, %1
  %39 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %40 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %41 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @adiantum_hash_message(%struct.skcipher_request* %39, i32 %42, i32* %8)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %2, align 4
  br label %68

48:                                               ; preds = %38
  %49 = load %struct.adiantum_request_ctx*, %struct.adiantum_request_ctx** %6, align 8
  %50 = getelementptr inbounds %struct.adiantum_request_ctx, %struct.adiantum_request_ctx* %49, i32 0, i32 1
  %51 = call i32 @le128_add(i32* %8, i32* %8, i32* %50)
  %52 = load %struct.adiantum_request_ctx*, %struct.adiantum_request_ctx** %6, align 8
  %53 = getelementptr inbounds %struct.adiantum_request_ctx, %struct.adiantum_request_ctx* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load %struct.adiantum_request_ctx*, %struct.adiantum_request_ctx** %6, align 8
  %56 = getelementptr inbounds %struct.adiantum_request_ctx, %struct.adiantum_request_ctx* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = call i32 @le128_sub(i32* %54, i32* %57, i32* %8)
  %59 = load %struct.adiantum_request_ctx*, %struct.adiantum_request_ctx** %6, align 8
  %60 = getelementptr inbounds %struct.adiantum_request_ctx, %struct.adiantum_request_ctx* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %63 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @BLOCKCIPHER_BLOCK_SIZE, align 4
  %67 = call i32 @scatterwalk_map_and_copy(i32* %61, i32 %64, i32 %65, i32 %66, i32 1)
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %48, %46
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request*) #1

declare dso_local %struct.adiantum_tfm_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher*) #1

declare dso_local %struct.adiantum_request_ctx* @skcipher_request_ctx(%struct.skcipher_request*) #1

declare dso_local i32 @crypto_cipher_decrypt_one(i32, i32, i32) #1

declare dso_local i32 @adiantum_hash_message(%struct.skcipher_request*, i32, i32*) #1

declare dso_local i32 @le128_add(i32*, i32*, i32*) #1

declare dso_local i32 @le128_sub(i32*, i32*, i32*) #1

declare dso_local i32 @scatterwalk_map_and_copy(i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
