; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-highbank.c_clk_pll_calc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-highbank.c_clk_pll_calc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HB_PLL_MIN_FREQ = common dso_local global i64 0, align 8
@HB_PLL_MAX_FREQ = common dso_local global i64 0, align 8
@HB_PLL_VCO_MIN_FREQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i32*, i32*)* @clk_pll_calc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clk_pll_calc(i64 %0, i64 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @HB_PLL_MIN_FREQ, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load i64, i64* @HB_PLL_MIN_FREQ, align 8
  store i64 %16, i64* %5, align 8
  br label %17

17:                                               ; preds = %15, %4
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @HB_PLL_MAX_FREQ, align 8
  %20 = icmp ugt i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i64, i64* @HB_PLL_MAX_FREQ, align 8
  store i64 %22, i64* %5, align 8
  br label %23

23:                                               ; preds = %21, %17
  store i32 1, i32* %9, align 4
  br label %24

24:                                               ; preds = %37, %23
  %25 = load i32, i32* %9, align 4
  %26 = icmp sle i32 %25, 6
  br i1 %26, label %27, label %40

27:                                               ; preds = %24
  %28 = load i64, i64* %5, align 8
  %29 = load i32, i32* %9, align 4
  %30 = shl i32 1, %29
  %31 = sext i32 %30 to i64
  %32 = mul i64 %28, %31
  %33 = load i64, i64* @HB_PLL_VCO_MIN_FREQ, align 8
  %34 = icmp uge i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %40

36:                                               ; preds = %27
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %9, align 4
  br label %24

40:                                               ; preds = %35, %24
  %41 = load i64, i64* %5, align 8
  %42 = load i32, i32* %9, align 4
  %43 = shl i32 1, %42
  %44 = sext i32 %43 to i64
  %45 = mul i64 %41, %44
  store i64 %45, i64* %11, align 8
  %46 = load i64, i64* %11, align 8
  %47 = load i64, i64* %6, align 8
  %48 = udiv i64 %47, 2
  %49 = add i64 %46, %48
  %50 = load i64, i64* %6, align 8
  %51 = udiv i64 %49, %50
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load i32*, i32** %7, align 8
  store i32 %55, i32* %56, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load i32*, i32** %8, align 8
  store i32 %57, i32* %58, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
