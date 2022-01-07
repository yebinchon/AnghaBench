; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_test_ecmult_gen_blind.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_test_ecmult_gen_blind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@ctx = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_ecmult_gen_blind() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [32 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = call i32 @random_scalar_order_test(i32* %1)
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ctx, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = call i32 @secp256k1_ecmult_gen(%struct.TYPE_4__* %10, i32* %4, i32* %1)
  %12 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %13 = call i32 @secp256k1_rand256(i8* %12)
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ctx, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %2, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ctx, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %6, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ctx, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %25 = call i32 @secp256k1_ecmult_gen_blind(%struct.TYPE_4__* %23, i8* %24)
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ctx, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = call i32 @secp256k1_scalar_eq(i32* %2, i32* %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 @CHECK(i32 %32)
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ctx, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = call i32 @secp256k1_ecmult_gen(%struct.TYPE_4__* %35, i32* %5, i32* %1)
  %37 = call i32 @gej_xyz_equals_gej(i32* %4, i32* %5)
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i32 @CHECK(i32 %40)
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ctx, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = call i32 @gej_xyz_equals_gej(i32* %6, i32* %44)
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i32 @CHECK(i32 %48)
  %50 = call i32 @secp256k1_ge_set_gej(i32* %7, i32* %4)
  %51 = call i32 @ge_equals_gej(i32* %7, i32* %5)
  ret void
}

declare dso_local i32 @random_scalar_order_test(i32*) #1

declare dso_local i32 @secp256k1_ecmult_gen(%struct.TYPE_4__*, i32*, i32*) #1

declare dso_local i32 @secp256k1_rand256(i8*) #1

declare dso_local i32 @secp256k1_ecmult_gen_blind(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @CHECK(i32) #1

declare dso_local i32 @secp256k1_scalar_eq(i32*, i32*) #1

declare dso_local i32 @gej_xyz_equals_gej(i32*, i32*) #1

declare dso_local i32 @secp256k1_ge_set_gej(i32*, i32*) #1

declare dso_local i32 @ge_equals_gej(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
