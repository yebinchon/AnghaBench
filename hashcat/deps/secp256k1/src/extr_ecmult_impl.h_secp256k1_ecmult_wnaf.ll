; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_ecmult_impl.h_secp256k1_ecmult_wnaf.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_ecmult_impl.h_secp256k1_ecmult_wnaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32)* @secp256k1_ecmult_wnaf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @secp256k1_ecmult_wnaf(i32* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 -1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 1, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = icmp ne i32* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @VERIFY_CHECK(i32 %18)
  %20 = load i32, i32* %6, align 4
  %21 = icmp sle i32 0, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32, i32* %6, align 4
  %24 = icmp sle i32 %23, 256
  br label %25

25:                                               ; preds = %22, %4
  %26 = phi i1 [ false, %4 ], [ %24, %22 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @VERIFY_CHECK(i32 %27)
  %29 = load i32*, i32** %7, align 8
  %30 = icmp ne i32* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i32 @VERIFY_CHECK(i32 %31)
  %33 = load i32, i32* %8, align 4
  %34 = icmp sle i32 2, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %25
  %36 = load i32, i32* %8, align 4
  %37 = icmp sle i32 %36, 31
  br label %38

38:                                               ; preds = %35, %25
  %39 = phi i1 [ false, %25 ], [ %37, %35 ]
  %40 = zext i1 %39 to i32
  %41 = call i32 @VERIFY_CHECK(i32 %40)
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = mul i64 %44, 4
  %46 = trunc i64 %45 to i32
  %47 = call i32 @memset(i32* %42, i32 0, i32 %46)
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %9, align 4
  %50 = call i32 @secp256k1_scalar_get_bits(i32* %9, i32 255, i32 1)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %38
  %53 = call i32 @secp256k1_scalar_negate(i32* %9, i32* %9)
  store i32 -1, i32* %12, align 4
  br label %54

54:                                               ; preds = %52, %38
  br label %55

55:                                               ; preds = %78, %64, %54
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %105

59:                                               ; preds = %55
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @secp256k1_scalar_get_bits(i32* %9, i32 %60, i32 1)
  %62 = load i32, i32* %13, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %11, align 4
  br label %55

67:                                               ; preds = %59
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %11, align 4
  %72 = sub nsw i32 %70, %71
  %73 = icmp sgt i32 %69, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %67
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %11, align 4
  %77 = sub nsw i32 %75, %76
  store i32 %77, i32* %14, align 4
  br label %78

78:                                               ; preds = %74, %67
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %14, align 4
  %81 = call i32 @secp256k1_scalar_get_bits_var(i32* %9, i32 %79, i32 %80)
  %82 = load i32, i32* %13, align 4
  %83 = add nsw i32 %81, %82
  store i32 %83, i32* %15, align 4
  %84 = load i32, i32* %15, align 4
  %85 = load i32, i32* %8, align 4
  %86 = sub nsw i32 %85, 1
  %87 = ashr i32 %84, %86
  %88 = and i32 %87, 1
  store i32 %88, i32* %13, align 4
  %89 = load i32, i32* %13, align 4
  %90 = load i32, i32* %8, align 4
  %91 = shl i32 %89, %90
  %92 = load i32, i32* %15, align 4
  %93 = sub nsw i32 %92, %91
  store i32 %93, i32* %15, align 4
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* %15, align 4
  %96 = mul nsw i32 %94, %95
  %97 = load i32*, i32** %5, align 8
  %98 = load i32, i32* %11, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  store i32 %96, i32* %100, align 4
  %101 = load i32, i32* %11, align 4
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %14, align 4
  %103 = load i32, i32* %11, align 4
  %104 = add nsw i32 %103, %102
  store i32 %104, i32* %11, align 4
  br label %55

105:                                              ; preds = %55
  %106 = load i32, i32* %10, align 4
  %107 = add nsw i32 %106, 1
  ret i32 %107
}

declare dso_local i32 @VERIFY_CHECK(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @secp256k1_scalar_get_bits(i32*, i32, i32) #1

declare dso_local i32 @secp256k1_scalar_negate(i32*, i32*) #1

declare dso_local i32 @secp256k1_scalar_get_bits_var(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
