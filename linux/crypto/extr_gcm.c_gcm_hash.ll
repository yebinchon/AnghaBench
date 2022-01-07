; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_gcm.c_gcm_hash.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_gcm.c_gcm_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32 }
%struct.crypto_gcm_req_priv_ctx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ahash_request }
%struct.ahash_request = type { i32 }
%struct.crypto_gcm_ctx = type { i32 }

@gcm_hash_init_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*, i32)* @gcm_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gcm_hash(%struct.aead_request* %0, i32 %1) #0 {
  %3 = alloca %struct.aead_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_gcm_req_priv_ctx*, align 8
  %6 = alloca %struct.ahash_request*, align 8
  %7 = alloca %struct.crypto_gcm_ctx*, align 8
  store %struct.aead_request* %0, %struct.aead_request** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %9 = call %struct.crypto_gcm_req_priv_ctx* @crypto_gcm_reqctx(%struct.aead_request* %8)
  store %struct.crypto_gcm_req_priv_ctx* %9, %struct.crypto_gcm_req_priv_ctx** %5, align 8
  %10 = load %struct.crypto_gcm_req_priv_ctx*, %struct.crypto_gcm_req_priv_ctx** %5, align 8
  %11 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, %struct.crypto_gcm_req_priv_ctx* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.ahash_request* %12, %struct.ahash_request** %6, align 8
  %13 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %14 = call i32 @crypto_aead_reqtfm(%struct.aead_request* %13)
  %15 = call %struct.crypto_gcm_ctx* @crypto_aead_ctx(i32 %14)
  store %struct.crypto_gcm_ctx* %15, %struct.crypto_gcm_ctx** %7, align 8
  %16 = load %struct.ahash_request*, %struct.ahash_request** %6, align 8
  %17 = load %struct.crypto_gcm_ctx*, %struct.crypto_gcm_ctx** %7, align 8
  %18 = getelementptr inbounds %struct.crypto_gcm_ctx, %struct.crypto_gcm_ctx* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ahash_request_set_tfm(%struct.ahash_request* %16, i32 %19)
  %21 = load %struct.ahash_request*, %struct.ahash_request** %6, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @gcm_hash_init_done, align 4
  %24 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %25 = call i32 @ahash_request_set_callback(%struct.ahash_request* %21, i32 %22, i32 %23, %struct.aead_request* %24)
  %26 = load %struct.ahash_request*, %struct.ahash_request** %6, align 8
  %27 = call i64 @crypto_ahash_init(%struct.ahash_request* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  br label %35

30:                                               ; preds = %2
  %31 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @gcm_hash_init_continue(%struct.aead_request* %31, i32 %32)
  %34 = sext i32 %33 to i64
  br label %35

35:                                               ; preds = %30, %29
  %36 = phi i64 [ %27, %29 ], [ %34, %30 ]
  %37 = trunc i64 %36 to i32
  ret i32 %37
}

declare dso_local %struct.crypto_gcm_req_priv_ctx* @crypto_gcm_reqctx(%struct.aead_request*) #1

declare dso_local %struct.crypto_gcm_ctx* @crypto_aead_ctx(i32) #1

declare dso_local i32 @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local i32 @ahash_request_set_tfm(%struct.ahash_request*, i32) #1

declare dso_local i32 @ahash_request_set_callback(%struct.ahash_request*, i32, i32, %struct.aead_request*) #1

declare dso_local i64 @crypto_ahash_init(%struct.ahash_request*) #1

declare dso_local i32 @gcm_hash_init_continue(%struct.aead_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
