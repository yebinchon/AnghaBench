; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-tegra210.c_tegra210_pllre_set_defaults.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-tegra210.c_tegra210_pllre_set_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_clk_pll = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64*, i64 }

@clk_base = common dso_local global i64 0, align 8
@PLL_ENABLE = common dso_local global i32 0, align 4
@PLLRE_BASE_DEFAULT_MASK = common dso_local global i32 0, align 4
@PLLRE_BASE_DEFAULT_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"pllre boot base 0x%x : expected 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"(comparison mask = 0x%x)\0A\00", align 1
@PLLRE_MISC0_DEFAULT_VALUE = common dso_local global i32 0, align 4
@PLLRE_MISC0_IDDQ = common dso_local global i32 0, align 4
@PLLRE_MISC0_LOCK_ENABLE = common dso_local global i32 0, align 4
@PLLRE_MISC0_LOCK_OVERRIDE = common dso_local global i32 0, align 4
@PLLRE_MISC0_WRITE_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"unexpected IDDQ bit set for enabled clock\0A\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"PLL_RE already enabled. Postponing set full defaults\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_clk_pll*)* @tegra210_pllre_set_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra210_pllre_set_defaults(%struct.tegra_clk_pll* %0) #0 {
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
  br i1 %20, label %21, label %103

21:                                               ; preds = %1
  %22 = load i32, i32* @PLLRE_BASE_DEFAULT_MASK, align 4
  %23 = load i32, i32* %4, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @PLLRE_BASE_DEFAULT_VALUE, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %21
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @PLLRE_BASE_DEFAULT_VALUE, align 4
  %31 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30)
  %32 = load i32, i32* @PLLRE_BASE_DEFAULT_MASK, align 4
  %33 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %2, align 8
  %35 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 0, i32* %37, align 8
  br label %38

38:                                               ; preds = %28, %21
  %39 = load i32, i32* @PLLRE_MISC0_DEFAULT_VALUE, align 4
  %40 = load i32, i32* @PLLRE_MISC0_IDDQ, align 4
  %41 = xor i32 %40, -1
  %42 = and i32 %39, %41
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* @PLLRE_MISC0_LOCK_ENABLE, align 4
  %44 = load i32, i32* @PLLRE_MISC0_LOCK_OVERRIDE, align 4
  %45 = or i32 %43, %44
  store i32 %45, i32* %3, align 4
  %46 = load i64, i64* @clk_base, align 8
  %47 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %2, align 8
  %48 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* %3, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* @PLLRE_MISC0_WRITE_MASK, align 4
  %54 = and i32 %52, %53
  %55 = call i32 @_pll_misc_chk_default(i64 %46, %struct.TYPE_2__* %49, i32 0, i32 %50, i32 %54)
  %56 = load i64, i64* @clk_base, align 8
  %57 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %2, align 8
  %58 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i64*, i64** %60, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 0
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %56, %63
  %65 = call i32 @readl_relaxed(i64 %64)
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @PLLRE_MISC0_IDDQ, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %38
  %71 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %38
  %73 = load i32, i32* %3, align 4
  %74 = xor i32 %73, -1
  %75 = load i32, i32* %4, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %4, align 4
  %77 = load i32, i32* @PLLRE_MISC0_DEFAULT_VALUE, align 4
  %78 = load i32, i32* %3, align 4
  %79 = and i32 %77, %78
  %80 = load i32, i32* %4, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %4, align 4
  %82 = load i32, i32* %4, align 4
  %83 = load i64, i64* @clk_base, align 8
  %84 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %2, align 8
  %85 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %84, i32 0, i32 0
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load i64*, i64** %87, align 8
  %89 = getelementptr inbounds i64, i64* %88, i64 0
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %83, %90
  %92 = call i32 @writel_relaxed(i32 %82, i64 %91)
  %93 = call i32 @udelay(i32 1)
  %94 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %2, align 8
  %95 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %94, i32 0, i32 0
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %72
  %101 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0))
  br label %102

102:                                              ; preds = %100, %72
  br label %134

103:                                              ; preds = %1
  %104 = load i32, i32* @PLLRE_BASE_DEFAULT_MASK, align 4
  %105 = xor i32 %104, -1
  %106 = load i32, i32* %4, align 4
  %107 = and i32 %106, %105
  store i32 %107, i32* %4, align 4
  %108 = load i32, i32* @PLLRE_BASE_DEFAULT_VALUE, align 4
  %109 = load i32, i32* @PLLRE_BASE_DEFAULT_MASK, align 4
  %110 = and i32 %108, %109
  %111 = load i32, i32* %4, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %4, align 4
  %113 = load i32, i32* %4, align 4
  %114 = load i64, i64* @clk_base, align 8
  %115 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %2, align 8
  %116 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %115, i32 0, i32 0
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = add nsw i64 %114, %119
  %121 = call i32 @writel_relaxed(i32 %113, i64 %120)
  %122 = load i32, i32* @PLLRE_MISC0_DEFAULT_VALUE, align 4
  %123 = load i64, i64* @clk_base, align 8
  %124 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %2, align 8
  %125 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %124, i32 0, i32 0
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 1
  %128 = load i64*, i64** %127, align 8
  %129 = getelementptr inbounds i64, i64* %128, i64 0
  %130 = load i64, i64* %129, align 8
  %131 = add nsw i64 %123, %130
  %132 = call i32 @writel_relaxed(i32 %122, i64 %131)
  %133 = call i32 @udelay(i32 1)
  br label %134

134:                                              ; preds = %103, %102
  ret void
}

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @pr_warn(i8*, ...) #1

declare dso_local i32 @_pll_misc_chk_default(i64, %struct.TYPE_2__*, i32, i32, i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
