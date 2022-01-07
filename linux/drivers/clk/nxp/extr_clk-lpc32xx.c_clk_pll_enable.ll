; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/nxp/extr_clk-lpc32xx.c_clk_pll_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/nxp/extr_clk-lpc32xx.c_clk_pll_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.lpc32xx_pll_clk = type { i32, i32 }

@clk_regmap = common dso_local global i32 0, align 4
@PLL_CTRL_LOCK = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @clk_pll_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_pll_enable(%struct.clk_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.lpc32xx_pll_clk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  %7 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %8 = call %struct.lpc32xx_pll_clk* @to_lpc32xx_pll_clk(%struct.clk_hw* %7)
  store %struct.lpc32xx_pll_clk* %8, %struct.lpc32xx_pll_clk** %4, align 8
  %9 = load i32, i32* @clk_regmap, align 4
  %10 = load %struct.lpc32xx_pll_clk*, %struct.lpc32xx_pll_clk** %4, align 8
  %11 = getelementptr inbounds %struct.lpc32xx_pll_clk, %struct.lpc32xx_pll_clk* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.lpc32xx_pll_clk*, %struct.lpc32xx_pll_clk** %4, align 8
  %14 = getelementptr inbounds %struct.lpc32xx_pll_clk, %struct.lpc32xx_pll_clk* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.lpc32xx_pll_clk*, %struct.lpc32xx_pll_clk** %4, align 8
  %17 = getelementptr inbounds %struct.lpc32xx_pll_clk, %struct.lpc32xx_pll_clk* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @regmap_update_bits(i32 %9, i32 %12, i32 %15, i32 %18)
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %35, %1
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 1000
  br i1 %22, label %23, label %38

23:                                               ; preds = %20
  %24 = load i32, i32* @clk_regmap, align 4
  %25 = load %struct.lpc32xx_pll_clk*, %struct.lpc32xx_pll_clk** %4, align 8
  %26 = getelementptr inbounds %struct.lpc32xx_pll_clk, %struct.lpc32xx_pll_clk* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @regmap_read(i32 %24, i32 %27, i32* %5)
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @PLL_CTRL_LOCK, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  br label %38

34:                                               ; preds = %23
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %20

38:                                               ; preds = %33, %20
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @PLL_CTRL_LOCK, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %47

44:                                               ; preds = %38
  %45 = load i32, i32* @ETIMEDOUT, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %44, %43
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.lpc32xx_pll_clk* @to_lpc32xx_pll_clk(%struct.clk_hw*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
