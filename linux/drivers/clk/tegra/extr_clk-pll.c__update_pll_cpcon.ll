; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-pll.c__update_pll_cpcon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-pll.c__update_pll_cpcon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_clk_pll = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.tegra_clk_pll_freq_table = type { i32, i64 }

@PLL_MISC_CPCON_MASK = common dso_local global i32 0, align 4
@PLL_MISC_CPCON_SHIFT = common dso_local global i32 0, align 4
@TEGRA_PLL_SET_LFCON = common dso_local global i32 0, align 4
@PLL_MISC_LFCON_MASK = common dso_local global i32 0, align 4
@PLL_MISC_LFCON_SHIFT = common dso_local global i32 0, align 4
@PLLDU_LFCON_SET_DIVN = common dso_local global i64 0, align 8
@TEGRA_PLL_SET_DCCON = common dso_local global i32 0, align 4
@PLL_MISC_DCCON_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_clk_pll*, %struct.tegra_clk_pll_freq_table*, i64)* @_update_pll_cpcon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_update_pll_cpcon(%struct.tegra_clk_pll* %0, %struct.tegra_clk_pll_freq_table* %1, i64 %2) #0 {
  %4 = alloca %struct.tegra_clk_pll*, align 8
  %5 = alloca %struct.tegra_clk_pll_freq_table*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.tegra_clk_pll* %0, %struct.tegra_clk_pll** %4, align 8
  store %struct.tegra_clk_pll_freq_table* %1, %struct.tegra_clk_pll_freq_table** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %4, align 8
  %9 = call i32 @pll_readl_misc(%struct.tegra_clk_pll* %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* @PLL_MISC_CPCON_MASK, align 4
  %11 = load i32, i32* @PLL_MISC_CPCON_SHIFT, align 4
  %12 = shl i32 %10, %11
  %13 = xor i32 %12, -1
  %14 = load i32, i32* %7, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %7, align 4
  %16 = load %struct.tegra_clk_pll_freq_table*, %struct.tegra_clk_pll_freq_table** %5, align 8
  %17 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, %struct.tegra_clk_pll_freq_table* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @PLL_MISC_CPCON_SHIFT, align 4
  %20 = shl i32 %18, %19
  %21 = load i32, i32* %7, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %7, align 4
  %23 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %4, align 8
  %24 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @TEGRA_PLL_SET_LFCON, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %49

31:                                               ; preds = %3
  %32 = load i32, i32* @PLL_MISC_LFCON_MASK, align 4
  %33 = load i32, i32* @PLL_MISC_LFCON_SHIFT, align 4
  %34 = shl i32 %32, %33
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %7, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %7, align 4
  %38 = load %struct.tegra_clk_pll_freq_table*, %struct.tegra_clk_pll_freq_table** %5, align 8
  %39 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, %struct.tegra_clk_pll_freq_table* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @PLLDU_LFCON_SET_DIVN, align 8
  %42 = icmp sge i64 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %31
  %44 = load i32, i32* @PLL_MISC_LFCON_SHIFT, align 4
  %45 = shl i32 1, %44
  %46 = load i32, i32* %7, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %43, %31
  br label %80

49:                                               ; preds = %3
  %50 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %4, align 8
  %51 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @TEGRA_PLL_SET_DCCON, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %79

58:                                               ; preds = %49
  %59 = load i32, i32* @PLL_MISC_DCCON_SHIFT, align 4
  %60 = shl i32 1, %59
  %61 = xor i32 %60, -1
  %62 = load i32, i32* %7, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %7, align 4
  %64 = load i64, i64* %6, align 8
  %65 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %4, align 8
  %66 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = ashr i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = icmp uge i64 %64, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %58
  %74 = load i32, i32* @PLL_MISC_DCCON_SHIFT, align 4
  %75 = shl i32 1, %74
  %76 = load i32, i32* %7, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %7, align 4
  br label %78

78:                                               ; preds = %73, %58
  br label %79

79:                                               ; preds = %78, %49
  br label %80

80:                                               ; preds = %79, %48
  %81 = load i32, i32* %7, align 4
  %82 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %4, align 8
  %83 = call i32 @pll_writel_misc(i32 %81, %struct.tegra_clk_pll* %82)
  ret void
}

declare dso_local i32 @pll_readl_misc(%struct.tegra_clk_pll*) #1

declare dso_local i32 @pll_writel_misc(i32, %struct.tegra_clk_pll*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
