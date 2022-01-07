; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_curve25519.donna.c_fmonty.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_curve25519.donna.c_fmonty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*)* @fmonty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fmonty(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca [10 x i32], align 16
  %20 = alloca [10 x i32], align 16
  %21 = alloca [19 x i32], align 16
  %22 = alloca [19 x i32], align 16
  %23 = alloca [19 x i32], align 16
  %24 = alloca [19 x i32], align 16
  %25 = alloca [19 x i32], align 16
  %26 = alloca [19 x i32], align 16
  %27 = alloca [19 x i32], align 16
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32* %8, i32** %18, align 8
  %28 = getelementptr inbounds [10 x i32], [10 x i32]* %19, i64 0, i64 0
  %29 = load i32*, i32** %14, align 8
  %30 = call i32 @memcpy(i32* %28, i32* %29, i32 40)
  %31 = load i32*, i32** %14, align 8
  %32 = load i32*, i32** %15, align 8
  %33 = call i32 @fsum(i32* %31, i32* %32)
  %34 = load i32*, i32** %15, align 8
  %35 = getelementptr inbounds [10 x i32], [10 x i32]* %19, i64 0, i64 0
  %36 = call i32 @fdifference(i32* %34, i32* %35)
  %37 = getelementptr inbounds [10 x i32], [10 x i32]* %20, i64 0, i64 0
  %38 = load i32*, i32** %16, align 8
  %39 = call i32 @memcpy(i32* %37, i32* %38, i32 40)
  %40 = load i32*, i32** %16, align 8
  %41 = load i32*, i32** %17, align 8
  %42 = call i32 @fsum(i32* %40, i32* %41)
  %43 = load i32*, i32** %17, align 8
  %44 = getelementptr inbounds [10 x i32], [10 x i32]* %20, i64 0, i64 0
  %45 = call i32 @fdifference(i32* %43, i32* %44)
  %46 = getelementptr inbounds [19 x i32], [19 x i32]* %24, i64 0, i64 0
  %47 = load i32*, i32** %16, align 8
  %48 = load i32*, i32** %15, align 8
  %49 = call i32 @fproduct(i32* %46, i32* %47, i32* %48)
  %50 = getelementptr inbounds [19 x i32], [19 x i32]* %25, i64 0, i64 0
  %51 = load i32*, i32** %14, align 8
  %52 = load i32*, i32** %17, align 8
  %53 = call i32 @fproduct(i32* %50, i32* %51, i32* %52)
  %54 = getelementptr inbounds [19 x i32], [19 x i32]* %24, i64 0, i64 0
  %55 = call i32 @freduce_degree(i32* %54)
  %56 = getelementptr inbounds [19 x i32], [19 x i32]* %24, i64 0, i64 0
  %57 = call i32 @freduce_coefficients(i32* %56)
  %58 = getelementptr inbounds [19 x i32], [19 x i32]* %25, i64 0, i64 0
  %59 = call i32 @freduce_degree(i32* %58)
  %60 = getelementptr inbounds [19 x i32], [19 x i32]* %25, i64 0, i64 0
  %61 = call i32 @freduce_coefficients(i32* %60)
  %62 = getelementptr inbounds [10 x i32], [10 x i32]* %20, i64 0, i64 0
  %63 = getelementptr inbounds [19 x i32], [19 x i32]* %24, i64 0, i64 0
  %64 = call i32 @memcpy(i32* %62, i32* %63, i32 40)
  %65 = getelementptr inbounds [19 x i32], [19 x i32]* %24, i64 0, i64 0
  %66 = getelementptr inbounds [19 x i32], [19 x i32]* %25, i64 0, i64 0
  %67 = call i32 @fsum(i32* %65, i32* %66)
  %68 = getelementptr inbounds [19 x i32], [19 x i32]* %25, i64 0, i64 0
  %69 = getelementptr inbounds [10 x i32], [10 x i32]* %20, i64 0, i64 0
  %70 = call i32 @fdifference(i32* %68, i32* %69)
  %71 = getelementptr inbounds [19 x i32], [19 x i32]* %27, i64 0, i64 0
  %72 = getelementptr inbounds [19 x i32], [19 x i32]* %24, i64 0, i64 0
  %73 = call i32 @fsquare(i32* %71, i32* %72)
  %74 = getelementptr inbounds [19 x i32], [19 x i32]* %26, i64 0, i64 0
  %75 = getelementptr inbounds [19 x i32], [19 x i32]* %25, i64 0, i64 0
  %76 = call i32 @fsquare(i32* %74, i32* %75)
  %77 = getelementptr inbounds [19 x i32], [19 x i32]* %25, i64 0, i64 0
  %78 = getelementptr inbounds [19 x i32], [19 x i32]* %26, i64 0, i64 0
  %79 = load i32*, i32** %18, align 8
  %80 = call i32 @fproduct(i32* %77, i32* %78, i32* %79)
  %81 = getelementptr inbounds [19 x i32], [19 x i32]* %25, i64 0, i64 0
  %82 = call i32 @freduce_degree(i32* %81)
  %83 = getelementptr inbounds [19 x i32], [19 x i32]* %25, i64 0, i64 0
  %84 = call i32 @freduce_coefficients(i32* %83)
  %85 = load i32*, i32** %12, align 8
  %86 = getelementptr inbounds [19 x i32], [19 x i32]* %27, i64 0, i64 0
  %87 = call i32 @memcpy(i32* %85, i32* %86, i32 40)
  %88 = load i32*, i32** %13, align 8
  %89 = getelementptr inbounds [19 x i32], [19 x i32]* %25, i64 0, i64 0
  %90 = call i32 @memcpy(i32* %88, i32* %89, i32 40)
  %91 = getelementptr inbounds [19 x i32], [19 x i32]* %22, i64 0, i64 0
  %92 = load i32*, i32** %14, align 8
  %93 = call i32 @fsquare(i32* %91, i32* %92)
  %94 = getelementptr inbounds [19 x i32], [19 x i32]* %23, i64 0, i64 0
  %95 = load i32*, i32** %15, align 8
  %96 = call i32 @fsquare(i32* %94, i32* %95)
  %97 = load i32*, i32** %10, align 8
  %98 = getelementptr inbounds [19 x i32], [19 x i32]* %22, i64 0, i64 0
  %99 = getelementptr inbounds [19 x i32], [19 x i32]* %23, i64 0, i64 0
  %100 = call i32 @fproduct(i32* %97, i32* %98, i32* %99)
  %101 = load i32*, i32** %10, align 8
  %102 = call i32 @freduce_degree(i32* %101)
  %103 = load i32*, i32** %10, align 8
  %104 = call i32 @freduce_coefficients(i32* %103)
  %105 = getelementptr inbounds [19 x i32], [19 x i32]* %23, i64 0, i64 0
  %106 = getelementptr inbounds [19 x i32], [19 x i32]* %22, i64 0, i64 0
  %107 = call i32 @fdifference(i32* %105, i32* %106)
  %108 = getelementptr inbounds [19 x i32], [19 x i32]* %21, i64 0, i64 0
  %109 = getelementptr inbounds i32, i32* %108, i64 10
  %110 = call i32 @memset(i32* %109, i32 0, i32 36)
  %111 = getelementptr inbounds [19 x i32], [19 x i32]* %21, i64 0, i64 0
  %112 = getelementptr inbounds [19 x i32], [19 x i32]* %23, i64 0, i64 0
  %113 = call i32 @fscalar_product(i32* %111, i32* %112, i32 121665)
  %114 = getelementptr inbounds [19 x i32], [19 x i32]* %21, i64 0, i64 0
  %115 = call i32 @freduce_coefficients(i32* %114)
  %116 = getelementptr inbounds [19 x i32], [19 x i32]* %21, i64 0, i64 0
  %117 = getelementptr inbounds [19 x i32], [19 x i32]* %22, i64 0, i64 0
  %118 = call i32 @fsum(i32* %116, i32* %117)
  %119 = load i32*, i32** %11, align 8
  %120 = getelementptr inbounds [19 x i32], [19 x i32]* %23, i64 0, i64 0
  %121 = getelementptr inbounds [19 x i32], [19 x i32]* %21, i64 0, i64 0
  %122 = call i32 @fproduct(i32* %119, i32* %120, i32* %121)
  %123 = load i32*, i32** %11, align 8
  %124 = call i32 @freduce_degree(i32* %123)
  %125 = load i32*, i32** %11, align 8
  %126 = call i32 @freduce_coefficients(i32* %125)
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @fsum(i32*, i32*) #1

declare dso_local i32 @fdifference(i32*, i32*) #1

declare dso_local i32 @fproduct(i32*, i32*, i32*) #1

declare dso_local i32 @freduce_degree(i32*) #1

declare dso_local i32 @freduce_coefficients(i32*) #1

declare dso_local i32 @fsquare(i32*, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @fscalar_product(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
