; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-davinci/extr_board-dm365-evm.c_dm365evm_emac_configure.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-davinci/extr_board-dm365-evm.c_dm365evm_emac_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DM365_EMAC_TX_EN = common dso_local global i32 0, align 4
@DM365_EMAC_TX_CLK = common dso_local global i32 0, align 4
@DM365_EMAC_COL = common dso_local global i32 0, align 4
@DM365_EMAC_TXD3 = common dso_local global i32 0, align 4
@DM365_EMAC_TXD2 = common dso_local global i32 0, align 4
@DM365_EMAC_TXD1 = common dso_local global i32 0, align 4
@DM365_EMAC_TXD0 = common dso_local global i32 0, align 4
@DM365_EMAC_RXD3 = common dso_local global i32 0, align 4
@DM365_EMAC_RXD2 = common dso_local global i32 0, align 4
@DM365_EMAC_RXD1 = common dso_local global i32 0, align 4
@DM365_EMAC_RXD0 = common dso_local global i32 0, align 4
@DM365_EMAC_RX_CLK = common dso_local global i32 0, align 4
@DM365_EMAC_RX_DV = common dso_local global i32 0, align 4
@DM365_EMAC_RX_ER = common dso_local global i32 0, align 4
@DM365_EMAC_CRS = common dso_local global i32 0, align 4
@DM365_EMAC_MDIO = common dso_local global i32 0, align 4
@DM365_EMAC_MDCLK = common dso_local global i32 0, align 4
@DM365_INT_EMAC_RXTHRESH = common dso_local global i32 0, align 4
@DM365_INT_EMAC_RXPULSE = common dso_local global i32 0, align 4
@DM365_INT_EMAC_TXPULSE = common dso_local global i32 0, align 4
@DM365_INT_EMAC_MISCPULSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @dm365evm_emac_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dm365evm_emac_configure() #0 {
  %1 = load i32, i32* @DM365_EMAC_TX_EN, align 4
  %2 = call i32 @davinci_cfg_reg(i32 %1)
  %3 = load i32, i32* @DM365_EMAC_TX_CLK, align 4
  %4 = call i32 @davinci_cfg_reg(i32 %3)
  %5 = load i32, i32* @DM365_EMAC_COL, align 4
  %6 = call i32 @davinci_cfg_reg(i32 %5)
  %7 = load i32, i32* @DM365_EMAC_TXD3, align 4
  %8 = call i32 @davinci_cfg_reg(i32 %7)
  %9 = load i32, i32* @DM365_EMAC_TXD2, align 4
  %10 = call i32 @davinci_cfg_reg(i32 %9)
  %11 = load i32, i32* @DM365_EMAC_TXD1, align 4
  %12 = call i32 @davinci_cfg_reg(i32 %11)
  %13 = load i32, i32* @DM365_EMAC_TXD0, align 4
  %14 = call i32 @davinci_cfg_reg(i32 %13)
  %15 = load i32, i32* @DM365_EMAC_RXD3, align 4
  %16 = call i32 @davinci_cfg_reg(i32 %15)
  %17 = load i32, i32* @DM365_EMAC_RXD2, align 4
  %18 = call i32 @davinci_cfg_reg(i32 %17)
  %19 = load i32, i32* @DM365_EMAC_RXD1, align 4
  %20 = call i32 @davinci_cfg_reg(i32 %19)
  %21 = load i32, i32* @DM365_EMAC_RXD0, align 4
  %22 = call i32 @davinci_cfg_reg(i32 %21)
  %23 = load i32, i32* @DM365_EMAC_RX_CLK, align 4
  %24 = call i32 @davinci_cfg_reg(i32 %23)
  %25 = load i32, i32* @DM365_EMAC_RX_DV, align 4
  %26 = call i32 @davinci_cfg_reg(i32 %25)
  %27 = load i32, i32* @DM365_EMAC_RX_ER, align 4
  %28 = call i32 @davinci_cfg_reg(i32 %27)
  %29 = load i32, i32* @DM365_EMAC_CRS, align 4
  %30 = call i32 @davinci_cfg_reg(i32 %29)
  %31 = load i32, i32* @DM365_EMAC_MDIO, align 4
  %32 = call i32 @davinci_cfg_reg(i32 %31)
  %33 = load i32, i32* @DM365_EMAC_MDCLK, align 4
  %34 = call i32 @davinci_cfg_reg(i32 %33)
  %35 = load i32, i32* @DM365_INT_EMAC_RXTHRESH, align 4
  %36 = call i32 @davinci_cfg_reg(i32 %35)
  %37 = load i32, i32* @DM365_INT_EMAC_RXPULSE, align 4
  %38 = call i32 @davinci_cfg_reg(i32 %37)
  %39 = load i32, i32* @DM365_INT_EMAC_TXPULSE, align 4
  %40 = call i32 @davinci_cfg_reg(i32 %39)
  %41 = load i32, i32* @DM365_INT_EMAC_MISCPULSE, align 4
  %42 = call i32 @davinci_cfg_reg(i32 %41)
  ret void
}

declare dso_local i32 @davinci_cfg_reg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
