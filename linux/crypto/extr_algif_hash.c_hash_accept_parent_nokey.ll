; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_algif_hash.c_hash_accept_parent_nokey.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_algif_hash.c_hash_accept_parent_nokey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.crypto_ahash = type { i32 }
%struct.alg_sock = type { %struct.hash_ctx* }
%struct.hash_ctx = type { i32, i32, i32, i64, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MAY_BACKLOG = common dso_local global i32 0, align 4
@crypto_req_done = common dso_local global i32 0, align 4
@hash_sock_destruct = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.sock*)* @hash_accept_parent_nokey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hash_accept_parent_nokey(i8* %0, %struct.sock* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.crypto_ahash*, align 8
  %7 = alloca %struct.alg_sock*, align 8
  %8 = alloca %struct.hash_ctx*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.sock* %1, %struct.sock** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.crypto_ahash*
  store %struct.crypto_ahash* %11, %struct.crypto_ahash** %6, align 8
  %12 = load %struct.sock*, %struct.sock** %5, align 8
  %13 = call %struct.alg_sock* @alg_sk(%struct.sock* %12)
  store %struct.alg_sock* %13, %struct.alg_sock** %7, align 8
  %14 = load %struct.crypto_ahash*, %struct.crypto_ahash** %6, align 8
  %15 = call i32 @crypto_ahash_reqsize(%struct.crypto_ahash* %14)
  %16 = sext i32 %15 to i64
  %17 = add i64 32, %16
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %9, align 4
  %19 = load %struct.sock*, %struct.sock** %5, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.hash_ctx* @sock_kmalloc(%struct.sock* %19, i32 %20, i32 %21)
  store %struct.hash_ctx* %22, %struct.hash_ctx** %8, align 8
  %23 = load %struct.hash_ctx*, %struct.hash_ctx** %8, align 8
  %24 = icmp ne %struct.hash_ctx* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %56

28:                                               ; preds = %2
  %29 = load %struct.hash_ctx*, %struct.hash_ctx** %8, align 8
  %30 = getelementptr inbounds %struct.hash_ctx, %struct.hash_ctx* %29, i32 0, i32 4
  store i32* null, i32** %30, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.hash_ctx*, %struct.hash_ctx** %8, align 8
  %33 = getelementptr inbounds %struct.hash_ctx, %struct.hash_ctx* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.hash_ctx*, %struct.hash_ctx** %8, align 8
  %35 = getelementptr inbounds %struct.hash_ctx, %struct.hash_ctx* %34, i32 0, i32 3
  store i64 0, i64* %35, align 8
  %36 = load %struct.hash_ctx*, %struct.hash_ctx** %8, align 8
  %37 = getelementptr inbounds %struct.hash_ctx, %struct.hash_ctx* %36, i32 0, i32 1
  %38 = call i32 @crypto_init_wait(i32* %37)
  %39 = load %struct.hash_ctx*, %struct.hash_ctx** %8, align 8
  %40 = load %struct.alg_sock*, %struct.alg_sock** %7, align 8
  %41 = getelementptr inbounds %struct.alg_sock, %struct.alg_sock* %40, i32 0, i32 0
  store %struct.hash_ctx* %39, %struct.hash_ctx** %41, align 8
  %42 = load %struct.hash_ctx*, %struct.hash_ctx** %8, align 8
  %43 = getelementptr inbounds %struct.hash_ctx, %struct.hash_ctx* %42, i32 0, i32 2
  %44 = load %struct.crypto_ahash*, %struct.crypto_ahash** %6, align 8
  %45 = call i32 @ahash_request_set_tfm(i32* %43, %struct.crypto_ahash* %44)
  %46 = load %struct.hash_ctx*, %struct.hash_ctx** %8, align 8
  %47 = getelementptr inbounds %struct.hash_ctx, %struct.hash_ctx* %46, i32 0, i32 2
  %48 = load i32, i32* @CRYPTO_TFM_REQ_MAY_BACKLOG, align 4
  %49 = load i32, i32* @crypto_req_done, align 4
  %50 = load %struct.hash_ctx*, %struct.hash_ctx** %8, align 8
  %51 = getelementptr inbounds %struct.hash_ctx, %struct.hash_ctx* %50, i32 0, i32 1
  %52 = call i32 @ahash_request_set_callback(i32* %47, i32 %48, i32 %49, i32* %51)
  %53 = load i32, i32* @hash_sock_destruct, align 4
  %54 = load %struct.sock*, %struct.sock** %5, align 8
  %55 = getelementptr inbounds %struct.sock, %struct.sock* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %28, %25
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local %struct.alg_sock* @alg_sk(%struct.sock*) #1

declare dso_local i32 @crypto_ahash_reqsize(%struct.crypto_ahash*) #1

declare dso_local %struct.hash_ctx* @sock_kmalloc(%struct.sock*, i32, i32) #1

declare dso_local i32 @crypto_init_wait(i32*) #1

declare dso_local i32 @ahash_request_set_tfm(i32*, %struct.crypto_ahash*) #1

declare dso_local i32 @ahash_request_set_callback(i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
