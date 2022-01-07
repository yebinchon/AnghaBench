; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_authenc.c_crypto_authenc_decrypt.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_authenc.c_crypto_authenc_decrypt.c"
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

@authenc_verify_ahash_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*)* @crypto_authenc_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_authenc_decrypt(%struct.aead_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aead_request*, align 8
  %4 = alloca %struct.crypto_aead*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.aead_instance*, align 8
  %7 = alloca %struct.crypto_authenc_ctx*, align 8
  %8 = alloca %struct.authenc_instance_ctx*, align 8
  %9 = alloca %struct.crypto_ahash*, align 8
  %10 = alloca %struct.authenc_request_ctx*, align 8
  %11 = alloca %struct.ahash_request*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.aead_request* %0, %struct.aead_request** %3, align 8
  %14 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %15 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %14)
  store %struct.crypto_aead* %15, %struct.crypto_aead** %4, align 8
  %16 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %17 = call i32 @crypto_aead_authsize(%struct.crypto_aead* %16)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %19 = call %struct.aead_instance* @aead_alg_instance(%struct.crypto_aead* %18)
  store %struct.aead_instance* %19, %struct.aead_instance** %6, align 8
  %20 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %21 = call %struct.crypto_authenc_ctx* @crypto_aead_ctx(%struct.crypto_aead* %20)
  store %struct.crypto_authenc_ctx* %21, %struct.crypto_authenc_ctx** %7, align 8
  %22 = load %struct.aead_instance*, %struct.aead_instance** %6, align 8
  %23 = call %struct.authenc_instance_ctx* @aead_instance_ctx(%struct.aead_instance* %22)
  store %struct.authenc_instance_ctx* %23, %struct.authenc_instance_ctx** %8, align 8
  %24 = load %struct.crypto_authenc_ctx*, %struct.crypto_authenc_ctx** %7, align 8
  %25 = getelementptr inbounds %struct.crypto_authenc_ctx, %struct.crypto_authenc_ctx* %24, i32 0, i32 0
  %26 = load %struct.crypto_ahash*, %struct.crypto_ahash** %25, align 8
  store %struct.crypto_ahash* %26, %struct.crypto_ahash** %9, align 8
  %27 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %28 = call %struct.authenc_request_ctx* @aead_request_ctx(%struct.aead_request* %27)
  store %struct.authenc_request_ctx* %28, %struct.authenc_request_ctx** %10, align 8
  %29 = load %struct.authenc_request_ctx*, %struct.authenc_request_ctx** %10, align 8
  %30 = getelementptr inbounds %struct.authenc_request_ctx, %struct.authenc_request_ctx* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.authenc_instance_ctx*, %struct.authenc_instance_ctx** %8, align 8
  %33 = getelementptr inbounds %struct.authenc_instance_ctx, %struct.authenc_instance_ctx* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %31, i64 %35
  %37 = bitcast i32* %36 to i8*
  %38 = bitcast i8* %37 to %struct.ahash_request*
  store %struct.ahash_request* %38, %struct.ahash_request** %11, align 8
  %39 = load %struct.authenc_request_ctx*, %struct.authenc_request_ctx** %10, align 8
  %40 = getelementptr inbounds %struct.authenc_request_ctx, %struct.authenc_request_ctx* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  store i32* %41, i32** %12, align 8
  %42 = load i32*, i32** %12, align 8
  %43 = ptrtoint i32* %42 to i64
  %44 = load %struct.crypto_ahash*, %struct.crypto_ahash** %9, align 8
  %45 = call i64 @crypto_ahash_alignmask(%struct.crypto_ahash* %44)
  %46 = add i64 %43, %45
  %47 = load %struct.crypto_ahash*, %struct.crypto_ahash** %9, align 8
  %48 = call i64 @crypto_ahash_alignmask(%struct.crypto_ahash* %47)
  %49 = add nsw i64 %48, 1
  %50 = call i64 @ALIGN(i64 %46, i64 %49)
  %51 = inttoptr i64 %50 to i32*
  store i32* %51, i32** %12, align 8
  %52 = load %struct.ahash_request*, %struct.ahash_request** %11, align 8
  %53 = load %struct.crypto_ahash*, %struct.crypto_ahash** %9, align 8
  %54 = call i32 @ahash_request_set_tfm(%struct.ahash_request* %52, %struct.crypto_ahash* %53)
  %55 = load %struct.ahash_request*, %struct.ahash_request** %11, align 8
  %56 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %57 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load i32*, i32** %12, align 8
  %60 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %61 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %64 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %62, %65
  %67 = load i32, i32* %5, align 4
  %68 = zext i32 %67 to i64
  %69 = sub nsw i64 %66, %68
  %70 = call i32 @ahash_request_set_crypt(%struct.ahash_request* %55, i32 %58, i32* %59, i64 %69)
  %71 = load %struct.ahash_request*, %struct.ahash_request** %11, align 8
  %72 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %73 = call i32 @aead_request_flags(%struct.aead_request* %72)
  %74 = load i32, i32* @authenc_verify_ahash_done, align 4
  %75 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %76 = call i32 @ahash_request_set_callback(%struct.ahash_request* %71, i32 %73, i32 %74, %struct.aead_request* %75)
  %77 = load %struct.ahash_request*, %struct.ahash_request** %11, align 8
  %78 = call i32 @crypto_ahash_digest(%struct.ahash_request* %77)
  store i32 %78, i32* %13, align 4
  %79 = load i32, i32* %13, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %1
  %82 = load i32, i32* %13, align 4
  store i32 %82, i32* %2, align 4
  br label %88

83:                                               ; preds = %1
  %84 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %85 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %86 = call i32 @aead_request_flags(%struct.aead_request* %85)
  %87 = call i32 @crypto_authenc_decrypt_tail(%struct.aead_request* %84, i32 %86)
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %83, %81
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local i32 @crypto_aead_authsize(%struct.crypto_aead*) #1

declare dso_local %struct.aead_instance* @aead_alg_instance(%struct.crypto_aead*) #1

declare dso_local %struct.crypto_authenc_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local %struct.authenc_instance_ctx* @aead_instance_ctx(%struct.aead_instance*) #1

declare dso_local %struct.authenc_request_ctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local i64 @ALIGN(i64, i64) #1

declare dso_local i64 @crypto_ahash_alignmask(%struct.crypto_ahash*) #1

declare dso_local i32 @ahash_request_set_tfm(%struct.ahash_request*, %struct.crypto_ahash*) #1

declare dso_local i32 @ahash_request_set_crypt(%struct.ahash_request*, i32, i32*, i64) #1

declare dso_local i32 @ahash_request_set_callback(%struct.ahash_request*, i32, i32, %struct.aead_request*) #1

declare dso_local i32 @aead_request_flags(%struct.aead_request*) #1

declare dso_local i32 @crypto_ahash_digest(%struct.ahash_request*) #1

declare dso_local i32 @crypto_authenc_decrypt_tail(%struct.aead_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
