; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_test_num_add_sub.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_test_num_add_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_num_add_sub() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = call i32 @random_num_order_test(i32* %3)
  %10 = call i64 @secp256k1_rand_bits(i32 1)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %0
  %13 = call i32 @random_num_negate(i32* %3)
  br label %14

14:                                               ; preds = %12, %0
  %15 = call i32 @random_num_order_test(i32* %4)
  %16 = call i64 @secp256k1_rand_bits(i32 1)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = call i32 @random_num_negate(i32* %4)
  br label %20

20:                                               ; preds = %18, %14
  %21 = call i32 @secp256k1_num_add(i32* %5, i32* %3, i32* %4)
  %22 = call i32 @secp256k1_num_add(i32* %6, i32* %4, i32* %3)
  %23 = call i32 @secp256k1_num_sub(i32* %7, i32* %3, i32* %4)
  %24 = call i32 @secp256k1_num_sub(i32* %8, i32* %4, i32* %3)
  %25 = call i32 @secp256k1_num_eq(i32* %5, i32* %6)
  %26 = call i32 @CHECK(i32 %25)
  %27 = call i32 @secp256k1_num_eq(i32* %5, i32* %7)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i32 @CHECK(i32 %30)
  %32 = call i32 @secp256k1_num_negate(i32* %8)
  %33 = call i32 @secp256k1_num_eq(i32* %8, i32* %7)
  %34 = call i32 @CHECK(i32 %33)
  %35 = call i32 @secp256k1_num_eq(i32* %8, i32* %3)
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i32 @CHECK(i32 %38)
  %40 = call i32 @secp256k1_num_add(i32* %8, i32* %8, i32* %4)
  %41 = call i32 @secp256k1_num_eq(i32* %8, i32* %3)
  %42 = call i32 @CHECK(i32 %41)
  %43 = call i32 @secp256k1_num_eq(i32* %6, i32* %3)
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i32 @CHECK(i32 %46)
  %48 = call i32 @secp256k1_num_sub(i32* %6, i32* %6, i32* %4)
  %49 = call i32 @secp256k1_num_eq(i32* %6, i32* %3)
  %50 = call i32 @CHECK(i32 %49)
  %51 = call i32 @secp256k1_scalar_set_int(i32* %2, i32 1)
  %52 = call i32 @secp256k1_scalar_get_num(i32* %3, i32* %2)
  %53 = call i32 @secp256k1_num_is_one(i32* %3)
  %54 = call i32 @CHECK(i32 %53)
  %55 = call i32 @secp256k1_scalar_get_num(i32* %4, i32* %2)
  store i32 0, i32* %1, align 4
  br label %56

56:                                               ; preds = %67, %20
  %57 = load i32, i32* %1, align 4
  %58 = icmp slt i32 %57, 250
  br i1 %58, label %59, label %70

59:                                               ; preds = %56
  %60 = call i32 @secp256k1_num_add(i32* %3, i32* %3, i32* %3)
  %61 = call i32 @secp256k1_num_add(i32* %5, i32* %3, i32* %4)
  %62 = call i32 @secp256k1_num_is_one(i32* %5)
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = call i32 @CHECK(i32 %65)
  br label %67

67:                                               ; preds = %59
  %68 = load i32, i32* %1, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %1, align 4
  br label %56

70:                                               ; preds = %56
  ret void
}

declare dso_local i32 @random_num_order_test(i32*) #1

declare dso_local i64 @secp256k1_rand_bits(i32) #1

declare dso_local i32 @random_num_negate(i32*) #1

declare dso_local i32 @secp256k1_num_add(i32*, i32*, i32*) #1

declare dso_local i32 @secp256k1_num_sub(i32*, i32*, i32*) #1

declare dso_local i32 @CHECK(i32) #1

declare dso_local i32 @secp256k1_num_eq(i32*, i32*) #1

declare dso_local i32 @secp256k1_num_negate(i32*) #1

declare dso_local i32 @secp256k1_scalar_set_int(i32*, i32) #1

declare dso_local i32 @secp256k1_scalar_get_num(i32*, i32*) #1

declare dso_local i32 @secp256k1_num_is_one(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
