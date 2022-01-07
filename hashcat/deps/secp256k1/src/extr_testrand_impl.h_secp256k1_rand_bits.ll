; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_testrand_impl.h_secp256k1_rand_bits.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_testrand_impl.h_secp256k1_rand_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@secp256k1_test_rng_integer_bits_left = common dso_local global i32 0, align 4
@secp256k1_test_rng_integer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @secp256k1_rand_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @secp256k1_rand_bits(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @secp256k1_test_rng_integer_bits_left, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %16

7:                                                ; preds = %1
  %8 = call i64 (...) @secp256k1_rand32()
  %9 = trunc i64 %8 to i32
  %10 = load i32, i32* @secp256k1_test_rng_integer_bits_left, align 4
  %11 = shl i32 %9, %10
  %12 = load i32, i32* @secp256k1_test_rng_integer, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* @secp256k1_test_rng_integer, align 4
  %14 = load i32, i32* @secp256k1_test_rng_integer_bits_left, align 4
  %15 = add nsw i32 %14, 32
  store i32 %15, i32* @secp256k1_test_rng_integer_bits_left, align 4
  br label %16

16:                                               ; preds = %7, %1
  %17 = load i32, i32* @secp256k1_test_rng_integer, align 4
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* @secp256k1_test_rng_integer, align 4
  %20 = ashr i32 %19, %18
  store i32 %20, i32* @secp256k1_test_rng_integer, align 4
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @secp256k1_test_rng_integer_bits_left, align 4
  %23 = sub nsw i32 %22, %21
  store i32 %23, i32* @secp256k1_test_rng_integer_bits_left, align 4
  %24 = load i32, i32* %2, align 4
  %25 = sub nsw i32 32, %24
  %26 = ashr i32 -1, %25
  %27 = load i32, i32* %3, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i64 @secp256k1_rand32(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
