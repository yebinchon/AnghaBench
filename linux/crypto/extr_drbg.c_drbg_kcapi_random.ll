; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_drbg.c_drbg_kcapi_random.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_drbg.c_drbg_kcapi_random.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_rng = type { i32 }
%struct.drbg_state = type { i32 }
%struct.drbg_string = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_rng*, i32*, i32, i32*, i32)* @drbg_kcapi_random to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drbg_kcapi_random(%struct.crypto_rng* %0, i32* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.crypto_rng*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.drbg_state*, align 8
  %12 = alloca %struct.drbg_string*, align 8
  %13 = alloca %struct.drbg_string, align 4
  store %struct.crypto_rng* %0, %struct.crypto_rng** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load %struct.crypto_rng*, %struct.crypto_rng** %6, align 8
  %15 = call %struct.drbg_state* @crypto_rng_ctx(%struct.crypto_rng* %14)
  store %struct.drbg_state* %15, %struct.drbg_state** %11, align 8
  store %struct.drbg_string* null, %struct.drbg_string** %12, align 8
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %5
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @drbg_string_fill(%struct.drbg_string* %13, i32* %19, i32 %20)
  store %struct.drbg_string* %13, %struct.drbg_string** %12, align 8
  br label %22

22:                                               ; preds = %18, %5
  %23 = load %struct.drbg_state*, %struct.drbg_state** %11, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.drbg_string*, %struct.drbg_string** %12, align 8
  %27 = call i32 @drbg_generate_long(%struct.drbg_state* %23, i32* %24, i32 %25, %struct.drbg_string* %26)
  ret i32 %27
}

declare dso_local %struct.drbg_state* @crypto_rng_ctx(%struct.crypto_rng*) #1

declare dso_local i32 @drbg_string_fill(%struct.drbg_string*, i32*, i32) #1

declare dso_local i32 @drbg_generate_long(%struct.drbg_state*, i32*, i32, %struct.drbg_string*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
