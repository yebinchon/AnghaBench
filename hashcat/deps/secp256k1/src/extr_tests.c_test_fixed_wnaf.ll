; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_test_fixed_wnaf.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_test_fixed_wnaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_fixed_wnaf(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [256 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = bitcast [256 x i32]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 1024, i1 false)
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %10, align 4
  %16 = call i32 @secp256k1_scalar_set_int(i32* %5, i32 0)
  %17 = load i32, i32* %4, align 4
  %18 = shl i32 1, %17
  %19 = call i32 @secp256k1_scalar_set_int(i32* %6, i32 %18)
  %20 = getelementptr inbounds [256 x i32], [256 x i32]* %7, i64 0, i64 0
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @secp256k1_wnaf_fixed(i32* %20, i32* %10, i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @WNAF_SIZE(i32 %23)
  %25 = sub nsw i32 %24, 1
  store i32 %25, i32* %8, align 4
  br label %26

26:                                               ; preds = %70, %2
  %27 = load i32, i32* %8, align 4
  %28 = icmp sge i32 %27, 0
  br i1 %28, label %29, label %73

29:                                               ; preds = %26
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [256 x i32], [256 x i32]* %7, i64 0, i64 %31
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* %12, align 4
  %38 = and i32 %37, 1
  %39 = icmp ne i32 %38, 0
  br label %40

40:                                               ; preds = %36, %29
  %41 = phi i1 [ true, %29 ], [ %39, %36 ]
  %42 = zext i1 %41 to i32
  %43 = call i32 @CHECK(i32 %42)
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %4, align 4
  %46 = shl i32 1, %45
  %47 = sub nsw i32 0, %46
  %48 = icmp sgt i32 %44, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @CHECK(i32 %49)
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %4, align 4
  %53 = shl i32 1, %52
  %54 = icmp slt i32 %51, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @CHECK(i32 %55)
  %57 = call i32 @secp256k1_scalar_mul(i32* %5, i32* %5, i32* %6)
  %58 = load i32, i32* %12, align 4
  %59 = icmp sge i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %40
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @secp256k1_scalar_set_int(i32* %11, i32 %61)
  br label %68

63:                                               ; preds = %40
  %64 = load i32, i32* %12, align 4
  %65 = sub nsw i32 0, %64
  %66 = call i32 @secp256k1_scalar_set_int(i32* %11, i32 %65)
  %67 = call i32 @secp256k1_scalar_negate(i32* %11, i32* %11)
  br label %68

68:                                               ; preds = %63, %60
  %69 = call i32 @secp256k1_scalar_add(i32* %5, i32* %5, i32* %11)
  br label %70

70:                                               ; preds = %68
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %8, align 4
  br label %26

73:                                               ; preds = %26
  %74 = load i32, i32* %9, align 4
  %75 = icmp eq i32 %74, 1
  %76 = zext i1 %75 to i32
  %77 = call i32 @secp256k1_scalar_cadd_bit(i32* %10, i32 0, i32 %76)
  %78 = call i32 @secp256k1_scalar_eq(i32* %5, i32* %10)
  %79 = call i32 @CHECK(i32 %78)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @secp256k1_scalar_set_int(i32*, i32) #2

declare dso_local i32 @secp256k1_wnaf_fixed(i32*, i32*, i32) #2

declare dso_local i32 @WNAF_SIZE(i32) #2

declare dso_local i32 @CHECK(i32) #2

declare dso_local i32 @secp256k1_scalar_mul(i32*, i32*, i32*) #2

declare dso_local i32 @secp256k1_scalar_negate(i32*, i32*) #2

declare dso_local i32 @secp256k1_scalar_add(i32*, i32*, i32*) #2

declare dso_local i32 @secp256k1_scalar_cadd_bit(i32*, i32, i32) #2

declare dso_local i32 @secp256k1_scalar_eq(i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
