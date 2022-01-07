; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-lpc32xx/extr_common.c_lpc32xx_set_phy_interface_mode.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-lpc32xx/extr_common.c_lpc32xx_set_phy_interface_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LPC32XX_CLKPWR_MACCLK_CTRL = common dso_local global i32 0, align 4
@LPC32XX_CLKPWR_MACCTRL_PINS_MSK = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_MII = common dso_local global i64 0, align 8
@LPC32XX_CLKPWR_MACCTRL_USE_MII_PINS = common dso_local global i32 0, align 4
@LPC32XX_CLKPWR_MACCTRL_USE_RMII_PINS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpc32xx_set_phy_interface_mode(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %4 = load i32, i32* @LPC32XX_CLKPWR_MACCLK_CTRL, align 4
  %5 = call i32 @__raw_readl(i32 %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* @LPC32XX_CLKPWR_MACCTRL_PINS_MSK, align 4
  %7 = xor i32 %6, -1
  %8 = load i32, i32* %3, align 4
  %9 = and i32 %8, %7
  store i32 %9, i32* %3, align 4
  %10 = load i64, i64* %2, align 8
  %11 = load i64, i64* @PHY_INTERFACE_MODE_MII, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load i32, i32* @LPC32XX_CLKPWR_MACCTRL_USE_MII_PINS, align 4
  %15 = load i32, i32* %3, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %3, align 4
  br label %21

17:                                               ; preds = %1
  %18 = load i32, i32* @LPC32XX_CLKPWR_MACCTRL_USE_RMII_PINS, align 4
  %19 = load i32, i32* %3, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %17, %13
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @LPC32XX_CLKPWR_MACCLK_CTRL, align 4
  %24 = call i32 @__raw_writel(i32 %22, i32 %23)
  ret void
}

declare dso_local i32 @__raw_readl(i32) #1

declare dso_local i32 @__raw_writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
