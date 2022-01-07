; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_ecmult_const_mult_zero_one.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_ecmult_const_mult_zero_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ecmult_const_mult_zero_one() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 @SECP256K1_SCALAR_CONST(i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  store i32 %7, i32* %1, align 4
  %8 = call i32 @SECP256K1_SCALAR_CONST(i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1)
  store i32 %8, i32* %2, align 4
  %9 = call i32 @secp256k1_scalar_negate(i32* %3, i32* %2)
  %10 = call i32 @random_group_element_test(i32* %6)
  %11 = call i32 @secp256k1_ecmult_const(i32* %4, i32* %6, i32* %1, i32 3)
  %12 = call i32 @secp256k1_ge_set_gej(i32* %5, i32* %4)
  %13 = call i32 @secp256k1_ge_is_infinity(i32* %5)
  %14 = call i32 @CHECK(i32 %13)
  %15 = call i32 @secp256k1_ecmult_const(i32* %4, i32* %6, i32* %2, i32 2)
  %16 = call i32 @secp256k1_ge_set_gej(i32* %5, i32* %4)
  %17 = call i32 @ge_equals_ge(i32* %5, i32* %6)
  %18 = call i32 @secp256k1_ecmult_const(i32* %4, i32* %6, i32* %3, i32 256)
  %19 = call i32 @secp256k1_gej_neg(i32* %4, i32* %4)
  %20 = call i32 @secp256k1_ge_set_gej(i32* %5, i32* %4)
  %21 = call i32 @ge_equals_ge(i32* %5, i32* %6)
  ret void
}

declare dso_local i32 @SECP256K1_SCALAR_CONST(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @secp256k1_scalar_negate(i32*, i32*) #1

declare dso_local i32 @random_group_element_test(i32*) #1

declare dso_local i32 @secp256k1_ecmult_const(i32*, i32*, i32*, i32) #1

declare dso_local i32 @secp256k1_ge_set_gej(i32*, i32*) #1

declare dso_local i32 @CHECK(i32) #1

declare dso_local i32 @secp256k1_ge_is_infinity(i32*) #1

declare dso_local i32 @ge_equals_ge(i32*, i32*) #1

declare dso_local i32 @secp256k1_gej_neg(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
