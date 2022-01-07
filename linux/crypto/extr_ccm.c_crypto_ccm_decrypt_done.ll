; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_ccm.c_crypto_ccm_decrypt_done.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_ccm.c_crypto_ccm_decrypt_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_async_request = type { %struct.aead_request* }
%struct.aead_request = type { i32, i32, i32 }
%struct.crypto_ccm_req_priv_ctx = type { i32, i32, i32, i32, i64 }
%struct.crypto_aead = type { i32 }
%struct.scatterlist = type { i32 }

@EBADMSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_async_request*, i32)* @crypto_ccm_decrypt_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crypto_ccm_decrypt_done(%struct.crypto_async_request* %0, i32 %1) #0 {
  %3 = alloca %struct.crypto_async_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.aead_request*, align 8
  %6 = alloca %struct.crypto_ccm_req_priv_ctx*, align 8
  %7 = alloca %struct.crypto_aead*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.scatterlist*, align 8
  store %struct.crypto_async_request* %0, %struct.crypto_async_request** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.crypto_async_request*, %struct.crypto_async_request** %3, align 8
  %12 = getelementptr inbounds %struct.crypto_async_request, %struct.crypto_async_request* %11, i32 0, i32 0
  %13 = load %struct.aead_request*, %struct.aead_request** %12, align 8
  store %struct.aead_request* %13, %struct.aead_request** %5, align 8
  %14 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %15 = call %struct.crypto_ccm_req_priv_ctx* @crypto_ccm_reqctx(%struct.aead_request* %14)
  store %struct.crypto_ccm_req_priv_ctx* %15, %struct.crypto_ccm_req_priv_ctx** %6, align 8
  %16 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %17 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %16)
  store %struct.crypto_aead* %17, %struct.crypto_aead** %7, align 8
  %18 = load %struct.crypto_aead*, %struct.crypto_aead** %7, align 8
  %19 = call i32 @crypto_aead_authsize(%struct.crypto_aead* %18)
  store i32 %19, i32* %8, align 4
  %20 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %21 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %8, align 4
  %24 = sub i32 %22, %23
  store i32 %24, i32* %9, align 4
  %25 = load %struct.crypto_ccm_req_priv_ctx*, %struct.crypto_ccm_req_priv_ctx** %6, align 8
  %26 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, %struct.crypto_ccm_req_priv_ctx* %25, i32 0, i32 4
  store i64 0, i64* %26, align 8
  %27 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %28 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %31 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %29, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %2
  %35 = load %struct.crypto_ccm_req_priv_ctx*, %struct.crypto_ccm_req_priv_ctx** %6, align 8
  %36 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, %struct.crypto_ccm_req_priv_ctx* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  br label %42

38:                                               ; preds = %2
  %39 = load %struct.crypto_ccm_req_priv_ctx*, %struct.crypto_ccm_req_priv_ctx** %6, align 8
  %40 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, %struct.crypto_ccm_req_priv_ctx* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  br label %42

42:                                               ; preds = %38, %34
  %43 = phi i32 [ %37, %34 ], [ %41, %38 ]
  %44 = call %struct.scatterlist* @sg_next(i32 %43)
  store %struct.scatterlist* %44, %struct.scatterlist** %10, align 8
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %68, label %47

47:                                               ; preds = %42
  %48 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %49 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @crypto_ccm_auth(%struct.aead_request* %48, %struct.scatterlist* %49, i32 %50)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %67, label %54

54:                                               ; preds = %47
  %55 = load %struct.crypto_ccm_req_priv_ctx*, %struct.crypto_ccm_req_priv_ctx** %6, align 8
  %56 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, %struct.crypto_ccm_req_priv_ctx* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.crypto_ccm_req_priv_ctx*, %struct.crypto_ccm_req_priv_ctx** %6, align 8
  %59 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, %struct.crypto_ccm_req_priv_ctx* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = call i64 @crypto_memneq(i32 %57, i32 %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %54
  %65 = load i32, i32* @EBADMSG, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %64, %54, %47
  br label %68

68:                                               ; preds = %67, %42
  %69 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @aead_request_complete(%struct.aead_request* %69, i32 %70)
  ret void
}

declare dso_local %struct.crypto_ccm_req_priv_ctx* @crypto_ccm_reqctx(%struct.aead_request*) #1

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local i32 @crypto_aead_authsize(%struct.crypto_aead*) #1

declare dso_local %struct.scatterlist* @sg_next(i32) #1

declare dso_local i32 @crypto_ccm_auth(%struct.aead_request*, %struct.scatterlist*, i32) #1

declare dso_local i64 @crypto_memneq(i32, i32, i32) #1

declare dso_local i32 @aead_request_complete(%struct.aead_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
