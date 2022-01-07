; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/samsung/extr_clk-pll.c_samsung_pll2650xx_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/samsung/extr_clk-pll.c_samsung_pll2650xx_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.samsung_clk_pll = type { i64 }

@PLL2650XX_MDIV_SHIFT = common dso_local global i32 0, align 4
@PLL2650XX_MDIV_MASK = common dso_local global i32 0, align 4
@PLL2650XX_PDIV_SHIFT = common dso_local global i32 0, align 4
@PLL2650XX_PDIV_MASK = common dso_local global i32 0, align 4
@PLL2650XX_SDIV_SHIFT = common dso_local global i32 0, align 4
@PLL2650XX_SDIV_MASK = common dso_local global i32 0, align 4
@PLL2650XX_KDIV_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @samsung_pll2650xx_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @samsung_pll2650xx_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.samsung_clk_pll*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %13 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %14 = call %struct.samsung_clk_pll* @to_clk_pll(%struct.clk_hw* %13)
  store %struct.samsung_clk_pll* %14, %struct.samsung_clk_pll** %5, align 8
  %15 = load i64, i64* %4, align 8
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %12, align 4
  %17 = load %struct.samsung_clk_pll*, %struct.samsung_clk_pll** %5, align 8
  %18 = getelementptr inbounds %struct.samsung_clk_pll, %struct.samsung_clk_pll* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @readl_relaxed(i64 %19)
  store i32 %20, i32* %9, align 4
  %21 = load %struct.samsung_clk_pll*, %struct.samsung_clk_pll** %5, align 8
  %22 = getelementptr inbounds %struct.samsung_clk_pll, %struct.samsung_clk_pll* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, 8
  %25 = call i32 @readl_relaxed(i64 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @PLL2650XX_MDIV_SHIFT, align 4
  %28 = ashr i32 %26, %27
  %29 = load i32, i32* @PLL2650XX_MDIV_MASK, align 4
  %30 = and i32 %28, %29
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @PLL2650XX_PDIV_SHIFT, align 4
  %33 = ashr i32 %31, %32
  %34 = load i32, i32* @PLL2650XX_PDIV_MASK, align 4
  %35 = and i32 %33, %34
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @PLL2650XX_SDIV_SHIFT, align 4
  %38 = ashr i32 %36, %37
  %39 = load i32, i32* @PLL2650XX_SDIV_MASK, align 4
  %40 = and i32 %38, %39
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @PLL2650XX_KDIV_MASK, align 4
  %43 = and i32 %41, %42
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %6, align 4
  %45 = shl i32 %44, 16
  %46 = load i32, i32* %11, align 4
  %47 = add nsw i32 %45, %46
  %48 = load i32, i32* %12, align 4
  %49 = mul nsw i32 %48, %47
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %8, align 4
  %53 = shl i32 %51, %52
  %54 = call i32 @do_div(i32 %50, i32 %53)
  %55 = load i32, i32* %12, align 4
  %56 = ashr i32 %55, 16
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = sext i32 %57 to i64
  ret i64 %58
}

declare dso_local %struct.samsung_clk_pll* @to_clk_pll(%struct.clk_hw*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @do_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
