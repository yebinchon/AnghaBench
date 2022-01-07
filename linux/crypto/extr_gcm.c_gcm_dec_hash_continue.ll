; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_gcm.c_gcm_dec_hash_continue.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_gcm.c_gcm_dec_hash_continue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32 }
%struct.crypto_gcm_req_priv_ctx = type { %struct.crypto_gcm_ghash_ctx, %struct.TYPE_2__ }
%struct.crypto_gcm_ghash_ctx = type { i32 }
%struct.TYPE_2__ = type { %struct.skcipher_request }
%struct.skcipher_request = type { i32 }

@gcm_decrypt_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*, i32)* @gcm_dec_hash_continue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gcm_dec_hash_continue(%struct.aead_request* %0, i32 %1) #0 {
  %3 = alloca %struct.aead_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_gcm_req_priv_ctx*, align 8
  %6 = alloca %struct.skcipher_request*, align 8
  %7 = alloca %struct.crypto_gcm_ghash_ctx*, align 8
  store %struct.aead_request* %0, %struct.aead_request** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %9 = call %struct.crypto_gcm_req_priv_ctx* @crypto_gcm_reqctx(%struct.aead_request* %8)
  store %struct.crypto_gcm_req_priv_ctx* %9, %struct.crypto_gcm_req_priv_ctx** %5, align 8
  %10 = load %struct.crypto_gcm_req_priv_ctx*, %struct.crypto_gcm_req_priv_ctx** %5, align 8
  %11 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, %struct.crypto_gcm_req_priv_ctx* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.skcipher_request* %12, %struct.skcipher_request** %6, align 8
  %13 = load %struct.crypto_gcm_req_priv_ctx*, %struct.crypto_gcm_req_priv_ctx** %5, align 8
  %14 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, %struct.crypto_gcm_req_priv_ctx* %13, i32 0, i32 0
  store %struct.crypto_gcm_ghash_ctx* %14, %struct.crypto_gcm_ghash_ctx** %7, align 8
  %15 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %16 = load %struct.crypto_gcm_ghash_ctx*, %struct.crypto_gcm_ghash_ctx** %7, align 8
  %17 = getelementptr inbounds %struct.crypto_gcm_ghash_ctx, %struct.crypto_gcm_ghash_ctx* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @crypto_gcm_init_crypt(%struct.aead_request* %15, i32 %18)
  %20 = load %struct.skcipher_request*, %struct.skcipher_request** %6, align 8
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @gcm_decrypt_done, align 4
  %23 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %24 = call i32 @skcipher_request_set_callback(%struct.skcipher_request* %20, i32 %21, i32 %22, %struct.aead_request* %23)
  %25 = load %struct.skcipher_request*, %struct.skcipher_request** %6, align 8
  %26 = call i64 @crypto_skcipher_decrypt(%struct.skcipher_request* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  br label %33

29:                                               ; preds = %2
  %30 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %31 = call i32 @crypto_gcm_verify(%struct.aead_request* %30)
  %32 = sext i32 %31 to i64
  br label %33

33:                                               ; preds = %29, %28
  %34 = phi i64 [ %26, %28 ], [ %32, %29 ]
  %35 = trunc i64 %34 to i32
  ret i32 %35
}

declare dso_local %struct.crypto_gcm_req_priv_ctx* @crypto_gcm_reqctx(%struct.aead_request*) #1

declare dso_local i32 @crypto_gcm_init_crypt(%struct.aead_request*, i32) #1

declare dso_local i32 @skcipher_request_set_callback(%struct.skcipher_request*, i32, i32, %struct.aead_request*) #1

declare dso_local i64 @crypto_skcipher_decrypt(%struct.skcipher_request*) #1

declare dso_local i32 @crypto_gcm_verify(%struct.aead_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
