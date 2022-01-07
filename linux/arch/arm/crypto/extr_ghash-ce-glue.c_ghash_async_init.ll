; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/crypto/extr_ghash-ce-glue.c_ghash_async_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/crypto/extr_ghash-ce-glue.c_ghash_async_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32 }
%struct.crypto_ahash = type { i32 }
%struct.ghash_async_ctx = type { %struct.cryptd_ahash* }
%struct.cryptd_ahash = type { i32 }
%struct.shash_desc = type { %struct.crypto_shash* }
%struct.crypto_shash = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*)* @ghash_async_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ghash_async_init(%struct.ahash_request* %0) #0 {
  %2 = alloca %struct.ahash_request*, align 8
  %3 = alloca %struct.crypto_ahash*, align 8
  %4 = alloca %struct.ghash_async_ctx*, align 8
  %5 = alloca %struct.ahash_request*, align 8
  %6 = alloca %struct.cryptd_ahash*, align 8
  %7 = alloca %struct.shash_desc*, align 8
  %8 = alloca %struct.crypto_shash*, align 8
  store %struct.ahash_request* %0, %struct.ahash_request** %2, align 8
  %9 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %10 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request* %9)
  store %struct.crypto_ahash* %10, %struct.crypto_ahash** %3, align 8
  %11 = load %struct.crypto_ahash*, %struct.crypto_ahash** %3, align 8
  %12 = call %struct.ghash_async_ctx* @crypto_ahash_ctx(%struct.crypto_ahash* %11)
  store %struct.ghash_async_ctx* %12, %struct.ghash_async_ctx** %4, align 8
  %13 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %14 = call %struct.ahash_request* @ahash_request_ctx(%struct.ahash_request* %13)
  store %struct.ahash_request* %14, %struct.ahash_request** %5, align 8
  %15 = load %struct.ghash_async_ctx*, %struct.ghash_async_ctx** %4, align 8
  %16 = getelementptr inbounds %struct.ghash_async_ctx, %struct.ghash_async_ctx* %15, i32 0, i32 0
  %17 = load %struct.cryptd_ahash*, %struct.cryptd_ahash** %16, align 8
  store %struct.cryptd_ahash* %17, %struct.cryptd_ahash** %6, align 8
  %18 = load %struct.ahash_request*, %struct.ahash_request** %5, align 8
  %19 = call %struct.shash_desc* @cryptd_shash_desc(%struct.ahash_request* %18)
  store %struct.shash_desc* %19, %struct.shash_desc** %7, align 8
  %20 = load %struct.cryptd_ahash*, %struct.cryptd_ahash** %6, align 8
  %21 = call %struct.crypto_shash* @cryptd_ahash_child(%struct.cryptd_ahash* %20)
  store %struct.crypto_shash* %21, %struct.crypto_shash** %8, align 8
  %22 = load %struct.crypto_shash*, %struct.crypto_shash** %8, align 8
  %23 = load %struct.shash_desc*, %struct.shash_desc** %7, align 8
  %24 = getelementptr inbounds %struct.shash_desc, %struct.shash_desc* %23, i32 0, i32 0
  store %struct.crypto_shash* %22, %struct.crypto_shash** %24, align 8
  %25 = load %struct.shash_desc*, %struct.shash_desc** %7, align 8
  %26 = call i32 @crypto_shash_init(%struct.shash_desc* %25)
  ret i32 %26
}

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local %struct.ghash_async_ctx* @crypto_ahash_ctx(%struct.crypto_ahash*) #1

declare dso_local %struct.ahash_request* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local %struct.shash_desc* @cryptd_shash_desc(%struct.ahash_request*) #1

declare dso_local %struct.crypto_shash* @cryptd_ahash_child(%struct.cryptd_ahash*) #1

declare dso_local i32 @crypto_shash_init(%struct.shash_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
