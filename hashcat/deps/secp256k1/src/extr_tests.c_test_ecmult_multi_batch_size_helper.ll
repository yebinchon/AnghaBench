; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_test_ecmult_multi_batch_size_helper.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_test_ecmult_multi_batch_size_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ECMULT_MAX_POINTS_PER_BATCH = common dso_local global i64 0, align 8
@SIZE_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_ecmult_multi_batch_size_helper() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 0, i64* %3, align 8
  store i64 1, i64* %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call i32 @secp256k1_ecmult_multi_batch_size_helper(i64* %1, i64* %2, i64 %5, i64 %6)
  %8 = icmp eq i32 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i32 @CHECK(i32 %9)
  store i64 1, i64* %3, align 8
  store i64 0, i64* %4, align 8
  %11 = load i64, i64* %3, align 8
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @secp256k1_ecmult_multi_batch_size_helper(i64* %1, i64* %2, i64 %11, i64 %12)
  %14 = icmp eq i32 %13, 1
  %15 = zext i1 %14 to i32
  %16 = call i32 @CHECK(i32 %15)
  %17 = load i64, i64* %1, align 8
  %18 = icmp eq i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @CHECK(i32 %19)
  %21 = load i64, i64* %2, align 8
  %22 = icmp eq i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @CHECK(i32 %23)
  store i64 2, i64* %3, align 8
  store i64 5, i64* %4, align 8
  %25 = load i64, i64* %3, align 8
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @secp256k1_ecmult_multi_batch_size_helper(i64* %1, i64* %2, i64 %25, i64 %26)
  %28 = icmp eq i32 %27, 1
  %29 = zext i1 %28 to i32
  %30 = call i32 @CHECK(i32 %29)
  %31 = load i64, i64* %1, align 8
  %32 = icmp eq i64 %31, 3
  %33 = zext i1 %32 to i32
  %34 = call i32 @CHECK(i32 %33)
  %35 = load i64, i64* %2, align 8
  %36 = icmp eq i64 %35, 2
  %37 = zext i1 %36 to i32
  %38 = call i32 @CHECK(i32 %37)
  %39 = load i64, i64* @ECMULT_MAX_POINTS_PER_BATCH, align 8
  store i64 %39, i64* %3, align 8
  %40 = load i64, i64* @ECMULT_MAX_POINTS_PER_BATCH, align 8
  store i64 %40, i64* %4, align 8
  %41 = load i64, i64* %3, align 8
  %42 = load i64, i64* %4, align 8
  %43 = call i32 @secp256k1_ecmult_multi_batch_size_helper(i64* %1, i64* %2, i64 %41, i64 %42)
  %44 = icmp eq i32 %43, 1
  %45 = zext i1 %44 to i32
  %46 = call i32 @CHECK(i32 %45)
  %47 = load i64, i64* %1, align 8
  %48 = icmp eq i64 %47, 1
  %49 = zext i1 %48 to i32
  %50 = call i32 @CHECK(i32 %49)
  %51 = load i64, i64* %2, align 8
  %52 = load i64, i64* @ECMULT_MAX_POINTS_PER_BATCH, align 8
  %53 = icmp eq i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @CHECK(i32 %54)
  %56 = load i64, i64* @ECMULT_MAX_POINTS_PER_BATCH, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %3, align 8
  %58 = load i64, i64* @ECMULT_MAX_POINTS_PER_BATCH, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %4, align 8
  %60 = load i64, i64* %3, align 8
  %61 = load i64, i64* %4, align 8
  %62 = call i32 @secp256k1_ecmult_multi_batch_size_helper(i64* %1, i64* %2, i64 %60, i64 %61)
  %63 = icmp eq i32 %62, 1
  %64 = zext i1 %63 to i32
  %65 = call i32 @CHECK(i32 %64)
  %66 = load i64, i64* %1, align 8
  %67 = icmp eq i64 %66, 2
  %68 = zext i1 %67 to i32
  %69 = call i32 @CHECK(i32 %68)
  %70 = load i64, i64* %2, align 8
  %71 = load i64, i64* @ECMULT_MAX_POINTS_PER_BATCH, align 8
  %72 = udiv i64 %71, 2
  %73 = add i64 %72, 1
  %74 = icmp eq i64 %70, %73
  %75 = zext i1 %74 to i32
  %76 = call i32 @CHECK(i32 %75)
  store i64 1, i64* %3, align 8
  %77 = load i64, i64* @SIZE_MAX, align 8
  store i64 %77, i64* %4, align 8
  %78 = load i64, i64* %3, align 8
  %79 = load i64, i64* %4, align 8
  %80 = call i32 @secp256k1_ecmult_multi_batch_size_helper(i64* %1, i64* %2, i64 %78, i64 %79)
  %81 = icmp eq i32 %80, 1
  %82 = zext i1 %81 to i32
  %83 = call i32 @CHECK(i32 %82)
  %84 = load i64, i64* %1, align 8
  %85 = load i64, i64* @SIZE_MAX, align 8
  %86 = icmp eq i64 %84, %85
  %87 = zext i1 %86 to i32
  %88 = call i32 @CHECK(i32 %87)
  %89 = load i64, i64* %2, align 8
  %90 = icmp eq i64 %89, 1
  %91 = zext i1 %90 to i32
  %92 = call i32 @CHECK(i32 %91)
  store i64 2, i64* %3, align 8
  %93 = load i64, i64* @SIZE_MAX, align 8
  store i64 %93, i64* %4, align 8
  %94 = load i64, i64* %3, align 8
  %95 = load i64, i64* %4, align 8
  %96 = call i32 @secp256k1_ecmult_multi_batch_size_helper(i64* %1, i64* %2, i64 %94, i64 %95)
  %97 = icmp eq i32 %96, 1
  %98 = zext i1 %97 to i32
  %99 = call i32 @CHECK(i32 %98)
  %100 = load i64, i64* %1, align 8
  %101 = load i64, i64* @SIZE_MAX, align 8
  %102 = udiv i64 %101, 2
  %103 = add i64 %102, 1
  %104 = icmp eq i64 %100, %103
  %105 = zext i1 %104 to i32
  %106 = call i32 @CHECK(i32 %105)
  %107 = load i64, i64* %2, align 8
  %108 = icmp eq i64 %107, 2
  %109 = zext i1 %108 to i32
  %110 = call i32 @CHECK(i32 %109)
  ret void
}

declare dso_local i32 @CHECK(i32) #1

declare dso_local i32 @secp256k1_ecmult_multi_batch_size_helper(i64*, i64*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
