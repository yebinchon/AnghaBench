; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_test_ec_combine.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_test_ec_combine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@ctx = common dso_local global %struct.TYPE_3__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_ec_combine() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [6 x i32], align 16
  %3 = alloca [6 x i32*], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = call i32 @SECP256K1_SCALAR_CONST(i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  store i32 %10, i32* %1, align 4
  store i32 1, i32* %8, align 4
  br label %11

11:                                               ; preds = %50, %0
  %12 = load i32, i32* %8, align 4
  %13 = icmp sle i32 %12, 6
  br i1 %13, label %14, label %53

14:                                               ; preds = %11
  %15 = call i32 @random_scalar_order_test(i32* %9)
  %16 = call i32 @secp256k1_scalar_add(i32* %1, i32* %1, i32* %9)
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ctx, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = call i32 @secp256k1_ecmult_gen(i32* %18, i32* %6, i32* %9)
  %20 = call i32 @secp256k1_ge_set_gej(i32* %7, i32* %6)
  %21 = load i32, i32* %8, align 4
  %22 = sub nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 %23
  %25 = call i32 @secp256k1_pubkey_save(i32* %24, i32* %7)
  %26 = load i32, i32* %8, align 4
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 %28
  %30 = load i32, i32* %8, align 4
  %31 = sub nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [6 x i32*], [6 x i32*]* %3, i64 0, i64 %32
  store i32* %29, i32** %33, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ctx, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = call i32 @secp256k1_ecmult_gen(i32* %35, i32* %6, i32* %1)
  %37 = call i32 @secp256k1_ge_set_gej(i32* %7, i32* %6)
  %38 = call i32 @secp256k1_pubkey_save(i32* %4, i32* %7)
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ctx, align 8
  %40 = getelementptr inbounds [6 x i32*], [6 x i32*]* %3, i64 0, i64 0
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @secp256k1_ec_pubkey_combine(%struct.TYPE_3__* %39, i32* %5, i32** %40, i32 %41)
  %43 = icmp eq i32 %42, 1
  %44 = zext i1 %43 to i32
  %45 = call i32 @CHECK(i32 %44)
  %46 = call i64 @memcmp(i32* %4, i32* %5, i32 4)
  %47 = icmp eq i64 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i32 @CHECK(i32 %48)
  br label %50

50:                                               ; preds = %14
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %11

53:                                               ; preds = %11
  ret void
}

declare dso_local i32 @SECP256K1_SCALAR_CONST(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @random_scalar_order_test(i32*) #1

declare dso_local i32 @secp256k1_scalar_add(i32*, i32*, i32*) #1

declare dso_local i32 @secp256k1_ecmult_gen(i32*, i32*, i32*) #1

declare dso_local i32 @secp256k1_ge_set_gej(i32*, i32*) #1

declare dso_local i32 @secp256k1_pubkey_save(i32*, i32*) #1

declare dso_local i32 @CHECK(i32) #1

declare dso_local i32 @secp256k1_ec_pubkey_combine(%struct.TYPE_3__*, i32*, i32**, i32) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
