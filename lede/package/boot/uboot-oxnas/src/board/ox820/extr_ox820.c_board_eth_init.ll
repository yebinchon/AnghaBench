; ModuleID = '/home/carl/AnghaBench/lede/package/boot/uboot-oxnas/src/board/ox820/extr_ox820.c_board_eth_init.c'
source_filename = "/home/carl/AnghaBench/lede/package/boot/uboot-oxnas/src/board/ox820/extr_ox820.c_board_eth_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PINMUX_BANK_MFA = common dso_local global i32 0, align 4
@PINMUX_MACA_MDC = common dso_local global i32 0, align 4
@PINMUX_MACA_MDIO = common dso_local global i32 0, align 4
@SYS_CTRL_RST_MAC = common dso_local global i32 0, align 4
@SYS_CTRL_CLK_MAC = common dso_local global i32 0, align 4
@SYS_CTRL_GMAC_CTRL = common dso_local global i32 0, align 4
@SYS_CTRL_GMAC_SIMPLE_MUX = common dso_local global i32 0, align 4
@SYS_CTRL_GMAC_CKEN_GTX = common dso_local global i32 0, align 4
@SYS_CTRL_GMAC_AUTOSPEED = common dso_local global i32 0, align 4
@MAC_BASE = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_RGMII = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @board_eth_init(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i32, i32* @PINMUX_BANK_MFA, align 4
  %5 = load i32, i32* @PINMUX_MACA_MDC, align 4
  %6 = call i32 @pinmux_set(i32 %4, i32 3, i32 %5)
  %7 = load i32, i32* @PINMUX_BANK_MFA, align 4
  %8 = load i32, i32* @PINMUX_MACA_MDIO, align 4
  %9 = call i32 @pinmux_set(i32 %7, i32 4, i32 %8)
  %10 = load i32, i32* @SYS_CTRL_RST_MAC, align 4
  %11 = call i32 @reset_block(i32 %10, i32 1)
  %12 = call i32 @udelay(i32 10)
  %13 = load i32, i32* @SYS_CTRL_RST_MAC, align 4
  %14 = call i32 @reset_block(i32 %13, i32 0)
  %15 = load i32, i32* @SYS_CTRL_CLK_MAC, align 4
  %16 = call i32 @enable_clock(i32 %15)
  %17 = load i32, i32* @SYS_CTRL_GMAC_CTRL, align 4
  %18 = call i32 @readl(i32 %17)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* @SYS_CTRL_GMAC_SIMPLE_MUX, align 4
  %20 = call i32 @BIT(i32 %19)
  %21 = load i32, i32* %3, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* @SYS_CTRL_GMAC_CKEN_GTX, align 4
  %24 = call i32 @BIT(i32 %23)
  %25 = load i32, i32* %3, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* @SYS_CTRL_GMAC_AUTOSPEED, align 4
  %28 = call i32 @BIT(i32 %27)
  %29 = load i32, i32* %3, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @SYS_CTRL_GMAC_CTRL, align 4
  %33 = call i32 @writel(i32 %31, i32 %32)
  %34 = load i32, i32* @MAC_BASE, align 4
  %35 = load i32, i32* @PHY_INTERFACE_MODE_RGMII, align 4
  %36 = call i32 @designware_initialize(i32 %34, i32 %35)
  ret i32 %36
}

declare dso_local i32 @pinmux_set(i32, i32, i32) #1

declare dso_local i32 @reset_block(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @enable_clock(i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @designware_initialize(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
