; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_ahash.c_crypto_ahash_final.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_ahash.c_crypto_ahash_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32 }
%struct.crypto_ahash = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.crypto_alg* }
%struct.crypto_alg = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_ahash_final(%struct.ahash_request* %0) #0 {
  %2 = alloca %struct.ahash_request*, align 8
  %3 = alloca %struct.crypto_ahash*, align 8
  %4 = alloca %struct.crypto_alg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ahash_request* %0, %struct.ahash_request** %2, align 8
  %7 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %8 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request* %7)
  store %struct.crypto_ahash* %8, %struct.crypto_ahash** %3, align 8
  %9 = load %struct.crypto_ahash*, %struct.crypto_ahash** %3, align 8
  %10 = getelementptr inbounds %struct.crypto_ahash, %struct.crypto_ahash* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.crypto_alg*, %struct.crypto_alg** %11, align 8
  store %struct.crypto_alg* %12, %struct.crypto_alg** %4, align 8
  %13 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %14 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  %16 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  %17 = call i32 @crypto_stats_get(%struct.crypto_alg* %16)
  %18 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %19 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %20 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request* %19)
  %21 = getelementptr inbounds %struct.crypto_ahash, %struct.crypto_ahash* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @crypto_ahash_op(%struct.ahash_request* %18, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  %27 = call i32 @crypto_stats_ahash_final(i32 %24, i32 %25, %struct.crypto_alg* %26)
  %28 = load i32, i32* %6, align 4
  ret i32 %28
}

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local i32 @crypto_stats_get(%struct.crypto_alg*) #1

declare dso_local i32 @crypto_ahash_op(%struct.ahash_request*, i32) #1

declare dso_local i32 @crypto_stats_ahash_final(i32, i32, %struct.crypto_alg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
