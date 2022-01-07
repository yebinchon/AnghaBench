; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/amcc/extr_crypto4xx_alg.c_crypto4xx_crypt_aes_gcm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/amcc/extr_crypto4xx_alg.c_crypto4xx_crypt_aes_gcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32, i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.crypto4xx_ctx = type { i32, i32, i32 }
%struct.crypto4xx_aead_reqctx = type { i32 }

@GCM_AES_IV_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*, i32)* @crypto4xx_crypt_aes_gcm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto4xx_crypt_aes_gcm(%struct.aead_request* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.aead_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.crypto4xx_ctx*, align 8
  %7 = alloca %struct.crypto4xx_aead_reqctx*, align 8
  %8 = alloca [4 x i32], align 16
  %9 = alloca i32, align 4
  store %struct.aead_request* %0, %struct.aead_request** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %11 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %10, i32 0, i32 4
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.crypto4xx_ctx* @crypto_tfm_ctx(i32 %13)
  store %struct.crypto4xx_ctx* %14, %struct.crypto4xx_ctx** %6, align 8
  %15 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %16 = call %struct.crypto4xx_aead_reqctx* @aead_request_ctx(%struct.aead_request* %15)
  store %struct.crypto4xx_aead_reqctx* %16, %struct.crypto4xx_aead_reqctx** %7, align 8
  %17 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %18 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %2
  %23 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %24 = call i32 @crypto_aead_reqtfm(%struct.aead_request* %23)
  %25 = call i64 @crypto_aead_authsize(i32 %24)
  %26 = load i32, i32* %9, align 4
  %27 = zext i32 %26 to i64
  %28 = sub nsw i64 %27, %25
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %9, align 4
  br label %30

30:                                               ; preds = %22, %2
  %31 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i64 @crypto4xx_aead_need_fallback(%struct.aead_request* %31, i32 %32, i32 0, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %38 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %6, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @crypto4xx_aead_fallback(%struct.aead_request* %37, %struct.crypto4xx_ctx* %38, i32 %39)
  store i32 %40, i32* %3, align 4
  br label %83

41:                                               ; preds = %30
  %42 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %43 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %44 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @GCM_AES_IV_SIZE, align 4
  %47 = call i32 @crypto4xx_memcpy_to_le32(i32* %42, i32 %45, i32 %46)
  %48 = call i32 @cpu_to_le32(i32 1)
  %49 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  store i32 %48, i32* %49, align 4
  %50 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %51 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %50, i32 0, i32 4
  %52 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %6, align 8
  %53 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %54 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %57 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %9, align 4
  %60 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %41
  %64 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %6, align 8
  %65 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  br label %71

67:                                               ; preds = %41
  %68 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %6, align 8
  %69 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  br label %71

71:                                               ; preds = %67, %63
  %72 = phi i32 [ %66, %63 ], [ %70, %67 ]
  %73 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %6, align 8
  %74 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %77 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.crypto4xx_aead_reqctx*, %struct.crypto4xx_aead_reqctx** %7, align 8
  %80 = getelementptr inbounds %struct.crypto4xx_aead_reqctx, %struct.crypto4xx_aead_reqctx* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @crypto4xx_build_pd(%struct.TYPE_2__* %51, %struct.crypto4xx_ctx* %52, i32 %55, i32 %58, i32 %59, i32* %60, i32 16, i32 %72, i32 %75, i32 %78, i32 %81)
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %71, %36
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local %struct.crypto4xx_ctx* @crypto_tfm_ctx(i32) #1

declare dso_local %struct.crypto4xx_aead_reqctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local i64 @crypto_aead_authsize(i32) #1

declare dso_local i32 @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local i64 @crypto4xx_aead_need_fallback(%struct.aead_request*, i32, i32, i32) #1

declare dso_local i32 @crypto4xx_aead_fallback(%struct.aead_request*, %struct.crypto4xx_ctx*, i32) #1

declare dso_local i32 @crypto4xx_memcpy_to_le32(i32*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @crypto4xx_build_pd(%struct.TYPE_2__*, %struct.crypto4xx_ctx*, i32, i32, i32, i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
