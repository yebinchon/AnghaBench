; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_ahash.c_crypto_register_ahash.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_ahash.c_crypto_register_ahash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_alg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.crypto_alg }
%struct.crypto_alg = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_register_ahash(%struct.ahash_alg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahash_alg*, align 8
  %4 = alloca %struct.crypto_alg*, align 8
  %5 = alloca i32, align 4
  store %struct.ahash_alg* %0, %struct.ahash_alg** %3, align 8
  %6 = load %struct.ahash_alg*, %struct.ahash_alg** %3, align 8
  %7 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.crypto_alg* %8, %struct.crypto_alg** %4, align 8
  %9 = load %struct.ahash_alg*, %struct.ahash_alg** %3, align 8
  %10 = call i32 @ahash_prepare_alg(%struct.ahash_alg* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %2, align 4
  br label %18

15:                                               ; preds = %1
  %16 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  %17 = call i32 @crypto_register_alg(%struct.crypto_alg* %16)
  store i32 %17, i32* %2, align 4
  br label %18

18:                                               ; preds = %15, %13
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local i32 @ahash_prepare_alg(%struct.ahash_alg*) #1

declare dso_local i32 @crypto_register_alg(%struct.crypto_alg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
