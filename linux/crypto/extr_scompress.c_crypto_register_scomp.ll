; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_scompress.c_crypto_register_scomp.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_scompress.c_crypto_register_scomp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scomp_alg = type { %struct.crypto_alg }
%struct.crypto_alg = type { i32, i32* }

@crypto_scomp_type = common dso_local global i32 0, align 4
@CRYPTO_ALG_TYPE_MASK = common dso_local global i32 0, align 4
@CRYPTO_ALG_TYPE_SCOMPRESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_register_scomp(%struct.scomp_alg* %0) #0 {
  %2 = alloca %struct.scomp_alg*, align 8
  %3 = alloca %struct.crypto_alg*, align 8
  store %struct.scomp_alg* %0, %struct.scomp_alg** %2, align 8
  %4 = load %struct.scomp_alg*, %struct.scomp_alg** %2, align 8
  %5 = getelementptr inbounds %struct.scomp_alg, %struct.scomp_alg* %4, i32 0, i32 0
  store %struct.crypto_alg* %5, %struct.crypto_alg** %3, align 8
  %6 = load %struct.crypto_alg*, %struct.crypto_alg** %3, align 8
  %7 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %6, i32 0, i32 1
  store i32* @crypto_scomp_type, i32** %7, align 8
  %8 = load i32, i32* @CRYPTO_ALG_TYPE_MASK, align 4
  %9 = xor i32 %8, -1
  %10 = load %struct.crypto_alg*, %struct.crypto_alg** %3, align 8
  %11 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = and i32 %12, %9
  store i32 %13, i32* %11, align 8
  %14 = load i32, i32* @CRYPTO_ALG_TYPE_SCOMPRESS, align 4
  %15 = load %struct.crypto_alg*, %struct.crypto_alg** %3, align 8
  %16 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 8
  %19 = load %struct.crypto_alg*, %struct.crypto_alg** %3, align 8
  %20 = call i32 @crypto_register_alg(%struct.crypto_alg* %19)
  ret i32 %20
}

declare dso_local i32 @crypto_register_alg(%struct.crypto_alg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
