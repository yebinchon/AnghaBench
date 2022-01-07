; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_gcm.c_gcm_hash_assoc_remain_continue.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_gcm.c_gcm_hash_assoc_remain_continue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32 }
%struct.crypto_gcm_req_priv_ctx = type { %struct.crypto_gcm_ghash_ctx }
%struct.crypto_gcm_ghash_ctx = type { i64, i32 }

@gcm_hash_crypt_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*, i32)* @gcm_hash_assoc_remain_continue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gcm_hash_assoc_remain_continue(%struct.aead_request* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.aead_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.crypto_gcm_req_priv_ctx*, align 8
  %7 = alloca %struct.crypto_gcm_ghash_ctx*, align 8
  store %struct.aead_request* %0, %struct.aead_request** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %9 = call %struct.crypto_gcm_req_priv_ctx* @crypto_gcm_reqctx(%struct.aead_request* %8)
  store %struct.crypto_gcm_req_priv_ctx* %9, %struct.crypto_gcm_req_priv_ctx** %6, align 8
  %10 = load %struct.crypto_gcm_req_priv_ctx*, %struct.crypto_gcm_req_priv_ctx** %6, align 8
  %11 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, %struct.crypto_gcm_req_priv_ctx* %10, i32 0, i32 0
  store %struct.crypto_gcm_ghash_ctx* %11, %struct.crypto_gcm_ghash_ctx** %7, align 8
  %12 = load %struct.crypto_gcm_ghash_ctx*, %struct.crypto_gcm_ghash_ctx** %7, align 8
  %13 = getelementptr inbounds %struct.crypto_gcm_ghash_ctx, %struct.crypto_gcm_ghash_ctx* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %37

16:                                               ; preds = %2
  %17 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %18 = load i32, i32* @gcm_hash_crypt_done, align 4
  %19 = load %struct.crypto_gcm_ghash_ctx*, %struct.crypto_gcm_ghash_ctx** %7, align 8
  %20 = getelementptr inbounds %struct.crypto_gcm_ghash_ctx, %struct.crypto_gcm_ghash_ctx* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.crypto_gcm_ghash_ctx*, %struct.crypto_gcm_ghash_ctx** %7, align 8
  %23 = getelementptr inbounds %struct.crypto_gcm_ghash_ctx, %struct.crypto_gcm_ghash_ctx* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i64 @gcm_hash_update(%struct.aead_request* %17, i32 %18, i32 %21, i64 %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %16
  br label %34

29:                                               ; preds = %16
  %30 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @gcm_hash_crypt_continue(%struct.aead_request* %30, i32 %31)
  %33 = sext i32 %32 to i64
  br label %34

34:                                               ; preds = %29, %28
  %35 = phi i64 [ %26, %28 ], [ %33, %29 ]
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %3, align 4
  br label %41

37:                                               ; preds = %2
  %38 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @gcm_hash_crypt_remain_continue(%struct.aead_request* %38, i32 %39)
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %37, %34
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.crypto_gcm_req_priv_ctx* @crypto_gcm_reqctx(%struct.aead_request*) #1

declare dso_local i64 @gcm_hash_update(%struct.aead_request*, i32, i32, i64, i32) #1

declare dso_local i32 @gcm_hash_crypt_continue(%struct.aead_request*, i32) #1

declare dso_local i32 @gcm_hash_crypt_remain_continue(%struct.aead_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
