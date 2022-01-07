; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-pll.c_clk_pll_is_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-pll.c_clk_pll_is_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.tegra_clk_pll = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@TEGRA_PLLM = common dso_local global i32 0, align 4
@PMC_PLLP_WB0_OVERRIDE = common dso_local global i64 0, align 8
@PMC_PLLP_WB0_OVERRIDE_PLLM_OVERRIDE = common dso_local global i32 0, align 4
@PMC_PLLP_WB0_OVERRIDE_PLLM_ENABLE = common dso_local global i32 0, align 4
@PLL_BASE_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @clk_pll_is_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_pll_is_enabled(%struct.clk_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.tegra_clk_pll*, align 8
  %5 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  %6 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %7 = call %struct.tegra_clk_pll* @to_clk_pll(%struct.clk_hw* %6)
  store %struct.tegra_clk_pll* %7, %struct.tegra_clk_pll** %4, align 8
  %8 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %4, align 8
  %9 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @TEGRA_PLLM, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %1
  %17 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %4, align 8
  %18 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PMC_PLLP_WB0_OVERRIDE, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @readl_relaxed(i64 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @PMC_PLLP_WB0_OVERRIDE_PLLM_OVERRIDE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %16
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @PMC_PLLP_WB0_OVERRIDE_PLLM_ENABLE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 1, i32 0
  store i32 %33, i32* %2, align 4
  br label %44

34:                                               ; preds = %16
  br label %35

35:                                               ; preds = %34, %1
  %36 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %4, align 8
  %37 = call i32 @pll_readl_base(%struct.tegra_clk_pll* %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @PLL_BASE_ENABLE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 1, i32 0
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %35, %27
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local %struct.tegra_clk_pll* @to_clk_pll(%struct.clk_hw*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @pll_readl_base(%struct.tegra_clk_pll*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
