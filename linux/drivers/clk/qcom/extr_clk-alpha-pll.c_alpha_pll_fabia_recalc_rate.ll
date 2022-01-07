; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-alpha-pll.c_alpha_pll_fabia_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-alpha-pll.c_alpha_pll_fabia_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_alpha_pll = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @alpha_pll_fabia_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @alpha_pll_fabia_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.clk_alpha_pll*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %10 = call %struct.clk_alpha_pll* @to_clk_alpha_pll(%struct.clk_hw* %9)
  store %struct.clk_alpha_pll* %10, %struct.clk_alpha_pll** %5, align 8
  %11 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %5, align 8
  %12 = call i32 @pll_alpha_width(%struct.clk_alpha_pll* %11)
  store i32 %12, i32* %8, align 4
  %13 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %5, align 8
  %14 = getelementptr inbounds %struct.clk_alpha_pll, %struct.clk_alpha_pll* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %5, align 8
  %18 = call i32 @PLL_L_VAL(%struct.clk_alpha_pll* %17)
  %19 = call i32 @regmap_read(i32 %16, i32 %18, i32* %6)
  %20 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %5, align 8
  %21 = getelementptr inbounds %struct.clk_alpha_pll, %struct.clk_alpha_pll* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %5, align 8
  %25 = call i32 @PLL_FRAC(%struct.clk_alpha_pll* %24)
  %26 = call i32 @regmap_read(i32 %23, i32 %25, i32* %7)
  %27 = load i64, i64* %4, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i64 @alpha_pll_calc_rate(i64 %27, i32 %28, i32 %29, i32 %30)
  ret i64 %31
}

declare dso_local %struct.clk_alpha_pll* @to_clk_alpha_pll(%struct.clk_hw*) #1

declare dso_local i32 @pll_alpha_width(%struct.clk_alpha_pll*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @PLL_L_VAL(%struct.clk_alpha_pll*) #1

declare dso_local i32 @PLL_FRAC(%struct.clk_alpha_pll*) #1

declare dso_local i64 @alpha_pll_calc_rate(i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
