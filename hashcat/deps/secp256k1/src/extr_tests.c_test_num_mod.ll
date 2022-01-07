; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_test_num_mod.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_test_num_mod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_num_mod() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i32 @random_scalar_order_test(i32* %2)
  %6 = call i32 @secp256k1_scalar_get_num(i32* %3, i32* %2)
  %7 = call i32 @secp256k1_scalar_set_int(i32* %2, i32 0)
  %8 = call i32 @secp256k1_scalar_get_num(i32* %4, i32* %2)
  %9 = call i32 @secp256k1_num_mod(i32* %4, i32* %3)
  %10 = call i32 @secp256k1_num_is_zero(i32* %4)
  %11 = call i32 @CHECK(i32 %10)
  %12 = call i32 @secp256k1_scalar_set_int(i32* %2, i32 1)
  %13 = call i32 @secp256k1_scalar_get_num(i32* %3, i32* %2)
  %14 = call i32 @secp256k1_scalar_get_num(i32* %4, i32* %2)
  %15 = call i32 @secp256k1_num_mod(i32* %4, i32* %3)
  %16 = call i32 @secp256k1_num_is_zero(i32* %4)
  %17 = call i32 @CHECK(i32 %16)
  %18 = call i32 @random_scalar_order_test(i32* %2)
  %19 = call i32 @secp256k1_scalar_get_num(i32* %4, i32* %2)
  store i32 0, i32* %1, align 4
  br label %20

20:                                               ; preds = %25, %0
  %21 = load i32, i32* %1, align 4
  %22 = icmp slt i32 %21, 8
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = call i32 @secp256k1_num_add(i32* %4, i32* %4, i32* %4)
  br label %25

25:                                               ; preds = %23
  %26 = load i32, i32* %1, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %1, align 4
  br label %20

28:                                               ; preds = %20
  %29 = call i32 @secp256k1_num_mod(i32* %4, i32* %3)
  %30 = call i32 @secp256k1_num_is_zero(i32* %4)
  %31 = call i32 @CHECK(i32 %30)
  ret void
}

declare dso_local i32 @random_scalar_order_test(i32*) #1

declare dso_local i32 @secp256k1_scalar_get_num(i32*, i32*) #1

declare dso_local i32 @secp256k1_scalar_set_int(i32*, i32) #1

declare dso_local i32 @secp256k1_num_mod(i32*, i32*) #1

declare dso_local i32 @CHECK(i32) #1

declare dso_local i32 @secp256k1_num_is_zero(i32*) #1

declare dso_local i32 @secp256k1_num_add(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
