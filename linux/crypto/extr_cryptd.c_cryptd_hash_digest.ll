; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_cryptd.c_cryptd_hash_digest.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_cryptd.c_cryptd_hash_digest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_async_request = type { i32 }
%struct.cryptd_hash_ctx = type { %struct.crypto_shash* }
%struct.crypto_shash = type { i32 }
%struct.ahash_request = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.cryptd_hash_request_ctx = type { i32, %struct.shash_desc }
%struct.shash_desc = type { %struct.crypto_shash* }

@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_async_request*, i32)* @cryptd_hash_digest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cryptd_hash_digest(%struct.crypto_async_request* %0, i32 %1) #0 {
  %3 = alloca %struct.crypto_async_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cryptd_hash_ctx*, align 8
  %6 = alloca %struct.crypto_shash*, align 8
  %7 = alloca %struct.ahash_request*, align 8
  %8 = alloca %struct.cryptd_hash_request_ctx*, align 8
  %9 = alloca %struct.shash_desc*, align 8
  store %struct.crypto_async_request* %0, %struct.crypto_async_request** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.crypto_async_request*, %struct.crypto_async_request** %3, align 8
  %11 = getelementptr inbounds %struct.crypto_async_request, %struct.crypto_async_request* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.cryptd_hash_ctx* @crypto_tfm_ctx(i32 %12)
  store %struct.cryptd_hash_ctx* %13, %struct.cryptd_hash_ctx** %5, align 8
  %14 = load %struct.cryptd_hash_ctx*, %struct.cryptd_hash_ctx** %5, align 8
  %15 = getelementptr inbounds %struct.cryptd_hash_ctx, %struct.cryptd_hash_ctx* %14, i32 0, i32 0
  %16 = load %struct.crypto_shash*, %struct.crypto_shash** %15, align 8
  store %struct.crypto_shash* %16, %struct.crypto_shash** %6, align 8
  %17 = load %struct.crypto_async_request*, %struct.crypto_async_request** %3, align 8
  %18 = call %struct.ahash_request* @ahash_request_cast(%struct.crypto_async_request* %17)
  store %struct.ahash_request* %18, %struct.ahash_request** %7, align 8
  %19 = load %struct.ahash_request*, %struct.ahash_request** %7, align 8
  %20 = call %struct.cryptd_hash_request_ctx* @ahash_request_ctx(%struct.ahash_request* %19)
  store %struct.cryptd_hash_request_ctx* %20, %struct.cryptd_hash_request_ctx** %8, align 8
  %21 = load %struct.cryptd_hash_request_ctx*, %struct.cryptd_hash_request_ctx** %8, align 8
  %22 = getelementptr inbounds %struct.cryptd_hash_request_ctx, %struct.cryptd_hash_request_ctx* %21, i32 0, i32 1
  store %struct.shash_desc* %22, %struct.shash_desc** %9, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @EINPROGRESS, align 4
  %25 = sub nsw i32 0, %24
  %26 = icmp eq i32 %23, %25
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  br label %44

31:                                               ; preds = %2
  %32 = load %struct.crypto_shash*, %struct.crypto_shash** %6, align 8
  %33 = load %struct.shash_desc*, %struct.shash_desc** %9, align 8
  %34 = getelementptr inbounds %struct.shash_desc, %struct.shash_desc* %33, i32 0, i32 0
  store %struct.crypto_shash* %32, %struct.crypto_shash** %34, align 8
  %35 = load %struct.ahash_request*, %struct.ahash_request** %7, align 8
  %36 = load %struct.shash_desc*, %struct.shash_desc** %9, align 8
  %37 = call i32 @shash_ahash_digest(%struct.ahash_request* %35, %struct.shash_desc* %36)
  store i32 %37, i32* %4, align 4
  %38 = load %struct.cryptd_hash_request_ctx*, %struct.cryptd_hash_request_ctx** %8, align 8
  %39 = getelementptr inbounds %struct.cryptd_hash_request_ctx, %struct.cryptd_hash_request_ctx* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.ahash_request*, %struct.ahash_request** %7, align 8
  %42 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 4
  br label %44

44:                                               ; preds = %31, %30
  %45 = load %struct.ahash_request*, %struct.ahash_request** %7, align 8
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @cryptd_hash_complete(%struct.ahash_request* %45, i32 %46)
  ret void
}

declare dso_local %struct.cryptd_hash_ctx* @crypto_tfm_ctx(i32) #1

declare dso_local %struct.ahash_request* @ahash_request_cast(%struct.crypto_async_request*) #1

declare dso_local %struct.cryptd_hash_request_ctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @shash_ahash_digest(%struct.ahash_request*, %struct.shash_desc*) #1

declare dso_local i32 @cryptd_hash_complete(%struct.ahash_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
