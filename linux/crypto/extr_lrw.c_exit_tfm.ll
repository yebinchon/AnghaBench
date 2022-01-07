; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_lrw.c_exit_tfm.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_lrw.c_exit_tfm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_skcipher = type { i32 }
%struct.priv = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_skcipher*)* @exit_tfm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exit_tfm(%struct.crypto_skcipher* %0) #0 {
  %2 = alloca %struct.crypto_skcipher*, align 8
  %3 = alloca %struct.priv*, align 8
  store %struct.crypto_skcipher* %0, %struct.crypto_skcipher** %2, align 8
  %4 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %2, align 8
  %5 = call %struct.priv* @crypto_skcipher_ctx(%struct.crypto_skcipher* %4)
  store %struct.priv* %5, %struct.priv** %3, align 8
  %6 = load %struct.priv*, %struct.priv** %3, align 8
  %7 = getelementptr inbounds %struct.priv, %struct.priv* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.priv*, %struct.priv** %3, align 8
  %12 = getelementptr inbounds %struct.priv, %struct.priv* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @gf128mul_free_64k(i64 %13)
  br label %15

15:                                               ; preds = %10, %1
  %16 = load %struct.priv*, %struct.priv** %3, align 8
  %17 = getelementptr inbounds %struct.priv, %struct.priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @crypto_free_skcipher(i32 %18)
  ret void
}

declare dso_local %struct.priv* @crypto_skcipher_ctx(%struct.crypto_skcipher*) #1

declare dso_local i32 @gf128mul_free_64k(i64) #1

declare dso_local i32 @crypto_free_skcipher(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
