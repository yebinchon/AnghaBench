; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-alpha-pll.c_clk_alpha_pll_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-alpha-pll.c_clk_alpha_pll_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_alpha_pll = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PLL_VOTE_FSM_ENA = common dso_local global i32 0, align 4
@PLL_OUTCTRL = common dso_local global i32 0, align 4
@PLL_RESET_N = common dso_local global i32 0, align 4
@PLL_BYPASSNL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_hw*)* @clk_alpha_pll_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clk_alpha_pll_disable(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_alpha_pll*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %7 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %8 = call %struct.clk_alpha_pll* @to_clk_alpha_pll(%struct.clk_hw* %7)
  store %struct.clk_alpha_pll* %8, %struct.clk_alpha_pll** %4, align 8
  %9 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %4, align 8
  %10 = getelementptr inbounds %struct.clk_alpha_pll, %struct.clk_alpha_pll* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %4, align 8
  %14 = call i32 @PLL_MODE(%struct.clk_alpha_pll* %13)
  %15 = call i32 @regmap_read(i32 %12, i32 %14, i32* %5)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %50

19:                                               ; preds = %1
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @PLL_VOTE_FSM_ENA, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %26 = call i32 @clk_disable_regmap(%struct.clk_hw* %25)
  br label %50

27:                                               ; preds = %19
  %28 = load i32, i32* @PLL_OUTCTRL, align 4
  store i32 %28, i32* %6, align 4
  %29 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %4, align 8
  %30 = getelementptr inbounds %struct.clk_alpha_pll, %struct.clk_alpha_pll* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %4, align 8
  %34 = call i32 @PLL_MODE(%struct.clk_alpha_pll* %33)
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @regmap_update_bits(i32 %32, i32 %34, i32 %35, i32 0)
  %37 = call i32 (...) @mb()
  %38 = call i32 @udelay(i32 1)
  %39 = load i32, i32* @PLL_RESET_N, align 4
  %40 = load i32, i32* @PLL_BYPASSNL, align 4
  %41 = or i32 %39, %40
  store i32 %41, i32* %6, align 4
  %42 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %4, align 8
  %43 = getelementptr inbounds %struct.clk_alpha_pll, %struct.clk_alpha_pll* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %4, align 8
  %47 = call i32 @PLL_MODE(%struct.clk_alpha_pll* %46)
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @regmap_update_bits(i32 %45, i32 %47, i32 %48, i32 0)
  br label %50

50:                                               ; preds = %27, %24, %18
  ret void
}

declare dso_local %struct.clk_alpha_pll* @to_clk_alpha_pll(%struct.clk_hw*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @PLL_MODE(%struct.clk_alpha_pll*) #1

declare dso_local i32 @clk_disable_regmap(%struct.clk_hw*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
