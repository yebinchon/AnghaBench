; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-tegra210.c_pllcx_check_defaults.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-tegra210.c_pllcx_check_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_clk_pll_params = type { i32 }

@PLLCX_MISC0_DEFAULT_VALUE = common dso_local global i32 0, align 4
@PLLCX_MISC0_RESET = common dso_local global i32 0, align 4
@clk_base = common dso_local global i32 0, align 4
@PLLCX_MISC0_WRITE_MASK = common dso_local global i32 0, align 4
@PLLCX_MISC1_DEFAULT_VALUE = common dso_local global i32 0, align 4
@PLLCX_MISC1_IDDQ = common dso_local global i32 0, align 4
@PLLCX_MISC1_WRITE_MASK = common dso_local global i32 0, align 4
@PLLCX_MISC2_DEFAULT_VALUE = common dso_local global i32 0, align 4
@PLLCX_MISC2_WRITE_MASK = common dso_local global i32 0, align 4
@PLLCX_MISC3_DEFAULT_VALUE = common dso_local global i32 0, align 4
@PLLCX_MISC3_WRITE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_clk_pll_params*)* @pllcx_check_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pllcx_check_defaults(%struct.tegra_clk_pll_params* %0) #0 {
  %2 = alloca %struct.tegra_clk_pll_params*, align 8
  %3 = alloca i32, align 4
  store %struct.tegra_clk_pll_params* %0, %struct.tegra_clk_pll_params** %2, align 8
  %4 = load i32, i32* @PLLCX_MISC0_DEFAULT_VALUE, align 4
  %5 = load i32, i32* @PLLCX_MISC0_RESET, align 4
  %6 = xor i32 %5, -1
  %7 = and i32 %4, %6
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* @clk_base, align 4
  %9 = load %struct.tegra_clk_pll_params*, %struct.tegra_clk_pll_params** %2, align 8
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @PLLCX_MISC0_WRITE_MASK, align 4
  %12 = call i32 @_pll_misc_chk_default(i32 %8, %struct.tegra_clk_pll_params* %9, i32 0, i32 %10, i32 %11)
  %13 = load i32, i32* @PLLCX_MISC1_DEFAULT_VALUE, align 4
  %14 = load i32, i32* @PLLCX_MISC1_IDDQ, align 4
  %15 = xor i32 %14, -1
  %16 = and i32 %13, %15
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* @clk_base, align 4
  %18 = load %struct.tegra_clk_pll_params*, %struct.tegra_clk_pll_params** %2, align 8
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @PLLCX_MISC1_WRITE_MASK, align 4
  %21 = call i32 @_pll_misc_chk_default(i32 %17, %struct.tegra_clk_pll_params* %18, i32 1, i32 %19, i32 %20)
  %22 = load i32, i32* @PLLCX_MISC2_DEFAULT_VALUE, align 4
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* @clk_base, align 4
  %24 = load %struct.tegra_clk_pll_params*, %struct.tegra_clk_pll_params** %2, align 8
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @PLLCX_MISC2_WRITE_MASK, align 4
  %27 = call i32 @_pll_misc_chk_default(i32 %23, %struct.tegra_clk_pll_params* %24, i32 2, i32 %25, i32 %26)
  %28 = load i32, i32* @PLLCX_MISC3_DEFAULT_VALUE, align 4
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* @clk_base, align 4
  %30 = load %struct.tegra_clk_pll_params*, %struct.tegra_clk_pll_params** %2, align 8
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @PLLCX_MISC3_WRITE_MASK, align 4
  %33 = call i32 @_pll_misc_chk_default(i32 %29, %struct.tegra_clk_pll_params* %30, i32 3, i32 %31, i32 %32)
  ret void
}

declare dso_local i32 @_pll_misc_chk_default(i32, %struct.tegra_clk_pll_params*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
