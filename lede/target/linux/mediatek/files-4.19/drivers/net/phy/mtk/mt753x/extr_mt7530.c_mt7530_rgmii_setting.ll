; ModuleID = '/home/carl/AnghaBench/lede/target/linux/mediatek/files-4.19/drivers/net/phy/mtk/mt753x/extr_mt7530.c_mt7530_rgmii_setting.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/mediatek/files-4.19/drivers/net/phy/mtk/mt753x/extr_mt7530.c_mt7530_rgmii_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsw_mt753x = type { i32 }

@CORE_PLL_GROUP5 = common dso_local global i32 0, align 4
@CORE_PLL_GROUP6 = common dso_local global i32 0, align 4
@CORE_PLL_GROUP10 = common dso_local global i32 0, align 4
@CORE_PLL_GROUP11 = common dso_local global i32 0, align 4
@TRGMII_TXCTRL = common dso_local global i32 0, align 4
@TXC_INV = common dso_local global i32 0, align 4
@TRGMII_TCK_CTRL = common dso_local global i32 0, align 4
@TX_TAP_S = common dso_local global i32 0, align 4
@TX_TRAIN_WD_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gsw_mt753x*)* @mt7530_rgmii_setting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt7530_rgmii_setting(%struct.gsw_mt753x* %0) #0 {
  %2 = alloca %struct.gsw_mt753x*, align 8
  %3 = alloca i32, align 4
  store %struct.gsw_mt753x* %0, %struct.gsw_mt753x** %2, align 8
  %4 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %5 = load i32, i32* @CORE_PLL_GROUP5, align 4
  %6 = call i32 @mt7530_core_reg_write(%struct.gsw_mt753x* %4, i32 %5, i32 3200)
  %7 = call i32 @mdelay(i32 1)
  %8 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %9 = load i32, i32* @CORE_PLL_GROUP6, align 4
  %10 = call i32 @mt7530_core_reg_write(%struct.gsw_mt753x* %8, i32 %9, i32 0)
  %11 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %12 = load i32, i32* @CORE_PLL_GROUP10, align 4
  %13 = call i32 @mt7530_core_reg_write(%struct.gsw_mt753x* %11, i32 %12, i32 135)
  %14 = call i32 @mdelay(i32 1)
  %15 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %16 = load i32, i32* @CORE_PLL_GROUP11, align 4
  %17 = call i32 @mt7530_core_reg_write(%struct.gsw_mt753x* %15, i32 %16, i32 135)
  %18 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %19 = load i32, i32* @TRGMII_TXCTRL, align 4
  %20 = call i32 @mt753x_reg_read(%struct.gsw_mt753x* %18, i32 %19)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* @TXC_INV, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %3, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %3, align 4
  %25 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %26 = load i32, i32* @TRGMII_TXCTRL, align 4
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @mt753x_reg_write(%struct.gsw_mt753x* %25, i32 %26, i32 %27)
  %29 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %30 = load i32, i32* @TRGMII_TCK_CTRL, align 4
  %31 = load i32, i32* @TX_TAP_S, align 4
  %32 = shl i32 8, %31
  %33 = load i32, i32* @TX_TRAIN_WD_S, align 4
  %34 = shl i32 85, %33
  %35 = or i32 %32, %34
  %36 = call i32 @mt753x_reg_write(%struct.gsw_mt753x* %29, i32 %30, i32 %35)
  ret void
}

declare dso_local i32 @mt7530_core_reg_write(%struct.gsw_mt753x*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @mt753x_reg_read(%struct.gsw_mt753x*, i32) #1

declare dso_local i32 @mt753x_reg_write(%struct.gsw_mt753x*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
