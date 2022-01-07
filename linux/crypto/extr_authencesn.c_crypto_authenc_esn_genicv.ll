; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_authencesn.c_crypto_authenc_esn_genicv.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_authencesn.c_crypto_authenc_esn_genicv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32, i32, %struct.scatterlist* }
%struct.scatterlist = type { i32 }
%struct.crypto_aead = type { i32 }
%struct.authenc_esn_request_ctx = type { i32, i64 }
%struct.crypto_authenc_esn_ctx = type { i64, %struct.crypto_ahash* }
%struct.crypto_ahash = type { i32 }
%struct.ahash_request = type { i32 }

@authenc_esn_geniv_ahash_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*, i32)* @crypto_authenc_esn_genicv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_authenc_esn_genicv(%struct.aead_request* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.aead_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.crypto_aead*, align 8
  %7 = alloca %struct.authenc_esn_request_ctx*, align 8
  %8 = alloca %struct.crypto_authenc_esn_ctx*, align 8
  %9 = alloca %struct.crypto_ahash*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.ahash_request*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.scatterlist*, align 8
  %16 = alloca [2 x i32], align 4
  store %struct.aead_request* %0, %struct.aead_request** %4, align 8
  store i32 %1, i32* %5, align 4
  %17 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %18 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %17)
  store %struct.crypto_aead* %18, %struct.crypto_aead** %6, align 8
  %19 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %20 = call %struct.authenc_esn_request_ctx* @aead_request_ctx(%struct.aead_request* %19)
  store %struct.authenc_esn_request_ctx* %20, %struct.authenc_esn_request_ctx** %7, align 8
  %21 = load %struct.crypto_aead*, %struct.crypto_aead** %6, align 8
  %22 = call %struct.crypto_authenc_esn_ctx* @crypto_aead_ctx(%struct.crypto_aead* %21)
  store %struct.crypto_authenc_esn_ctx* %22, %struct.crypto_authenc_esn_ctx** %8, align 8
  %23 = load %struct.crypto_authenc_esn_ctx*, %struct.crypto_authenc_esn_ctx** %8, align 8
  %24 = getelementptr inbounds %struct.crypto_authenc_esn_ctx, %struct.crypto_authenc_esn_ctx* %23, i32 0, i32 1
  %25 = load %struct.crypto_ahash*, %struct.crypto_ahash** %24, align 8
  store %struct.crypto_ahash* %25, %struct.crypto_ahash** %9, align 8
  %26 = load %struct.authenc_esn_request_ctx*, %struct.authenc_esn_request_ctx** %7, align 8
  %27 = getelementptr inbounds %struct.authenc_esn_request_ctx, %struct.authenc_esn_request_ctx* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i32*
  %30 = load %struct.crypto_ahash*, %struct.crypto_ahash** %9, align 8
  %31 = call i64 @crypto_ahash_alignmask(%struct.crypto_ahash* %30)
  %32 = add nsw i64 %31, 1
  %33 = call i32* @PTR_ALIGN(i32* %29, i64 %32)
  store i32* %33, i32** %10, align 8
  %34 = load %struct.authenc_esn_request_ctx*, %struct.authenc_esn_request_ctx** %7, align 8
  %35 = getelementptr inbounds %struct.authenc_esn_request_ctx, %struct.authenc_esn_request_ctx* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.crypto_authenc_esn_ctx*, %struct.crypto_authenc_esn_ctx** %8, align 8
  %38 = getelementptr inbounds %struct.crypto_authenc_esn_ctx, %struct.crypto_authenc_esn_ctx* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %36, %39
  %41 = inttoptr i64 %40 to i8*
  %42 = bitcast i8* %41 to %struct.ahash_request*
  store %struct.ahash_request* %42, %struct.ahash_request** %11, align 8
  %43 = load %struct.crypto_aead*, %struct.crypto_aead** %6, align 8
  %44 = call i32 @crypto_aead_authsize(%struct.crypto_aead* %43)
  store i32 %44, i32* %12, align 4
  %45 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %46 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %13, align 4
  %48 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %49 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %14, align 4
  %51 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %52 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %51, i32 0, i32 2
  %53 = load %struct.scatterlist*, %struct.scatterlist** %52, align 8
  store %struct.scatterlist* %53, %struct.scatterlist** %15, align 8
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %108

57:                                               ; preds = %2
  %58 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  %59 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %60 = call i32 @scatterwalk_map_and_copy(i32* %58, %struct.scatterlist* %59, i32 0, i32 8, i32 0)
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  %62 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %63 = call i32 @scatterwalk_map_and_copy(i32* %61, %struct.scatterlist* %62, i32 4, i32 4, i32 1)
  %64 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  %66 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* %14, align 4
  %69 = add i32 %67, %68
  %70 = call i32 @scatterwalk_map_and_copy(i32* %65, %struct.scatterlist* %66, i32 %69, i32 4, i32 1)
  %71 = load %struct.authenc_esn_request_ctx*, %struct.authenc_esn_request_ctx** %7, align 8
  %72 = getelementptr inbounds %struct.authenc_esn_request_ctx, %struct.authenc_esn_request_ctx* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @sg_init_table(i32 %73, i32 2)
  %75 = load %struct.authenc_esn_request_ctx*, %struct.authenc_esn_request_ctx** %7, align 8
  %76 = getelementptr inbounds %struct.authenc_esn_request_ctx, %struct.authenc_esn_request_ctx* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %79 = call %struct.scatterlist* @scatterwalk_ffwd(i32 %77, %struct.scatterlist* %78, i32 4)
  store %struct.scatterlist* %79, %struct.scatterlist** %15, align 8
  %80 = load %struct.ahash_request*, %struct.ahash_request** %11, align 8
  %81 = load %struct.crypto_ahash*, %struct.crypto_ahash** %9, align 8
  %82 = call i32 @ahash_request_set_tfm(%struct.ahash_request* %80, %struct.crypto_ahash* %81)
  %83 = load %struct.ahash_request*, %struct.ahash_request** %11, align 8
  %84 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %85 = load i32*, i32** %10, align 8
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* %14, align 4
  %88 = add i32 %86, %87
  %89 = call i32 @ahash_request_set_crypt(%struct.ahash_request* %83, %struct.scatterlist* %84, i32* %85, i32 %88)
  %90 = load %struct.ahash_request*, %struct.ahash_request** %11, align 8
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* @authenc_esn_geniv_ahash_done, align 4
  %93 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %94 = call i32 @ahash_request_set_callback(%struct.ahash_request* %90, i32 %91, i32 %92, %struct.aead_request* %93)
  %95 = load %struct.ahash_request*, %struct.ahash_request** %11, align 8
  %96 = call i64 @crypto_ahash_digest(%struct.ahash_request* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %57
  br label %105

99:                                               ; preds = %57
  %100 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %101 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %102 = call i32 @aead_request_flags(%struct.aead_request* %101)
  %103 = call i32 @crypto_authenc_esn_genicv_tail(%struct.aead_request* %100, i32 %102)
  %104 = sext i32 %103 to i64
  br label %105

105:                                              ; preds = %99, %98
  %106 = phi i64 [ %96, %98 ], [ %104, %99 ]
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %105, %56
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.authenc_esn_request_ctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local %struct.crypto_authenc_esn_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local i32* @PTR_ALIGN(i32*, i64) #1

declare dso_local i64 @crypto_ahash_alignmask(%struct.crypto_ahash*) #1

declare dso_local i32 @crypto_aead_authsize(%struct.crypto_aead*) #1

declare dso_local i32 @scatterwalk_map_and_copy(i32*, %struct.scatterlist*, i32, i32, i32) #1

declare dso_local i32 @sg_init_table(i32, i32) #1

declare dso_local %struct.scatterlist* @scatterwalk_ffwd(i32, %struct.scatterlist*, i32) #1

declare dso_local i32 @ahash_request_set_tfm(%struct.ahash_request*, %struct.crypto_ahash*) #1

declare dso_local i32 @ahash_request_set_crypt(%struct.ahash_request*, %struct.scatterlist*, i32*, i32) #1

declare dso_local i32 @ahash_request_set_callback(%struct.ahash_request*, i32, i32, %struct.aead_request*) #1

declare dso_local i64 @crypto_ahash_digest(%struct.ahash_request*) #1

declare dso_local i32 @crypto_authenc_esn_genicv_tail(%struct.aead_request*, i32) #1

declare dso_local i32 @aead_request_flags(%struct.aead_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
