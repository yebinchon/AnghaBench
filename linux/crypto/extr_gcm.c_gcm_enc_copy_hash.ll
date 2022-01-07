; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_gcm.c_gcm_enc_copy_hash.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_gcm.c_gcm_enc_copy_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i64, i64, i32 }
%struct.crypto_gcm_req_priv_ctx = type { i32, i32* }
%struct.crypto_aead = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*, i32)* @gcm_enc_copy_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gcm_enc_copy_hash(%struct.aead_request* %0, i32 %1) #0 {
  %3 = alloca %struct.aead_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_gcm_req_priv_ctx*, align 8
  %6 = alloca %struct.crypto_aead*, align 8
  %7 = alloca i32*, align 8
  store %struct.aead_request* %0, %struct.aead_request** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %9 = call %struct.crypto_gcm_req_priv_ctx* @crypto_gcm_reqctx(%struct.aead_request* %8)
  store %struct.crypto_gcm_req_priv_ctx* %9, %struct.crypto_gcm_req_priv_ctx** %5, align 8
  %10 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %11 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %10)
  store %struct.crypto_aead* %11, %struct.crypto_aead** %6, align 8
  %12 = load %struct.crypto_gcm_req_priv_ctx*, %struct.crypto_gcm_req_priv_ctx** %5, align 8
  %13 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, %struct.crypto_gcm_req_priv_ctx* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %7, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = load %struct.crypto_gcm_req_priv_ctx*, %struct.crypto_gcm_req_priv_ctx** %5, align 8
  %17 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, %struct.crypto_gcm_req_priv_ctx* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @crypto_xor(i32* %15, i32 %18, i32 16)
  %20 = load i32*, i32** %7, align 8
  %21 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %22 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %25 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %28 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %26, %29
  %31 = load %struct.crypto_aead*, %struct.crypto_aead** %6, align 8
  %32 = call i32 @crypto_aead_authsize(%struct.crypto_aead* %31)
  %33 = call i32 @scatterwalk_map_and_copy(i32* %20, i32 %23, i64 %30, i32 %32, i32 1)
  ret i32 0
}

declare dso_local %struct.crypto_gcm_req_priv_ctx* @crypto_gcm_reqctx(%struct.aead_request*) #1

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local i32 @crypto_xor(i32*, i32, i32) #1

declare dso_local i32 @scatterwalk_map_and_copy(i32*, i32, i64, i32, i32) #1

declare dso_local i32 @crypto_aead_authsize(%struct.crypto_aead*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
