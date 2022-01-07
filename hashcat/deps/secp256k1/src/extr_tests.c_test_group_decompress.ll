; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_test_group_decompress.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_test_group_decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_group_decompress(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__, align 4
  %6 = alloca %struct.TYPE_5__, align 4
  %7 = alloca %struct.TYPE_5__, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %12 = load i32*, i32** %2, align 8
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %3, align 4
  %14 = call i32 @secp256k1_fe_normalize_var(i32* %3)
  %15 = call i32 @secp256k1_ge_set_xquad(%struct.TYPE_5__* %5, i32* %3)
  store i32 %15, i32* %9, align 4
  %16 = call i32 @secp256k1_ge_set_xo_var(%struct.TYPE_5__* %6, i32* %3, i32 0)
  store i32 %16, i32* %10, align 4
  %17 = call i32 @secp256k1_ge_set_xo_var(%struct.TYPE_5__* %7, i32* %3, i32 1)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp eq i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @CHECK(i32 %21)
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp eq i32 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @CHECK(i32 %26)
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %118

30:                                               ; preds = %1
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %32 = call i32 @secp256k1_fe_normalize_var(i32* %31)
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %34 = call i32 @secp256k1_fe_normalize_var(i32* %33)
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %36 = call i32 @secp256k1_fe_normalize_var(i32* %35)
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %38 = call i32 @secp256k1_fe_normalize_var(i32* %37)
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %40 = call i32 @secp256k1_fe_normalize_var(i32* %39)
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %42 = call i32 @secp256k1_fe_normalize_var(i32* %41)
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i32 @CHECK(i32 %47)
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = call i32 @CHECK(i32 %53)
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = call i32 @CHECK(i32 %59)
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %62 = load i32*, i32** %2, align 8
  %63 = call i32 @secp256k1_fe_equal_var(i32* %61, i32* %62)
  %64 = call i32 @CHECK(i32 %63)
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %66 = load i32*, i32** %2, align 8
  %67 = call i32 @secp256k1_fe_equal_var(i32* %65, i32* %66)
  %68 = call i32 @CHECK(i32 %67)
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %70 = load i32*, i32** %2, align 8
  %71 = call i32 @secp256k1_fe_equal_var(i32* %69, i32* %70)
  %72 = call i32 @CHECK(i32 %71)
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %74 = call i32 @secp256k1_fe_is_quad_var(i32* %73)
  %75 = call i32 @CHECK(i32 %74)
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %77 = call i32 @secp256k1_fe_is_odd(i32* %76)
  %78 = call i32 @CHECK(i32 %77)
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %80 = call i32 @secp256k1_fe_is_odd(i32* %79)
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = call i32 @CHECK(i32 %83)
  %85 = call i32 @secp256k1_gej_set_ge(i32* %8, %struct.TYPE_5__* %5)
  %86 = call i32 @secp256k1_gej_has_quad_y_var(i32* %8)
  %87 = call i32 @CHECK(i32 %86)
  br label %88

88:                                               ; preds = %90, %30
  %89 = call i32 @random_fe_test(i32* %4)
  br label %90

90:                                               ; preds = %88
  %91 = call i64 @secp256k1_fe_is_zero(i32* %4)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %88, label %93

93:                                               ; preds = %90
  %94 = call i32 @secp256k1_gej_rescale(i32* %8, i32* %4)
  %95 = call i32 @secp256k1_gej_has_quad_y_var(i32* %8)
  %96 = call i32 @CHECK(i32 %95)
  %97 = call i32 @secp256k1_gej_neg(i32* %8, i32* %8)
  %98 = call i32 @secp256k1_gej_has_quad_y_var(i32* %8)
  %99 = icmp ne i32 %98, 0
  %100 = xor i1 %99, true
  %101 = zext i1 %100 to i32
  %102 = call i32 @CHECK(i32 %101)
  br label %103

103:                                              ; preds = %105, %93
  %104 = call i32 @random_fe_test(i32* %4)
  br label %105

105:                                              ; preds = %103
  %106 = call i64 @secp256k1_fe_is_zero(i32* %4)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %103, label %108

108:                                              ; preds = %105
  %109 = call i32 @secp256k1_gej_rescale(i32* %8, i32* %4)
  %110 = call i32 @secp256k1_gej_has_quad_y_var(i32* %8)
  %111 = icmp ne i32 %110, 0
  %112 = xor i1 %111, true
  %113 = zext i1 %112 to i32
  %114 = call i32 @CHECK(i32 %113)
  %115 = call i32 @secp256k1_gej_neg(i32* %8, i32* %8)
  %116 = call i32 @secp256k1_gej_has_quad_y_var(i32* %8)
  %117 = call i32 @CHECK(i32 %116)
  br label %118

118:                                              ; preds = %108, %1
  ret void
}

declare dso_local i32 @secp256k1_fe_normalize_var(i32*) #1

declare dso_local i32 @secp256k1_ge_set_xquad(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @secp256k1_ge_set_xo_var(%struct.TYPE_5__*, i32*, i32) #1

declare dso_local i32 @CHECK(i32) #1

declare dso_local i32 @secp256k1_fe_equal_var(i32*, i32*) #1

declare dso_local i32 @secp256k1_fe_is_quad_var(i32*) #1

declare dso_local i32 @secp256k1_fe_is_odd(i32*) #1

declare dso_local i32 @secp256k1_gej_set_ge(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @secp256k1_gej_has_quad_y_var(i32*) #1

declare dso_local i32 @random_fe_test(i32*) #1

declare dso_local i64 @secp256k1_fe_is_zero(i32*) #1

declare dso_local i32 @secp256k1_gej_rescale(i32*, i32*) #1

declare dso_local i32 @secp256k1_gej_neg(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
