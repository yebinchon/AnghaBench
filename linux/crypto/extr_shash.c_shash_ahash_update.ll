; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_shash.c_shash_ahash_update.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_shash.c_shash_ahash_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32 }
%struct.shash_desc = type { i32 }
%struct.crypto_hash_walk = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @shash_ahash_update(%struct.ahash_request* %0, %struct.shash_desc* %1) #0 {
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca %struct.shash_desc*, align 8
  %5 = alloca %struct.crypto_hash_walk, align 4
  %6 = alloca i32, align 4
  store %struct.ahash_request* %0, %struct.ahash_request** %3, align 8
  store %struct.shash_desc* %1, %struct.shash_desc** %4, align 8
  %7 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %8 = call i32 @crypto_hash_walk_first(%struct.ahash_request* %7, %struct.crypto_hash_walk* %5)
  store i32 %8, i32* %6, align 4
  br label %9

9:                                                ; preds = %18, %2
  %10 = load i32, i32* %6, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %9
  %13 = load %struct.shash_desc*, %struct.shash_desc** %4, align 8
  %14 = getelementptr inbounds %struct.crypto_hash_walk, %struct.crypto_hash_walk* %5, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @crypto_shash_update(%struct.shash_desc* %13, i32 %15, i32 %16)
  store i32 %17, i32* %6, align 4
  br label %18

18:                                               ; preds = %12
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @crypto_hash_walk_done(%struct.crypto_hash_walk* %5, i32 %19)
  store i32 %20, i32* %6, align 4
  br label %9

21:                                               ; preds = %9
  %22 = load i32, i32* %6, align 4
  ret i32 %22
}

declare dso_local i32 @crypto_hash_walk_first(%struct.ahash_request*, %struct.crypto_hash_walk*) #1

declare dso_local i32 @crypto_shash_update(%struct.shash_desc*, i32, i32) #1

declare dso_local i32 @crypto_hash_walk_done(%struct.crypto_hash_walk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
