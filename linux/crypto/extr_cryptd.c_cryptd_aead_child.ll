; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_cryptd.c_cryptd_aead_child.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_cryptd.c_cryptd_aead_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aead = type { i32 }
%struct.cryptd_aead = type { i32 }
%struct.cryptd_aead_ctx = type { %struct.crypto_aead* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.crypto_aead* @cryptd_aead_child(%struct.cryptd_aead* %0) #0 {
  %2 = alloca %struct.cryptd_aead*, align 8
  %3 = alloca %struct.cryptd_aead_ctx*, align 8
  store %struct.cryptd_aead* %0, %struct.cryptd_aead** %2, align 8
  %4 = load %struct.cryptd_aead*, %struct.cryptd_aead** %2, align 8
  %5 = getelementptr inbounds %struct.cryptd_aead, %struct.cryptd_aead* %4, i32 0, i32 0
  %6 = call %struct.cryptd_aead_ctx* @crypto_aead_ctx(i32* %5)
  store %struct.cryptd_aead_ctx* %6, %struct.cryptd_aead_ctx** %3, align 8
  %7 = load %struct.cryptd_aead_ctx*, %struct.cryptd_aead_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.cryptd_aead_ctx, %struct.cryptd_aead_ctx* %7, i32 0, i32 0
  %9 = load %struct.crypto_aead*, %struct.crypto_aead** %8, align 8
  ret %struct.crypto_aead* %9
}

declare dso_local %struct.cryptd_aead_ctx* @crypto_aead_ctx(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
