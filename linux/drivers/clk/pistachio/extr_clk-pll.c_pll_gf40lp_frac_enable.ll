; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/pistachio/extr_clk-pll.c_pll_gf40lp_frac_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/pistachio/extr_clk-pll.c_pll_gf40lp_frac_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.pistachio_clk_pll = type { i32 }

@PLL_CTRL3 = common dso_local global i32 0, align 4
@PLL_FRAC_CTRL3_PD = common dso_local global i32 0, align 4
@PLL_FRAC_CTRL3_FOUTPOSTDIVPD = common dso_local global i32 0, align 4
@PLL_FRAC_CTRL3_FOUT4PHASEPD = common dso_local global i32 0, align 4
@PLL_FRAC_CTRL3_FOUTVCOPD = common dso_local global i32 0, align 4
@PLL_CTRL4 = common dso_local global i32 0, align 4
@PLL_FRAC_CTRL4_BYPASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @pll_gf40lp_frac_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pll_gf40lp_frac_enable(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.pistachio_clk_pll*, align 8
  %4 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %5 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %6 = call %struct.pistachio_clk_pll* @to_pistachio_pll(%struct.clk_hw* %5)
  store %struct.pistachio_clk_pll* %6, %struct.pistachio_clk_pll** %3, align 8
  %7 = load %struct.pistachio_clk_pll*, %struct.pistachio_clk_pll** %3, align 8
  %8 = load i32, i32* @PLL_CTRL3, align 4
  %9 = call i32 @pll_readl(%struct.pistachio_clk_pll* %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* @PLL_FRAC_CTRL3_PD, align 4
  %11 = load i32, i32* @PLL_FRAC_CTRL3_FOUTPOSTDIVPD, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @PLL_FRAC_CTRL3_FOUT4PHASEPD, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @PLL_FRAC_CTRL3_FOUTVCOPD, align 4
  %16 = or i32 %14, %15
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %4, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %4, align 4
  %20 = load %struct.pistachio_clk_pll*, %struct.pistachio_clk_pll** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @PLL_CTRL3, align 4
  %23 = call i32 @pll_writel(%struct.pistachio_clk_pll* %20, i32 %21, i32 %22)
  %24 = load %struct.pistachio_clk_pll*, %struct.pistachio_clk_pll** %3, align 8
  %25 = load i32, i32* @PLL_CTRL4, align 4
  %26 = call i32 @pll_readl(%struct.pistachio_clk_pll* %24, i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* @PLL_FRAC_CTRL4_BYPASS, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %4, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %4, align 4
  %31 = load %struct.pistachio_clk_pll*, %struct.pistachio_clk_pll** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @PLL_CTRL4, align 4
  %34 = call i32 @pll_writel(%struct.pistachio_clk_pll* %31, i32 %32, i32 %33)
  %35 = load %struct.pistachio_clk_pll*, %struct.pistachio_clk_pll** %3, align 8
  %36 = call i32 @pll_lock(%struct.pistachio_clk_pll* %35)
  ret i32 0
}

declare dso_local %struct.pistachio_clk_pll* @to_pistachio_pll(%struct.clk_hw*) #1

declare dso_local i32 @pll_readl(%struct.pistachio_clk_pll*, i32) #1

declare dso_local i32 @pll_writel(%struct.pistachio_clk_pll*, i32, i32) #1

declare dso_local i32 @pll_lock(%struct.pistachio_clk_pll*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
