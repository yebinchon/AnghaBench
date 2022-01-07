; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_ecmult_const_impl.h_secp256k1_wnaf_const.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_ecmult_const_impl.h_secp256k1_wnaf_const.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32)* @secp256k1_wnaf_const to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @secp256k1_wnaf_const(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
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
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp sgt i32 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @VERIFY_CHECK(i32 %22)
  %24 = load i32, i32* %8, align 4
  %25 = icmp sgt i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @VERIFY_CHECK(i32 %26)
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @secp256k1_scalar_is_high(i32* %28)
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %14, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @secp256k1_scalar_is_even(i32* %31)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = xor i32 %30, %35
  store i32 %36, i32* %15, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @secp256k1_scalar_negate(i32* %16, i32* %37)
  %39 = call i32 @secp256k1_scalar_is_one(i32* %16)
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %17, align 4
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %16, align 4
  %45 = load i32, i32* %15, align 4
  %46 = load i32, i32* %17, align 4
  %47 = call i32 @secp256k1_scalar_cadd_bit(i32* %16, i32 %45, i32 %46)
  %48 = load i32, i32* %14, align 4
  %49 = call i32 @secp256k1_scalar_cond_negate(i32* %16, i32 %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %17, align 4
  %51 = mul nsw i32 %50, 2
  %52 = sub nsw i32 %51, 1
  %53 = load i32, i32* %9, align 4
  %54 = mul nsw i32 %53, %52
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %15, align 4
  %56 = shl i32 1, %55
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @secp256k1_scalar_shr_int(i32* %16, i32 %57)
  store i32 %58, i32* %12, align 4
  br label %59

59:                                               ; preds = %93, %4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @secp256k1_scalar_shr_int(i32* %16, i32 %60)
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %13, align 4
  %63 = and i32 %62, 1
  %64 = icmp eq i32 %63, 0
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %19, align 4
  %66 = load i32, i32* %12, align 4
  %67 = icmp sgt i32 %66, 0
  %68 = zext i1 %67 to i32
  %69 = mul nsw i32 2, %68
  %70 = sub nsw i32 %69, 1
  store i32 %70, i32* %18, align 4
  %71 = load i32, i32* %18, align 4
  %72 = load i32, i32* %19, align 4
  %73 = mul nsw i32 %71, %72
  %74 = load i32, i32* %13, align 4
  %75 = add nsw i32 %74, %73
  store i32 %75, i32* %13, align 4
  %76 = load i32, i32* %18, align 4
  %77 = load i32, i32* %19, align 4
  %78 = mul nsw i32 %76, %77
  %79 = load i32, i32* %7, align 4
  %80 = shl i32 1, %79
  %81 = mul nsw i32 %78, %80
  %82 = load i32, i32* %12, align 4
  %83 = sub nsw i32 %82, %81
  store i32 %83, i32* %12, align 4
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* %9, align 4
  %86 = mul nsw i32 %84, %85
  %87 = load i32*, i32** %5, align 8
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %11, align 4
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds i32, i32* %87, i64 %90
  store i32 %86, i32* %91, align 4
  %92 = load i32, i32* %13, align 4
  store i32 %92, i32* %12, align 4
  br label %93

93:                                               ; preds = %59
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* %7, align 4
  %96 = mul nsw i32 %94, %95
  %97 = load i32, i32* %8, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %59, label %99

99:                                               ; preds = %93
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* %9, align 4
  %102 = mul nsw i32 %100, %101
  %103 = load i32*, i32** %5, align 8
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  store i32 %102, i32* %106, align 4
  %107 = call i32 @secp256k1_scalar_is_zero(i32* %16)
  %108 = call i32 @VERIFY_CHECK(i32 %107)
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* %7, align 4
  %112 = call i32 @WNAF_SIZE_BITS(i32 %110, i32 %111)
  %113 = icmp eq i32 %109, %112
  %114 = zext i1 %113 to i32
  %115 = call i32 @VERIFY_CHECK(i32 %114)
  %116 = load i32, i32* %10, align 4
  ret i32 %116
}

declare dso_local i32 @VERIFY_CHECK(i32) #1

declare dso_local i32 @secp256k1_scalar_is_high(i32*) #1

declare dso_local i32 @secp256k1_scalar_is_even(i32*) #1

declare dso_local i32 @secp256k1_scalar_negate(i32*, i32*) #1

declare dso_local i32 @secp256k1_scalar_is_one(i32*) #1

declare dso_local i32 @secp256k1_scalar_cadd_bit(i32*, i32, i32) #1

declare dso_local i32 @secp256k1_scalar_cond_negate(i32*, i32) #1

declare dso_local i32 @secp256k1_scalar_shr_int(i32*, i32) #1

declare dso_local i32 @secp256k1_scalar_is_zero(i32*) #1

declare dso_local i32 @WNAF_SIZE_BITS(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
