; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_shash.c_shash_async_digest.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_shash.c_shash_async_digest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32 }
%struct.crypto_shash = type { i32 }
%struct.shash_desc = type { %struct.crypto_shash* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*)* @shash_async_digest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shash_async_digest(%struct.ahash_request* %0) #0 {
  %2 = alloca %struct.ahash_request*, align 8
  %3 = alloca %struct.crypto_shash**, align 8
  %4 = alloca %struct.shash_desc*, align 8
  store %struct.ahash_request* %0, %struct.ahash_request** %2, align 8
  %5 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %6 = call i32 @crypto_ahash_reqtfm(%struct.ahash_request* %5)
  %7 = call %struct.crypto_shash** @crypto_ahash_ctx(i32 %6)
  store %struct.crypto_shash** %7, %struct.crypto_shash*** %3, align 8
  %8 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %9 = call %struct.shash_desc* @ahash_request_ctx(%struct.ahash_request* %8)
  store %struct.shash_desc* %9, %struct.shash_desc** %4, align 8
  %10 = load %struct.crypto_shash**, %struct.crypto_shash*** %3, align 8
  %11 = load %struct.crypto_shash*, %struct.crypto_shash** %10, align 8
  %12 = load %struct.shash_desc*, %struct.shash_desc** %4, align 8
  %13 = getelementptr inbounds %struct.shash_desc, %struct.shash_desc* %12, i32 0, i32 0
  store %struct.crypto_shash* %11, %struct.crypto_shash** %13, align 8
  %14 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %15 = load %struct.shash_desc*, %struct.shash_desc** %4, align 8
  %16 = call i32 @shash_ahash_digest(%struct.ahash_request* %14, %struct.shash_desc* %15)
  ret i32 %16
}

declare dso_local %struct.crypto_shash** @crypto_ahash_ctx(i32) #1

declare dso_local i32 @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local %struct.shash_desc* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32 @shash_ahash_digest(%struct.ahash_request*, %struct.shash_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
