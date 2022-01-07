; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_authencesn.c_crypto_authenc_esn_encrypt.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_authencesn.c_crypto_authenc_esn_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32, i32, i32, i32, i32 }
%struct.crypto_aead = type { i32 }
%struct.authenc_esn_request_ctx = type { i32, i32, i64 }
%struct.crypto_authenc_esn_ctx = type { %struct.crypto_skcipher*, i64 }
%struct.crypto_skcipher = type { i32 }
%struct.skcipher_request = type { i32 }
%struct.scatterlist = type { i32 }

@crypto_authenc_esn_encrypt_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*)* @crypto_authenc_esn_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_authenc_esn_encrypt(%struct.aead_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aead_request*, align 8
  %4 = alloca %struct.crypto_aead*, align 8
  %5 = alloca %struct.authenc_esn_request_ctx*, align 8
  %6 = alloca %struct.crypto_authenc_esn_ctx*, align 8
  %7 = alloca %struct.skcipher_request*, align 8
  %8 = alloca %struct.crypto_skcipher*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.scatterlist*, align 8
  %12 = alloca %struct.scatterlist*, align 8
  %13 = alloca i32, align 4
  store %struct.aead_request* %0, %struct.aead_request** %3, align 8
  %14 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %15 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %14)
  store %struct.crypto_aead* %15, %struct.crypto_aead** %4, align 8
  %16 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %17 = call %struct.authenc_esn_request_ctx* @aead_request_ctx(%struct.aead_request* %16)
  store %struct.authenc_esn_request_ctx* %17, %struct.authenc_esn_request_ctx** %5, align 8
  %18 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %19 = call %struct.crypto_authenc_esn_ctx* @crypto_aead_ctx(%struct.crypto_aead* %18)
  store %struct.crypto_authenc_esn_ctx* %19, %struct.crypto_authenc_esn_ctx** %6, align 8
  %20 = load %struct.authenc_esn_request_ctx*, %struct.authenc_esn_request_ctx** %5, align 8
  %21 = getelementptr inbounds %struct.authenc_esn_request_ctx, %struct.authenc_esn_request_ctx* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.crypto_authenc_esn_ctx*, %struct.crypto_authenc_esn_ctx** %6, align 8
  %24 = getelementptr inbounds %struct.crypto_authenc_esn_ctx, %struct.crypto_authenc_esn_ctx* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %22, %25
  %27 = inttoptr i64 %26 to i8*
  %28 = bitcast i8* %27 to %struct.skcipher_request*
  store %struct.skcipher_request* %28, %struct.skcipher_request** %7, align 8
  %29 = load %struct.crypto_authenc_esn_ctx*, %struct.crypto_authenc_esn_ctx** %6, align 8
  %30 = getelementptr inbounds %struct.crypto_authenc_esn_ctx, %struct.crypto_authenc_esn_ctx* %29, i32 0, i32 0
  %31 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %30, align 8
  store %struct.crypto_skcipher* %31, %struct.crypto_skcipher** %8, align 8
  %32 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %33 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %9, align 4
  %35 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %36 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %10, align 4
  %38 = load %struct.authenc_esn_request_ctx*, %struct.authenc_esn_request_ctx** %5, align 8
  %39 = getelementptr inbounds %struct.authenc_esn_request_ctx, %struct.authenc_esn_request_ctx* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @sg_init_table(i32 %40, i32 2)
  %42 = load %struct.authenc_esn_request_ctx*, %struct.authenc_esn_request_ctx** %5, align 8
  %43 = getelementptr inbounds %struct.authenc_esn_request_ctx, %struct.authenc_esn_request_ctx* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %46 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call %struct.scatterlist* @scatterwalk_ffwd(i32 %44, i32 %47, i32 %48)
  store %struct.scatterlist* %49, %struct.scatterlist** %11, align 8
  %50 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  store %struct.scatterlist* %50, %struct.scatterlist** %12, align 8
  %51 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %52 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %55 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %53, %56
  br i1 %57, label %58, label %79

58:                                               ; preds = %1
  %59 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @crypto_authenc_esn_copy(%struct.aead_request* %59, i32 %60)
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %13, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load i32, i32* %13, align 4
  store i32 %65, i32* %2, align 4
  br label %108

66:                                               ; preds = %58
  %67 = load %struct.authenc_esn_request_ctx*, %struct.authenc_esn_request_ctx** %5, align 8
  %68 = getelementptr inbounds %struct.authenc_esn_request_ctx, %struct.authenc_esn_request_ctx* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @sg_init_table(i32 %69, i32 2)
  %71 = load %struct.authenc_esn_request_ctx*, %struct.authenc_esn_request_ctx** %5, align 8
  %72 = getelementptr inbounds %struct.authenc_esn_request_ctx, %struct.authenc_esn_request_ctx* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %75 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %9, align 4
  %78 = call %struct.scatterlist* @scatterwalk_ffwd(i32 %73, i32 %76, i32 %77)
  store %struct.scatterlist* %78, %struct.scatterlist** %12, align 8
  br label %79

79:                                               ; preds = %66, %1
  %80 = load %struct.skcipher_request*, %struct.skcipher_request** %7, align 8
  %81 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %8, align 8
  %82 = call i32 @skcipher_request_set_tfm(%struct.skcipher_request* %80, %struct.crypto_skcipher* %81)
  %83 = load %struct.skcipher_request*, %struct.skcipher_request** %7, align 8
  %84 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %85 = call i32 @aead_request_flags(%struct.aead_request* %84)
  %86 = load i32, i32* @crypto_authenc_esn_encrypt_done, align 4
  %87 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %88 = call i32 @skcipher_request_set_callback(%struct.skcipher_request* %83, i32 %85, i32 %86, %struct.aead_request* %87)
  %89 = load %struct.skcipher_request*, %struct.skcipher_request** %7, align 8
  %90 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %91 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %92 = load i32, i32* %10, align 4
  %93 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %94 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @skcipher_request_set_crypt(%struct.skcipher_request* %89, %struct.scatterlist* %90, %struct.scatterlist* %91, i32 %92, i32 %95)
  %97 = load %struct.skcipher_request*, %struct.skcipher_request** %7, align 8
  %98 = call i32 @crypto_skcipher_encrypt(%struct.skcipher_request* %97)
  store i32 %98, i32* %13, align 4
  %99 = load i32, i32* %13, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %79
  %102 = load i32, i32* %13, align 4
  store i32 %102, i32* %2, align 4
  br label %108

103:                                              ; preds = %79
  %104 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %105 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %106 = call i32 @aead_request_flags(%struct.aead_request* %105)
  %107 = call i32 @crypto_authenc_esn_genicv(%struct.aead_request* %104, i32 %106)
  store i32 %107, i32* %2, align 4
  br label %108

108:                                              ; preds = %103, %101, %64
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.authenc_esn_request_ctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local %struct.crypto_authenc_esn_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local i32 @sg_init_table(i32, i32) #1

declare dso_local %struct.scatterlist* @scatterwalk_ffwd(i32, i32, i32) #1

declare dso_local i32 @crypto_authenc_esn_copy(%struct.aead_request*, i32) #1

declare dso_local i32 @skcipher_request_set_tfm(%struct.skcipher_request*, %struct.crypto_skcipher*) #1

declare dso_local i32 @skcipher_request_set_callback(%struct.skcipher_request*, i32, i32, %struct.aead_request*) #1

declare dso_local i32 @aead_request_flags(%struct.aead_request*) #1

declare dso_local i32 @skcipher_request_set_crypt(%struct.skcipher_request*, %struct.scatterlist*, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @crypto_skcipher_encrypt(%struct.skcipher_request*) #1

declare dso_local i32 @crypto_authenc_esn_genicv(%struct.aead_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
