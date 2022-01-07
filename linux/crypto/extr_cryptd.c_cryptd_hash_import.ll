; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_cryptd.c_cryptd_hash_import.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_cryptd.c_cryptd_hash_import.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32 }
%struct.crypto_ahash = type { i32 }
%struct.cryptd_hash_ctx = type { i32 }
%struct.shash_desc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*, i8*)* @cryptd_hash_import to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cryptd_hash_import(%struct.ahash_request* %0, i8* %1) #0 {
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.crypto_ahash*, align 8
  %6 = alloca %struct.cryptd_hash_ctx*, align 8
  %7 = alloca %struct.shash_desc*, align 8
  store %struct.ahash_request* %0, %struct.ahash_request** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %9 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request* %8)
  store %struct.crypto_ahash* %9, %struct.crypto_ahash** %5, align 8
  %10 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %11 = call %struct.cryptd_hash_ctx* @crypto_ahash_ctx(%struct.crypto_ahash* %10)
  store %struct.cryptd_hash_ctx* %11, %struct.cryptd_hash_ctx** %6, align 8
  %12 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %13 = call %struct.shash_desc* @cryptd_shash_desc(%struct.ahash_request* %12)
  store %struct.shash_desc* %13, %struct.shash_desc** %7, align 8
  %14 = load %struct.cryptd_hash_ctx*, %struct.cryptd_hash_ctx** %6, align 8
  %15 = getelementptr inbounds %struct.cryptd_hash_ctx, %struct.cryptd_hash_ctx* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.shash_desc*, %struct.shash_desc** %7, align 8
  %18 = getelementptr inbounds %struct.shash_desc, %struct.shash_desc* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.shash_desc*, %struct.shash_desc** %7, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @crypto_shash_import(%struct.shash_desc* %19, i8* %20)
  ret i32 %21
}

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local %struct.cryptd_hash_ctx* @crypto_ahash_ctx(%struct.crypto_ahash*) #1

declare dso_local %struct.shash_desc* @cryptd_shash_desc(%struct.ahash_request*) #1

declare dso_local i32 @crypto_shash_import(%struct.shash_desc*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
