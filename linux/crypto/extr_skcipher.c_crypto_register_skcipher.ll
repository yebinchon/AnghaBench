; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_skcipher.c_crypto_register_skcipher.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_skcipher.c_crypto_register_skcipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_alg = type { %struct.crypto_alg }
%struct.crypto_alg = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_register_skcipher(%struct.skcipher_alg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.skcipher_alg*, align 8
  %4 = alloca %struct.crypto_alg*, align 8
  %5 = alloca i32, align 4
  store %struct.skcipher_alg* %0, %struct.skcipher_alg** %3, align 8
  %6 = load %struct.skcipher_alg*, %struct.skcipher_alg** %3, align 8
  %7 = getelementptr inbounds %struct.skcipher_alg, %struct.skcipher_alg* %6, i32 0, i32 0
  store %struct.crypto_alg* %7, %struct.crypto_alg** %4, align 8
  %8 = load %struct.skcipher_alg*, %struct.skcipher_alg** %3, align 8
  %9 = call i32 @skcipher_prepare_alg(%struct.skcipher_alg* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %17

14:                                               ; preds = %1
  %15 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  %16 = call i32 @crypto_register_alg(%struct.crypto_alg* %15)
  store i32 %16, i32* %2, align 4
  br label %17

17:                                               ; preds = %14, %12
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

declare dso_local i32 @skcipher_prepare_alg(%struct.skcipher_alg*) #1

declare dso_local i32 @crypto_register_alg(%struct.crypto_alg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
