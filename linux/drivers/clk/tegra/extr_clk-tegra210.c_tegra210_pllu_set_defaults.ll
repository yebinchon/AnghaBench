; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-tegra210.c_tegra210_pllu_set_defaults.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-tegra210.c_tegra210_pllu_set_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_clk_pll_params = type { i32, i64*, i64 }

@clk_base = common dso_local global i64 0, align 8
@PLL_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"PLL_U already enabled. Postponing set full defaults\0A\00", align 1
@PLLU_MISC0_LOCK_ENABLE = common dso_local global i32 0, align 4
@PLLU_MISC0_DEFAULT_VALUE = common dso_local global i32 0, align 4
@PLLU_MISC1_LOCK_OVERRIDE = common dso_local global i32 0, align 4
@PLLU_MISC1_DEFAULT_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_clk_pll_params*)* @tegra210_pllu_set_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra210_pllu_set_defaults(%struct.tegra_clk_pll_params* %0) #0 {
  %2 = alloca %struct.tegra_clk_pll_params*, align 8
  %3 = alloca i32, align 4
  store %struct.tegra_clk_pll_params* %0, %struct.tegra_clk_pll_params** %2, align 8
  %4 = load i64, i64* @clk_base, align 8
  %5 = load %struct.tegra_clk_pll_params*, %struct.tegra_clk_pll_params** %2, align 8
  %6 = getelementptr inbounds %struct.tegra_clk_pll_params, %struct.tegra_clk_pll_params* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = add nsw i64 %4, %7
  %9 = call i32 @readl_relaxed(i64 %8)
  store i32 %9, i32* %3, align 4
  %10 = load %struct.tegra_clk_pll_params*, %struct.tegra_clk_pll_params** %2, align 8
  %11 = getelementptr inbounds %struct.tegra_clk_pll_params, %struct.tegra_clk_pll_params* %10, i32 0, i32 0
  store i32 1, i32* %11, align 8
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @PLL_ENABLE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %79

16:                                               ; preds = %1
  %17 = load %struct.tegra_clk_pll_params*, %struct.tegra_clk_pll_params** %2, align 8
  %18 = call i32 @pllu_check_defaults(%struct.tegra_clk_pll_params* %17, i32 0)
  %19 = load %struct.tegra_clk_pll_params*, %struct.tegra_clk_pll_params** %2, align 8
  %20 = getelementptr inbounds %struct.tegra_clk_pll_params, %struct.tegra_clk_pll_params* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %16
  %24 = call i32 @pr_warn(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %16
  %26 = load i64, i64* @clk_base, align 8
  %27 = load %struct.tegra_clk_pll_params*, %struct.tegra_clk_pll_params** %2, align 8
  %28 = getelementptr inbounds %struct.tegra_clk_pll_params, %struct.tegra_clk_pll_params* %27, i32 0, i32 1
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %26, %31
  %33 = call i32 @readl_relaxed(i64 %32)
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* @PLLU_MISC0_LOCK_ENABLE, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %3, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* @PLLU_MISC0_DEFAULT_VALUE, align 4
  %39 = load i32, i32* @PLLU_MISC0_LOCK_ENABLE, align 4
  %40 = and i32 %38, %39
  %41 = load i32, i32* %3, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* %3, align 4
  %44 = load i64, i64* @clk_base, align 8
  %45 = load %struct.tegra_clk_pll_params*, %struct.tegra_clk_pll_params** %2, align 8
  %46 = getelementptr inbounds %struct.tegra_clk_pll_params, %struct.tegra_clk_pll_params* %45, i32 0, i32 1
  %47 = load i64*, i64** %46, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 0
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %44, %49
  %51 = call i32 @writel_relaxed(i32 %43, i64 %50)
  %52 = load i64, i64* @clk_base, align 8
  %53 = load %struct.tegra_clk_pll_params*, %struct.tegra_clk_pll_params** %2, align 8
  %54 = getelementptr inbounds %struct.tegra_clk_pll_params, %struct.tegra_clk_pll_params* %53, i32 0, i32 1
  %55 = load i64*, i64** %54, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 1
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %52, %57
  %59 = call i32 @readl_relaxed(i64 %58)
  store i32 %59, i32* %3, align 4
  %60 = load i32, i32* @PLLU_MISC1_LOCK_OVERRIDE, align 4
  %61 = xor i32 %60, -1
  %62 = load i32, i32* %3, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %3, align 4
  %64 = load i32, i32* @PLLU_MISC1_DEFAULT_VALUE, align 4
  %65 = load i32, i32* @PLLU_MISC1_LOCK_OVERRIDE, align 4
  %66 = and i32 %64, %65
  %67 = load i32, i32* %3, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %3, align 4
  %69 = load i32, i32* %3, align 4
  %70 = load i64, i64* @clk_base, align 8
  %71 = load %struct.tegra_clk_pll_params*, %struct.tegra_clk_pll_params** %2, align 8
  %72 = getelementptr inbounds %struct.tegra_clk_pll_params, %struct.tegra_clk_pll_params* %71, i32 0, i32 1
  %73 = load i64*, i64** %72, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 1
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %70, %75
  %77 = call i32 @writel_relaxed(i32 %69, i64 %76)
  %78 = call i32 @udelay(i32 1)
  br label %99

79:                                               ; preds = %1
  %80 = load i32, i32* @PLLU_MISC0_DEFAULT_VALUE, align 4
  %81 = load i64, i64* @clk_base, align 8
  %82 = load %struct.tegra_clk_pll_params*, %struct.tegra_clk_pll_params** %2, align 8
  %83 = getelementptr inbounds %struct.tegra_clk_pll_params, %struct.tegra_clk_pll_params* %82, i32 0, i32 1
  %84 = load i64*, i64** %83, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 0
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %81, %86
  %88 = call i32 @writel_relaxed(i32 %80, i64 %87)
  %89 = load i32, i32* @PLLU_MISC1_DEFAULT_VALUE, align 4
  %90 = load i64, i64* @clk_base, align 8
  %91 = load %struct.tegra_clk_pll_params*, %struct.tegra_clk_pll_params** %2, align 8
  %92 = getelementptr inbounds %struct.tegra_clk_pll_params, %struct.tegra_clk_pll_params* %91, i32 0, i32 1
  %93 = load i64*, i64** %92, align 8
  %94 = getelementptr inbounds i64, i64* %93, i64 1
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %90, %95
  %97 = call i32 @writel_relaxed(i32 %89, i64 %96)
  %98 = call i32 @udelay(i32 1)
  br label %99

99:                                               ; preds = %79, %25
  ret void
}

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @pllu_check_defaults(%struct.tegra_clk_pll_params*, i32) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
