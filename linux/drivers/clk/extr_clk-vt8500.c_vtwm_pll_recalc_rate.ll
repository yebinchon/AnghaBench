; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-vt8500.c_vtwm_pll_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-vt8500.c_vtwm_pll_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_pll = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @vtwm_pll_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vtwm_pll_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.clk_pll*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %9 = call %struct.clk_pll* @to_clk_pll(%struct.clk_hw* %8)
  store %struct.clk_pll* %9, %struct.clk_pll** %5, align 8
  %10 = load %struct.clk_pll*, %struct.clk_pll** %5, align 8
  %11 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @readl(i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.clk_pll*, %struct.clk_pll** %5, align 8
  %15 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %53 [
    i32 131, label %17
    i32 130, label %26
    i32 129, label %35
    i32 128, label %44
  ]

17:                                               ; preds = %2
  %18 = load i64, i64* %4, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i64 @VT8500_PLL_MUL(i32 %19)
  %21 = mul i64 %18, %20
  store i64 %21, i64* %7, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i64 @VT8500_PLL_DIV(i32 %22)
  %24 = load i64, i64* %7, align 8
  %25 = udiv i64 %24, %23
  store i64 %25, i64* %7, align 8
  br label %54

26:                                               ; preds = %2
  %27 = load i64, i64* %4, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i64 @WM8650_PLL_MUL(i32 %28)
  %30 = mul i64 %27, %29
  store i64 %30, i64* %7, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i64 @WM8650_PLL_DIV(i32 %31)
  %33 = load i64, i64* %7, align 8
  %34 = udiv i64 %33, %32
  store i64 %34, i64* %7, align 8
  br label %54

35:                                               ; preds = %2
  %36 = load i64, i64* %4, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i64 @WM8750_PLL_MUL(i32 %37)
  %39 = mul i64 %36, %38
  store i64 %39, i64* %7, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i64 @WM8750_PLL_DIV(i32 %40)
  %42 = load i64, i64* %7, align 8
  %43 = udiv i64 %42, %41
  store i64 %43, i64* %7, align 8
  br label %54

44:                                               ; preds = %2
  %45 = load i64, i64* %4, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i64 @WM8850_PLL_MUL(i32 %46)
  %48 = mul i64 %45, %47
  store i64 %48, i64* %7, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i64 @WM8850_PLL_DIV(i32 %49)
  %51 = load i64, i64* %7, align 8
  %52 = udiv i64 %51, %50
  store i64 %52, i64* %7, align 8
  br label %54

53:                                               ; preds = %2
  store i64 0, i64* %7, align 8
  br label %54

54:                                               ; preds = %53, %44, %35, %26, %17
  %55 = load i64, i64* %7, align 8
  ret i64 %55
}

declare dso_local %struct.clk_pll* @to_clk_pll(%struct.clk_hw*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i64 @VT8500_PLL_MUL(i32) #1

declare dso_local i64 @VT8500_PLL_DIV(i32) #1

declare dso_local i64 @WM8650_PLL_MUL(i32) #1

declare dso_local i64 @WM8650_PLL_DIV(i32) #1

declare dso_local i64 @WM8750_PLL_MUL(i32) #1

declare dso_local i64 @WM8750_PLL_DIV(i32) #1

declare dso_local i64 @WM8850_PLL_MUL(i32) #1

declare dso_local i64 @WM8850_PLL_DIV(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
