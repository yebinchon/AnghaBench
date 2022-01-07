; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_ccm.c_crypto_ccm_decrypt.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_ccm.c_crypto_ccm_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32, i64, i64, i32 }
%struct.crypto_aead = type { i32 }
%struct.crypto_ccm_ctx = type { i32 }
%struct.crypto_ccm_req_priv_ctx = type { %struct.scatterlist*, i32, %struct.scatterlist*, i32*, i32*, i32*, %struct.skcipher_request }
%struct.scatterlist = type { i32 }
%struct.skcipher_request = type { i32 }

@crypto_ccm_decrypt_done = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*)* @crypto_ccm_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_ccm_decrypt(%struct.aead_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aead_request*, align 8
  %4 = alloca %struct.crypto_aead*, align 8
  %5 = alloca %struct.crypto_ccm_ctx*, align 8
  %6 = alloca %struct.crypto_ccm_req_priv_ctx*, align 8
  %7 = alloca %struct.skcipher_request*, align 8
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.aead_request* %0, %struct.aead_request** %3, align 8
  %15 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %16 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %15)
  store %struct.crypto_aead* %16, %struct.crypto_aead** %4, align 8
  %17 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %18 = call %struct.crypto_ccm_ctx* @crypto_aead_ctx(%struct.crypto_aead* %17)
  store %struct.crypto_ccm_ctx* %18, %struct.crypto_ccm_ctx** %5, align 8
  %19 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %20 = call %struct.crypto_ccm_req_priv_ctx* @crypto_ccm_reqctx(%struct.aead_request* %19)
  store %struct.crypto_ccm_req_priv_ctx* %20, %struct.crypto_ccm_req_priv_ctx** %6, align 8
  %21 = load %struct.crypto_ccm_req_priv_ctx*, %struct.crypto_ccm_req_priv_ctx** %6, align 8
  %22 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, %struct.crypto_ccm_req_priv_ctx* %21, i32 0, i32 6
  store %struct.skcipher_request* %22, %struct.skcipher_request** %7, align 8
  %23 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %24 = call i32 @crypto_aead_authsize(%struct.crypto_aead* %23)
  store i32 %24, i32* %9, align 4
  %25 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %26 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %10, align 4
  %28 = load %struct.crypto_ccm_req_priv_ctx*, %struct.crypto_ccm_req_priv_ctx** %6, align 8
  %29 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, %struct.crypto_ccm_req_priv_ctx* %28, i32 0, i32 5
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %11, align 8
  %31 = load %struct.crypto_ccm_req_priv_ctx*, %struct.crypto_ccm_req_priv_ctx** %6, align 8
  %32 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, %struct.crypto_ccm_req_priv_ctx* %31, i32 0, i32 4
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %12, align 8
  %34 = load %struct.crypto_ccm_req_priv_ctx*, %struct.crypto_ccm_req_priv_ctx** %6, align 8
  %35 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, %struct.crypto_ccm_req_priv_ctx* %34, i32 0, i32 3
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %13, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %10, align 4
  %39 = sub i32 %38, %37
  store i32 %39, i32* %10, align 4
  %40 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %41 = load i32*, i32** %11, align 8
  %42 = call i32 @crypto_ccm_init_crypt(%struct.aead_request* %40, i32* %41)
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %14, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %1
  %46 = load i32, i32* %14, align 4
  store i32 %46, i32* %2, align 4
  br label %124

47:                                               ; preds = %1
  %48 = load i32*, i32** %11, align 8
  %49 = load %struct.crypto_ccm_req_priv_ctx*, %struct.crypto_ccm_req_priv_ctx** %6, align 8
  %50 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, %struct.crypto_ccm_req_priv_ctx* %49, i32 0, i32 0
  %51 = load %struct.scatterlist*, %struct.scatterlist** %50, align 8
  %52 = call i32 @sg_next(%struct.scatterlist* %51)
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @scatterwalk_map_and_copy(i32* %48, i32 %52, i32 %53, i32 %54, i32 0)
  %56 = load %struct.crypto_ccm_req_priv_ctx*, %struct.crypto_ccm_req_priv_ctx** %6, align 8
  %57 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, %struct.crypto_ccm_req_priv_ctx* %56, i32 0, i32 0
  %58 = load %struct.scatterlist*, %struct.scatterlist** %57, align 8
  store %struct.scatterlist* %58, %struct.scatterlist** %8, align 8
  %59 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %60 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %63 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %61, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %47
  %67 = load %struct.crypto_ccm_req_priv_ctx*, %struct.crypto_ccm_req_priv_ctx** %6, align 8
  %68 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, %struct.crypto_ccm_req_priv_ctx* %67, i32 0, i32 2
  %69 = load %struct.scatterlist*, %struct.scatterlist** %68, align 8
  store %struct.scatterlist* %69, %struct.scatterlist** %8, align 8
  br label %70

70:                                               ; preds = %66, %47
  %71 = load i32*, i32** %13, align 8
  %72 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %73 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @memcpy(i32* %71, i32 %74, i32 16)
  %76 = load %struct.skcipher_request*, %struct.skcipher_request** %7, align 8
  %77 = load %struct.crypto_ccm_ctx*, %struct.crypto_ccm_ctx** %5, align 8
  %78 = getelementptr inbounds %struct.crypto_ccm_ctx, %struct.crypto_ccm_ctx* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @skcipher_request_set_tfm(%struct.skcipher_request* %76, i32 %79)
  %81 = load %struct.skcipher_request*, %struct.skcipher_request** %7, align 8
  %82 = load %struct.crypto_ccm_req_priv_ctx*, %struct.crypto_ccm_req_priv_ctx** %6, align 8
  %83 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, %struct.crypto_ccm_req_priv_ctx* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @crypto_ccm_decrypt_done, align 4
  %86 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %87 = call i32 @skcipher_request_set_callback(%struct.skcipher_request* %81, i32 %84, i32 %85, %struct.aead_request* %86)
  %88 = load %struct.skcipher_request*, %struct.skcipher_request** %7, align 8
  %89 = load %struct.crypto_ccm_req_priv_ctx*, %struct.crypto_ccm_req_priv_ctx** %6, align 8
  %90 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, %struct.crypto_ccm_req_priv_ctx* %89, i32 0, i32 0
  %91 = load %struct.scatterlist*, %struct.scatterlist** %90, align 8
  %92 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %93 = load i32, i32* %10, align 4
  %94 = add i32 %93, 16
  %95 = load i32*, i32** %13, align 8
  %96 = call i32 @skcipher_request_set_crypt(%struct.skcipher_request* %88, %struct.scatterlist* %91, %struct.scatterlist* %92, i32 %94, i32* %95)
  %97 = load %struct.skcipher_request*, %struct.skcipher_request** %7, align 8
  %98 = call i32 @crypto_skcipher_decrypt(%struct.skcipher_request* %97)
  store i32 %98, i32* %14, align 4
  %99 = load i32, i32* %14, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %70
  %102 = load i32, i32* %14, align 4
  store i32 %102, i32* %2, align 4
  br label %124

103:                                              ; preds = %70
  %104 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %105 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %106 = call i32 @sg_next(%struct.scatterlist* %105)
  %107 = load i32, i32* %10, align 4
  %108 = call i32 @crypto_ccm_auth(%struct.aead_request* %104, i32 %106, i32 %107)
  store i32 %108, i32* %14, align 4
  %109 = load i32, i32* %14, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %103
  %112 = load i32, i32* %14, align 4
  store i32 %112, i32* %2, align 4
  br label %124

113:                                              ; preds = %103
  %114 = load i32*, i32** %11, align 8
  %115 = load i32*, i32** %12, align 8
  %116 = load i32, i32* %9, align 4
  %117 = call i64 @crypto_memneq(i32* %114, i32* %115, i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %113
  %120 = load i32, i32* @EBADMSG, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %2, align 4
  br label %124

122:                                              ; preds = %113
  %123 = load i32, i32* %14, align 4
  store i32 %123, i32* %2, align 4
  br label %124

124:                                              ; preds = %122, %119, %111, %101, %45
  %125 = load i32, i32* %2, align 4
  ret i32 %125
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.crypto_ccm_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local %struct.crypto_ccm_req_priv_ctx* @crypto_ccm_reqctx(%struct.aead_request*) #1

declare dso_local i32 @crypto_aead_authsize(%struct.crypto_aead*) #1

declare dso_local i32 @crypto_ccm_init_crypt(%struct.aead_request*, i32*) #1

declare dso_local i32 @scatterwalk_map_and_copy(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @sg_next(%struct.scatterlist*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @skcipher_request_set_tfm(%struct.skcipher_request*, i32) #1

declare dso_local i32 @skcipher_request_set_callback(%struct.skcipher_request*, i32, i32, %struct.aead_request*) #1

declare dso_local i32 @skcipher_request_set_crypt(%struct.skcipher_request*, %struct.scatterlist*, %struct.scatterlist*, i32, i32*) #1

declare dso_local i32 @crypto_skcipher_decrypt(%struct.skcipher_request*) #1

declare dso_local i32 @crypto_ccm_auth(%struct.aead_request*, i32, i32) #1

declare dso_local i64 @crypto_memneq(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
