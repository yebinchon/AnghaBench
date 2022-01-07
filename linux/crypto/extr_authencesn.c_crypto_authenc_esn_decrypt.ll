; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_authencesn.c_crypto_authenc_esn_decrypt.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_authencesn.c_crypto_authenc_esn_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32, i32, %struct.scatterlist*, %struct.scatterlist* }
%struct.scatterlist = type { i32 }
%struct.crypto_aead = type { i32 }
%struct.authenc_esn_request_ctx = type { i32, i64 }
%struct.crypto_authenc_esn_ctx = type { %struct.crypto_ahash*, i64 }
%struct.crypto_ahash = type { i32 }
%struct.ahash_request = type { i32 }

@authenc_esn_verify_ahash_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*)* @crypto_authenc_esn_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_authenc_esn_decrypt(%struct.aead_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aead_request*, align 8
  %4 = alloca %struct.crypto_aead*, align 8
  %5 = alloca %struct.authenc_esn_request_ctx*, align 8
  %6 = alloca %struct.crypto_authenc_esn_ctx*, align 8
  %7 = alloca %struct.ahash_request*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.crypto_ahash*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.scatterlist*, align 8
  %15 = alloca [2 x i32], align 4
  %16 = alloca i32, align 4
  store %struct.aead_request* %0, %struct.aead_request** %3, align 8
  %17 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %18 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %17)
  store %struct.crypto_aead* %18, %struct.crypto_aead** %4, align 8
  %19 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %20 = call %struct.authenc_esn_request_ctx* @aead_request_ctx(%struct.aead_request* %19)
  store %struct.authenc_esn_request_ctx* %20, %struct.authenc_esn_request_ctx** %5, align 8
  %21 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %22 = call %struct.crypto_authenc_esn_ctx* @crypto_aead_ctx(%struct.crypto_aead* %21)
  store %struct.crypto_authenc_esn_ctx* %22, %struct.crypto_authenc_esn_ctx** %6, align 8
  %23 = load %struct.authenc_esn_request_ctx*, %struct.authenc_esn_request_ctx** %5, align 8
  %24 = getelementptr inbounds %struct.authenc_esn_request_ctx, %struct.authenc_esn_request_ctx* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.crypto_authenc_esn_ctx*, %struct.crypto_authenc_esn_ctx** %6, align 8
  %27 = getelementptr inbounds %struct.crypto_authenc_esn_ctx, %struct.crypto_authenc_esn_ctx* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %25, %28
  %30 = inttoptr i64 %29 to i8*
  %31 = bitcast i8* %30 to %struct.ahash_request*
  store %struct.ahash_request* %31, %struct.ahash_request** %7, align 8
  %32 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %33 = call i32 @crypto_aead_authsize(%struct.crypto_aead* %32)
  store i32 %33, i32* %8, align 4
  %34 = load %struct.crypto_authenc_esn_ctx*, %struct.crypto_authenc_esn_ctx** %6, align 8
  %35 = getelementptr inbounds %struct.crypto_authenc_esn_ctx, %struct.crypto_authenc_esn_ctx* %34, i32 0, i32 0
  %36 = load %struct.crypto_ahash*, %struct.crypto_ahash** %35, align 8
  store %struct.crypto_ahash* %36, %struct.crypto_ahash** %9, align 8
  %37 = load %struct.authenc_esn_request_ctx*, %struct.authenc_esn_request_ctx** %5, align 8
  %38 = getelementptr inbounds %struct.authenc_esn_request_ctx, %struct.authenc_esn_request_ctx* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to i32*
  %41 = load %struct.crypto_ahash*, %struct.crypto_ahash** %9, align 8
  %42 = call i64 @crypto_ahash_alignmask(%struct.crypto_ahash* %41)
  %43 = add nsw i64 %42, 1
  %44 = call i32* @PTR_ALIGN(i32* %40, i64 %43)
  store i32* %44, i32** %10, align 8
  %45 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %46 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %11, align 4
  %48 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %49 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %12, align 4
  %51 = load i32*, i32** %10, align 8
  %52 = load %struct.crypto_ahash*, %struct.crypto_ahash** %9, align 8
  %53 = call i32 @crypto_ahash_digestsize(%struct.crypto_ahash* %52)
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  store i32* %55, i32** %13, align 8
  %56 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %57 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %56, i32 0, i32 3
  %58 = load %struct.scatterlist*, %struct.scatterlist** %57, align 8
  store %struct.scatterlist* %58, %struct.scatterlist** %14, align 8
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %12, align 4
  %61 = sub i32 %60, %59
  store i32 %61, i32* %12, align 4
  %62 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %63 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %62, i32 0, i32 2
  %64 = load %struct.scatterlist*, %struct.scatterlist** %63, align 8
  %65 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %66 = icmp ne %struct.scatterlist* %64, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %1
  %68 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %12, align 4
  %71 = add i32 %69, %70
  %72 = call i32 @crypto_authenc_esn_copy(%struct.aead_request* %68, i32 %71)
  store i32 %72, i32* %16, align 4
  %73 = load i32, i32* %16, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %67
  %76 = load i32, i32* %16, align 4
  store i32 %76, i32* %2, align 4
  br label %142

77:                                               ; preds = %67
  br label %78

78:                                               ; preds = %77, %1
  %79 = load i32*, i32** %13, align 8
  %80 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %81 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %80, i32 0, i32 2
  %82 = load %struct.scatterlist*, %struct.scatterlist** %81, align 8
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* %12, align 4
  %85 = add i32 %83, %84
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @scatterwalk_map_and_copy(i32* %79, %struct.scatterlist* %82, i32 %85, i32 %86, i32 0)
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %78
  br label %137

91:                                               ; preds = %78
  %92 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  %93 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %94 = call i32 @scatterwalk_map_and_copy(i32* %92, %struct.scatterlist* %93, i32 0, i32 8, i32 0)
  %95 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  %96 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %97 = call i32 @scatterwalk_map_and_copy(i32* %95, %struct.scatterlist* %96, i32 4, i32 4, i32 1)
  %98 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  %99 = getelementptr inbounds i32, i32* %98, i64 1
  %100 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* %12, align 4
  %103 = add i32 %101, %102
  %104 = call i32 @scatterwalk_map_and_copy(i32* %99, %struct.scatterlist* %100, i32 %103, i32 4, i32 1)
  %105 = load %struct.authenc_esn_request_ctx*, %struct.authenc_esn_request_ctx** %5, align 8
  %106 = getelementptr inbounds %struct.authenc_esn_request_ctx, %struct.authenc_esn_request_ctx* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @sg_init_table(i32 %107, i32 2)
  %109 = load %struct.authenc_esn_request_ctx*, %struct.authenc_esn_request_ctx** %5, align 8
  %110 = getelementptr inbounds %struct.authenc_esn_request_ctx, %struct.authenc_esn_request_ctx* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %113 = call %struct.scatterlist* @scatterwalk_ffwd(i32 %111, %struct.scatterlist* %112, i32 4)
  store %struct.scatterlist* %113, %struct.scatterlist** %14, align 8
  %114 = load %struct.ahash_request*, %struct.ahash_request** %7, align 8
  %115 = load %struct.crypto_ahash*, %struct.crypto_ahash** %9, align 8
  %116 = call i32 @ahash_request_set_tfm(%struct.ahash_request* %114, %struct.crypto_ahash* %115)
  %117 = load %struct.ahash_request*, %struct.ahash_request** %7, align 8
  %118 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %119 = load i32*, i32** %10, align 8
  %120 = load i32, i32* %11, align 4
  %121 = load i32, i32* %12, align 4
  %122 = add i32 %120, %121
  %123 = call i32 @ahash_request_set_crypt(%struct.ahash_request* %117, %struct.scatterlist* %118, i32* %119, i32 %122)
  %124 = load %struct.ahash_request*, %struct.ahash_request** %7, align 8
  %125 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %126 = call i32 @aead_request_flags(%struct.aead_request* %125)
  %127 = load i32, i32* @authenc_esn_verify_ahash_done, align 4
  %128 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %129 = call i32 @ahash_request_set_callback(%struct.ahash_request* %124, i32 %126, i32 %127, %struct.aead_request* %128)
  %130 = load %struct.ahash_request*, %struct.ahash_request** %7, align 8
  %131 = call i32 @crypto_ahash_digest(%struct.ahash_request* %130)
  store i32 %131, i32* %16, align 4
  %132 = load i32, i32* %16, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %91
  %135 = load i32, i32* %16, align 4
  store i32 %135, i32* %2, align 4
  br label %142

136:                                              ; preds = %91
  br label %137

137:                                              ; preds = %136, %90
  %138 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %139 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %140 = call i32 @aead_request_flags(%struct.aead_request* %139)
  %141 = call i32 @crypto_authenc_esn_decrypt_tail(%struct.aead_request* %138, i32 %140)
  store i32 %141, i32* %2, align 4
  br label %142

142:                                              ; preds = %137, %134, %75
  %143 = load i32, i32* %2, align 4
  ret i32 %143
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.authenc_esn_request_ctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local %struct.crypto_authenc_esn_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local i32 @crypto_aead_authsize(%struct.crypto_aead*) #1

declare dso_local i32* @PTR_ALIGN(i32*, i64) #1

declare dso_local i64 @crypto_ahash_alignmask(%struct.crypto_ahash*) #1

declare dso_local i32 @crypto_ahash_digestsize(%struct.crypto_ahash*) #1

declare dso_local i32 @crypto_authenc_esn_copy(%struct.aead_request*, i32) #1

declare dso_local i32 @scatterwalk_map_and_copy(i32*, %struct.scatterlist*, i32, i32, i32) #1

declare dso_local i32 @sg_init_table(i32, i32) #1

declare dso_local %struct.scatterlist* @scatterwalk_ffwd(i32, %struct.scatterlist*, i32) #1

declare dso_local i32 @ahash_request_set_tfm(%struct.ahash_request*, %struct.crypto_ahash*) #1

declare dso_local i32 @ahash_request_set_crypt(%struct.ahash_request*, %struct.scatterlist*, i32*, i32) #1

declare dso_local i32 @ahash_request_set_callback(%struct.ahash_request*, i32, i32, %struct.aead_request*) #1

declare dso_local i32 @aead_request_flags(%struct.aead_request*) #1

declare dso_local i32 @crypto_ahash_digest(%struct.ahash_request*) #1

declare dso_local i32 @crypto_authenc_esn_decrypt_tail(%struct.aead_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
