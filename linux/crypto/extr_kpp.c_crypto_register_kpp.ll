; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_kpp.c_crypto_register_kpp.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_kpp.c_crypto_register_kpp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kpp_alg = type { %struct.crypto_alg }
%struct.crypto_alg = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_register_kpp(%struct.kpp_alg* %0) #0 {
  %2 = alloca %struct.kpp_alg*, align 8
  %3 = alloca %struct.crypto_alg*, align 8
  store %struct.kpp_alg* %0, %struct.kpp_alg** %2, align 8
  %4 = load %struct.kpp_alg*, %struct.kpp_alg** %2, align 8
  %5 = getelementptr inbounds %struct.kpp_alg, %struct.kpp_alg* %4, i32 0, i32 0
  store %struct.crypto_alg* %5, %struct.crypto_alg** %3, align 8
  %6 = load %struct.kpp_alg*, %struct.kpp_alg** %2, align 8
  %7 = call i32 @kpp_prepare_alg(%struct.kpp_alg* %6)
  %8 = load %struct.crypto_alg*, %struct.crypto_alg** %3, align 8
  %9 = call i32 @crypto_register_alg(%struct.crypto_alg* %8)
  ret i32 %9
}

declare dso_local i32 @kpp_prepare_alg(%struct.kpp_alg*) #1

declare dso_local i32 @crypto_register_alg(%struct.crypto_alg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
