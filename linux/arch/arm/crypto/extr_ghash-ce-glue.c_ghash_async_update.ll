; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/crypto/extr_ghash-ce-glue.c_ghash_async_update.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/crypto/extr_ghash-ce-glue.c_ghash_async_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32 }
%struct.crypto_ahash = type { i32 }
%struct.ghash_async_ctx = type { %struct.cryptd_ahash* }
%struct.cryptd_ahash = type { i32 }
%struct.shash_desc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*)* @ghash_async_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ghash_async_update(%struct.ahash_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca %struct.ahash_request*, align 8
  %5 = alloca %struct.crypto_ahash*, align 8
  %6 = alloca %struct.ghash_async_ctx*, align 8
  %7 = alloca %struct.cryptd_ahash*, align 8
  %8 = alloca %struct.shash_desc*, align 8
  store %struct.ahash_request* %0, %struct.ahash_request** %3, align 8
  %9 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %10 = call %struct.ahash_request* @ahash_request_ctx(%struct.ahash_request* %9)
  store %struct.ahash_request* %10, %struct.ahash_request** %4, align 8
  %11 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %12 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request* %11)
  store %struct.crypto_ahash* %12, %struct.crypto_ahash** %5, align 8
  %13 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %14 = call %struct.ghash_async_ctx* @crypto_ahash_ctx(%struct.crypto_ahash* %13)
  store %struct.ghash_async_ctx* %14, %struct.ghash_async_ctx** %6, align 8
  %15 = load %struct.ghash_async_ctx*, %struct.ghash_async_ctx** %6, align 8
  %16 = getelementptr inbounds %struct.ghash_async_ctx, %struct.ghash_async_ctx* %15, i32 0, i32 0
  %17 = load %struct.cryptd_ahash*, %struct.cryptd_ahash** %16, align 8
  store %struct.cryptd_ahash* %17, %struct.cryptd_ahash** %7, align 8
  %18 = call i32 (...) @crypto_simd_usable()
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = call i64 (...) @in_atomic()
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %20
  %24 = load %struct.cryptd_ahash*, %struct.cryptd_ahash** %7, align 8
  %25 = call i64 @cryptd_ahash_queued(%struct.cryptd_ahash* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %23, %1
  %28 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %29 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %30 = call i32 @memcpy(%struct.ahash_request* %28, %struct.ahash_request* %29, i32 4)
  %31 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %32 = load %struct.cryptd_ahash*, %struct.cryptd_ahash** %7, align 8
  %33 = getelementptr inbounds %struct.cryptd_ahash, %struct.cryptd_ahash* %32, i32 0, i32 0
  %34 = call i32 @ahash_request_set_tfm(%struct.ahash_request* %31, i32* %33)
  %35 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %36 = call i32 @crypto_ahash_update(%struct.ahash_request* %35)
  store i32 %36, i32* %2, align 4
  br label %43

37:                                               ; preds = %23, %20
  %38 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %39 = call %struct.shash_desc* @cryptd_shash_desc(%struct.ahash_request* %38)
  store %struct.shash_desc* %39, %struct.shash_desc** %8, align 8
  %40 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %41 = load %struct.shash_desc*, %struct.shash_desc** %8, align 8
  %42 = call i32 @shash_ahash_update(%struct.ahash_request* %40, %struct.shash_desc* %41)
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %37, %27
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local %struct.ahash_request* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local %struct.ghash_async_ctx* @crypto_ahash_ctx(%struct.crypto_ahash*) #1

declare dso_local i32 @crypto_simd_usable(...) #1

declare dso_local i64 @in_atomic(...) #1

declare dso_local i64 @cryptd_ahash_queued(%struct.cryptd_ahash*) #1

declare dso_local i32 @memcpy(%struct.ahash_request*, %struct.ahash_request*, i32) #1

declare dso_local i32 @ahash_request_set_tfm(%struct.ahash_request*, i32*) #1

declare dso_local i32 @crypto_ahash_update(%struct.ahash_request*) #1

declare dso_local %struct.shash_desc* @cryptd_shash_desc(%struct.ahash_request*) #1

declare dso_local i32 @shash_ahash_update(%struct.ahash_request*, %struct.shash_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
