; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-tegra210.c_tegra210_pllp_set_defaults.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-tegra210.c_tegra210_pllp_set_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_clk_pll = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64*, i64 }

@clk_base = common dso_local global i64 0, align 8
@PLL_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"PLL_P already enabled. Postponing set full defaults\0A\00", align 1
@PLLP_MISC0_LOCK_ENABLE = common dso_local global i32 0, align 4
@PLLP_MISC0_LOCK_OVERRIDE = common dso_local global i32 0, align 4
@PLLP_MISC0_DEFAULT_VALUE = common dso_local global i32 0, align 4
@PLLP_MISC1_HSIO_EN = common dso_local global i32 0, align 4
@PLLP_MISC1_XUSB_EN = common dso_local global i32 0, align 4
@PLLP_MISC1_DEFAULT_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_clk_pll*)* @tegra210_pllp_set_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra210_pllp_set_defaults(%struct.tegra_clk_pll* %0) #0 {
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
  br i1 %20, label %21, label %67

21:                                               ; preds = %1
  %22 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %2, align 8
  %23 = call i32 @pllp_check_defaults(%struct.tegra_clk_pll* %22, i32 1)
  %24 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %2, align 8
  %25 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %21
  %31 = call i32 @pr_warn(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %21
  %33 = load i64, i64* @clk_base, align 8
  %34 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %2, align 8
  %35 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i64*, i64** %37, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %33, %40
  %42 = call i32 @readl_relaxed(i64 %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* @PLLP_MISC0_LOCK_ENABLE, align 4
  %44 = load i32, i32* @PLLP_MISC0_LOCK_OVERRIDE, align 4
  %45 = or i32 %43, %44
  store i32 %45, i32* %3, align 4
  %46 = load i32, i32* %3, align 4
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %4, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* @PLLP_MISC0_DEFAULT_VALUE, align 4
  %51 = load i32, i32* %3, align 4
  %52 = and i32 %50, %51
  %53 = load i32, i32* %4, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = load i64, i64* @clk_base, align 8
  %57 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %2, align 8
  %58 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i64*, i64** %60, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 0
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %56, %63
  %65 = call i32 @writel_relaxed(i32 %55, i64 %64)
  %66 = call i32 @udelay(i32 1)
  br label %113

67:                                               ; preds = %1
  %68 = load i32, i32* @PLLP_MISC0_DEFAULT_VALUE, align 4
  %69 = load i64, i64* @clk_base, align 8
  %70 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %2, align 8
  %71 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i64*, i64** %73, align 8
  %75 = getelementptr inbounds i64, i64* %74, i64 0
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %69, %76
  %78 = call i32 @writel_relaxed(i32 %68, i64 %77)
  %79 = load i64, i64* @clk_base, align 8
  %80 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %2, align 8
  %81 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i64*, i64** %83, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 1
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %79, %86
  %88 = call i32 @readl_relaxed(i64 %87)
  store i32 %88, i32* %4, align 4
  %89 = load i32, i32* @PLLP_MISC1_HSIO_EN, align 4
  %90 = load i32, i32* @PLLP_MISC1_XUSB_EN, align 4
  %91 = or i32 %89, %90
  store i32 %91, i32* %3, align 4
  %92 = load i32, i32* %3, align 4
  %93 = load i32, i32* %4, align 4
  %94 = and i32 %93, %92
  store i32 %94, i32* %4, align 4
  %95 = load i32, i32* %3, align 4
  %96 = xor i32 %95, -1
  %97 = load i32, i32* @PLLP_MISC1_DEFAULT_VALUE, align 4
  %98 = and i32 %96, %97
  %99 = load i32, i32* %4, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %4, align 4
  %101 = load i32, i32* %4, align 4
  %102 = load i64, i64* @clk_base, align 8
  %103 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %2, align 8
  %104 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %103, i32 0, i32 0
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 1
  %107 = load i64*, i64** %106, align 8
  %108 = getelementptr inbounds i64, i64* %107, i64 1
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %102, %109
  %111 = call i32 @writel_relaxed(i32 %101, i64 %110)
  %112 = call i32 @udelay(i32 1)
  br label %113

113:                                              ; preds = %67, %32
  ret void
}

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @pllp_check_defaults(%struct.tegra_clk_pll*, i32) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
