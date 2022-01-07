; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_authencesn.c_crypto_authenc_esn_decrypt_tail.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_authencesn.c_crypto_authenc_esn_decrypt_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32, i32, i32, %struct.TYPE_2__, %struct.scatterlist* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.scatterlist = type { i32 }
%struct.crypto_aead = type { i32 }
%struct.authenc_esn_request_ctx = type { i32, i64 }
%struct.crypto_authenc_esn_ctx = type { i32, %struct.crypto_ahash*, i64 }
%struct.crypto_ahash = type { i32 }
%struct.skcipher_request = type { i32 }

@EBADMSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*, i32)* @crypto_authenc_esn_decrypt_tail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_authenc_esn_decrypt_tail(%struct.aead_request* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.aead_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.crypto_aead*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.authenc_esn_request_ctx*, align 8
  %9 = alloca %struct.crypto_authenc_esn_ctx*, align 8
  %10 = alloca %struct.skcipher_request*, align 8
  %11 = alloca %struct.crypto_ahash*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.scatterlist*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca [2 x i32], align 4
  store %struct.aead_request* %0, %struct.aead_request** %4, align 8
  store i32 %1, i32* %5, align 4
  %18 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %19 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %18)
  store %struct.crypto_aead* %19, %struct.crypto_aead** %6, align 8
  %20 = load %struct.crypto_aead*, %struct.crypto_aead** %6, align 8
  %21 = call i32 @crypto_aead_authsize(%struct.crypto_aead* %20)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %23 = call %struct.authenc_esn_request_ctx* @aead_request_ctx(%struct.aead_request* %22)
  store %struct.authenc_esn_request_ctx* %23, %struct.authenc_esn_request_ctx** %8, align 8
  %24 = load %struct.crypto_aead*, %struct.crypto_aead** %6, align 8
  %25 = call %struct.crypto_authenc_esn_ctx* @crypto_aead_ctx(%struct.crypto_aead* %24)
  store %struct.crypto_authenc_esn_ctx* %25, %struct.crypto_authenc_esn_ctx** %9, align 8
  %26 = load %struct.authenc_esn_request_ctx*, %struct.authenc_esn_request_ctx** %8, align 8
  %27 = getelementptr inbounds %struct.authenc_esn_request_ctx, %struct.authenc_esn_request_ctx* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.crypto_authenc_esn_ctx*, %struct.crypto_authenc_esn_ctx** %9, align 8
  %30 = getelementptr inbounds %struct.crypto_authenc_esn_ctx, %struct.crypto_authenc_esn_ctx* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %28, %31
  %33 = inttoptr i64 %32 to i8*
  %34 = bitcast i8* %33 to %struct.skcipher_request*
  store %struct.skcipher_request* %34, %struct.skcipher_request** %10, align 8
  %35 = load %struct.crypto_authenc_esn_ctx*, %struct.crypto_authenc_esn_ctx** %9, align 8
  %36 = getelementptr inbounds %struct.crypto_authenc_esn_ctx, %struct.crypto_authenc_esn_ctx* %35, i32 0, i32 1
  %37 = load %struct.crypto_ahash*, %struct.crypto_ahash** %36, align 8
  store %struct.crypto_ahash* %37, %struct.crypto_ahash** %11, align 8
  %38 = load %struct.authenc_esn_request_ctx*, %struct.authenc_esn_request_ctx** %8, align 8
  %39 = getelementptr inbounds %struct.authenc_esn_request_ctx, %struct.authenc_esn_request_ctx* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to i32*
  %42 = load %struct.crypto_ahash*, %struct.crypto_ahash** %11, align 8
  %43 = call i64 @crypto_ahash_alignmask(%struct.crypto_ahash* %42)
  %44 = add nsw i64 %43, 1
  %45 = call i32* @PTR_ALIGN(i32* %41, i64 %44)
  store i32* %45, i32** %12, align 8
  %46 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %47 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sub i32 %48, %49
  store i32 %50, i32* %13, align 4
  %51 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %52 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %14, align 4
  %54 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %55 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %54, i32 0, i32 4
  %56 = load %struct.scatterlist*, %struct.scatterlist** %55, align 8
  store %struct.scatterlist* %56, %struct.scatterlist** %15, align 8
  %57 = load i32*, i32** %12, align 8
  %58 = load %struct.crypto_ahash*, %struct.crypto_ahash** %11, align 8
  %59 = call i32 @crypto_ahash_digestsize(%struct.crypto_ahash* %58)
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  store i32* %61, i32** %16, align 8
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %2
  br label %88

65:                                               ; preds = %2
  %66 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  %67 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %68 = call i32 @scatterwalk_map_and_copy(i32* %66, %struct.scatterlist* %67, i32 4, i32 4, i32 0)
  %69 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* %13, align 4
  %74 = add i32 %72, %73
  %75 = call i32 @scatterwalk_map_and_copy(i32* %70, %struct.scatterlist* %71, i32 %74, i32 4, i32 0)
  %76 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  %77 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %78 = call i32 @scatterwalk_map_and_copy(i32* %76, %struct.scatterlist* %77, i32 0, i32 8, i32 1)
  %79 = load i32*, i32** %16, align 8
  %80 = load i32*, i32** %12, align 8
  %81 = load i32, i32* %7, align 4
  %82 = call i64 @crypto_memneq(i32* %79, i32* %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %65
  %85 = load i32, i32* @EBADMSG, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %3, align 4
  br label %125

87:                                               ; preds = %65
  br label %88

88:                                               ; preds = %87, %64
  %89 = load %struct.authenc_esn_request_ctx*, %struct.authenc_esn_request_ctx** %8, align 8
  %90 = getelementptr inbounds %struct.authenc_esn_request_ctx, %struct.authenc_esn_request_ctx* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @sg_init_table(i32 %91, i32 2)
  %93 = load %struct.authenc_esn_request_ctx*, %struct.authenc_esn_request_ctx** %8, align 8
  %94 = getelementptr inbounds %struct.authenc_esn_request_ctx, %struct.authenc_esn_request_ctx* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %97 = load i32, i32* %14, align 4
  %98 = call %struct.scatterlist* @scatterwalk_ffwd(i32 %95, %struct.scatterlist* %96, i32 %97)
  store %struct.scatterlist* %98, %struct.scatterlist** %15, align 8
  %99 = load %struct.skcipher_request*, %struct.skcipher_request** %10, align 8
  %100 = load %struct.crypto_authenc_esn_ctx*, %struct.crypto_authenc_esn_ctx** %9, align 8
  %101 = getelementptr inbounds %struct.crypto_authenc_esn_ctx, %struct.crypto_authenc_esn_ctx* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @skcipher_request_set_tfm(%struct.skcipher_request* %99, i32 %102)
  %104 = load %struct.skcipher_request*, %struct.skcipher_request** %10, align 8
  %105 = load i32, i32* %5, align 4
  %106 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %107 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %111 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @skcipher_request_set_callback(%struct.skcipher_request* %104, i32 %105, i32 %109, i32 %113)
  %115 = load %struct.skcipher_request*, %struct.skcipher_request** %10, align 8
  %116 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %117 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %118 = load i32, i32* %13, align 4
  %119 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %120 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @skcipher_request_set_crypt(%struct.skcipher_request* %115, %struct.scatterlist* %116, %struct.scatterlist* %117, i32 %118, i32 %121)
  %123 = load %struct.skcipher_request*, %struct.skcipher_request** %10, align 8
  %124 = call i32 @crypto_skcipher_decrypt(%struct.skcipher_request* %123)
  store i32 %124, i32* %3, align 4
  br label %125

125:                                              ; preds = %88, %84
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local i32 @crypto_aead_authsize(%struct.crypto_aead*) #1

declare dso_local %struct.authenc_esn_request_ctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local %struct.crypto_authenc_esn_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local i32* @PTR_ALIGN(i32*, i64) #1

declare dso_local i64 @crypto_ahash_alignmask(%struct.crypto_ahash*) #1

declare dso_local i32 @crypto_ahash_digestsize(%struct.crypto_ahash*) #1

declare dso_local i32 @scatterwalk_map_and_copy(i32*, %struct.scatterlist*, i32, i32, i32) #1

declare dso_local i64 @crypto_memneq(i32*, i32*, i32) #1

declare dso_local i32 @sg_init_table(i32, i32) #1

declare dso_local %struct.scatterlist* @scatterwalk_ffwd(i32, %struct.scatterlist*, i32) #1

declare dso_local i32 @skcipher_request_set_tfm(%struct.skcipher_request*, i32) #1

declare dso_local i32 @skcipher_request_set_callback(%struct.skcipher_request*, i32, i32, i32) #1

declare dso_local i32 @skcipher_request_set_crypt(%struct.skcipher_request*, %struct.scatterlist*, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @crypto_skcipher_decrypt(%struct.skcipher_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
