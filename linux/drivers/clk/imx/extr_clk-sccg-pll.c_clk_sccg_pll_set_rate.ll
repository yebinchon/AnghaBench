; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-sccg-pll.c_clk_sccg_pll_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-sccg-pll.c_clk_sccg_pll_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_sccg_pll = type { i64, %struct.clk_sccg_pll_setup }
%struct.clk_sccg_pll_setup = type { i32, i32, i32, i32, i32, i32 }

@PLL_CFG0 = common dso_local global i64 0, align 8
@SSCG_PLL_BYPASS_MASK = common dso_local global i32 0, align 4
@PLL_CFG2 = common dso_local global i64 0, align 8
@PLL_DIVF1_MASK = common dso_local global i32 0, align 4
@PLL_DIVF2_MASK = common dso_local global i32 0, align 4
@PLL_DIVR1_MASK = common dso_local global i32 0, align 4
@PLL_DIVR2_MASK = common dso_local global i32 0, align 4
@PLL_DIVQ_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @clk_sccg_pll_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_sccg_pll_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.clk_sccg_pll*, align 8
  %8 = alloca %struct.clk_sccg_pll_setup*, align 8
  %9 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %11 = call %struct.clk_sccg_pll* @to_clk_sccg_pll(%struct.clk_hw* %10)
  store %struct.clk_sccg_pll* %11, %struct.clk_sccg_pll** %7, align 8
  %12 = load %struct.clk_sccg_pll*, %struct.clk_sccg_pll** %7, align 8
  %13 = getelementptr inbounds %struct.clk_sccg_pll, %struct.clk_sccg_pll* %12, i32 0, i32 1
  store %struct.clk_sccg_pll_setup* %13, %struct.clk_sccg_pll_setup** %8, align 8
  %14 = load %struct.clk_sccg_pll*, %struct.clk_sccg_pll** %7, align 8
  %15 = getelementptr inbounds %struct.clk_sccg_pll, %struct.clk_sccg_pll* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @PLL_CFG0, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @readl(i64 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* @SSCG_PLL_BYPASS_MASK, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %9, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* @SSCG_PLL_BYPASS_MASK, align 4
  %25 = load %struct.clk_sccg_pll_setup*, %struct.clk_sccg_pll_setup** %8, align 8
  %26 = getelementptr inbounds %struct.clk_sccg_pll_setup, %struct.clk_sccg_pll_setup* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @FIELD_PREP(i32 %24, i32 %27)
  %29 = load i32, i32* %9, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.clk_sccg_pll*, %struct.clk_sccg_pll** %7, align 8
  %33 = getelementptr inbounds %struct.clk_sccg_pll, %struct.clk_sccg_pll* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @PLL_CFG0, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @writel(i32 %31, i64 %36)
  %38 = load %struct.clk_sccg_pll*, %struct.clk_sccg_pll** %7, align 8
  %39 = getelementptr inbounds %struct.clk_sccg_pll, %struct.clk_sccg_pll* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @PLL_CFG2, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @readl_relaxed(i64 %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* @PLL_DIVF1_MASK, align 4
  %45 = load i32, i32* @PLL_DIVF2_MASK, align 4
  %46 = or i32 %44, %45
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %9, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* @PLL_DIVR1_MASK, align 4
  %51 = load i32, i32* @PLL_DIVR2_MASK, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @PLL_DIVQ_MASK, align 4
  %54 = or i32 %52, %53
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %9, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* @PLL_DIVF1_MASK, align 4
  %59 = load %struct.clk_sccg_pll_setup*, %struct.clk_sccg_pll_setup** %8, align 8
  %60 = getelementptr inbounds %struct.clk_sccg_pll_setup, %struct.clk_sccg_pll_setup* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @FIELD_PREP(i32 %58, i32 %61)
  %63 = load i32, i32* %9, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* @PLL_DIVF2_MASK, align 4
  %66 = load %struct.clk_sccg_pll_setup*, %struct.clk_sccg_pll_setup** %8, align 8
  %67 = getelementptr inbounds %struct.clk_sccg_pll_setup, %struct.clk_sccg_pll_setup* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @FIELD_PREP(i32 %65, i32 %68)
  %70 = load i32, i32* %9, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* @PLL_DIVR1_MASK, align 4
  %73 = load %struct.clk_sccg_pll_setup*, %struct.clk_sccg_pll_setup** %8, align 8
  %74 = getelementptr inbounds %struct.clk_sccg_pll_setup, %struct.clk_sccg_pll_setup* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @FIELD_PREP(i32 %72, i32 %75)
  %77 = load i32, i32* %9, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* @PLL_DIVR2_MASK, align 4
  %80 = load %struct.clk_sccg_pll_setup*, %struct.clk_sccg_pll_setup** %8, align 8
  %81 = getelementptr inbounds %struct.clk_sccg_pll_setup, %struct.clk_sccg_pll_setup* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @FIELD_PREP(i32 %79, i32 %82)
  %84 = load i32, i32* %9, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* @PLL_DIVQ_MASK, align 4
  %87 = load %struct.clk_sccg_pll_setup*, %struct.clk_sccg_pll_setup** %8, align 8
  %88 = getelementptr inbounds %struct.clk_sccg_pll_setup, %struct.clk_sccg_pll_setup* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @FIELD_PREP(i32 %86, i32 %89)
  %91 = load i32, i32* %9, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %9, align 4
  %94 = load %struct.clk_sccg_pll*, %struct.clk_sccg_pll** %7, align 8
  %95 = getelementptr inbounds %struct.clk_sccg_pll, %struct.clk_sccg_pll* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @PLL_CFG2, align 8
  %98 = add nsw i64 %96, %97
  %99 = call i32 @writel_relaxed(i32 %93, i64 %98)
  %100 = load %struct.clk_sccg_pll*, %struct.clk_sccg_pll** %7, align 8
  %101 = call i32 @clk_sccg_pll_wait_lock(%struct.clk_sccg_pll* %100)
  ret i32 %101
}

declare dso_local %struct.clk_sccg_pll* @to_clk_sccg_pll(%struct.clk_hw*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @clk_sccg_pll_wait_lock(%struct.clk_sccg_pll*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
