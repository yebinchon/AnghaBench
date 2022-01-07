; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_test_point_times_order.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_test_point_times_order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@ctx = common dso_local global %struct.TYPE_2__* null, align 8
@secp256k1_ge_const_g = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_point_times_order(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [65 x i8], align 16
  %11 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %12 = call i32 @SECP256K1_SCALAR_CONST(i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  store i32 %12, i32* %5, align 4
  %13 = call i32 @SECP256K1_SCALAR_CONST(i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1)
  store i32 %13, i32* %6, align 4
  store i64 65, i64* %11, align 8
  %14 = call i32 @random_scalar_order_test(i32* %3)
  %15 = call i32 @secp256k1_scalar_negate(i32* %4, i32* %3)
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 @secp256k1_ecmult(i32* %17, i32* %7, i32* %18, i32* %3, i32* %3)
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @secp256k1_ecmult(i32* %21, i32* %8, i32* %22, i32* %4, i32* %4)
  %24 = call i32 @secp256k1_gej_add_var(i32* %7, i32* %7, i32* %8, i32* null)
  %25 = call i32 @secp256k1_gej_is_infinity(i32* %7)
  %26 = call i32 @CHECK(i32 %25)
  %27 = call i64 @secp256k1_gej_is_valid_var(i32* %7)
  %28 = icmp eq i64 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @CHECK(i32 %29)
  %31 = call i32 @secp256k1_ge_set_gej(i32* %9, i32* %7)
  %32 = call i32 @secp256k1_ge_is_infinity(i32* %9)
  %33 = call i32 @CHECK(i32 %32)
  %34 = call i64 @secp256k1_ge_is_valid_var(i32* %9)
  %35 = icmp eq i64 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @CHECK(i32 %36)
  %38 = getelementptr inbounds [65 x i8], [65 x i8]* %10, i64 0, i64 0
  %39 = call i64 @secp256k1_eckey_pubkey_serialize(i32* %9, i8* %38, i64* %11, i32 0)
  %40 = icmp eq i64 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @CHECK(i32 %41)
  store i64 65, i64* %11, align 8
  %43 = getelementptr inbounds [65 x i8], [65 x i8]* %10, i64 0, i64 0
  %44 = call i64 @secp256k1_eckey_pubkey_serialize(i32* %9, i8* %43, i64* %11, i32 1)
  %45 = icmp eq i64 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i32 @CHECK(i32 %46)
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32*, i32** %2, align 8
  %51 = call i32 @secp256k1_ecmult(i32* %49, i32* %7, i32* %50, i32* %5, i32* %5)
  %52 = call i32 @secp256k1_ge_set_gej(i32* %9, i32* %7)
  %53 = call i32 @secp256k1_ge_is_infinity(i32* %9)
  %54 = call i32 @CHECK(i32 %53)
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32*, i32** %2, align 8
  %58 = call i32 @secp256k1_ecmult(i32* %56, i32* %7, i32* %57, i32* %6, i32* %5)
  %59 = call i32 @secp256k1_ge_set_gej(i32* %9, i32* %7)
  %60 = load i32*, i32** %2, align 8
  %61 = call i32 @ge_equals_gej(i32* %9, i32* %60)
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32*, i32** %2, align 8
  %65 = call i32 @secp256k1_ecmult(i32* %63, i32* %7, i32* %64, i32* %5, i32* %6)
  %66 = call i32 @secp256k1_ge_set_gej(i32* %9, i32* %7)
  %67 = call i32 @ge_equals_ge(i32* %9, i32* @secp256k1_ge_const_g)
  ret void
}

declare dso_local i32 @SECP256K1_SCALAR_CONST(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @random_scalar_order_test(i32*) #1

declare dso_local i32 @secp256k1_scalar_negate(i32*, i32*) #1

declare dso_local i32 @secp256k1_ecmult(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @secp256k1_gej_add_var(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @CHECK(i32) #1

declare dso_local i32 @secp256k1_gej_is_infinity(i32*) #1

declare dso_local i64 @secp256k1_gej_is_valid_var(i32*) #1

declare dso_local i32 @secp256k1_ge_set_gej(i32*, i32*) #1

declare dso_local i32 @secp256k1_ge_is_infinity(i32*) #1

declare dso_local i64 @secp256k1_ge_is_valid_var(i32*) #1

declare dso_local i64 @secp256k1_eckey_pubkey_serialize(i32*, i8*, i64*, i32) #1

declare dso_local i32 @ge_equals_gej(i32*, i32*) #1

declare dso_local i32 @ge_equals_ge(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
