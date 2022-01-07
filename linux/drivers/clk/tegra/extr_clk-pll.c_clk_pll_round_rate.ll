; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-pll.c_clk_pll_round_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-pll.c_clk_pll_round_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.tegra_clk_pll = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64, i64 (%struct.clk_hw*, %struct.tegra_clk_pll_freq_table*, i64, i64)* }
%struct.tegra_clk_pll_freq_table = type { i64 }

@TEGRA_PLL_FIXED = common dso_local global i32 0, align 4
@TEGRA_PLLM = common dso_local global i32 0, align 4
@TEGRA_PLLMB = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64, i64*)* @clk_pll_round_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clk_pll_round_rate(%struct.clk_hw* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.tegra_clk_pll*, align 8
  %9 = alloca %struct.tegra_clk_pll_freq_table, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %11 = call %struct.tegra_clk_pll* @to_clk_pll(%struct.clk_hw* %10)
  store %struct.tegra_clk_pll* %11, %struct.tegra_clk_pll** %8, align 8
  %12 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %8, align 8
  %13 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @TEGRA_PLL_FIXED, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %40

20:                                               ; preds = %3
  %21 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %8, align 8
  %22 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @TEGRA_PLLM, align 4
  %27 = load i32, i32* @TEGRA_PLLMB, align 4
  %28 = or i32 %26, %27
  %29 = and i32 %25, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %20
  %32 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %33 = call i64 @clk_hw_get_rate(%struct.clk_hw* %32)
  store i64 %33, i64* %4, align 8
  br label %65

34:                                               ; preds = %20
  %35 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %8, align 8
  %36 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %4, align 8
  br label %65

40:                                               ; preds = %3
  %41 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %42 = load i64, i64* %6, align 8
  %43 = load i64*, i64** %7, align 8
  %44 = load i64, i64* %43, align 8
  %45 = call i64 @_get_table_rate(%struct.clk_hw* %41, %struct.tegra_clk_pll_freq_table* %9, i64 %42, i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %62

47:                                               ; preds = %40
  %48 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %8, align 8
  %49 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  %52 = load i64 (%struct.clk_hw*, %struct.tegra_clk_pll_freq_table*, i64, i64)*, i64 (%struct.clk_hw*, %struct.tegra_clk_pll_freq_table*, i64, i64)** %51, align 8
  %53 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %54 = load i64, i64* %6, align 8
  %55 = load i64*, i64** %7, align 8
  %56 = load i64, i64* %55, align 8
  %57 = call i64 %52(%struct.clk_hw* %53, %struct.tegra_clk_pll_freq_table* %9, i64 %54, i64 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %47
  %60 = load i64, i64* @EINVAL, align 8
  %61 = sub nsw i64 0, %60
  store i64 %61, i64* %4, align 8
  br label %65

62:                                               ; preds = %47, %40
  %63 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, %struct.tegra_clk_pll_freq_table* %9, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %4, align 8
  br label %65

65:                                               ; preds = %62, %59, %34, %31
  %66 = load i64, i64* %4, align 8
  ret i64 %66
}

declare dso_local %struct.tegra_clk_pll* @to_clk_pll(%struct.clk_hw*) #1

declare dso_local i64 @clk_hw_get_rate(%struct.clk_hw*) #1

declare dso_local i64 @_get_table_rate(%struct.clk_hw*, %struct.tegra_clk_pll_freq_table*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
