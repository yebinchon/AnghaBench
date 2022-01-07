; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-tegra210.c_pllx_check_defaults.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-tegra210.c_pllx_check_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_clk_pll = type { i32 }

@PLLX_MISC0_DEFAULT_VALUE = common dso_local global i32 0, align 4
@clk_base = common dso_local global i32 0, align 4
@PLLX_MISC0_WRITE_MASK = common dso_local global i32 0, align 4
@PLLX_MISC0_LOCK_ENABLE = common dso_local global i32 0, align 4
@PLLX_MISC1_DEFAULT_VALUE = common dso_local global i32 0, align 4
@PLLX_MISC1_WRITE_MASK = common dso_local global i32 0, align 4
@PLLX_MISC2_DEFAULT_VALUE = common dso_local global i32 0, align 4
@PLLX_MISC2_EN_DYNRAMP = common dso_local global i32 0, align 4
@PLLX_MISC3_DEFAULT_VALUE = common dso_local global i32 0, align 4
@PLLX_MISC3_IDDQ = common dso_local global i32 0, align 4
@PLLX_MISC3_WRITE_MASK = common dso_local global i32 0, align 4
@PLLX_MISC4_DEFAULT_VALUE = common dso_local global i32 0, align 4
@PLLX_MISC4_WRITE_MASK = common dso_local global i32 0, align 4
@PLLX_MISC5_DEFAULT_VALUE = common dso_local global i32 0, align 4
@PLLX_MISC5_WRITE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_clk_pll*)* @pllx_check_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pllx_check_defaults(%struct.tegra_clk_pll* %0) #0 {
  %2 = alloca %struct.tegra_clk_pll*, align 8
  %3 = alloca i32, align 4
  store %struct.tegra_clk_pll* %0, %struct.tegra_clk_pll** %2, align 8
  %4 = load i32, i32* @PLLX_MISC0_DEFAULT_VALUE, align 4
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* @clk_base, align 4
  %6 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %2, align 8
  %7 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @PLLX_MISC0_WRITE_MASK, align 4
  %11 = load i32, i32* @PLLX_MISC0_LOCK_ENABLE, align 4
  %12 = xor i32 %11, -1
  %13 = and i32 %10, %12
  %14 = call i32 @_pll_misc_chk_default(i32 %5, i32 %8, i32 0, i32 %9, i32 %13)
  %15 = load i32, i32* @PLLX_MISC1_DEFAULT_VALUE, align 4
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* @clk_base, align 4
  %17 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %2, align 8
  %18 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @PLLX_MISC1_WRITE_MASK, align 4
  %22 = call i32 @_pll_misc_chk_default(i32 %16, i32 %19, i32 1, i32 %20, i32 %21)
  %23 = load i32, i32* @PLLX_MISC2_DEFAULT_VALUE, align 4
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* @clk_base, align 4
  %25 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %2, align 8
  %26 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @PLLX_MISC2_EN_DYNRAMP, align 4
  %30 = call i32 @_pll_misc_chk_default(i32 %24, i32 %27, i32 2, i32 %28, i32 %29)
  %31 = load i32, i32* @PLLX_MISC3_DEFAULT_VALUE, align 4
  %32 = load i32, i32* @PLLX_MISC3_IDDQ, align 4
  %33 = xor i32 %32, -1
  %34 = and i32 %31, %33
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* @clk_base, align 4
  %36 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %2, align 8
  %37 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @PLLX_MISC3_WRITE_MASK, align 4
  %41 = call i32 @_pll_misc_chk_default(i32 %35, i32 %38, i32 3, i32 %39, i32 %40)
  %42 = load i32, i32* @PLLX_MISC4_DEFAULT_VALUE, align 4
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* @clk_base, align 4
  %44 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %2, align 8
  %45 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @PLLX_MISC4_WRITE_MASK, align 4
  %49 = call i32 @_pll_misc_chk_default(i32 %43, i32 %46, i32 4, i32 %47, i32 %48)
  %50 = load i32, i32* @PLLX_MISC5_DEFAULT_VALUE, align 4
  store i32 %50, i32* %3, align 4
  %51 = load i32, i32* @clk_base, align 4
  %52 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %2, align 8
  %53 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* @PLLX_MISC5_WRITE_MASK, align 4
  %57 = call i32 @_pll_misc_chk_default(i32 %51, i32 %54, i32 5, i32 %55, i32 %56)
  ret void
}

declare dso_local i32 @_pll_misc_chk_default(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
