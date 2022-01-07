; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_gcm.c_gcm_hash_crypt_continue.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_gcm.c_gcm_hash_crypt_continue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32 }
%struct.crypto_gcm_req_priv_ctx = type { %struct.crypto_gcm_ghash_ctx }
%struct.crypto_gcm_ghash_ctx = type { i32 }

@gcm_hash_crypt_remain_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*, i32)* @gcm_hash_crypt_continue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gcm_hash_crypt_continue(%struct.aead_request* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.aead_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.crypto_gcm_req_priv_ctx*, align 8
  %7 = alloca %struct.crypto_gcm_ghash_ctx*, align 8
  %8 = alloca i32, align 4
  store %struct.aead_request* %0, %struct.aead_request** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %10 = call %struct.crypto_gcm_req_priv_ctx* @crypto_gcm_reqctx(%struct.aead_request* %9)
  store %struct.crypto_gcm_req_priv_ctx* %10, %struct.crypto_gcm_req_priv_ctx** %6, align 8
  %11 = load %struct.crypto_gcm_req_priv_ctx*, %struct.crypto_gcm_req_priv_ctx** %6, align 8
  %12 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, %struct.crypto_gcm_req_priv_ctx* %11, i32 0, i32 0
  store %struct.crypto_gcm_ghash_ctx* %12, %struct.crypto_gcm_ghash_ctx** %7, align 8
  %13 = load %struct.crypto_gcm_ghash_ctx*, %struct.crypto_gcm_ghash_ctx** %7, align 8
  %14 = getelementptr inbounds %struct.crypto_gcm_ghash_ctx, %struct.crypto_gcm_ghash_ctx* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @gcm_remain(i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %2
  %20 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @gcm_hash_crypt_remain_done, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i64 @gcm_hash_remain(%struct.aead_request* %20, i32 %21, i32 %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %32

27:                                               ; preds = %19
  %28 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @gcm_hash_crypt_remain_continue(%struct.aead_request* %28, i32 %29)
  %31 = sext i32 %30 to i64
  br label %32

32:                                               ; preds = %27, %26
  %33 = phi i64 [ %24, %26 ], [ %31, %27 ]
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %3, align 4
  br label %39

35:                                               ; preds = %2
  %36 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @gcm_hash_crypt_remain_continue(%struct.aead_request* %36, i32 %37)
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %35, %32
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local %struct.crypto_gcm_req_priv_ctx* @crypto_gcm_reqctx(%struct.aead_request*) #1

declare dso_local i32 @gcm_remain(i32) #1

declare dso_local i64 @gcm_hash_remain(%struct.aead_request*, i32, i32, i32) #1

declare dso_local i32 @gcm_hash_crypt_remain_continue(%struct.aead_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
