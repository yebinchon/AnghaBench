; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_test_constant_wnaf.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_test_constant_wnaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_constant_wnaf(i32* %0, i32 %1) #0 {
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
  %13 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = bitcast [256 x i32]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 1024, i1 false)
  store i32 256, i32* %10, align 4
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %11, align 4
  %17 = call i32 @secp256k1_scalar_set_int(i32* %5, i32 0)
  %18 = load i32, i32* %4, align 4
  %19 = shl i32 1, %18
  %20 = call i32 @secp256k1_scalar_set_int(i32* %6, i32 %19)
  %21 = getelementptr inbounds [256 x i32], [256 x i32]* %7, i64 0, i64 0
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @secp256k1_wnaf_const(i32* %21, i32* %11, i32 %22, i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @WNAF_SIZE_BITS(i32 %25, i32 %26)
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %69, %2
  %29 = load i32, i32* %8, align 4
  %30 = icmp sge i32 %29, 0
  br i1 %30, label %31, label %72

31:                                               ; preds = %28
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [256 x i32], [256 x i32]* %7, i64 0, i64 %33
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %13, align 4
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i32 @CHECK(i32 %38)
  %40 = load i32, i32* %13, align 4
  %41 = and i32 %40, 1
  %42 = call i32 @CHECK(i32 %41)
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* %4, align 4
  %45 = shl i32 1, %44
  %46 = sub nsw i32 0, %45
  %47 = icmp sgt i32 %43, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @CHECK(i32 %48)
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %4, align 4
  %52 = shl i32 1, %51
  %53 = icmp slt i32 %50, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @CHECK(i32 %54)
  %56 = call i32 @secp256k1_scalar_mul(i32* %5, i32* %5, i32* %6)
  %57 = load i32, i32* %13, align 4
  %58 = icmp sge i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %31
  %60 = load i32, i32* %13, align 4
  %61 = call i32 @secp256k1_scalar_set_int(i32* %12, i32 %60)
  br label %67

62:                                               ; preds = %31
  %63 = load i32, i32* %13, align 4
  %64 = sub nsw i32 0, %63
  %65 = call i32 @secp256k1_scalar_set_int(i32* %12, i32 %64)
  %66 = call i32 @secp256k1_scalar_negate(i32* %12, i32* %12)
  br label %67

67:                                               ; preds = %62, %59
  %68 = call i32 @secp256k1_scalar_add(i32* %5, i32* %5, i32* %12)
  br label %69

69:                                               ; preds = %67
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %8, align 4
  br label %28

72:                                               ; preds = %28
  %73 = load i32, i32* %9, align 4
  %74 = icmp eq i32 %73, 2
  %75 = zext i1 %74 to i32
  %76 = call i32 @secp256k1_scalar_cadd_bit(i32* %11, i32 %75, i32 1)
  %77 = call i32 @secp256k1_scalar_eq(i32* %5, i32* %11)
  %78 = call i32 @CHECK(i32 %77)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @secp256k1_scalar_set_int(i32*, i32) #2

declare dso_local i32 @secp256k1_wnaf_const(i32*, i32*, i32, i32) #2

declare dso_local i32 @WNAF_SIZE_BITS(i32, i32) #2

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
