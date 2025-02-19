; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-tegra210.c_tegra210_xusb_pll_hw_sequence_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-tegra210.c_tegra210_xusb_pll_hw_sequence_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@clk_base = common dso_local global i64 0, align 8
@XUSBIO_PLL_CFG0 = common dso_local global i64 0, align 8
@XUSBIO_PLL_CFG0_SEQ_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tegra210_xusb_pll_hw_sequence_start() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @clk_base, align 8
  %3 = load i64, i64* @XUSBIO_PLL_CFG0, align 8
  %4 = add nsw i64 %2, %3
  %5 = call i32 @readl_relaxed(i64 %4)
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* @XUSBIO_PLL_CFG0_SEQ_ENABLE, align 4
  %7 = load i32, i32* %1, align 4
  %8 = or i32 %7, %6
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* %1, align 4
  %10 = load i64, i64* @clk_base, align 8
  %11 = load i64, i64* @XUSBIO_PLL_CFG0, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @writel_relaxed(i32 %9, i64 %12)
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
