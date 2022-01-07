; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_shash.c_crypto_shash_init_tfm.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_shash.c_crypto_shash_init_tfm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.crypto_shash = type { i32 }
%struct.shash_alg = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*)* @crypto_shash_init_tfm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_shash_init_tfm(%struct.crypto_tfm* %0) #0 {
  %2 = alloca %struct.crypto_tfm*, align 8
  %3 = alloca %struct.crypto_shash*, align 8
  %4 = alloca %struct.shash_alg*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %2, align 8
  %5 = load %struct.crypto_tfm*, %struct.crypto_tfm** %2, align 8
  %6 = call %struct.crypto_shash* @__crypto_shash_cast(%struct.crypto_tfm* %5)
  store %struct.crypto_shash* %6, %struct.crypto_shash** %3, align 8
  %7 = load %struct.crypto_shash*, %struct.crypto_shash** %3, align 8
  %8 = call %struct.shash_alg* @crypto_shash_alg(%struct.crypto_shash* %7)
  store %struct.shash_alg* %8, %struct.shash_alg** %4, align 8
  %9 = load %struct.shash_alg*, %struct.shash_alg** %4, align 8
  %10 = getelementptr inbounds %struct.shash_alg, %struct.shash_alg* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.crypto_shash*, %struct.crypto_shash** %3, align 8
  %13 = getelementptr inbounds %struct.crypto_shash, %struct.crypto_shash* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load %struct.crypto_shash*, %struct.crypto_shash** %3, align 8
  %15 = load %struct.shash_alg*, %struct.shash_alg** %4, align 8
  %16 = call i32 @shash_set_needkey(%struct.crypto_shash* %14, %struct.shash_alg* %15)
  ret i32 0
}

declare dso_local %struct.crypto_shash* @__crypto_shash_cast(%struct.crypto_tfm*) #1

declare dso_local %struct.shash_alg* @crypto_shash_alg(%struct.crypto_shash*) #1

declare dso_local i32 @shash_set_needkey(%struct.crypto_shash*, %struct.shash_alg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
