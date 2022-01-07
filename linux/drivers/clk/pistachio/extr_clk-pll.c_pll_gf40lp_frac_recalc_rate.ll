; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/pistachio/extr_clk-pll.c_pll_gf40lp_frac_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/pistachio/extr_clk-pll.c_pll_gf40lp_frac_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.pistachio_clk_pll = type { i32 }

@PLL_CTRL1 = common dso_local global i32 0, align 4
@PLL_CTRL1_REFDIV_SHIFT = common dso_local global i32 0, align 4
@PLL_CTRL1_REFDIV_MASK = common dso_local global i32 0, align 4
@PLL_CTRL1_FBDIV_SHIFT = common dso_local global i32 0, align 4
@PLL_CTRL1_FBDIV_MASK = common dso_local global i32 0, align 4
@PLL_CTRL2 = common dso_local global i32 0, align 4
@PLL_FRAC_CTRL2_POSTDIV1_SHIFT = common dso_local global i32 0, align 4
@PLL_FRAC_CTRL2_POSTDIV1_MASK = common dso_local global i32 0, align 4
@PLL_FRAC_CTRL2_POSTDIV2_SHIFT = common dso_local global i32 0, align 4
@PLL_FRAC_CTRL2_POSTDIV2_MASK = common dso_local global i32 0, align 4
@PLL_FRAC_CTRL2_FRAC_SHIFT = common dso_local global i32 0, align 4
@PLL_FRAC_CTRL2_FRAC_MASK = common dso_local global i32 0, align 4
@PLL_MODE_FRAC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @pll_gf40lp_frac_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pll_gf40lp_frac_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.pistachio_clk_pll*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %13 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %14 = call %struct.pistachio_clk_pll* @to_pistachio_pll(%struct.clk_hw* %13)
  store %struct.pistachio_clk_pll* %14, %struct.pistachio_clk_pll** %5, align 8
  %15 = load %struct.pistachio_clk_pll*, %struct.pistachio_clk_pll** %5, align 8
  %16 = load i32, i32* @PLL_CTRL1, align 4
  %17 = call i32 @pll_readl(%struct.pistachio_clk_pll* %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @PLL_CTRL1_REFDIV_SHIFT, align 4
  %20 = ashr i32 %18, %19
  %21 = load i32, i32* @PLL_CTRL1_REFDIV_MASK, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @PLL_CTRL1_FBDIV_SHIFT, align 4
  %25 = ashr i32 %23, %24
  %26 = load i32, i32* @PLL_CTRL1_FBDIV_MASK, align 4
  %27 = and i32 %25, %26
  store i32 %27, i32* %8, align 4
  %28 = load %struct.pistachio_clk_pll*, %struct.pistachio_clk_pll** %5, align 8
  %29 = load i32, i32* @PLL_CTRL2, align 4
  %30 = call i32 @pll_readl(%struct.pistachio_clk_pll* %28, i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @PLL_FRAC_CTRL2_POSTDIV1_SHIFT, align 4
  %33 = ashr i32 %31, %32
  %34 = load i32, i32* @PLL_FRAC_CTRL2_POSTDIV1_MASK, align 4
  %35 = and i32 %33, %34
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @PLL_FRAC_CTRL2_POSTDIV2_SHIFT, align 4
  %38 = ashr i32 %36, %37
  %39 = load i32, i32* @PLL_FRAC_CTRL2_POSTDIV2_MASK, align 4
  %40 = and i32 %38, %39
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @PLL_FRAC_CTRL2_FRAC_SHIFT, align 4
  %43 = ashr i32 %41, %42
  %44 = load i32, i32* @PLL_FRAC_CTRL2_FRAC_MASK, align 4
  %45 = and i32 %43, %44
  store i32 %45, i32* %9, align 4
  %46 = load i64, i64* %4, align 8
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %12, align 4
  %48 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %49 = call i64 @pll_frac_get_mode(%struct.clk_hw* %48)
  %50 = load i64, i64* @PLL_MODE_FRAC, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %2
  %53 = load i32, i32* %8, align 4
  %54 = shl i32 %53, 24
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %54, %55
  %57 = load i32, i32* %12, align 4
  %58 = mul nsw i32 %57, %56
  store i32 %58, i32* %12, align 4
  br label %64

59:                                               ; preds = %2
  %60 = load i32, i32* %8, align 4
  %61 = shl i32 %60, 24
  %62 = load i32, i32* %12, align 4
  %63 = mul nsw i32 %62, %61
  store i32 %63, i32* %12, align 4
  br label %64

64:                                               ; preds = %59, %52
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %10, align 4
  %68 = mul nsw i32 %66, %67
  %69 = load i32, i32* %11, align 4
  %70 = mul nsw i32 %68, %69
  %71 = shl i32 %70, 24
  %72 = call i32 @do_div_round_closest(i32 %65, i32 %71)
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  ret i64 %74
}

declare dso_local %struct.pistachio_clk_pll* @to_pistachio_pll(%struct.clk_hw*) #1

declare dso_local i32 @pll_readl(%struct.pistachio_clk_pll*, i32) #1

declare dso_local i64 @pll_frac_get_mode(%struct.clk_hw*) #1

declare dso_local i32 @do_div_round_closest(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
