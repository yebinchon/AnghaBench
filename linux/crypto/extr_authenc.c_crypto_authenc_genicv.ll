; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_authenc.c_crypto_authenc_genicv.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_authenc.c_crypto_authenc_genicv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i64, i64, i32 }
%struct.crypto_aead = type { i32 }
%struct.aead_instance = type { i32 }
%struct.crypto_authenc_ctx = type { %struct.crypto_ahash* }
%struct.crypto_ahash = type { i32 }
%struct.authenc_instance_ctx = type { i32 }
%struct.authenc_request_ctx = type { i32* }
%struct.ahash_request = type { i32 }

@authenc_geniv_ahash_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*, i32)* @crypto_authenc_genicv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_authenc_genicv(%struct.aead_request* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.aead_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.crypto_aead*, align 8
  %7 = alloca %struct.aead_instance*, align 8
  %8 = alloca %struct.crypto_authenc_ctx*, align 8
  %9 = alloca %struct.authenc_instance_ctx*, align 8
  %10 = alloca %struct.crypto_ahash*, align 8
  %11 = alloca %struct.authenc_request_ctx*, align 8
  %12 = alloca %struct.ahash_request*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.aead_request* %0, %struct.aead_request** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %16 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %15)
  store %struct.crypto_aead* %16, %struct.crypto_aead** %6, align 8
  %17 = load %struct.crypto_aead*, %struct.crypto_aead** %6, align 8
  %18 = call %struct.aead_instance* @aead_alg_instance(%struct.crypto_aead* %17)
  store %struct.aead_instance* %18, %struct.aead_instance** %7, align 8
  %19 = load %struct.crypto_aead*, %struct.crypto_aead** %6, align 8
  %20 = call %struct.crypto_authenc_ctx* @crypto_aead_ctx(%struct.crypto_aead* %19)
  store %struct.crypto_authenc_ctx* %20, %struct.crypto_authenc_ctx** %8, align 8
  %21 = load %struct.aead_instance*, %struct.aead_instance** %7, align 8
  %22 = call %struct.authenc_instance_ctx* @aead_instance_ctx(%struct.aead_instance* %21)
  store %struct.authenc_instance_ctx* %22, %struct.authenc_instance_ctx** %9, align 8
  %23 = load %struct.crypto_authenc_ctx*, %struct.crypto_authenc_ctx** %8, align 8
  %24 = getelementptr inbounds %struct.crypto_authenc_ctx, %struct.crypto_authenc_ctx* %23, i32 0, i32 0
  %25 = load %struct.crypto_ahash*, %struct.crypto_ahash** %24, align 8
  store %struct.crypto_ahash* %25, %struct.crypto_ahash** %10, align 8
  %26 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %27 = call %struct.authenc_request_ctx* @aead_request_ctx(%struct.aead_request* %26)
  store %struct.authenc_request_ctx* %27, %struct.authenc_request_ctx** %11, align 8
  %28 = load %struct.authenc_request_ctx*, %struct.authenc_request_ctx** %11, align 8
  %29 = getelementptr inbounds %struct.authenc_request_ctx, %struct.authenc_request_ctx* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.authenc_instance_ctx*, %struct.authenc_instance_ctx** %9, align 8
  %32 = getelementptr inbounds %struct.authenc_instance_ctx, %struct.authenc_instance_ctx* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %30, i64 %34
  %36 = bitcast i32* %35 to i8*
  %37 = bitcast i8* %36 to %struct.ahash_request*
  store %struct.ahash_request* %37, %struct.ahash_request** %12, align 8
  %38 = load %struct.authenc_request_ctx*, %struct.authenc_request_ctx** %11, align 8
  %39 = getelementptr inbounds %struct.authenc_request_ctx, %struct.authenc_request_ctx* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  store i32* %40, i32** %13, align 8
  %41 = load i32*, i32** %13, align 8
  %42 = ptrtoint i32* %41 to i64
  %43 = load %struct.crypto_ahash*, %struct.crypto_ahash** %10, align 8
  %44 = call i64 @crypto_ahash_alignmask(%struct.crypto_ahash* %43)
  %45 = add i64 %42, %44
  %46 = load %struct.crypto_ahash*, %struct.crypto_ahash** %10, align 8
  %47 = call i64 @crypto_ahash_alignmask(%struct.crypto_ahash* %46)
  %48 = add nsw i64 %47, 1
  %49 = call i64 @ALIGN(i64 %45, i64 %48)
  %50 = inttoptr i64 %49 to i32*
  store i32* %50, i32** %13, align 8
  %51 = load %struct.ahash_request*, %struct.ahash_request** %12, align 8
  %52 = load %struct.crypto_ahash*, %struct.crypto_ahash** %10, align 8
  %53 = call i32 @ahash_request_set_tfm(%struct.ahash_request* %51, %struct.crypto_ahash* %52)
  %54 = load %struct.ahash_request*, %struct.ahash_request** %12, align 8
  %55 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %56 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load i32*, i32** %13, align 8
  %59 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %60 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %63 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %61, %64
  %66 = call i32 @ahash_request_set_crypt(%struct.ahash_request* %54, i32 %57, i32* %58, i64 %65)
  %67 = load %struct.ahash_request*, %struct.ahash_request** %12, align 8
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @authenc_geniv_ahash_done, align 4
  %70 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %71 = call i32 @ahash_request_set_callback(%struct.ahash_request* %67, i32 %68, i32 %69, %struct.aead_request* %70)
  %72 = load %struct.ahash_request*, %struct.ahash_request** %12, align 8
  %73 = call i32 @crypto_ahash_digest(%struct.ahash_request* %72)
  store i32 %73, i32* %14, align 4
  %74 = load i32, i32* %14, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %2
  %77 = load i32, i32* %14, align 4
  store i32 %77, i32* %3, align 4
  br label %93

78:                                               ; preds = %2
  %79 = load i32*, i32** %13, align 8
  %80 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %81 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %84 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %87 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %85, %88
  %90 = load %struct.crypto_aead*, %struct.crypto_aead** %6, align 8
  %91 = call i32 @crypto_aead_authsize(%struct.crypto_aead* %90)
  %92 = call i32 @scatterwalk_map_and_copy(i32* %79, i32 %82, i64 %89, i32 %91, i32 1)
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %78, %76
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.aead_instance* @aead_alg_instance(%struct.crypto_aead*) #1

declare dso_local %struct.crypto_authenc_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local %struct.authenc_instance_ctx* @aead_instance_ctx(%struct.aead_instance*) #1

declare dso_local %struct.authenc_request_ctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local i64 @ALIGN(i64, i64) #1

declare dso_local i64 @crypto_ahash_alignmask(%struct.crypto_ahash*) #1

declare dso_local i32 @ahash_request_set_tfm(%struct.ahash_request*, %struct.crypto_ahash*) #1

declare dso_local i32 @ahash_request_set_crypt(%struct.ahash_request*, i32, i32*, i64) #1

declare dso_local i32 @ahash_request_set_callback(%struct.ahash_request*, i32, i32, %struct.aead_request*) #1

declare dso_local i32 @crypto_ahash_digest(%struct.ahash_request*) #1

declare dso_local i32 @scatterwalk_map_and_copy(i32*, i32, i64, i32, i32) #1

declare dso_local i32 @crypto_aead_authsize(%struct.crypto_aead*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
