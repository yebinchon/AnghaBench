; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_authenc.c_crypto_authenc_decrypt_tail.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_authenc.c_crypto_authenc_decrypt_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32, i64, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.crypto_aead = type { i32 }
%struct.aead_instance = type { i32 }
%struct.crypto_authenc_ctx = type { i32 }
%struct.authenc_instance_ctx = type { i64 }
%struct.authenc_request_ctx = type { i32, i32, i64 }
%struct.ahash_request = type { i32*, i32 }
%struct.skcipher_request = type { i32 }
%struct.scatterlist = type { i32 }

@EBADMSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*, i32)* @crypto_authenc_decrypt_tail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_authenc_decrypt_tail(%struct.aead_request* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.aead_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.crypto_aead*, align 8
  %7 = alloca %struct.aead_instance*, align 8
  %8 = alloca %struct.crypto_authenc_ctx*, align 8
  %9 = alloca %struct.authenc_instance_ctx*, align 8
  %10 = alloca %struct.authenc_request_ctx*, align 8
  %11 = alloca %struct.ahash_request*, align 8
  %12 = alloca %struct.skcipher_request*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.scatterlist*, align 8
  %16 = alloca %struct.scatterlist*, align 8
  store %struct.aead_request* %0, %struct.aead_request** %4, align 8
  store i32 %1, i32* %5, align 4
  %17 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %18 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %17)
  store %struct.crypto_aead* %18, %struct.crypto_aead** %6, align 8
  %19 = load %struct.crypto_aead*, %struct.crypto_aead** %6, align 8
  %20 = call %struct.aead_instance* @aead_alg_instance(%struct.crypto_aead* %19)
  store %struct.aead_instance* %20, %struct.aead_instance** %7, align 8
  %21 = load %struct.crypto_aead*, %struct.crypto_aead** %6, align 8
  %22 = call %struct.crypto_authenc_ctx* @crypto_aead_ctx(%struct.crypto_aead* %21)
  store %struct.crypto_authenc_ctx* %22, %struct.crypto_authenc_ctx** %8, align 8
  %23 = load %struct.aead_instance*, %struct.aead_instance** %7, align 8
  %24 = call %struct.authenc_instance_ctx* @aead_instance_ctx(%struct.aead_instance* %23)
  store %struct.authenc_instance_ctx* %24, %struct.authenc_instance_ctx** %9, align 8
  %25 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %26 = call %struct.authenc_request_ctx* @aead_request_ctx(%struct.aead_request* %25)
  store %struct.authenc_request_ctx* %26, %struct.authenc_request_ctx** %10, align 8
  %27 = load %struct.authenc_request_ctx*, %struct.authenc_request_ctx** %10, align 8
  %28 = getelementptr inbounds %struct.authenc_request_ctx, %struct.authenc_request_ctx* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.authenc_instance_ctx*, %struct.authenc_instance_ctx** %9, align 8
  %31 = getelementptr inbounds %struct.authenc_instance_ctx, %struct.authenc_instance_ctx* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %29, %32
  %34 = inttoptr i64 %33 to i8*
  %35 = bitcast i8* %34 to %struct.ahash_request*
  store %struct.ahash_request* %35, %struct.ahash_request** %11, align 8
  %36 = load %struct.authenc_request_ctx*, %struct.authenc_request_ctx** %10, align 8
  %37 = getelementptr inbounds %struct.authenc_request_ctx, %struct.authenc_request_ctx* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.authenc_instance_ctx*, %struct.authenc_instance_ctx** %9, align 8
  %40 = getelementptr inbounds %struct.authenc_instance_ctx, %struct.authenc_instance_ctx* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %38, %41
  %43 = inttoptr i64 %42 to i8*
  %44 = bitcast i8* %43 to %struct.skcipher_request*
  store %struct.skcipher_request* %44, %struct.skcipher_request** %12, align 8
  %45 = load %struct.crypto_aead*, %struct.crypto_aead** %6, align 8
  %46 = call i32 @crypto_aead_authsize(%struct.crypto_aead* %45)
  store i32 %46, i32* %13, align 4
  %47 = load %struct.ahash_request*, %struct.ahash_request** %11, align 8
  %48 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %13, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32* %52, i32** %14, align 8
  %53 = load i32*, i32** %14, align 8
  %54 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %55 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.ahash_request*, %struct.ahash_request** %11, align 8
  %58 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %13, align 4
  %61 = call i32 @scatterwalk_map_and_copy(i32* %53, i32 %56, i32 %59, i32 %60, i32 0)
  %62 = load i32*, i32** %14, align 8
  %63 = load %struct.ahash_request*, %struct.ahash_request** %11, align 8
  %64 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %13, align 4
  %67 = call i64 @crypto_memneq(i32* %62, i32* %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %2
  %70 = load i32, i32* @EBADMSG, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %135

72:                                               ; preds = %2
  %73 = load %struct.authenc_request_ctx*, %struct.authenc_request_ctx** %10, align 8
  %74 = getelementptr inbounds %struct.authenc_request_ctx, %struct.authenc_request_ctx* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %77 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %80 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = call %struct.scatterlist* @scatterwalk_ffwd(i32 %75, i32 %78, i32 %81)
  store %struct.scatterlist* %82, %struct.scatterlist** %15, align 8
  %83 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  store %struct.scatterlist* %83, %struct.scatterlist** %16, align 8
  %84 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %85 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %88 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %86, %89
  br i1 %90, label %91, label %102

91:                                               ; preds = %72
  %92 = load %struct.authenc_request_ctx*, %struct.authenc_request_ctx** %10, align 8
  %93 = getelementptr inbounds %struct.authenc_request_ctx, %struct.authenc_request_ctx* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %96 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %99 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = call %struct.scatterlist* @scatterwalk_ffwd(i32 %94, i32 %97, i32 %100)
  store %struct.scatterlist* %101, %struct.scatterlist** %16, align 8
  br label %102

102:                                              ; preds = %91, %72
  %103 = load %struct.skcipher_request*, %struct.skcipher_request** %12, align 8
  %104 = load %struct.crypto_authenc_ctx*, %struct.crypto_authenc_ctx** %8, align 8
  %105 = getelementptr inbounds %struct.crypto_authenc_ctx, %struct.crypto_authenc_ctx* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @skcipher_request_set_tfm(%struct.skcipher_request* %103, i32 %106)
  %108 = load %struct.skcipher_request*, %struct.skcipher_request** %12, align 8
  %109 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %110 = call i32 @aead_request_flags(%struct.aead_request* %109)
  %111 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %112 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %116 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @skcipher_request_set_callback(%struct.skcipher_request* %108, i32 %110, i32 %114, i32 %118)
  %120 = load %struct.skcipher_request*, %struct.skcipher_request** %12, align 8
  %121 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %122 = load %struct.scatterlist*, %struct.scatterlist** %16, align 8
  %123 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %124 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load i32, i32* %13, align 4
  %127 = zext i32 %126 to i64
  %128 = sub nsw i64 %125, %127
  %129 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %130 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @skcipher_request_set_crypt(%struct.skcipher_request* %120, %struct.scatterlist* %121, %struct.scatterlist* %122, i64 %128, i32 %131)
  %133 = load %struct.skcipher_request*, %struct.skcipher_request** %12, align 8
  %134 = call i32 @crypto_skcipher_decrypt(%struct.skcipher_request* %133)
  store i32 %134, i32* %3, align 4
  br label %135

135:                                              ; preds = %102, %69
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.aead_instance* @aead_alg_instance(%struct.crypto_aead*) #1

declare dso_local %struct.crypto_authenc_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local %struct.authenc_instance_ctx* @aead_instance_ctx(%struct.aead_instance*) #1

declare dso_local %struct.authenc_request_ctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local i32 @crypto_aead_authsize(%struct.crypto_aead*) #1

declare dso_local i32 @scatterwalk_map_and_copy(i32*, i32, i32, i32, i32) #1

declare dso_local i64 @crypto_memneq(i32*, i32*, i32) #1

declare dso_local %struct.scatterlist* @scatterwalk_ffwd(i32, i32, i32) #1

declare dso_local i32 @skcipher_request_set_tfm(%struct.skcipher_request*, i32) #1

declare dso_local i32 @skcipher_request_set_callback(%struct.skcipher_request*, i32, i32, i32) #1

declare dso_local i32 @aead_request_flags(%struct.aead_request*) #1

declare dso_local i32 @skcipher_request_set_crypt(%struct.skcipher_request*, %struct.scatterlist*, %struct.scatterlist*, i64, i32) #1

declare dso_local i32 @crypto_skcipher_decrypt(%struct.skcipher_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
