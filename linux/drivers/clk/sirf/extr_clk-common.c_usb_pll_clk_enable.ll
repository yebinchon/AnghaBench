; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sirf/extr_clk-common.c_usb_pll_clk_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sirf/extr_clk-common.c_usb_pll_clk_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }

@sirfsoc_rsc_vbase = common dso_local global i64 0, align 8
@SIRFSOC_USBPHY_PLL_CTRL = common dso_local global i64 0, align 8
@SIRFSOC_USBPHY_PLL_POWERDOWN = common dso_local global i32 0, align 4
@SIRFSOC_USBPHY_PLL_BYPASS = common dso_local global i32 0, align 4
@SIRFSOC_USBPHY_PLL_LOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @usb_pll_clk_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_pll_clk_enable(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %4 = load i64, i64* @sirfsoc_rsc_vbase, align 8
  %5 = load i64, i64* @SIRFSOC_USBPHY_PLL_CTRL, align 8
  %6 = add nsw i64 %4, %5
  %7 = call i32 @readl(i64 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* @SIRFSOC_USBPHY_PLL_POWERDOWN, align 4
  %9 = load i32, i32* @SIRFSOC_USBPHY_PLL_BYPASS, align 4
  %10 = or i32 %8, %9
  %11 = xor i32 %10, -1
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i64, i64* @sirfsoc_rsc_vbase, align 8
  %16 = load i64, i64* @SIRFSOC_USBPHY_PLL_CTRL, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @writel(i32 %14, i64 %17)
  br label %19

19:                                               ; preds = %28, %1
  %20 = load i64, i64* @sirfsoc_rsc_vbase, align 8
  %21 = load i64, i64* @SIRFSOC_USBPHY_PLL_CTRL, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @readl(i64 %22)
  %24 = load i32, i32* @SIRFSOC_USBPHY_PLL_LOCK, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = call i32 (...) @cpu_relax()
  br label %19

30:                                               ; preds = %19
  ret i32 0
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
