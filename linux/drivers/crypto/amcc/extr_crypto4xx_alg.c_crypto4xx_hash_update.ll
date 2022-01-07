; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/amcc/extr_crypto4xx_alg.c_crypto4xx_hash_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/amcc/extr_crypto4xx_alg.c_crypto4xx_hash_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.crypto_ahash = type { i32 }
%struct.crypto4xx_ctx = type { i32, i32 }
%struct.scatterlist = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto4xx_hash_update(%struct.ahash_request* %0) #0 {
  %2 = alloca %struct.ahash_request*, align 8
  %3 = alloca %struct.crypto_ahash*, align 8
  %4 = alloca %struct.crypto4xx_ctx*, align 8
  %5 = alloca %struct.scatterlist, align 4
  %6 = alloca i32, align 4
  store %struct.ahash_request* %0, %struct.ahash_request** %2, align 8
  %7 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %8 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request* %7)
  store %struct.crypto_ahash* %8, %struct.crypto_ahash** %3, align 8
  %9 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %10 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.crypto4xx_ctx* @crypto_tfm_ctx(i32 %12)
  store %struct.crypto4xx_ctx* %13, %struct.crypto4xx_ctx** %4, align 8
  %14 = load %struct.crypto_ahash*, %struct.crypto_ahash** %3, align 8
  %15 = call i32 @crypto_ahash_digestsize(%struct.crypto_ahash* %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %17 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @sg_init_one(%struct.scatterlist* %5, i32 %18, i32 %19)
  %21 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %22 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %21, i32 0, i32 2
  %23 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %4, align 8
  %24 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %25 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %28 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %4, align 8
  %31 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %4, align 8
  %34 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @crypto4xx_build_pd(%struct.TYPE_2__* %22, %struct.crypto4xx_ctx* %23, i32 %26, %struct.scatterlist* %5, i32 %29, i32* null, i32 0, i32 %32, i32 %35, i32 0, i32* null)
  ret i32 %36
}

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local %struct.crypto4xx_ctx* @crypto_tfm_ctx(i32) #1

declare dso_local i32 @crypto_ahash_digestsize(%struct.crypto_ahash*) #1

declare dso_local i32 @sg_init_one(%struct.scatterlist*, i32, i32) #1

declare dso_local i32 @crypto4xx_build_pd(%struct.TYPE_2__*, %struct.crypto4xx_ctx*, i32, %struct.scatterlist*, i32, i32*, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
