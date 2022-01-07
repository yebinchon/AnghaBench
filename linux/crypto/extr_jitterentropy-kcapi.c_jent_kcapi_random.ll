; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_jitterentropy-kcapi.c_jent_kcapi_random.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_jitterentropy-kcapi.c_jent_kcapi_random.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_rng = type { i32 }
%struct.jitterentropy = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_rng*, i32*, i32, i32*, i32)* @jent_kcapi_random to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jent_kcapi_random(%struct.crypto_rng* %0, i32* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.crypto_rng*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.jitterentropy*, align 8
  %12 = alloca i32, align 4
  store %struct.crypto_rng* %0, %struct.crypto_rng** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load %struct.crypto_rng*, %struct.crypto_rng** %6, align 8
  %14 = call %struct.jitterentropy* @crypto_rng_ctx(%struct.crypto_rng* %13)
  store %struct.jitterentropy* %14, %struct.jitterentropy** %11, align 8
  store i32 0, i32* %12, align 4
  %15 = load %struct.jitterentropy*, %struct.jitterentropy** %11, align 8
  %16 = getelementptr inbounds %struct.jitterentropy, %struct.jitterentropy* %15, i32 0, i32 0
  %17 = call i32 @spin_lock(i32* %16)
  %18 = load %struct.jitterentropy*, %struct.jitterentropy** %11, align 8
  %19 = getelementptr inbounds %struct.jitterentropy, %struct.jitterentropy* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** %9, align 8
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @jent_read_entropy(i32 %20, i32* %21, i32 %22)
  store i32 %23, i32* %12, align 4
  %24 = load %struct.jitterentropy*, %struct.jitterentropy** %11, align 8
  %25 = getelementptr inbounds %struct.jitterentropy, %struct.jitterentropy* %24, i32 0, i32 0
  %26 = call i32 @spin_unlock(i32* %25)
  %27 = load i32, i32* %12, align 4
  ret i32 %27
}

declare dso_local %struct.jitterentropy* @crypto_rng_ctx(%struct.crypto_rng*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @jent_read_entropy(i32, i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
