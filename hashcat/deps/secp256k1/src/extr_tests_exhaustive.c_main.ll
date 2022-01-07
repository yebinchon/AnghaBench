; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests_exhaustive.c_main.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests_exhaustive.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i64, i32, i32 }

@EXHAUSTIVE_TEST_ORDER = common dso_local global i32 0, align 4
@SECP256K1_CONTEXT_SIGN = common dso_local global i32 0, align 4
@SECP256K1_CONTEXT_VERIFY = common dso_local global i32 0, align 4
@secp256k1_ge_const_g = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_20__, align 8
  store i32 0, i32* %1, align 4
  %11 = load i32, i32* @EXHAUSTIVE_TEST_ORDER, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %3, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %4, align 8
  %15 = load i32, i32* @EXHAUSTIVE_TEST_ORDER, align 4
  %16 = zext i32 %15 to i64
  %17 = alloca %struct.TYPE_20__, i64 %16, align 16
  store i64 %16, i64* %5, align 8
  %18 = load i32, i32* @SECP256K1_CONTEXT_SIGN, align 4
  %19 = load i32, i32* @SECP256K1_CONTEXT_VERIFY, align 4
  %20 = or i32 %18, %19
  %21 = call %struct.TYPE_21__* @secp256k1_context_create(i32 %20)
  store %struct.TYPE_21__* %21, %struct.TYPE_21__** %6, align 8
  %22 = getelementptr inbounds i32, i32* %14, i64 0
  %23 = call i32 @secp256k1_gej_set_infinity(i32* %22)
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i64 0
  %25 = getelementptr inbounds i32, i32* %14, i64 0
  %26 = call i32 @secp256k1_ge_set_gej(%struct.TYPE_20__* %24, i32* %25)
  store i32 1, i32* %2, align 4
  br label %27

27:                                               ; preds = %85, %0
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* @EXHAUSTIVE_TEST_ORDER, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %88

31:                                               ; preds = %27
  %32 = call i32 @random_fe(i32* %7)
  %33 = load i32, i32* %2, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %14, i64 %34
  %36 = load i32, i32* %2, align 4
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %14, i64 %38
  %40 = call i32 @secp256k1_gej_add_ge(i32* %35, i32* %39, i32* @secp256k1_ge_const_g)
  %41 = load i32, i32* %2, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i64 %42
  %44 = load i32, i32* %2, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %14, i64 %45
  %47 = call i32 @secp256k1_ge_set_gej(%struct.TYPE_20__* %43, i32* %46)
  %48 = load i32, i32* %2, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %14, i64 %49
  %51 = call i32 @secp256k1_gej_rescale(i32* %50, i32* %7)
  %52 = load i32, i32* %2, align 4
  %53 = call i32 @secp256k1_scalar_set_int(i32* %8, i32 %52)
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 0
  %56 = call i32 @secp256k1_ecmult_gen(i32* %55, i32* %9, i32* %8)
  %57 = call i32 @secp256k1_ge_set_gej(%struct.TYPE_20__* %10, i32* %9)
  %58 = load i32, i32* %2, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 16
  %63 = icmp eq i64 %62, 0
  %64 = zext i1 %63 to i32
  %65 = call i32 @CHECK(i32 %64)
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %67, 0
  %69 = zext i1 %68 to i32
  %70 = call i32 @CHECK(i32 %69)
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 2
  %72 = load i32, i32* %2, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 2
  %76 = call i32 @secp256k1_fe_equal_var(i32* %71, i32* %75)
  %77 = call i32 @CHECK(i32 %76)
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 1
  %79 = load i32, i32* %2, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 1
  %83 = call i32 @secp256k1_fe_equal_var(i32* %78, i32* %82)
  %84 = call i32 @CHECK(i32 %83)
  br label %85

85:                                               ; preds = %31
  %86 = load i32, i32* %2, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %2, align 4
  br label %27

88:                                               ; preds = %27
  %89 = load i32, i32* @EXHAUSTIVE_TEST_ORDER, align 4
  %90 = call i32 @test_exhaustive_addition(%struct.TYPE_20__* %17, i32* %14, i32 %89)
  %91 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %92 = load i32, i32* @EXHAUSTIVE_TEST_ORDER, align 4
  %93 = call i32 @test_exhaustive_ecmult(%struct.TYPE_21__* %91, %struct.TYPE_20__* %17, i32* %14, i32 %92)
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %95 = load i32, i32* @EXHAUSTIVE_TEST_ORDER, align 4
  %96 = call i32 @test_exhaustive_ecmult_multi(%struct.TYPE_21__* %94, %struct.TYPE_20__* %17, i32 %95)
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %98 = load i32, i32* @EXHAUSTIVE_TEST_ORDER, align 4
  %99 = call i32 @test_exhaustive_sign(%struct.TYPE_21__* %97, %struct.TYPE_20__* %17, i32 %98)
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %101 = load i32, i32* @EXHAUSTIVE_TEST_ORDER, align 4
  %102 = call i32 @test_exhaustive_verify(%struct.TYPE_21__* %100, %struct.TYPE_20__* %17, i32 %101)
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %104 = call i32 @secp256k1_context_destroy(%struct.TYPE_21__* %103)
  store i32 0, i32* %1, align 4
  %105 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %105)
  %106 = load i32, i32* %1, align 4
  ret i32 %106
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_21__* @secp256k1_context_create(i32) #2

declare dso_local i32 @secp256k1_gej_set_infinity(i32*) #2

declare dso_local i32 @secp256k1_ge_set_gej(%struct.TYPE_20__*, i32*) #2

declare dso_local i32 @random_fe(i32*) #2

declare dso_local i32 @secp256k1_gej_add_ge(i32*, i32*, i32*) #2

declare dso_local i32 @secp256k1_gej_rescale(i32*, i32*) #2

declare dso_local i32 @secp256k1_scalar_set_int(i32*, i32) #2

declare dso_local i32 @secp256k1_ecmult_gen(i32*, i32*, i32*) #2

declare dso_local i32 @CHECK(i32) #2

declare dso_local i32 @secp256k1_fe_equal_var(i32*, i32*) #2

declare dso_local i32 @test_exhaustive_addition(%struct.TYPE_20__*, i32*, i32) #2

declare dso_local i32 @test_exhaustive_ecmult(%struct.TYPE_21__*, %struct.TYPE_20__*, i32*, i32) #2

declare dso_local i32 @test_exhaustive_ecmult_multi(%struct.TYPE_21__*, %struct.TYPE_20__*, i32) #2

declare dso_local i32 @test_exhaustive_sign(%struct.TYPE_21__*, %struct.TYPE_20__*, i32) #2

declare dso_local i32 @test_exhaustive_verify(%struct.TYPE_21__*, %struct.TYPE_20__*, i32) #2

declare dso_local i32 @secp256k1_context_destroy(%struct.TYPE_21__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
