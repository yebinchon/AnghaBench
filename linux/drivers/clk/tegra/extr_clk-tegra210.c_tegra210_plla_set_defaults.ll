; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-tegra210.c_tegra210_plla_set_defaults.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-tegra210.c_tegra210_plla_set_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_clk_pll = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64*, i64 }

@clk_base = common dso_local global i64 0, align 8
@PLL_ENABLE = common dso_local global i32 0, align 4
@PLLA_BASE_IDDQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"PLL_A boot enabled with IDDQ set\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"PLL_A already enabled. Postponing set full defaults\0A\00", align 1
@PLLA_MISC0_DEFAULT_VALUE = common dso_local global i32 0, align 4
@PLLA_MISC0_LOCK_ENABLE = common dso_local global i32 0, align 4
@PLLA_MISC0_LOCK_OVERRIDE = common dso_local global i32 0, align 4
@PLLA_MISC0_WRITE_MASK = common dso_local global i32 0, align 4
@PLLA_MISC2_DEFAULT_VALUE = common dso_local global i32 0, align 4
@PLLA_MISC2_EN_DYNRAMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_clk_pll*)* @tegra210_plla_set_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra210_plla_set_defaults(%struct.tegra_clk_pll* %0) #0 {
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
  br i1 %20, label %21, label %87

21:                                               ; preds = %1
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @PLLA_BASE_IDDQ, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = call i32 @pr_warn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %2, align 8
  %29 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 0, i32* %31, align 8
  br label %32

32:                                               ; preds = %26, %21
  %33 = call i32 @pr_warn(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @PLLA_MISC0_DEFAULT_VALUE, align 4
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* @PLLA_MISC0_LOCK_ENABLE, align 4
  %36 = load i32, i32* @PLLA_MISC0_LOCK_OVERRIDE, align 4
  %37 = or i32 %35, %36
  store i32 %37, i32* %3, align 4
  %38 = load i64, i64* @clk_base, align 8
  %39 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %2, align 8
  %40 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* %3, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* @PLLA_MISC0_WRITE_MASK, align 4
  %46 = and i32 %44, %45
  %47 = call i32 @_pll_misc_chk_default(i64 %38, %struct.TYPE_2__* %41, i32 0, i32 %42, i32 %46)
  %48 = load i32, i32* @PLLA_MISC2_DEFAULT_VALUE, align 4
  store i32 %48, i32* %4, align 4
  %49 = load i64, i64* @clk_base, align 8
  %50 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %2, align 8
  %51 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @PLLA_MISC2_EN_DYNRAMP, align 4
  %55 = call i32 @_pll_misc_chk_default(i64 %49, %struct.TYPE_2__* %52, i32 2, i32 %53, i32 %54)
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
  %66 = load i32, i32* %3, align 4
  %67 = xor i32 %66, -1
  %68 = load i32, i32* %4, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* @PLLA_MISC0_DEFAULT_VALUE, align 4
  %71 = load i32, i32* %3, align 4
  %72 = and i32 %70, %71
  %73 = load i32, i32* %4, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %4, align 4
  %76 = load i64, i64* @clk_base, align 8
  %77 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %2, align 8
  %78 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %77, i32 0, i32 0
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i64*, i64** %80, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 0
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %76, %83
  %85 = call i32 @writel_relaxed(i32 %75, i64 %84)
  %86 = call i32 @udelay(i32 1)
  br label %123

87:                                               ; preds = %1
  %88 = load i32, i32* @PLLA_BASE_IDDQ, align 4
  %89 = load i32, i32* %4, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %4, align 4
  %91 = load i32, i32* %4, align 4
  %92 = load i64, i64* @clk_base, align 8
  %93 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %2, align 8
  %94 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %93, i32 0, i32 0
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = add nsw i64 %92, %97
  %99 = call i32 @writel_relaxed(i32 %91, i64 %98)
  %100 = load i32, i32* @PLLA_MISC0_DEFAULT_VALUE, align 4
  %101 = load i64, i64* @clk_base, align 8
  %102 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %2, align 8
  %103 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %102, i32 0, i32 0
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  %106 = load i64*, i64** %105, align 8
  %107 = getelementptr inbounds i64, i64* %106, i64 0
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %101, %108
  %110 = call i32 @writel_relaxed(i32 %100, i64 %109)
  %111 = load i32, i32* @PLLA_MISC2_DEFAULT_VALUE, align 4
  %112 = load i64, i64* @clk_base, align 8
  %113 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %2, align 8
  %114 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %113, i32 0, i32 0
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 1
  %117 = load i64*, i64** %116, align 8
  %118 = getelementptr inbounds i64, i64* %117, i64 2
  %119 = load i64, i64* %118, align 8
  %120 = add nsw i64 %112, %119
  %121 = call i32 @writel_relaxed(i32 %111, i64 %120)
  %122 = call i32 @udelay(i32 1)
  br label %123

123:                                              ; preds = %87, %32
  ret void
}

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @_pll_misc_chk_default(i64, %struct.TYPE_2__*, i32, i32, i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
