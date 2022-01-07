; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_gcm.c_gcm_encrypt_continue.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_gcm.c_gcm_encrypt_continue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i64, i64, i32 }
%struct.crypto_gcm_req_priv_ctx = type { i32, i32, %struct.crypto_gcm_ghash_ctx }
%struct.crypto_gcm_ghash_ctx = type { i32, i32, i32 }

@gcm_enc_copy_hash = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*, i32)* @gcm_encrypt_continue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gcm_encrypt_continue(%struct.aead_request* %0, i32 %1) #0 {
  %3 = alloca %struct.aead_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_gcm_req_priv_ctx*, align 8
  %6 = alloca %struct.crypto_gcm_ghash_ctx*, align 8
  store %struct.aead_request* %0, %struct.aead_request** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %8 = call %struct.crypto_gcm_req_priv_ctx* @crypto_gcm_reqctx(%struct.aead_request* %7)
  store %struct.crypto_gcm_req_priv_ctx* %8, %struct.crypto_gcm_req_priv_ctx** %5, align 8
  %9 = load %struct.crypto_gcm_req_priv_ctx*, %struct.crypto_gcm_req_priv_ctx** %5, align 8
  %10 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, %struct.crypto_gcm_req_priv_ctx* %9, i32 0, i32 2
  store %struct.crypto_gcm_ghash_ctx* %10, %struct.crypto_gcm_ghash_ctx** %6, align 8
  %11 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %12 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %15 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %13, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.crypto_gcm_req_priv_ctx*, %struct.crypto_gcm_req_priv_ctx** %5, align 8
  %20 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, %struct.crypto_gcm_req_priv_ctx* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  br label %26

22:                                               ; preds = %2
  %23 = load %struct.crypto_gcm_req_priv_ctx*, %struct.crypto_gcm_req_priv_ctx** %5, align 8
  %24 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, %struct.crypto_gcm_req_priv_ctx* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  br label %26

26:                                               ; preds = %22, %18
  %27 = phi i32 [ %21, %18 ], [ %25, %22 ]
  %28 = call i32 @sg_next(i32 %27)
  %29 = load %struct.crypto_gcm_ghash_ctx*, %struct.crypto_gcm_ghash_ctx** %6, align 8
  %30 = getelementptr inbounds %struct.crypto_gcm_ghash_ctx, %struct.crypto_gcm_ghash_ctx* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %32 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.crypto_gcm_ghash_ctx*, %struct.crypto_gcm_ghash_ctx** %6, align 8
  %35 = getelementptr inbounds %struct.crypto_gcm_ghash_ctx, %struct.crypto_gcm_ghash_ctx* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @gcm_enc_copy_hash, align 4
  %37 = load %struct.crypto_gcm_ghash_ctx*, %struct.crypto_gcm_ghash_ctx** %6, align 8
  %38 = getelementptr inbounds %struct.crypto_gcm_ghash_ctx, %struct.crypto_gcm_ghash_ctx* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @gcm_hash(%struct.aead_request* %39, i32 %40)
  ret i32 %41
}

declare dso_local %struct.crypto_gcm_req_priv_ctx* @crypto_gcm_reqctx(%struct.aead_request*) #1

declare dso_local i32 @sg_next(i32) #1

declare dso_local i32 @gcm_hash(%struct.aead_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
