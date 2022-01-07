; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_random_scalar_order_test.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_random_scalar_order_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @random_scalar_order_test(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca [32 x i8], align 16
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  br label %5

5:                                                ; preds = %19, %1
  store i32 0, i32* %4, align 4
  %6 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %7 = call i32 @secp256k1_rand256_test(i8* %6)
  %8 = load i32*, i32** %2, align 8
  %9 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %10 = call i32 @secp256k1_scalar_set_b32(i32* %8, i8* %9, i32* %4)
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %5
  %14 = load i32*, i32** %2, align 8
  %15 = call i64 @secp256k1_scalar_is_zero(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13, %5
  br label %19

18:                                               ; preds = %13
  br label %20

19:                                               ; preds = %17
  br i1 true, label %5, label %20

20:                                               ; preds = %19, %18
  ret void
}

declare dso_local i32 @secp256k1_rand256_test(i8*) #1

declare dso_local i32 @secp256k1_scalar_set_b32(i32*, i8*, i32*) #1

declare dso_local i64 @secp256k1_scalar_is_zero(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
