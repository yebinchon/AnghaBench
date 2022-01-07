; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-tegra210.c_tegra210_pllcx_set_defaults.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-tegra210.c_tegra210_pllcx_set_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_clk_pll = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64*, i64 }

@clk_base = common dso_local global i64 0, align 8
@PLL_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"%s already enabled. Postponing set full defaults\0A\00", align 1
@PLLCX_MISC0_DEFAULT_VALUE = common dso_local global i32 0, align 4
@PLLCX_MISC1_DEFAULT_VALUE = common dso_local global i32 0, align 4
@PLLCX_MISC2_DEFAULT_VALUE = common dso_local global i32 0, align 4
@PLLCX_MISC3_DEFAULT_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.tegra_clk_pll*)* @tegra210_pllcx_set_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra210_pllcx_set_defaults(i8* %0, %struct.tegra_clk_pll* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.tegra_clk_pll*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.tegra_clk_pll* %1, %struct.tegra_clk_pll** %4, align 8
  %5 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %4, align 8
  %6 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store i32 1, i32* %8, align 8
  %9 = load i64, i64* @clk_base, align 8
  %10 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %4, align 8
  %11 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %9, %14
  %16 = call i32 @readl_relaxed(i64 %15)
  %17 = load i32, i32* @PLL_ENABLE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %2
  %21 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %4, align 8
  %22 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = call i32 @pllcx_check_defaults(%struct.TYPE_2__* %23)
  %25 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %4, align 8
  %26 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %20
  %32 = load i8*, i8** %3, align 8
  %33 = call i32 @pr_warn(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i8* %32)
  br label %34

34:                                               ; preds = %31, %20
  br label %81

35:                                               ; preds = %2
  %36 = load i32, i32* @PLLCX_MISC0_DEFAULT_VALUE, align 4
  %37 = load i64, i64* @clk_base, align 8
  %38 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %4, align 8
  %39 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i64*, i64** %41, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 0
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %37, %44
  %46 = call i32 @writel_relaxed(i32 %36, i64 %45)
  %47 = load i32, i32* @PLLCX_MISC1_DEFAULT_VALUE, align 4
  %48 = load i64, i64* @clk_base, align 8
  %49 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %4, align 8
  %50 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i64*, i64** %52, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 1
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %48, %55
  %57 = call i32 @writel_relaxed(i32 %47, i64 %56)
  %58 = load i32, i32* @PLLCX_MISC2_DEFAULT_VALUE, align 4
  %59 = load i64, i64* @clk_base, align 8
  %60 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %4, align 8
  %61 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i64*, i64** %63, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 2
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %59, %66
  %68 = call i32 @writel_relaxed(i32 %58, i64 %67)
  %69 = load i32, i32* @PLLCX_MISC3_DEFAULT_VALUE, align 4
  %70 = load i64, i64* @clk_base, align 8
  %71 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %4, align 8
  %72 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i64*, i64** %74, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 3
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %70, %77
  %79 = call i32 @writel_relaxed(i32 %69, i64 %78)
  %80 = call i32 @udelay(i32 1)
  br label %81

81:                                               ; preds = %35, %34
  ret void
}

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @pllcx_check_defaults(%struct.TYPE_2__*) #1

declare dso_local i32 @pr_warn(i8*, i8*) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
