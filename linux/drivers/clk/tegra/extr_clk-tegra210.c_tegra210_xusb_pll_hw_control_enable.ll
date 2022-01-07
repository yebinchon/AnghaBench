; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-tegra210.c_tegra210_xusb_pll_hw_control_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-tegra210.c_tegra210_xusb_pll_hw_control_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@clk_base = common dso_local global i64 0, align 8
@XUSBIO_PLL_CFG0 = common dso_local global i64 0, align 8
@XUSBIO_PLL_CFG0_CLK_ENABLE_SWCTL = common dso_local global i32 0, align 4
@XUSBIO_PLL_CFG0_PADPLL_RESET_SWCTL = common dso_local global i32 0, align 4
@XUSBIO_PLL_CFG0_PADPLL_USE_LOCKDET = common dso_local global i32 0, align 4
@XUSBIO_PLL_CFG0_PADPLL_SLEEP_IDDQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tegra210_xusb_pll_hw_control_enable() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @clk_base, align 8
  %3 = load i64, i64* @XUSBIO_PLL_CFG0, align 8
  %4 = add nsw i64 %2, %3
  %5 = call i32 @readl_relaxed(i64 %4)
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* @XUSBIO_PLL_CFG0_CLK_ENABLE_SWCTL, align 4
  %7 = load i32, i32* @XUSBIO_PLL_CFG0_PADPLL_RESET_SWCTL, align 4
  %8 = or i32 %6, %7
  %9 = xor i32 %8, -1
  %10 = load i32, i32* %1, align 4
  %11 = and i32 %10, %9
  store i32 %11, i32* %1, align 4
  %12 = load i32, i32* @XUSBIO_PLL_CFG0_PADPLL_USE_LOCKDET, align 4
  %13 = load i32, i32* @XUSBIO_PLL_CFG0_PADPLL_SLEEP_IDDQ, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* %1, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %1, align 4
  %17 = load i32, i32* %1, align 4
  %18 = load i64, i64* @clk_base, align 8
  %19 = load i64, i64* @XUSBIO_PLL_CFG0, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @writel_relaxed(i32 %17, i64 %20)
  ret void
}

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
