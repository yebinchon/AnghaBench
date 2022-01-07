; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests_exhaustive.c_test_exhaustive_sign.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests_exhaustive.c_test_exhaustive_sign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@secp256k1_nonce_function_smallint = common dso_local global i32 0, align 4
@EXHAUSTIVE_TEST_ORDER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_exhaustive_sign(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [32 x i8], align 16
  %18 = alloca [32 x i8], align 16
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 1, i32* %7, align 4
  br label %19

19:                                               ; preds = %104, %3
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %107

23:                                               ; preds = %19
  store i32 1, i32* %8, align 4
  br label %24

24:                                               ; preds = %100, %23
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %103

28:                                               ; preds = %24
  store i32 1, i32* %9, align 4
  br label %29

29:                                               ; preds = %96, %28
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %99

33:                                               ; preds = %29
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @secp256k1_scalar_set_int(i32* %13, i32 %35)
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @secp256k1_scalar_set_int(i32* %12, i32 %37)
  %39 = getelementptr inbounds [32 x i8], [32 x i8]* %17, i64 0, i64 0
  %40 = call i32 @secp256k1_scalar_get_b32(i8* %39, i32* %12)
  %41 = getelementptr inbounds [32 x i8], [32 x i8]* %18, i64 0, i64 0
  %42 = call i32 @secp256k1_scalar_get_b32(i8* %41, i32* %13)
  %43 = load i32*, i32** %4, align 8
  %44 = getelementptr inbounds [32 x i8], [32 x i8]* %18, i64 0, i64 0
  %45 = getelementptr inbounds [32 x i8], [32 x i8]* %17, i64 0, i64 0
  %46 = load i32, i32* @secp256k1_nonce_function_smallint, align 4
  %47 = call i32 @secp256k1_ecdsa_sign(i32* %43, i32* %11, i8* %44, i8* %45, i32 %46, i32* %9)
  %48 = load i32*, i32** %4, align 8
  %49 = call i32 @secp256k1_ecdsa_signature_load(i32* %48, i32* %14, i32* %15, i32* %11)
  %50 = load i32*, i32** %5, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @r_from_k(i32* %16, i32* %50, i32 %51)
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* %16, align 4
  %55 = icmp eq i32 %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @CHECK(i32 %56)
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %15, align 4
  %60 = mul nsw i32 %58, %59
  %61 = load i32, i32* %6, align 4
  %62 = srem i32 %60, %61
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* %8, align 4
  %66 = mul nsw i32 %64, %65
  %67 = add nsw i32 %63, %66
  %68 = load i32, i32* %6, align 4
  %69 = srem i32 %67, %68
  %70 = icmp eq i32 %62, %69
  br i1 %70, label %87, label %71

71:                                               ; preds = %33
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @EXHAUSTIVE_TEST_ORDER, align 4
  %74 = load i32, i32* %15, align 4
  %75 = sub nsw i32 %73, %74
  %76 = mul nsw i32 %72, %75
  %77 = load i32, i32* %6, align 4
  %78 = srem i32 %76, %77
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %14, align 4
  %81 = load i32, i32* %8, align 4
  %82 = mul nsw i32 %80, %81
  %83 = add nsw i32 %79, %82
  %84 = load i32, i32* %6, align 4
  %85 = srem i32 %83, %84
  %86 = icmp eq i32 %78, %85
  br label %87

87:                                               ; preds = %71, %33
  %88 = phi i1 [ true, %33 ], [ %86, %71 ]
  %89 = zext i1 %88 to i32
  %90 = call i32 @CHECK(i32 %89)
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* %10, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %87
  br label %99

95:                                               ; preds = %87
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %9, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %9, align 4
  br label %29

99:                                               ; preds = %94, %29
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %8, align 4
  br label %24

103:                                              ; preds = %24
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %7, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %7, align 4
  br label %19

107:                                              ; preds = %19
  ret void
}

declare dso_local i32 @secp256k1_scalar_set_int(i32*, i32) #1

declare dso_local i32 @secp256k1_scalar_get_b32(i8*, i32*) #1

declare dso_local i32 @secp256k1_ecdsa_sign(i32*, i32*, i8*, i8*, i32, i32*) #1

declare dso_local i32 @secp256k1_ecdsa_signature_load(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @r_from_k(i32*, i32*, i32) #1

declare dso_local i32 @CHECK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
