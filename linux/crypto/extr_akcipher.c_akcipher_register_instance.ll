; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_akcipher.c_akcipher_register_instance.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_akcipher.c_akcipher_register_instance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_template = type { i32 }
%struct.akcipher_instance = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @akcipher_register_instance(%struct.crypto_template* %0, %struct.akcipher_instance* %1) #0 {
  %3 = alloca %struct.crypto_template*, align 8
  %4 = alloca %struct.akcipher_instance*, align 8
  store %struct.crypto_template* %0, %struct.crypto_template** %3, align 8
  store %struct.akcipher_instance* %1, %struct.akcipher_instance** %4, align 8
  %5 = load %struct.akcipher_instance*, %struct.akcipher_instance** %4, align 8
  %6 = getelementptr inbounds %struct.akcipher_instance, %struct.akcipher_instance* %5, i32 0, i32 0
  %7 = call i32 @akcipher_prepare_alg(i32* %6)
  %8 = load %struct.crypto_template*, %struct.crypto_template** %3, align 8
  %9 = load %struct.akcipher_instance*, %struct.akcipher_instance** %4, align 8
  %10 = call i32 @akcipher_crypto_instance(%struct.akcipher_instance* %9)
  %11 = call i32 @crypto_register_instance(%struct.crypto_template* %8, i32 %10)
  ret i32 %11
}

declare dso_local i32 @akcipher_prepare_alg(i32*) #1

declare dso_local i32 @crypto_register_instance(%struct.crypto_template*, i32) #1

declare dso_local i32 @akcipher_crypto_instance(%struct.akcipher_instance*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
