; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_ecmult_const_commutativity.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_ecmult_const_commutativity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@secp256k1_ge_const_g = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ecmult_const_commutativity() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 @random_scalar_order_test(i32* %1)
  %8 = call i32 @random_scalar_order_test(i32* %2)
  %9 = call i32 @secp256k1_ecmult_const(i32* %3, i32* @secp256k1_ge_const_g, i32* %1, i32 256)
  %10 = call i32 @secp256k1_ecmult_const(i32* %4, i32* @secp256k1_ge_const_g, i32* %2, i32 256)
  %11 = call i32 @secp256k1_ge_set_gej(i32* %5, i32* %3)
  %12 = call i32 @secp256k1_ge_set_gej(i32* %6, i32* %4)
  %13 = call i32 @secp256k1_ecmult_const(i32* %3, i32* %5, i32* %2, i32 256)
  %14 = call i32 @secp256k1_ecmult_const(i32* %4, i32* %6, i32* %1, i32 256)
  %15 = call i32 @secp256k1_ge_set_gej(i32* %5, i32* %3)
  %16 = call i32 @secp256k1_ge_set_gej(i32* %6, i32* %4)
  %17 = call i32 @ge_equals_ge(i32* %5, i32* %6)
  ret void
}

declare dso_local i32 @random_scalar_order_test(i32*) #1

declare dso_local i32 @secp256k1_ecmult_const(i32*, i32*, i32*, i32) #1

declare dso_local i32 @secp256k1_ge_set_gej(i32*, i32*) #1

declare dso_local i32 @ge_equals_ge(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
