; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-alpha-pll.c_clk_alpha_pll_postdiv_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-alpha-pll.c_clk_alpha_pll_postdiv_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_alpha_pll_postdiv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PLL_POST_DIV_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @clk_alpha_pll_postdiv_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_alpha_pll_postdiv_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.clk_alpha_pll_postdiv*, align 8
  %8 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %10 = call %struct.clk_alpha_pll_postdiv* @to_clk_alpha_pll_postdiv(%struct.clk_hw* %9)
  store %struct.clk_alpha_pll_postdiv* %10, %struct.clk_alpha_pll_postdiv** %7, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* %5, align 8
  %13 = call i32 @DIV_ROUND_UP_ULL(i64 %11, i64 %12)
  %14 = sub nsw i32 %13, 1
  store i32 %14, i32* %8, align 4
  %15 = load %struct.clk_alpha_pll_postdiv*, %struct.clk_alpha_pll_postdiv** %7, align 8
  %16 = getelementptr inbounds %struct.clk_alpha_pll_postdiv, %struct.clk_alpha_pll_postdiv* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.clk_alpha_pll_postdiv*, %struct.clk_alpha_pll_postdiv** %7, align 8
  %20 = call i32 @PLL_USER_CTL(%struct.clk_alpha_pll_postdiv* %19)
  %21 = load %struct.clk_alpha_pll_postdiv*, %struct.clk_alpha_pll_postdiv** %7, align 8
  %22 = call i32 @PLL_POST_DIV_MASK(%struct.clk_alpha_pll_postdiv* %21)
  %23 = load i32, i32* @PLL_POST_DIV_SHIFT, align 4
  %24 = shl i32 %22, %23
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @PLL_POST_DIV_SHIFT, align 4
  %27 = shl i32 %25, %26
  %28 = call i32 @regmap_update_bits(i32 %18, i32 %20, i32 %24, i32 %27)
  ret i32 %28
}

declare dso_local %struct.clk_alpha_pll_postdiv* @to_clk_alpha_pll_postdiv(%struct.clk_hw*) #1

declare dso_local i32 @DIV_ROUND_UP_ULL(i64, i64) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @PLL_USER_CTL(%struct.clk_alpha_pll_postdiv*) #1

declare dso_local i32 @PLL_POST_DIV_MASK(%struct.clk_alpha_pll_postdiv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
