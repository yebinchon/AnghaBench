; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_test_fixed_wnaf_small.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_test_fixed_wnaf_small.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_fixed_wnaf_small.wnaf_expected = private unnamed_addr constant [8 x i32] [i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15], align 16
@__const.test_fixed_wnaf_small.wnaf_expected.1 = private unnamed_addr constant [8 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 15], align 16
@__const.test_fixed_wnaf_small.wnaf_expected.2 = private unnamed_addr constant [8 x i32] [i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0], align 16
@__const.test_fixed_wnaf_small.wnaf_expected.3 = private unnamed_addr constant [8 x i32] [i32 -15, i32 0, i32 15, i32 -15, i32 0, i32 15, i32 1, i32 0], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_fixed_wnaf_small() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i32], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [8 x i32], align 16
  %9 = alloca [8 x i32], align 16
  %10 = alloca [8 x i32], align 16
  %11 = alloca [8 x i32], align 16
  store i32 4, i32* %1, align 4
  %12 = bitcast [256 x i32]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 1024, i1 false)
  %13 = call i32 @secp256k1_scalar_set_int(i32* %5, i32 0)
  %14 = getelementptr inbounds [256 x i32], [256 x i32]* %2, i64 0, i64 0
  %15 = load i32, i32* %1, align 4
  %16 = call i32 @secp256k1_wnaf_fixed(i32* %14, i32* %5, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %1, align 4
  %18 = call i32 @WNAF_SIZE(i32 %17)
  %19 = sub nsw i32 %18, 1
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %32, %0
  %21 = load i32, i32* %3, align 4
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %20
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [256 x i32], [256 x i32]* %2, i64 0, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp eq i32 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @CHECK(i32 %30)
  br label %32

32:                                               ; preds = %23
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %3, align 4
  br label %20

35:                                               ; preds = %20
  %36 = load i32, i32* %4, align 4
  %37 = icmp eq i32 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i32 @CHECK(i32 %38)
  %40 = call i32 @secp256k1_scalar_set_int(i32* %5, i32 1)
  %41 = getelementptr inbounds [256 x i32], [256 x i32]* %2, i64 0, i64 0
  %42 = load i32, i32* %1, align 4
  %43 = call i32 @secp256k1_wnaf_fixed(i32* %41, i32* %5, i32 %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %1, align 4
  %45 = call i32 @WNAF_SIZE(i32 %44)
  %46 = sub nsw i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %59, %35
  %48 = load i32, i32* %3, align 4
  %49 = icmp sge i32 %48, 1
  br i1 %49, label %50, label %62

50:                                               ; preds = %47
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [256 x i32], [256 x i32]* %2, i64 0, i64 %52
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp eq i32 %55, 0
  %57 = zext i1 %56 to i32
  %58 = call i32 @CHECK(i32 %57)
  br label %59

59:                                               ; preds = %50
  %60 = load i32, i32* %3, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %3, align 4
  br label %47

62:                                               ; preds = %47
  %63 = getelementptr inbounds [256 x i32], [256 x i32]* %2, i64 0, i64 0
  %64 = load i32, i32* %63, align 16
  %65 = icmp eq i32 %64, 1
  %66 = zext i1 %65 to i32
  %67 = call i32 @CHECK(i32 %66)
  %68 = load i32, i32* %4, align 4
  %69 = icmp eq i32 %68, 0
  %70 = zext i1 %69 to i32
  %71 = call i32 @CHECK(i32 %70)
  %72 = bitcast [8 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %72, i8* align 16 bitcast ([8 x i32]* @__const.test_fixed_wnaf_small.wnaf_expected to i8*), i64 32, i1 false)
  %73 = call i32 @secp256k1_scalar_set_int(i32* %5, i32 -1)
  %74 = getelementptr inbounds [256 x i32], [256 x i32]* %2, i64 0, i64 0
  %75 = load i32, i32* %1, align 4
  %76 = call i32 @secp256k1_wnaf_fixed(i32* %74, i32* %5, i32 %75)
  store i32 %76, i32* %4, align 4
  %77 = getelementptr inbounds [256 x i32], [256 x i32]* %2, i64 0, i64 0
  %78 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  %79 = load i32, i32* %1, align 4
  %80 = call i32 @test_fixed_wnaf_small_helper(i32* %77, i32* %78, i32 %79)
  %81 = load i32, i32* %4, align 4
  %82 = icmp eq i32 %81, 0
  %83 = zext i1 %82 to i32
  %84 = call i32 @CHECK(i32 %83)
  %85 = bitcast [8 x i32]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %85, i8* align 16 bitcast ([8 x i32]* @__const.test_fixed_wnaf_small.wnaf_expected.1 to i8*), i64 32, i1 false)
  %86 = call i32 @secp256k1_scalar_set_int(i32* %5, i32 -286331154)
  %87 = getelementptr inbounds [256 x i32], [256 x i32]* %2, i64 0, i64 0
  %88 = load i32, i32* %1, align 4
  %89 = call i32 @secp256k1_wnaf_fixed(i32* %87, i32* %5, i32 %88)
  store i32 %89, i32* %4, align 4
  %90 = getelementptr inbounds [256 x i32], [256 x i32]* %2, i64 0, i64 0
  %91 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  %92 = load i32, i32* %1, align 4
  %93 = call i32 @test_fixed_wnaf_small_helper(i32* %90, i32* %91, i32 %92)
  %94 = load i32, i32* %4, align 4
  %95 = icmp eq i32 %94, 1
  %96 = zext i1 %95 to i32
  %97 = call i32 @CHECK(i32 %96)
  %98 = bitcast [8 x i32]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %98, i8* align 16 bitcast ([8 x i32]* @__const.test_fixed_wnaf_small.wnaf_expected.2 to i8*), i64 32, i1 false)
  %99 = call i32 @secp256k1_scalar_set_int(i32* %5, i32 16843009)
  %100 = getelementptr inbounds [256 x i32], [256 x i32]* %2, i64 0, i64 0
  %101 = load i32, i32* %1, align 4
  %102 = call i32 @secp256k1_wnaf_fixed(i32* %100, i32* %5, i32 %101)
  store i32 %102, i32* %4, align 4
  %103 = getelementptr inbounds [256 x i32], [256 x i32]* %2, i64 0, i64 0
  %104 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %105 = load i32, i32* %1, align 4
  %106 = call i32 @test_fixed_wnaf_small_helper(i32* %103, i32* %104, i32 %105)
  %107 = load i32, i32* %4, align 4
  %108 = icmp eq i32 %107, 0
  %109 = zext i1 %108 to i32
  %110 = call i32 @CHECK(i32 %109)
  %111 = bitcast [8 x i32]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %111, i8* align 16 bitcast ([8 x i32]* @__const.test_fixed_wnaf_small.wnaf_expected.3 to i8*), i64 32, i1 false)
  %112 = call i32 @secp256k1_scalar_set_int(i32* %5, i32 32448241)
  %113 = getelementptr inbounds [256 x i32], [256 x i32]* %2, i64 0, i64 0
  %114 = load i32, i32* %1, align 4
  %115 = call i32 @secp256k1_wnaf_fixed(i32* %113, i32* %5, i32 %114)
  store i32 %115, i32* %4, align 4
  %116 = getelementptr inbounds [256 x i32], [256 x i32]* %2, i64 0, i64 0
  %117 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 0
  %118 = load i32, i32* %1, align 4
  %119 = call i32 @test_fixed_wnaf_small_helper(i32* %116, i32* %117, i32 %118)
  %120 = load i32, i32* %4, align 4
  %121 = icmp eq i32 %120, 0
  %122 = zext i1 %121 to i32
  %123 = call i32 @CHECK(i32 %122)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @secp256k1_scalar_set_int(i32*, i32) #2

declare dso_local i32 @secp256k1_wnaf_fixed(i32*, i32*, i32) #2

declare dso_local i32 @WNAF_SIZE(i32) #2

declare dso_local i32 @CHECK(i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @test_fixed_wnaf_small_helper(i32*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
