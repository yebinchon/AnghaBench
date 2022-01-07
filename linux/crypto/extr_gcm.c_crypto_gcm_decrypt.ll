; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_gcm.c_crypto_gcm_decrypt.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_gcm.c_crypto_gcm_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32 }
%struct.crypto_aead = type { i32 }
%struct.crypto_gcm_req_priv_ctx = type { i32, %struct.crypto_gcm_ghash_ctx }
%struct.crypto_gcm_ghash_ctx = type { i32, i32, i32 }

@gcm_dec_hash_continue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*)* @crypto_gcm_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_gcm_decrypt(%struct.aead_request* %0) #0 {
  %2 = alloca %struct.aead_request*, align 8
  %3 = alloca %struct.crypto_aead*, align 8
  %4 = alloca %struct.crypto_gcm_req_priv_ctx*, align 8
  %5 = alloca %struct.crypto_gcm_ghash_ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.aead_request* %0, %struct.aead_request** %2, align 8
  %9 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %10 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %9)
  store %struct.crypto_aead* %10, %struct.crypto_aead** %3, align 8
  %11 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %12 = call %struct.crypto_gcm_req_priv_ctx* @crypto_gcm_reqctx(%struct.aead_request* %11)
  store %struct.crypto_gcm_req_priv_ctx* %12, %struct.crypto_gcm_req_priv_ctx** %4, align 8
  %13 = load %struct.crypto_gcm_req_priv_ctx*, %struct.crypto_gcm_req_priv_ctx** %4, align 8
  %14 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, %struct.crypto_gcm_req_priv_ctx* %13, i32 0, i32 1
  store %struct.crypto_gcm_ghash_ctx* %14, %struct.crypto_gcm_ghash_ctx** %5, align 8
  %15 = load %struct.crypto_aead*, %struct.crypto_aead** %3, align 8
  %16 = call i32 @crypto_aead_authsize(%struct.crypto_aead* %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %18 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %7, align 4
  %20 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %21 = call i32 @aead_request_flags(%struct.aead_request* %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = sub i32 %23, %22
  store i32 %24, i32* %7, align 4
  %25 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %26 = call i32 @crypto_gcm_init_common(%struct.aead_request* %25)
  %27 = load %struct.crypto_gcm_req_priv_ctx*, %struct.crypto_gcm_req_priv_ctx** %4, align 8
  %28 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, %struct.crypto_gcm_req_priv_ctx* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @sg_next(i32 %29)
  %31 = load %struct.crypto_gcm_ghash_ctx*, %struct.crypto_gcm_ghash_ctx** %5, align 8
  %32 = getelementptr inbounds %struct.crypto_gcm_ghash_ctx, %struct.crypto_gcm_ghash_ctx* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.crypto_gcm_ghash_ctx*, %struct.crypto_gcm_ghash_ctx** %5, align 8
  %35 = getelementptr inbounds %struct.crypto_gcm_ghash_ctx, %struct.crypto_gcm_ghash_ctx* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @gcm_dec_hash_continue, align 4
  %37 = load %struct.crypto_gcm_ghash_ctx*, %struct.crypto_gcm_ghash_ctx** %5, align 8
  %38 = getelementptr inbounds %struct.crypto_gcm_ghash_ctx, %struct.crypto_gcm_ghash_ctx* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @gcm_hash(%struct.aead_request* %39, i32 %40)
  ret i32 %41
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.crypto_gcm_req_priv_ctx* @crypto_gcm_reqctx(%struct.aead_request*) #1

declare dso_local i32 @crypto_aead_authsize(%struct.crypto_aead*) #1

declare dso_local i32 @aead_request_flags(%struct.aead_request*) #1

declare dso_local i32 @crypto_gcm_init_common(%struct.aead_request*) #1

declare dso_local i32 @sg_next(i32) #1

declare dso_local i32 @gcm_hash(%struct.aead_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
