; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-pll.c_clk_pll_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-pll.c_clk_pll_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_pll = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PLL_VOTE_FSM_ENA = common dso_local global i32 0, align 4
@PLL_OUTCTRL = common dso_local global i32 0, align 4
@PLL_RESET_N = common dso_local global i32 0, align 4
@PLL_BYPASSNL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_hw*)* @clk_pll_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clk_pll_disable(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.clk_pll*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %6 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %7 = call %struct.clk_pll* @to_clk_pll(%struct.clk_hw* %6)
  store %struct.clk_pll* %7, %struct.clk_pll** %3, align 8
  %8 = load %struct.clk_pll*, %struct.clk_pll** %3, align 8
  %9 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.clk_pll*, %struct.clk_pll** %3, align 8
  %13 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @regmap_read(i32 %11, i32 %14, i32* %5)
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @PLL_VOTE_FSM_ENA, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %36

21:                                               ; preds = %1
  %22 = load i32, i32* @PLL_OUTCTRL, align 4
  %23 = load i32, i32* @PLL_RESET_N, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @PLL_BYPASSNL, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %4, align 4
  %27 = load %struct.clk_pll*, %struct.clk_pll** %3, align 8
  %28 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.clk_pll*, %struct.clk_pll** %3, align 8
  %32 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @regmap_update_bits(i32 %30, i32 %33, i32 %34, i32 0)
  br label %36

36:                                               ; preds = %21, %20
  ret void
}

declare dso_local %struct.clk_pll* @to_clk_pll(%struct.clk_hw*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
