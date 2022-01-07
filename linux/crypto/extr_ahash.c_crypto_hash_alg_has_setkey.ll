; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_ahash.c_crypto_hash_alg_has_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_ahash.c_crypto_hash_alg_has_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_alg_common = type { %struct.crypto_alg }
%struct.crypto_alg = type { i32* }
%struct.TYPE_2__ = type { i32* }

@crypto_ahash_type = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_hash_alg_has_setkey(%struct.hash_alg_common* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hash_alg_common*, align 8
  %4 = alloca %struct.crypto_alg*, align 8
  store %struct.hash_alg_common* %0, %struct.hash_alg_common** %3, align 8
  %5 = load %struct.hash_alg_common*, %struct.hash_alg_common** %3, align 8
  %6 = getelementptr inbounds %struct.hash_alg_common, %struct.hash_alg_common* %5, i32 0, i32 0
  store %struct.crypto_alg* %6, %struct.crypto_alg** %4, align 8
  %7 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  %8 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, @crypto_ahash_type
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  %13 = call i32 @__crypto_shash_alg(%struct.crypto_alg* %12)
  %14 = call i32 @crypto_shash_alg_has_setkey(i32 %13)
  store i32 %14, i32* %2, align 4
  br label %22

15:                                               ; preds = %1
  %16 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  %17 = call %struct.TYPE_2__* @__crypto_ahash_alg(%struct.crypto_alg* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %15, %11
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @crypto_shash_alg_has_setkey(i32) #1

declare dso_local i32 @__crypto_shash_alg(%struct.crypto_alg*) #1

declare dso_local %struct.TYPE_2__* @__crypto_ahash_alg(%struct.crypto_alg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
