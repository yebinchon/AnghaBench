; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_gcm.c_gcm_hash_len.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_gcm.c_gcm_hash_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32 }
%struct.crypto_gcm_req_priv_ctx = type { i32, i32, %struct.crypto_gcm_ghash_ctx, %struct.TYPE_4__ }
%struct.crypto_gcm_ghash_ctx = type { i32 }
%struct.TYPE_4__ = type { %struct.ahash_request }
%struct.ahash_request = type { i32 }
%struct.TYPE_5__ = type { i8*, i8* }

@gcm_hash_len_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*, i32)* @gcm_hash_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gcm_hash_len(%struct.aead_request* %0, i32 %1) #0 {
  %3 = alloca %struct.aead_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_gcm_req_priv_ctx*, align 8
  %6 = alloca %struct.ahash_request*, align 8
  %7 = alloca %struct.crypto_gcm_ghash_ctx*, align 8
  %8 = alloca %struct.TYPE_5__, align 8
  store %struct.aead_request* %0, %struct.aead_request** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %10 = call %struct.crypto_gcm_req_priv_ctx* @crypto_gcm_reqctx(%struct.aead_request* %9)
  store %struct.crypto_gcm_req_priv_ctx* %10, %struct.crypto_gcm_req_priv_ctx** %5, align 8
  %11 = load %struct.crypto_gcm_req_priv_ctx*, %struct.crypto_gcm_req_priv_ctx** %5, align 8
  %12 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, %struct.crypto_gcm_req_priv_ctx* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store %struct.ahash_request* %13, %struct.ahash_request** %6, align 8
  %14 = load %struct.crypto_gcm_req_priv_ctx*, %struct.crypto_gcm_req_priv_ctx** %5, align 8
  %15 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, %struct.crypto_gcm_req_priv_ctx* %14, i32 0, i32 2
  store %struct.crypto_gcm_ghash_ctx* %15, %struct.crypto_gcm_ghash_ctx** %7, align 8
  %16 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %17 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = mul nsw i32 %18, 8
  %20 = call i8* @cpu_to_be64(i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  store i8* %20, i8** %21, align 8
  %22 = load %struct.crypto_gcm_ghash_ctx*, %struct.crypto_gcm_ghash_ctx** %7, align 8
  %23 = getelementptr inbounds %struct.crypto_gcm_ghash_ctx, %struct.crypto_gcm_ghash_ctx* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %24, 8
  %26 = call i8* @cpu_to_be64(i32 %25)
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  store i8* %26, i8** %27, align 8
  %28 = load %struct.crypto_gcm_req_priv_ctx*, %struct.crypto_gcm_req_priv_ctx** %5, align 8
  %29 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, %struct.crypto_gcm_req_priv_ctx* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @memcpy(i32 %30, %struct.TYPE_5__* %8, i32 16)
  %32 = load %struct.crypto_gcm_req_priv_ctx*, %struct.crypto_gcm_req_priv_ctx** %5, align 8
  %33 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, %struct.crypto_gcm_req_priv_ctx* %32, i32 0, i32 1
  %34 = load %struct.crypto_gcm_req_priv_ctx*, %struct.crypto_gcm_req_priv_ctx** %5, align 8
  %35 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, %struct.crypto_gcm_req_priv_ctx* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @sg_init_one(i32* %33, i32 %36, i32 16)
  %38 = load %struct.ahash_request*, %struct.ahash_request** %6, align 8
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @gcm_hash_len_done, align 4
  %41 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %42 = call i32 @ahash_request_set_callback(%struct.ahash_request* %38, i32 %39, i32 %40, %struct.aead_request* %41)
  %43 = load %struct.ahash_request*, %struct.ahash_request** %6, align 8
  %44 = load %struct.crypto_gcm_req_priv_ctx*, %struct.crypto_gcm_req_priv_ctx** %5, align 8
  %45 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, %struct.crypto_gcm_req_priv_ctx* %44, i32 0, i32 1
  %46 = load %struct.crypto_gcm_req_priv_ctx*, %struct.crypto_gcm_req_priv_ctx** %5, align 8
  %47 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, %struct.crypto_gcm_req_priv_ctx* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ahash_request_set_crypt(%struct.ahash_request* %43, i32* %45, i32 %48, i32 16)
  %50 = load %struct.ahash_request*, %struct.ahash_request** %6, align 8
  %51 = call i32 @crypto_ahash_finup(%struct.ahash_request* %50)
  ret i32 %51
}

declare dso_local %struct.crypto_gcm_req_priv_ctx* @crypto_gcm_reqctx(%struct.aead_request*) #1

declare dso_local i8* @cpu_to_be64(i32) #1

declare dso_local i32 @memcpy(i32, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @sg_init_one(i32*, i32, i32) #1

declare dso_local i32 @ahash_request_set_callback(%struct.ahash_request*, i32, i32, %struct.aead_request*) #1

declare dso_local i32 @ahash_request_set_crypt(%struct.ahash_request*, i32*, i32, i32) #1

declare dso_local i32 @crypto_ahash_finup(%struct.ahash_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
