; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_test_num_negate.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_test_num_negate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_num_negate() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @random_num_order_test(i32* %1)
  %4 = call i32 @random_num_negate(i32* %1)
  %5 = call i32 @secp256k1_num_copy(i32* %2, i32* %1)
  %6 = call i32 @secp256k1_num_sub(i32* %1, i32* %2, i32* %1)
  %7 = call i32 @secp256k1_num_is_zero(i32* %1)
  %8 = call i32 @CHECK(i32 %7)
  %9 = call i32 @secp256k1_num_copy(i32* %1, i32* %2)
  %10 = call i32 @secp256k1_num_negate(i32* %1)
  %11 = call i32 @secp256k1_num_is_zero(i32* %1)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @CHECK(i32 %14)
  %16 = call i32 @secp256k1_num_add(i32* %1, i32* %2, i32* %1)
  %17 = call i32 @secp256k1_num_is_zero(i32* %1)
  %18 = call i32 @CHECK(i32 %17)
  %19 = call i32 @secp256k1_num_copy(i32* %1, i32* %2)
  %20 = call i32 @secp256k1_num_negate(i32* %1)
  %21 = call i64 @secp256k1_num_is_neg(i32* %1)
  %22 = call i64 @secp256k1_num_is_neg(i32* %2)
  %23 = icmp ne i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @CHECK(i32 %24)
  %26 = call i32 @secp256k1_num_negate(i32* %1)
  %27 = call i32 @secp256k1_num_eq(i32* %1, i32* %2)
  %28 = call i32 @CHECK(i32 %27)
  ret void
}

declare dso_local i32 @random_num_order_test(i32*) #1

declare dso_local i32 @random_num_negate(i32*) #1

declare dso_local i32 @secp256k1_num_copy(i32*, i32*) #1

declare dso_local i32 @secp256k1_num_sub(i32*, i32*, i32*) #1

declare dso_local i32 @CHECK(i32) #1

declare dso_local i32 @secp256k1_num_is_zero(i32*) #1

declare dso_local i32 @secp256k1_num_negate(i32*) #1

declare dso_local i32 @secp256k1_num_add(i32*, i32*, i32*) #1

declare dso_local i64 @secp256k1_num_is_neg(i32*) #1

declare dso_local i32 @secp256k1_num_eq(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
