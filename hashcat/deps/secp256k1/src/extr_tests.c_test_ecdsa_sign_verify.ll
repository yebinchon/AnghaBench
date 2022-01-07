; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_test_ecdsa_sign_verify.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_test_ecdsa_sign_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@ctx = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_ecdsa_sign_verify() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = call i32 @random_scalar_order_test(i32* %4)
  %11 = call i32 @random_scalar_order_test(i32* %5)
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = call i32 @secp256k1_ecmult_gen(i32* %13, i32* %1, i32* %5)
  %15 = call i32 @secp256k1_ge_set_gej(i32* %2, i32* %1)
  %16 = call i32 @secp256k1_rand_bits(i32 1)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %0
  br label %21

20:                                               ; preds = %0
  br label %21

21:                                               ; preds = %20, %19
  %22 = phi i32* [ %8, %19 ], [ null, %20 ]
  %23 = call i32 @random_sign(i32* %6, i32* %7, i32* %5, i32* %4, i32* %22)
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %21
  %27 = load i32, i32* %8, align 4
  %28 = icmp sge i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %30, 4
  br label %32

32:                                               ; preds = %29, %26
  %33 = phi i1 [ false, %26 ], [ %31, %29 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @CHECK(i32 %34)
  br label %36

36:                                               ; preds = %32, %21
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = call i32 @secp256k1_ecdsa_sig_verify(i32* %38, i32* %6, i32* %7, i32* %2, i32* %4)
  %40 = call i32 @CHECK(i32 %39)
  %41 = call i32 @secp256k1_scalar_set_int(i32* %3, i32 1)
  %42 = call i32 @secp256k1_scalar_add(i32* %4, i32* %4, i32* %3)
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = call i32 @secp256k1_ecdsa_sig_verify(i32* %44, i32* %6, i32* %7, i32* %2, i32* %4)
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i32 @CHECK(i32 %48)
  ret void
}

declare dso_local i32 @random_scalar_order_test(i32*) #1

declare dso_local i32 @secp256k1_ecmult_gen(i32*, i32*, i32*) #1

declare dso_local i32 @secp256k1_ge_set_gej(i32*, i32*) #1

declare dso_local i32 @secp256k1_rand_bits(i32) #1

declare dso_local i32 @random_sign(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @CHECK(i32) #1

declare dso_local i32 @secp256k1_ecdsa_sig_verify(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @secp256k1_scalar_set_int(i32*, i32) #1

declare dso_local i32 @secp256k1_scalar_add(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
