; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_authencesn.c_crypto_authenc_esn_genicv_tail.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_authencesn.c_crypto_authenc_esn_genicv_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32, i32, %struct.scatterlist* }
%struct.scatterlist = type { i32 }
%struct.crypto_aead = type { i32 }
%struct.crypto_authenc_esn_ctx = type { %struct.crypto_ahash* }
%struct.crypto_ahash = type { i32 }
%struct.authenc_esn_request_ctx = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*, i32)* @crypto_authenc_esn_genicv_tail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_authenc_esn_genicv_tail(%struct.aead_request* %0, i32 %1) #0 {
  %3 = alloca %struct.aead_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_aead*, align 8
  %6 = alloca %struct.crypto_authenc_esn_ctx*, align 8
  %7 = alloca %struct.authenc_esn_request_ctx*, align 8
  %8 = alloca %struct.crypto_ahash*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.scatterlist*, align 8
  %14 = alloca [2 x i32], align 4
  store %struct.aead_request* %0, %struct.aead_request** %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %16 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %15)
  store %struct.crypto_aead* %16, %struct.crypto_aead** %5, align 8
  %17 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %18 = call %struct.crypto_authenc_esn_ctx* @crypto_aead_ctx(%struct.crypto_aead* %17)
  store %struct.crypto_authenc_esn_ctx* %18, %struct.crypto_authenc_esn_ctx** %6, align 8
  %19 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %20 = call %struct.authenc_esn_request_ctx* @aead_request_ctx(%struct.aead_request* %19)
  store %struct.authenc_esn_request_ctx* %20, %struct.authenc_esn_request_ctx** %7, align 8
  %21 = load %struct.crypto_authenc_esn_ctx*, %struct.crypto_authenc_esn_ctx** %6, align 8
  %22 = getelementptr inbounds %struct.crypto_authenc_esn_ctx, %struct.crypto_authenc_esn_ctx* %21, i32 0, i32 0
  %23 = load %struct.crypto_ahash*, %struct.crypto_ahash** %22, align 8
  store %struct.crypto_ahash* %23, %struct.crypto_ahash** %8, align 8
  %24 = load %struct.authenc_esn_request_ctx*, %struct.authenc_esn_request_ctx** %7, align 8
  %25 = getelementptr inbounds %struct.authenc_esn_request_ctx, %struct.authenc_esn_request_ctx* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i32*
  %28 = load %struct.crypto_ahash*, %struct.crypto_ahash** %8, align 8
  %29 = call i64 @crypto_ahash_alignmask(%struct.crypto_ahash* %28)
  %30 = add nsw i64 %29, 1
  %31 = call i32* @PTR_ALIGN(i32* %27, i64 %30)
  store i32* %31, i32** %9, align 8
  %32 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %33 = call i32 @crypto_aead_authsize(%struct.crypto_aead* %32)
  store i32 %33, i32* %10, align 4
  %34 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %35 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %11, align 4
  %37 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %38 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %12, align 4
  %40 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %41 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %40, i32 0, i32 2
  %42 = load %struct.scatterlist*, %struct.scatterlist** %41, align 8
  store %struct.scatterlist* %42, %struct.scatterlist** %13, align 8
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %44 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %45 = call i32 @scatterwalk_map_and_copy(i32* %43, %struct.scatterlist* %44, i32 4, i32 4, i32 0)
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %12, align 4
  %51 = add i32 %49, %50
  %52 = call i32 @scatterwalk_map_and_copy(i32* %47, %struct.scatterlist* %48, i32 %51, i32 4, i32 0)
  %53 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %54 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %55 = call i32 @scatterwalk_map_and_copy(i32* %53, %struct.scatterlist* %54, i32 0, i32 8, i32 1)
  %56 = load i32*, i32** %9, align 8
  %57 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %12, align 4
  %60 = add i32 %58, %59
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @scatterwalk_map_and_copy(i32* %56, %struct.scatterlist* %57, i32 %60, i32 %61, i32 1)
  ret i32 0
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.crypto_authenc_esn_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local %struct.authenc_esn_request_ctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local i32* @PTR_ALIGN(i32*, i64) #1

declare dso_local i64 @crypto_ahash_alignmask(%struct.crypto_ahash*) #1

declare dso_local i32 @crypto_aead_authsize(%struct.crypto_aead*) #1

declare dso_local i32 @scatterwalk_map_and_copy(i32*, %struct.scatterlist*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
