; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_test_wnaf.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_test_wnaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_wnaf(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [256 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 -1, i32* %9, align 4
  %13 = call i32 @secp256k1_scalar_set_int(i32* %5, i32 0)
  %14 = call i32 @secp256k1_scalar_set_int(i32* %6, i32 2)
  %15 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 0
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @secp256k1_ecmult_wnaf(i32* %15, i32 256, i32* %16, i32 %17)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp sle i32 %19, 256
  %21 = zext i1 %20 to i32
  %22 = call i32 @CHECK(i32 %21)
  %23 = load i32, i32* %11, align 4
  %24 = sub nsw i32 %23, 1
  store i32 %24, i32* %10, align 4
  br label %25

25:                                               ; preds = %90, %2
  %26 = load i32, i32* %10, align 4
  %27 = icmp sge i32 %26, 0
  br i1 %27, label %28, label %93

28:                                               ; preds = %25
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %12, align 4
  %33 = call i32 @secp256k1_scalar_mul(i32* %5, i32* %5, i32* %6)
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %70

36:                                               ; preds = %28
  %37 = load i32, i32* %9, align 4
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %44, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %4, align 4
  %42 = sub nsw i32 %41, 1
  %43 = icmp sge i32 %40, %42
  br label %44

44:                                               ; preds = %39, %36
  %45 = phi i1 [ true, %36 ], [ %43, %39 ]
  %46 = zext i1 %45 to i32
  %47 = call i32 @CHECK(i32 %46)
  store i32 0, i32* %9, align 4
  %48 = load i32, i32* %12, align 4
  %49 = and i32 %48, 1
  %50 = icmp eq i32 %49, 1
  %51 = zext i1 %50 to i32
  %52 = call i32 @CHECK(i32 %51)
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %4, align 4
  %55 = sub nsw i32 %54, 1
  %56 = shl i32 1, %55
  %57 = sub nsw i32 %56, 1
  %58 = icmp sle i32 %53, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @CHECK(i32 %59)
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %4, align 4
  %63 = sub nsw i32 %62, 1
  %64 = shl i32 1, %63
  %65 = sub nsw i32 0, %64
  %66 = sub nsw i32 %65, 1
  %67 = icmp sge i32 %61, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @CHECK(i32 %68)
  br label %77

70:                                               ; preds = %28
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, -1
  %73 = zext i1 %72 to i32
  %74 = call i32 @CHECK(i32 %73)
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %9, align 4
  br label %77

77:                                               ; preds = %70, %44
  %78 = load i32, i32* %12, align 4
  %79 = icmp sge i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i32, i32* %12, align 4
  %82 = call i32 @secp256k1_scalar_set_int(i32* %7, i32 %81)
  br label %88

83:                                               ; preds = %77
  %84 = load i32, i32* %12, align 4
  %85 = sub nsw i32 0, %84
  %86 = call i32 @secp256k1_scalar_set_int(i32* %7, i32 %85)
  %87 = call i32 @secp256k1_scalar_negate(i32* %7, i32* %7)
  br label %88

88:                                               ; preds = %83, %80
  %89 = call i32 @secp256k1_scalar_add(i32* %5, i32* %5, i32* %7)
  br label %90

90:                                               ; preds = %88
  %91 = load i32, i32* %10, align 4
  %92 = add nsw i32 %91, -1
  store i32 %92, i32* %10, align 4
  br label %25

93:                                               ; preds = %25
  %94 = load i32*, i32** %3, align 8
  %95 = call i32 @secp256k1_scalar_eq(i32* %5, i32* %94)
  %96 = call i32 @CHECK(i32 %95)
  ret void
}

declare dso_local i32 @secp256k1_scalar_set_int(i32*, i32) #1

declare dso_local i32 @secp256k1_ecmult_wnaf(i32*, i32, i32*, i32) #1

declare dso_local i32 @CHECK(i32) #1

declare dso_local i32 @secp256k1_scalar_mul(i32*, i32*, i32*) #1

declare dso_local i32 @secp256k1_scalar_negate(i32*, i32*) #1

declare dso_local i32 @secp256k1_scalar_add(i32*, i32*, i32*) #1

declare dso_local i32 @secp256k1_scalar_eq(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
