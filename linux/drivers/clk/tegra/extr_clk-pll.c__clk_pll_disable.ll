; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-pll.c__clk_pll_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-pll.c__clk_pll_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.tegra_clk_pll = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i64, i32, i64, i32 }

@TEGRA_PLL_BYPASS = common dso_local global i32 0, align 4
@PLL_BASE_BYPASS = common dso_local global i32 0, align 4
@PLL_BASE_ENABLE = common dso_local global i32 0, align 4
@TEGRA_PLLM = common dso_local global i32 0, align 4
@PMC_PLLP_WB0_OVERRIDE = common dso_local global i64 0, align 8
@PMC_PLLP_WB0_OVERRIDE_PLLM_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_hw*)* @_clk_pll_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_clk_pll_disable(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.tegra_clk_pll*, align 8
  %4 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %5 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %6 = call %struct.tegra_clk_pll* @to_clk_pll(%struct.clk_hw* %5)
  store %struct.tegra_clk_pll* %6, %struct.tegra_clk_pll** %3, align 8
  %7 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %3, align 8
  %8 = call i32 @pll_readl_base(%struct.tegra_clk_pll* %7)
  store i32 %8, i32* %4, align 4
  %9 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %3, align 8
  %10 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @TEGRA_PLL_BYPASS, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load i32, i32* @PLL_BASE_BYPASS, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %17, %1
  %23 = load i32, i32* @PLL_BASE_ENABLE, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %4, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %3, align 8
  %29 = call i32 @pll_writel_base(i32 %27, %struct.tegra_clk_pll* %28)
  %30 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %3, align 8
  %31 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @TEGRA_PLLM, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %56

38:                                               ; preds = %22
  %39 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %3, align 8
  %40 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @PMC_PLLP_WB0_OVERRIDE, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @readl_relaxed(i64 %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* @PMC_PLLP_WB0_OVERRIDE_PLLM_ENABLE, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %4, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %3, align 8
  %51 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @PMC_PLLP_WB0_OVERRIDE, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @writel_relaxed(i32 %49, i64 %54)
  br label %56

56:                                               ; preds = %38, %22
  %57 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %3, align 8
  %58 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %87

63:                                               ; preds = %56
  %64 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %3, align 8
  %65 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %3, align 8
  %70 = call i32 @pll_readl(i64 %68, %struct.tegra_clk_pll* %69)
  store i32 %70, i32* %4, align 4
  %71 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %3, align 8
  %72 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @BIT(i32 %75)
  %77 = load i32, i32* %4, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* %4, align 4
  %80 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %3, align 8
  %81 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %3, align 8
  %86 = call i32 @pll_writel(i32 %79, i64 %84, %struct.tegra_clk_pll* %85)
  br label %87

87:                                               ; preds = %63, %56
  %88 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %3, align 8
  %89 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %88, i32 0, i32 0
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %119

94:                                               ; preds = %87
  %95 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %3, align 8
  %96 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %95, i32 0, i32 0
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %3, align 8
  %101 = call i32 @pll_readl(i64 %99, %struct.tegra_clk_pll* %100)
  store i32 %101, i32* %4, align 4
  %102 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %3, align 8
  %103 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %102, i32 0, i32 0
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @BIT(i32 %106)
  %108 = load i32, i32* %4, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %4, align 4
  %110 = load i32, i32* %4, align 4
  %111 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %3, align 8
  %112 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %111, i32 0, i32 0
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %3, align 8
  %117 = call i32 @pll_writel(i32 %110, i64 %115, %struct.tegra_clk_pll* %116)
  %118 = call i32 @udelay(i32 2)
  br label %119

119:                                              ; preds = %94, %87
  ret void
}

declare dso_local %struct.tegra_clk_pll* @to_clk_pll(%struct.clk_hw*) #1

declare dso_local i32 @pll_readl_base(%struct.tegra_clk_pll*) #1

declare dso_local i32 @pll_writel_base(i32, %struct.tegra_clk_pll*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @pll_readl(i64, %struct.tegra_clk_pll*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @pll_writel(i32, i64, %struct.tegra_clk_pll*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
