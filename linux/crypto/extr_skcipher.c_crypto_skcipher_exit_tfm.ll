; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_skcipher.c_crypto_skcipher_exit_tfm.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_skcipher.c_crypto_skcipher_exit_tfm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.crypto_skcipher = type { i32 }
%struct.skcipher_alg = type { i32 (%struct.crypto_skcipher.0*)* }
%struct.crypto_skcipher.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_tfm*)* @crypto_skcipher_exit_tfm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crypto_skcipher_exit_tfm(%struct.crypto_tfm* %0) #0 {
  %2 = alloca %struct.crypto_tfm*, align 8
  %3 = alloca %struct.crypto_skcipher*, align 8
  %4 = alloca %struct.skcipher_alg*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %2, align 8
  %5 = load %struct.crypto_tfm*, %struct.crypto_tfm** %2, align 8
  %6 = call %struct.crypto_skcipher* @__crypto_skcipher_cast(%struct.crypto_tfm* %5)
  store %struct.crypto_skcipher* %6, %struct.crypto_skcipher** %3, align 8
  %7 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %3, align 8
  %8 = call %struct.skcipher_alg* @crypto_skcipher_alg(%struct.crypto_skcipher* %7)
  store %struct.skcipher_alg* %8, %struct.skcipher_alg** %4, align 8
  %9 = load %struct.skcipher_alg*, %struct.skcipher_alg** %4, align 8
  %10 = getelementptr inbounds %struct.skcipher_alg, %struct.skcipher_alg* %9, i32 0, i32 0
  %11 = load i32 (%struct.crypto_skcipher.0*)*, i32 (%struct.crypto_skcipher.0*)** %10, align 8
  %12 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %3, align 8
  %13 = bitcast %struct.crypto_skcipher* %12 to %struct.crypto_skcipher.0*
  %14 = call i32 %11(%struct.crypto_skcipher.0* %13)
  ret void
}

declare dso_local %struct.crypto_skcipher* @__crypto_skcipher_cast(%struct.crypto_tfm*) #1

declare dso_local %struct.skcipher_alg* @crypto_skcipher_alg(%struct.crypto_skcipher*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
