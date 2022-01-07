; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-tegra210.c_tegra210_plld_set_defaults.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-tegra210.c_tegra210_plld_set_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_clk_pll = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64*, i64 }

@clk_base = common dso_local global i64 0, align 8
@PLL_ENABLE = common dso_local global i32 0, align 4
@PLLD_MISC1_DEFAULT_VALUE = common dso_local global i32 0, align 4
@PLLD_MISC1_WRITE_MASK = common dso_local global i32 0, align 4
@PLLD_MISC0_DEFAULT_VALUE = common dso_local global i32 0, align 4
@PLLD_MISC0_IDDQ = common dso_local global i32 0, align 4
@PLLD_MISC0_DSI_CLKENABLE = common dso_local global i32 0, align 4
@PLLD_MISC0_LOCK_ENABLE = common dso_local global i32 0, align 4
@PLLD_MISC0_LOCK_OVERRIDE = common dso_local global i32 0, align 4
@PLLD_MISC0_EN_SDM = common dso_local global i32 0, align 4
@PLLD_MISC0_WRITE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"PLL_D already enabled. Postponing set full defaults\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_clk_pll*)* @tegra210_plld_set_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra210_plld_set_defaults(%struct.tegra_clk_pll* %0) #0 {
  %2 = alloca %struct.tegra_clk_pll*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.tegra_clk_pll* %0, %struct.tegra_clk_pll** %2, align 8
  store i32 65535, i32* %4, align 4
  %5 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %2, align 8
  %6 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store i32 1, i32* %8, align 8
  %9 = load i64, i64* @clk_base, align 8
  %10 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %2, align 8
  %11 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %9, %14
  %16 = call i32 @readl_relaxed(i64 %15)
  %17 = load i32, i32* @PLL_ENABLE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %95

20:                                               ; preds = %1
  %21 = load i32, i32* @PLLD_MISC1_DEFAULT_VALUE, align 4
  store i32 %21, i32* %3, align 4
  %22 = load i64, i64* @clk_base, align 8
  %23 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %2, align 8
  %24 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @PLLD_MISC1_WRITE_MASK, align 4
  %28 = call i32 @_pll_misc_chk_default(i64 %22, %struct.TYPE_2__* %25, i32 1, i32 %26, i32 %27)
  %29 = load i32, i32* @PLLD_MISC0_DEFAULT_VALUE, align 4
  %30 = load i32, i32* @PLLD_MISC0_IDDQ, align 4
  %31 = xor i32 %30, -1
  %32 = and i32 %29, %31
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* @PLLD_MISC0_DSI_CLKENABLE, align 4
  %34 = load i32, i32* @PLLD_MISC0_LOCK_ENABLE, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @PLLD_MISC0_LOCK_OVERRIDE, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @PLLD_MISC0_EN_SDM, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* %4, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %4, align 4
  %42 = load i64, i64* @clk_base, align 8
  %43 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %2, align 8
  %44 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* %4, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* @PLLD_MISC0_WRITE_MASK, align 4
  %50 = and i32 %48, %49
  %51 = call i32 @_pll_misc_chk_default(i64 %42, %struct.TYPE_2__* %45, i32 0, i32 %46, i32 %50)
  %52 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %2, align 8
  %53 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %20
  %59 = call i32 @pr_warn(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %20
  %61 = load i32, i32* @PLLD_MISC0_LOCK_ENABLE, align 4
  %62 = load i32, i32* @PLLD_MISC0_LOCK_OVERRIDE, align 4
  %63 = or i32 %61, %62
  store i32 %63, i32* %4, align 4
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
  %74 = load i32, i32* %4, align 4
  %75 = xor i32 %74, -1
  %76 = load i32, i32* %3, align 4
  %77 = and i32 %76, %75
  store i32 %77, i32* %3, align 4
  %78 = load i32, i32* @PLLD_MISC0_DEFAULT_VALUE, align 4
  %79 = load i32, i32* %4, align 4
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
  br label %135

95:                                               ; preds = %1
  %96 = load i64, i64* @clk_base, align 8
  %97 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %2, align 8
  %98 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %97, i32 0, i32 0
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  %101 = load i64*, i64** %100, align 8
  %102 = getelementptr inbounds i64, i64* %101, i64 0
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %96, %103
  %105 = call i32 @readl_relaxed(i64 %104)
  store i32 %105, i32* %3, align 4
  %106 = load i32, i32* @PLLD_MISC0_DSI_CLKENABLE, align 4
  %107 = load i32, i32* %3, align 4
  %108 = and i32 %107, %106
  store i32 %108, i32* %3, align 4
  %109 = load i32, i32* @PLLD_MISC0_DEFAULT_VALUE, align 4
  %110 = load i32, i32* %3, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %3, align 4
  %112 = load i32, i32* %3, align 4
  %113 = load i64, i64* @clk_base, align 8
  %114 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %2, align 8
  %115 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %114, i32 0, i32 0
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 1
  %118 = load i64*, i64** %117, align 8
  %119 = getelementptr inbounds i64, i64* %118, i64 0
  %120 = load i64, i64* %119, align 8
  %121 = add nsw i64 %113, %120
  %122 = call i32 @writel_relaxed(i32 %112, i64 %121)
  %123 = load i32, i32* @PLLD_MISC1_DEFAULT_VALUE, align 4
  %124 = load i64, i64* @clk_base, align 8
  %125 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %2, align 8
  %126 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %125, i32 0, i32 0
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 1
  %129 = load i64*, i64** %128, align 8
  %130 = getelementptr inbounds i64, i64* %129, i64 1
  %131 = load i64, i64* %130, align 8
  %132 = add nsw i64 %124, %131
  %133 = call i32 @writel_relaxed(i32 %123, i64 %132)
  %134 = call i32 @udelay(i32 1)
  br label %135

135:                                              ; preds = %95, %60
  ret void
}

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @_pll_misc_chk_default(i64, %struct.TYPE_2__*, i32, i32, i32) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
