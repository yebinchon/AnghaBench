; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_ccm.c_crypto_ccm_encrypt.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_ccm.c_crypto_ccm_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32, i64, i64, i32* }
%struct.crypto_aead = type { i32 }
%struct.crypto_ccm_ctx = type { i32 }
%struct.crypto_ccm_req_priv_ctx = type { %struct.scatterlist*, i32, %struct.scatterlist*, i32*, %struct.skcipher_request }
%struct.scatterlist = type { i32 }
%struct.skcipher_request = type { i32 }

@crypto_ccm_encrypt_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*)* @crypto_ccm_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_ccm_encrypt(%struct.aead_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aead_request*, align 8
  %4 = alloca %struct.crypto_aead*, align 8
  %5 = alloca %struct.crypto_ccm_ctx*, align 8
  %6 = alloca %struct.crypto_ccm_req_priv_ctx*, align 8
  %7 = alloca %struct.skcipher_request*, align 8
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.aead_request* %0, %struct.aead_request** %3, align 8
  %13 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %14 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %13)
  store %struct.crypto_aead* %14, %struct.crypto_aead** %4, align 8
  %15 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %16 = call %struct.crypto_ccm_ctx* @crypto_aead_ctx(%struct.crypto_aead* %15)
  store %struct.crypto_ccm_ctx* %16, %struct.crypto_ccm_ctx** %5, align 8
  %17 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %18 = call %struct.crypto_ccm_req_priv_ctx* @crypto_ccm_reqctx(%struct.aead_request* %17)
  store %struct.crypto_ccm_req_priv_ctx* %18, %struct.crypto_ccm_req_priv_ctx** %6, align 8
  %19 = load %struct.crypto_ccm_req_priv_ctx*, %struct.crypto_ccm_req_priv_ctx** %6, align 8
  %20 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, %struct.crypto_ccm_req_priv_ctx* %19, i32 0, i32 4
  store %struct.skcipher_request* %20, %struct.skcipher_request** %7, align 8
  %21 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %22 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %9, align 4
  %24 = load %struct.crypto_ccm_req_priv_ctx*, %struct.crypto_ccm_req_priv_ctx** %6, align 8
  %25 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, %struct.crypto_ccm_req_priv_ctx* %24, i32 0, i32 3
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %10, align 8
  %27 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %28 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %27, i32 0, i32 3
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %11, align 8
  %30 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = call i32 @crypto_ccm_init_crypt(%struct.aead_request* %30, i32* %31)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %1
  %36 = load i32, i32* %12, align 4
  store i32 %36, i32* %2, align 4
  br label %101

37:                                               ; preds = %1
  %38 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %39 = load %struct.crypto_ccm_req_priv_ctx*, %struct.crypto_ccm_req_priv_ctx** %6, align 8
  %40 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, %struct.crypto_ccm_req_priv_ctx* %39, i32 0, i32 0
  %41 = load %struct.scatterlist*, %struct.scatterlist** %40, align 8
  %42 = call i32 @sg_next(%struct.scatterlist* %41)
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @crypto_ccm_auth(%struct.aead_request* %38, i32 %42, i32 %43)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %37
  %48 = load i32, i32* %12, align 4
  store i32 %48, i32* %2, align 4
  br label %101

49:                                               ; preds = %37
  %50 = load %struct.crypto_ccm_req_priv_ctx*, %struct.crypto_ccm_req_priv_ctx** %6, align 8
  %51 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, %struct.crypto_ccm_req_priv_ctx* %50, i32 0, i32 0
  %52 = load %struct.scatterlist*, %struct.scatterlist** %51, align 8
  store %struct.scatterlist* %52, %struct.scatterlist** %8, align 8
  %53 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %54 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %57 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %55, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %49
  %61 = load %struct.crypto_ccm_req_priv_ctx*, %struct.crypto_ccm_req_priv_ctx** %6, align 8
  %62 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, %struct.crypto_ccm_req_priv_ctx* %61, i32 0, i32 2
  %63 = load %struct.scatterlist*, %struct.scatterlist** %62, align 8
  store %struct.scatterlist* %63, %struct.scatterlist** %8, align 8
  br label %64

64:                                               ; preds = %60, %49
  %65 = load %struct.skcipher_request*, %struct.skcipher_request** %7, align 8
  %66 = load %struct.crypto_ccm_ctx*, %struct.crypto_ccm_ctx** %5, align 8
  %67 = getelementptr inbounds %struct.crypto_ccm_ctx, %struct.crypto_ccm_ctx* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @skcipher_request_set_tfm(%struct.skcipher_request* %65, i32 %68)
  %70 = load %struct.skcipher_request*, %struct.skcipher_request** %7, align 8
  %71 = load %struct.crypto_ccm_req_priv_ctx*, %struct.crypto_ccm_req_priv_ctx** %6, align 8
  %72 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, %struct.crypto_ccm_req_priv_ctx* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @crypto_ccm_encrypt_done, align 4
  %75 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %76 = call i32 @skcipher_request_set_callback(%struct.skcipher_request* %70, i32 %73, i32 %74, %struct.aead_request* %75)
  %77 = load %struct.skcipher_request*, %struct.skcipher_request** %7, align 8
  %78 = load %struct.crypto_ccm_req_priv_ctx*, %struct.crypto_ccm_req_priv_ctx** %6, align 8
  %79 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, %struct.crypto_ccm_req_priv_ctx* %78, i32 0, i32 0
  %80 = load %struct.scatterlist*, %struct.scatterlist** %79, align 8
  %81 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %82 = load i32, i32* %9, align 4
  %83 = add i32 %82, 16
  %84 = load i32*, i32** %11, align 8
  %85 = call i32 @skcipher_request_set_crypt(%struct.skcipher_request* %77, %struct.scatterlist* %80, %struct.scatterlist* %81, i32 %83, i32* %84)
  %86 = load %struct.skcipher_request*, %struct.skcipher_request** %7, align 8
  %87 = call i32 @crypto_skcipher_encrypt(%struct.skcipher_request* %86)
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %12, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %64
  %91 = load i32, i32* %12, align 4
  store i32 %91, i32* %2, align 4
  br label %101

92:                                               ; preds = %64
  %93 = load i32*, i32** %10, align 8
  %94 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %95 = call i32 @sg_next(%struct.scatterlist* %94)
  %96 = load i32, i32* %9, align 4
  %97 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %98 = call i32 @crypto_aead_authsize(%struct.crypto_aead* %97)
  %99 = call i32 @scatterwalk_map_and_copy(i32* %93, i32 %95, i32 %96, i32 %98, i32 1)
  %100 = load i32, i32* %12, align 4
  store i32 %100, i32* %2, align 4
  br label %101

101:                                              ; preds = %92, %90, %47, %35
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.crypto_ccm_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local %struct.crypto_ccm_req_priv_ctx* @crypto_ccm_reqctx(%struct.aead_request*) #1

declare dso_local i32 @crypto_ccm_init_crypt(%struct.aead_request*, i32*) #1

declare dso_local i32 @crypto_ccm_auth(%struct.aead_request*, i32, i32) #1

declare dso_local i32 @sg_next(%struct.scatterlist*) #1

declare dso_local i32 @skcipher_request_set_tfm(%struct.skcipher_request*, i32) #1

declare dso_local i32 @skcipher_request_set_callback(%struct.skcipher_request*, i32, i32, %struct.aead_request*) #1

declare dso_local i32 @skcipher_request_set_crypt(%struct.skcipher_request*, %struct.scatterlist*, %struct.scatterlist*, i32, i32*) #1

declare dso_local i32 @crypto_skcipher_encrypt(%struct.skcipher_request*) #1

declare dso_local i32 @scatterwalk_map_and_copy(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @crypto_aead_authsize(%struct.crypto_aead*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
