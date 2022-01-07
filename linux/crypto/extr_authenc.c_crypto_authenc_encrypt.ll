; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_authenc.c_crypto_authenc_encrypt.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_authenc.c_crypto_authenc_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32, i32, i32, i32, i32 }
%struct.crypto_aead = type { i32 }
%struct.aead_instance = type { i32 }
%struct.crypto_authenc_ctx = type { %struct.crypto_skcipher* }
%struct.crypto_skcipher = type { i32 }
%struct.authenc_instance_ctx = type { i64 }
%struct.authenc_request_ctx = type { i32, i32, i64 }
%struct.skcipher_request = type { i32 }
%struct.scatterlist = type { i32 }

@crypto_authenc_encrypt_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*)* @crypto_authenc_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_authenc_encrypt(%struct.aead_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aead_request*, align 8
  %4 = alloca %struct.crypto_aead*, align 8
  %5 = alloca %struct.aead_instance*, align 8
  %6 = alloca %struct.crypto_authenc_ctx*, align 8
  %7 = alloca %struct.authenc_instance_ctx*, align 8
  %8 = alloca %struct.authenc_request_ctx*, align 8
  %9 = alloca %struct.crypto_skcipher*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.skcipher_request*, align 8
  %12 = alloca %struct.scatterlist*, align 8
  %13 = alloca %struct.scatterlist*, align 8
  %14 = alloca i32, align 4
  store %struct.aead_request* %0, %struct.aead_request** %3, align 8
  %15 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %16 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %15)
  store %struct.crypto_aead* %16, %struct.crypto_aead** %4, align 8
  %17 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %18 = call %struct.aead_instance* @aead_alg_instance(%struct.crypto_aead* %17)
  store %struct.aead_instance* %18, %struct.aead_instance** %5, align 8
  %19 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %20 = call %struct.crypto_authenc_ctx* @crypto_aead_ctx(%struct.crypto_aead* %19)
  store %struct.crypto_authenc_ctx* %20, %struct.crypto_authenc_ctx** %6, align 8
  %21 = load %struct.aead_instance*, %struct.aead_instance** %5, align 8
  %22 = call %struct.authenc_instance_ctx* @aead_instance_ctx(%struct.aead_instance* %21)
  store %struct.authenc_instance_ctx* %22, %struct.authenc_instance_ctx** %7, align 8
  %23 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %24 = call %struct.authenc_request_ctx* @aead_request_ctx(%struct.aead_request* %23)
  store %struct.authenc_request_ctx* %24, %struct.authenc_request_ctx** %8, align 8
  %25 = load %struct.crypto_authenc_ctx*, %struct.crypto_authenc_ctx** %6, align 8
  %26 = getelementptr inbounds %struct.crypto_authenc_ctx, %struct.crypto_authenc_ctx* %25, i32 0, i32 0
  %27 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %26, align 8
  store %struct.crypto_skcipher* %27, %struct.crypto_skcipher** %9, align 8
  %28 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %29 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %10, align 4
  %31 = load %struct.authenc_request_ctx*, %struct.authenc_request_ctx** %8, align 8
  %32 = getelementptr inbounds %struct.authenc_request_ctx, %struct.authenc_request_ctx* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.authenc_instance_ctx*, %struct.authenc_instance_ctx** %7, align 8
  %35 = getelementptr inbounds %struct.authenc_instance_ctx, %struct.authenc_instance_ctx* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %33, %36
  %38 = inttoptr i64 %37 to i8*
  %39 = bitcast i8* %38 to %struct.skcipher_request*
  store %struct.skcipher_request* %39, %struct.skcipher_request** %11, align 8
  %40 = load %struct.authenc_request_ctx*, %struct.authenc_request_ctx** %8, align 8
  %41 = getelementptr inbounds %struct.authenc_request_ctx, %struct.authenc_request_ctx* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %44 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %47 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call %struct.scatterlist* @scatterwalk_ffwd(i32 %42, i32 %45, i32 %48)
  store %struct.scatterlist* %49, %struct.scatterlist** %12, align 8
  %50 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  store %struct.scatterlist* %50, %struct.scatterlist** %13, align 8
  %51 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %52 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %55 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %53, %56
  br i1 %57, label %58, label %76

58:                                               ; preds = %1
  %59 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %60 = call i32 @crypto_authenc_copy_assoc(%struct.aead_request* %59)
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* %14, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = load i32, i32* %14, align 4
  store i32 %64, i32* %2, align 4
  br label %105

65:                                               ; preds = %58
  %66 = load %struct.authenc_request_ctx*, %struct.authenc_request_ctx** %8, align 8
  %67 = getelementptr inbounds %struct.authenc_request_ctx, %struct.authenc_request_ctx* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %70 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %73 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call %struct.scatterlist* @scatterwalk_ffwd(i32 %68, i32 %71, i32 %74)
  store %struct.scatterlist* %75, %struct.scatterlist** %13, align 8
  br label %76

76:                                               ; preds = %65, %1
  %77 = load %struct.skcipher_request*, %struct.skcipher_request** %11, align 8
  %78 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %9, align 8
  %79 = call i32 @skcipher_request_set_tfm(%struct.skcipher_request* %77, %struct.crypto_skcipher* %78)
  %80 = load %struct.skcipher_request*, %struct.skcipher_request** %11, align 8
  %81 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %82 = call i32 @aead_request_flags(%struct.aead_request* %81)
  %83 = load i32, i32* @crypto_authenc_encrypt_done, align 4
  %84 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %85 = call i32 @skcipher_request_set_callback(%struct.skcipher_request* %80, i32 %82, i32 %83, %struct.aead_request* %84)
  %86 = load %struct.skcipher_request*, %struct.skcipher_request** %11, align 8
  %87 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %88 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %89 = load i32, i32* %10, align 4
  %90 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %91 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @skcipher_request_set_crypt(%struct.skcipher_request* %86, %struct.scatterlist* %87, %struct.scatterlist* %88, i32 %89, i32 %92)
  %94 = load %struct.skcipher_request*, %struct.skcipher_request** %11, align 8
  %95 = call i32 @crypto_skcipher_encrypt(%struct.skcipher_request* %94)
  store i32 %95, i32* %14, align 4
  %96 = load i32, i32* %14, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %76
  %99 = load i32, i32* %14, align 4
  store i32 %99, i32* %2, align 4
  br label %105

100:                                              ; preds = %76
  %101 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %102 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %103 = call i32 @aead_request_flags(%struct.aead_request* %102)
  %104 = call i32 @crypto_authenc_genicv(%struct.aead_request* %101, i32 %103)
  store i32 %104, i32* %2, align 4
  br label %105

105:                                              ; preds = %100, %98, %63
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.aead_instance* @aead_alg_instance(%struct.crypto_aead*) #1

declare dso_local %struct.crypto_authenc_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local %struct.authenc_instance_ctx* @aead_instance_ctx(%struct.aead_instance*) #1

declare dso_local %struct.authenc_request_ctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local %struct.scatterlist* @scatterwalk_ffwd(i32, i32, i32) #1

declare dso_local i32 @crypto_authenc_copy_assoc(%struct.aead_request*) #1

declare dso_local i32 @skcipher_request_set_tfm(%struct.skcipher_request*, %struct.crypto_skcipher*) #1

declare dso_local i32 @skcipher_request_set_callback(%struct.skcipher_request*, i32, i32, %struct.aead_request*) #1

declare dso_local i32 @aead_request_flags(%struct.aead_request*) #1

declare dso_local i32 @skcipher_request_set_crypt(%struct.skcipher_request*, %struct.scatterlist*, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @crypto_skcipher_encrypt(%struct.skcipher_request*) #1

declare dso_local i32 @crypto_authenc_genicv(%struct.aead_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
