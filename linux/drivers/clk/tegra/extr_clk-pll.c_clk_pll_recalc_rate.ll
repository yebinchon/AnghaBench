; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-pll.c_clk_pll_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-pll.c_clk_pll_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.tegra_clk_pll = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64, i32 (%struct.tegra_clk_pll_freq_table*)* }
%struct.tegra_clk_pll_freq_table = type { i32, i64, i32 }

@TEGRA_PLL_BYPASS = common dso_local global i32 0, align 4
@PLL_BASE_BYPASS = common dso_local global i32 0, align 4
@TEGRA_PLL_FIXED = common dso_local global i32 0, align 4
@TEGRA_PLLM = common dso_local global i32 0, align 4
@TEGRA_PLLMB = common dso_local global i32 0, align 4
@PLL_BASE_OVERRIDE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Clock %s has unknown fixed frequency\0A\00", align 1
@TEGRA_PLL_VCO_OUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Clock %s has invalid pdiv value : 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @clk_pll_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clk_pll_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.tegra_clk_pll*, align 8
  %7 = alloca %struct.tegra_clk_pll_freq_table, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.tegra_clk_pll_freq_table, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %13 = call %struct.tegra_clk_pll* @to_clk_pll(%struct.clk_hw* %12)
  store %struct.tegra_clk_pll* %13, %struct.tegra_clk_pll** %6, align 8
  %14 = load i64, i64* %5, align 8
  store i64 %14, i64* %9, align 8
  %15 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %6, align 8
  %16 = call i32 @pll_readl_base(%struct.tegra_clk_pll* %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %6, align 8
  %18 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @TEGRA_PLL_BYPASS, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %2
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @PLL_BASE_BYPASS, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i64, i64* %5, align 8
  store i64 %31, i64* %3, align 8
  br label %132

32:                                               ; preds = %25, %2
  %33 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %6, align 8
  %34 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @TEGRA_PLL_FIXED, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %78

41:                                               ; preds = %32
  %42 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %6, align 8
  %43 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @TEGRA_PLLM, align 4
  %48 = load i32, i32* @TEGRA_PLLMB, align 4
  %49 = or i32 %47, %48
  %50 = and i32 %46, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %78, label %52

52:                                               ; preds = %41
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @PLL_BASE_OVERRIDE, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %78, label %57

57:                                               ; preds = %52
  %58 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %59 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %6, align 8
  %60 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %5, align 8
  %65 = call i64 @_get_table_rate(%struct.clk_hw* %58, %struct.tegra_clk_pll_freq_table* %11, i64 %63, i64 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %57
  %68 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %69 = call i32 @clk_hw_get_name(%struct.clk_hw* %68)
  %70 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %69)
  %71 = call i32 (...) @BUG()
  br label %72

72:                                               ; preds = %67, %57
  %73 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %6, align 8
  %74 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %3, align 8
  br label %132

78:                                               ; preds = %52, %41, %32
  %79 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %6, align 8
  %80 = call i32 @_get_pll_mnp(%struct.tegra_clk_pll* %79, %struct.tegra_clk_pll_freq_table* %7)
  %81 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %6, align 8
  %82 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %81, i32 0, i32 0
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @TEGRA_PLL_VCO_OUT, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %78
  store i32 1, i32* %10, align 4
  br label %104

90:                                               ; preds = %78
  %91 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %92 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, %struct.tegra_clk_pll_freq_table* %7, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @_hw_to_p_div(%struct.clk_hw* %91, i32 %93)
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %10, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %90
  %98 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %99 = call i32 @clk_hw_get_name(%struct.clk_hw* %98)
  %100 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, %struct.tegra_clk_pll_freq_table* %7, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %99, i32 %101)
  store i32 1, i32* %10, align 4
  br label %103

103:                                              ; preds = %97, %90
  br label %104

104:                                              ; preds = %103, %89
  %105 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %6, align 8
  %106 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %105, i32 0, i32 0
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 2
  %109 = load i32 (%struct.tegra_clk_pll_freq_table*)*, i32 (%struct.tegra_clk_pll_freq_table*)** %108, align 8
  %110 = icmp ne i32 (%struct.tegra_clk_pll_freq_table*)* %109, null
  br i1 %110, label %111, label %118

111:                                              ; preds = %104
  %112 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %6, align 8
  %113 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %112, i32 0, i32 0
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 2
  %116 = load i32 (%struct.tegra_clk_pll_freq_table*)*, i32 (%struct.tegra_clk_pll_freq_table*)** %115, align 8
  %117 = call i32 %116(%struct.tegra_clk_pll_freq_table* %7)
  br label %118

118:                                              ; preds = %111, %104
  %119 = load i32, i32* %10, align 4
  %120 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, %struct.tegra_clk_pll_freq_table* %7, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = mul nsw i32 %121, %119
  store i32 %122, i32* %120, align 8
  %123 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, %struct.tegra_clk_pll_freq_table* %7, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* %9, align 8
  %126 = mul i64 %125, %124
  store i64 %126, i64* %9, align 8
  %127 = load i64, i64* %9, align 8
  %128 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, %struct.tegra_clk_pll_freq_table* %7, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @do_div(i64 %127, i32 %129)
  %131 = load i64, i64* %9, align 8
  store i64 %131, i64* %3, align 8
  br label %132

132:                                              ; preds = %118, %72, %30
  %133 = load i64, i64* %3, align 8
  ret i64 %133
}

declare dso_local %struct.tegra_clk_pll* @to_clk_pll(%struct.clk_hw*) #1

declare dso_local i32 @pll_readl_base(%struct.tegra_clk_pll*) #1

declare dso_local i64 @_get_table_rate(%struct.clk_hw*, %struct.tegra_clk_pll_freq_table*, i64, i64) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @clk_hw_get_name(%struct.clk_hw*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @_get_pll_mnp(%struct.tegra_clk_pll*, %struct.tegra_clk_pll_freq_table*) #1

declare dso_local i32 @_hw_to_p_div(%struct.clk_hw*, i32) #1

declare dso_local i32 @WARN(i32, i8*, i32, i32) #1

declare dso_local i32 @do_div(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
