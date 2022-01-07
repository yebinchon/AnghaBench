; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-tegra210.c_tegra210_pllx_set_defaults.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-tegra210.c_tegra210_pllx_set_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_clk_pll = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i64*, i64 }

@PLLX_MISC2_DEFAULT_VALUE = common dso_local global i32 0, align 4
@PLLX_MISC2_DYNRAMP_STEPA_MASK = common dso_local global i32 0, align 4
@PLLX_MISC2_DYNRAMP_STEPB_MASK = common dso_local global i32 0, align 4
@PLLX_MISC2_DYNRAMP_STEPA_SHIFT = common dso_local global i32 0, align 4
@PLLX_MISC2_DYNRAMP_STEPB_SHIFT = common dso_local global i32 0, align 4
@clk_base = common dso_local global i64 0, align 8
@PLL_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"PLL_X already enabled. Postponing set full defaults\0A\00", align 1
@PLLX_MISC0_LOCK_ENABLE = common dso_local global i32 0, align 4
@PLLX_MISC0_DEFAULT_VALUE = common dso_local global i32 0, align 4
@PLLX_MISC1_DEFAULT_VALUE = common dso_local global i32 0, align 4
@PLLX_MISC3_DEFAULT_VALUE = common dso_local global i32 0, align 4
@PLLX_MISC4_DEFAULT_VALUE = common dso_local global i32 0, align 4
@PLLX_MISC5_DEFAULT_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_clk_pll*)* @tegra210_pllx_set_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra210_pllx_set_defaults(%struct.tegra_clk_pll* %0) #0 {
  %2 = alloca %struct.tegra_clk_pll*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tegra_clk_pll* %0, %struct.tegra_clk_pll** %2, align 8
  %6 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %2, align 8
  %7 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store i32 1, i32* %9, align 8
  %10 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %2, align 8
  %11 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %10, i32 0, i32 1
  %12 = call i32 @pllx_get_dyn_steps(i32* %11, i32* %4, i32* %5)
  %13 = load i32, i32* @PLLX_MISC2_DEFAULT_VALUE, align 4
  %14 = load i32, i32* @PLLX_MISC2_DYNRAMP_STEPA_MASK, align 4
  %15 = xor i32 %14, -1
  %16 = and i32 %13, %15
  %17 = load i32, i32* @PLLX_MISC2_DYNRAMP_STEPB_MASK, align 4
  %18 = xor i32 %17, -1
  %19 = and i32 %16, %18
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @PLLX_MISC2_DYNRAMP_STEPA_SHIFT, align 4
  %22 = shl i32 %20, %21
  %23 = load i32, i32* %3, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @PLLX_MISC2_DYNRAMP_STEPB_SHIFT, align 4
  %27 = shl i32 %25, %26
  %28 = load i32, i32* %3, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %3, align 4
  %30 = load i64, i64* @clk_base, align 8
  %31 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %2, align 8
  %32 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %30, %35
  %37 = call i32 @readl_relaxed(i64 %36)
  %38 = load i32, i32* @PLL_ENABLE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %95

41:                                               ; preds = %1
  %42 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %2, align 8
  %43 = call i32 @pllx_check_defaults(%struct.tegra_clk_pll* %42)
  %44 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %2, align 8
  %45 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %41
  %51 = call i32 @pr_warn(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %41
  %53 = load i32, i32* %3, align 4
  %54 = load i64, i64* @clk_base, align 8
  %55 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %2, align 8
  %56 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i64*, i64** %58, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 2
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %54, %61
  %63 = call i32 @writel_relaxed(i32 %53, i64 %62)
  %64 = load i64, i64* @clk_base, align 8
  %65 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %2, align 8
  %66 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i64*, i64** %68, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 0
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %64, %71
  %73 = call i32 @readl_relaxed(i64 %72)
  store i32 %73, i32* %3, align 4
  %74 = load i32, i32* @PLLX_MISC0_LOCK_ENABLE, align 4
  %75 = xor i32 %74, -1
  %76 = load i32, i32* %3, align 4
  %77 = and i32 %76, %75
  store i32 %77, i32* %3, align 4
  %78 = load i32, i32* @PLLX_MISC0_DEFAULT_VALUE, align 4
  %79 = load i32, i32* @PLLX_MISC0_LOCK_ENABLE, align 4
  %80 = and i32 %78, %79
  %81 = load i32, i32* %3, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %3, align 4
  %83 = load i32, i32* %3, align 4
  %84 = load i64, i64* @clk_base, align 8
  %85 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %2, align 8
  %86 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i64*, i64** %88, align 8
  %90 = getelementptr inbounds i64, i64* %89, i64 0
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %84, %91
  %93 = call i32 @writel_relaxed(i32 %83, i64 %92)
  %94 = call i32 @udelay(i32 1)
  br label %163

95:                                               ; preds = %1
  %96 = load i32, i32* @PLLX_MISC0_DEFAULT_VALUE, align 4
  %97 = load i64, i64* @clk_base, align 8
  %98 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %2, align 8
  %99 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %98, i32 0, i32 0
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 1
  %102 = load i64*, i64** %101, align 8
  %103 = getelementptr inbounds i64, i64* %102, i64 0
  %104 = load i64, i64* %103, align 8
  %105 = add nsw i64 %97, %104
  %106 = call i32 @writel_relaxed(i32 %96, i64 %105)
  %107 = load i32, i32* @PLLX_MISC1_DEFAULT_VALUE, align 4
  %108 = load i64, i64* @clk_base, align 8
  %109 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %2, align 8
  %110 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %109, i32 0, i32 0
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 1
  %113 = load i64*, i64** %112, align 8
  %114 = getelementptr inbounds i64, i64* %113, i64 1
  %115 = load i64, i64* %114, align 8
  %116 = add nsw i64 %108, %115
  %117 = call i32 @writel_relaxed(i32 %107, i64 %116)
  %118 = load i32, i32* %3, align 4
  %119 = load i64, i64* @clk_base, align 8
  %120 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %2, align 8
  %121 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %120, i32 0, i32 0
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 1
  %124 = load i64*, i64** %123, align 8
  %125 = getelementptr inbounds i64, i64* %124, i64 2
  %126 = load i64, i64* %125, align 8
  %127 = add nsw i64 %119, %126
  %128 = call i32 @writel_relaxed(i32 %118, i64 %127)
  %129 = load i32, i32* @PLLX_MISC3_DEFAULT_VALUE, align 4
  %130 = load i64, i64* @clk_base, align 8
  %131 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %2, align 8
  %132 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %131, i32 0, i32 0
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 1
  %135 = load i64*, i64** %134, align 8
  %136 = getelementptr inbounds i64, i64* %135, i64 3
  %137 = load i64, i64* %136, align 8
  %138 = add nsw i64 %130, %137
  %139 = call i32 @writel_relaxed(i32 %129, i64 %138)
  %140 = load i32, i32* @PLLX_MISC4_DEFAULT_VALUE, align 4
  %141 = load i64, i64* @clk_base, align 8
  %142 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %2, align 8
  %143 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %142, i32 0, i32 0
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 1
  %146 = load i64*, i64** %145, align 8
  %147 = getelementptr inbounds i64, i64* %146, i64 4
  %148 = load i64, i64* %147, align 8
  %149 = add nsw i64 %141, %148
  %150 = call i32 @writel_relaxed(i32 %140, i64 %149)
  %151 = load i32, i32* @PLLX_MISC5_DEFAULT_VALUE, align 4
  %152 = load i64, i64* @clk_base, align 8
  %153 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %2, align 8
  %154 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %153, i32 0, i32 0
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 1
  %157 = load i64*, i64** %156, align 8
  %158 = getelementptr inbounds i64, i64* %157, i64 5
  %159 = load i64, i64* %158, align 8
  %160 = add nsw i64 %152, %159
  %161 = call i32 @writel_relaxed(i32 %151, i64 %160)
  %162 = call i32 @udelay(i32 1)
  br label %163

163:                                              ; preds = %95, %52
  ret void
}

declare dso_local i32 @pllx_get_dyn_steps(i32*, i32*, i32*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @pllx_check_defaults(%struct.tegra_clk_pll*) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
