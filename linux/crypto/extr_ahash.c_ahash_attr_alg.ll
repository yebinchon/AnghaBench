; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_ahash.c_ahash_attr_alg.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_ahash.c_ahash_attr_alg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_alg_common = type { i32 }
%struct.rtattr = type { i32 }
%struct.crypto_alg = type { i32 }

@crypto_ahash_type = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hash_alg_common* @ahash_attr_alg(%struct.rtattr* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rtattr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.crypto_alg*, align 8
  store %struct.rtattr* %0, %struct.rtattr** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.rtattr*, %struct.rtattr** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call %struct.crypto_alg* @crypto_attr_alg2(%struct.rtattr* %8, i32* @crypto_ahash_type, i32 %9, i32 %10)
  store %struct.crypto_alg* %11, %struct.crypto_alg** %7, align 8
  %12 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %13 = call i64 @IS_ERR(%struct.crypto_alg* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %17 = call %struct.hash_alg_common* @ERR_CAST(%struct.crypto_alg* %16)
  br label %21

18:                                               ; preds = %3
  %19 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %20 = call %struct.hash_alg_common* @__crypto_hash_alg_common(%struct.crypto_alg* %19)
  br label %21

21:                                               ; preds = %18, %15
  %22 = phi %struct.hash_alg_common* [ %17, %15 ], [ %20, %18 ]
  ret %struct.hash_alg_common* %22
}

declare dso_local %struct.crypto_alg* @crypto_attr_alg2(%struct.rtattr*, i32*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.crypto_alg*) #1

declare dso_local %struct.hash_alg_common* @ERR_CAST(%struct.crypto_alg*) #1

declare dso_local %struct.hash_alg_common* @__crypto_hash_alg_common(%struct.crypto_alg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
