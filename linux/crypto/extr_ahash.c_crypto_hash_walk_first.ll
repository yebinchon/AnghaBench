; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_ahash.c_crypto_hash_walk_first.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_ahash.c_crypto_hash_walk_first.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.crypto_hash_walk = type { i32, i32, i32, i64, i32 }

@CRYPTO_TFM_REQ_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_hash_walk_first(%struct.ahash_request* %0, %struct.crypto_hash_walk* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ahash_request*, align 8
  %5 = alloca %struct.crypto_hash_walk*, align 8
  store %struct.ahash_request* %0, %struct.ahash_request** %4, align 8
  store %struct.crypto_hash_walk* %1, %struct.crypto_hash_walk** %5, align 8
  %6 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %7 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.crypto_hash_walk*, %struct.crypto_hash_walk** %5, align 8
  %10 = getelementptr inbounds %struct.crypto_hash_walk, %struct.crypto_hash_walk* %9, i32 0, i32 4
  store i32 %8, i32* %10, align 8
  %11 = load %struct.crypto_hash_walk*, %struct.crypto_hash_walk** %5, align 8
  %12 = getelementptr inbounds %struct.crypto_hash_walk, %struct.crypto_hash_walk* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load %struct.crypto_hash_walk*, %struct.crypto_hash_walk** %5, align 8
  %17 = getelementptr inbounds %struct.crypto_hash_walk, %struct.crypto_hash_walk* %16, i32 0, i32 3
  store i64 0, i64* %17, align 8
  store i32 0, i32* %3, align 4
  br label %39

18:                                               ; preds = %2
  %19 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %20 = call i32 @crypto_ahash_reqtfm(%struct.ahash_request* %19)
  %21 = call i32 @crypto_ahash_alignmask(i32 %20)
  %22 = load %struct.crypto_hash_walk*, %struct.crypto_hash_walk** %5, align 8
  %23 = getelementptr inbounds %struct.crypto_hash_walk, %struct.crypto_hash_walk* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %25 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.crypto_hash_walk*, %struct.crypto_hash_walk** %5, align 8
  %28 = getelementptr inbounds %struct.crypto_hash_walk, %struct.crypto_hash_walk* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %30 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @CRYPTO_TFM_REQ_MASK, align 4
  %34 = and i32 %32, %33
  %35 = load %struct.crypto_hash_walk*, %struct.crypto_hash_walk** %5, align 8
  %36 = getelementptr inbounds %struct.crypto_hash_walk, %struct.crypto_hash_walk* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.crypto_hash_walk*, %struct.crypto_hash_walk** %5, align 8
  %38 = call i32 @hash_walk_new_entry(%struct.crypto_hash_walk* %37)
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %18, %15
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @crypto_ahash_alignmask(i32) #1

declare dso_local i32 @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local i32 @hash_walk_new_entry(%struct.crypto_hash_walk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
