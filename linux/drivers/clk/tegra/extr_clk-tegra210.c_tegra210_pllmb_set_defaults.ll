; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-tegra210.c_tegra210_pllmb_set_defaults.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-tegra210.c_tegra210_pllmb_set_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_clk_pll = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64*, i64 }

@clk_base = common dso_local global i64 0, align 8
@PLL_ENABLE = common dso_local global i32 0, align 4
@PLLMB_MISC1_DEFAULT_VALUE = common dso_local global i32 0, align 4
@PLLMB_MISC1_IDDQ = common dso_local global i32 0, align 4
@PLLMB_MISC1_LOCK_ENABLE = common dso_local global i32 0, align 4
@PLLMB_MISC1_LOCK_OVERRIDE = common dso_local global i32 0, align 4
@PLLMB_MISC1_WRITE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"PLL_MB already enabled. Postponing set full defaults\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_clk_pll*)* @tegra210_pllmb_set_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra210_pllmb_set_defaults(%struct.tegra_clk_pll* %0) #0 {
  %2 = alloca %struct.tegra_clk_pll*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.tegra_clk_pll* %0, %struct.tegra_clk_pll** %2, align 8
  %5 = load i64, i64* @clk_base, align 8
  %6 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %2, align 8
  %7 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %5, %10
  %12 = call i32 @readl_relaxed(i64 %11)
  store i32 %12, i32* %4, align 4
  %13 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %2, align 8
  %14 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @PLL_ENABLE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %79

21:                                               ; preds = %1
  %22 = load i32, i32* @PLLMB_MISC1_DEFAULT_VALUE, align 4
  %23 = load i32, i32* @PLLMB_MISC1_IDDQ, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* @PLLMB_MISC1_LOCK_ENABLE, align 4
  %27 = load i32, i32* @PLLMB_MISC1_LOCK_OVERRIDE, align 4
  %28 = or i32 %26, %27
  store i32 %28, i32* %3, align 4
  %29 = load i64, i64* @clk_base, align 8
  %30 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %2, align 8
  %31 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %3, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* @PLLMB_MISC1_WRITE_MASK, align 4
  %37 = and i32 %35, %36
  %38 = call i32 @_pll_misc_chk_default(i64 %29, %struct.TYPE_2__* %32, i32 0, i32 %33, i32 %37)
  %39 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %2, align 8
  %40 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %21
  %46 = call i32 @pr_warn(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %21
  %48 = load i64, i64* @clk_base, align 8
  %49 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %2, align 8
  %50 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i64*, i64** %52, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 0
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %48, %55
  %57 = call i32 @readl_relaxed(i64 %56)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %3, align 4
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %4, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* @PLLMB_MISC1_DEFAULT_VALUE, align 4
  %63 = load i32, i32* %3, align 4
  %64 = and i32 %62, %63
  %65 = load i32, i32* %4, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = load i64, i64* @clk_base, align 8
  %69 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %2, align 8
  %70 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i64*, i64** %72, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 0
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %68, %75
  %77 = call i32 @writel_relaxed(i32 %67, i64 %76)
  %78 = call i32 @udelay(i32 1)
  br label %92

79:                                               ; preds = %1
  %80 = load i32, i32* @PLLMB_MISC1_DEFAULT_VALUE, align 4
  %81 = load i64, i64* @clk_base, align 8
  %82 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %2, align 8
  %83 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %82, i32 0, i32 0
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i64*, i64** %85, align 8
  %87 = getelementptr inbounds i64, i64* %86, i64 0
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %81, %88
  %90 = call i32 @writel_relaxed(i32 %80, i64 %89)
  %91 = call i32 @udelay(i32 1)
  br label %92

92:                                               ; preds = %79, %47
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
