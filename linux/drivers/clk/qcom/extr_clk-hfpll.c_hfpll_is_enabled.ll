; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-hfpll.c_hfpll_is_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-hfpll.c_hfpll_is_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_hfpll = type { %struct.TYPE_2__, %struct.hfpll_data* }
%struct.TYPE_2__ = type { %struct.regmap* }
%struct.regmap = type { i32 }
%struct.hfpll_data = type { i32 }

@PLL_BYPASSNL = common dso_local global i32 0, align 4
@PLL_RESET_N = common dso_local global i32 0, align 4
@PLL_OUTCTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @hfpll_is_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfpll_is_enabled(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.clk_hfpll*, align 8
  %4 = alloca %struct.hfpll_data*, align 8
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %7 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %8 = call %struct.clk_hfpll* @to_clk_hfpll(%struct.clk_hw* %7)
  store %struct.clk_hfpll* %8, %struct.clk_hfpll** %3, align 8
  %9 = load %struct.clk_hfpll*, %struct.clk_hfpll** %3, align 8
  %10 = getelementptr inbounds %struct.clk_hfpll, %struct.clk_hfpll* %9, i32 0, i32 1
  %11 = load %struct.hfpll_data*, %struct.hfpll_data** %10, align 8
  store %struct.hfpll_data* %11, %struct.hfpll_data** %4, align 8
  %12 = load %struct.clk_hfpll*, %struct.clk_hfpll** %3, align 8
  %13 = getelementptr inbounds %struct.clk_hfpll, %struct.clk_hfpll* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.regmap*, %struct.regmap** %14, align 8
  store %struct.regmap* %15, %struct.regmap** %5, align 8
  %16 = load %struct.regmap*, %struct.regmap** %5, align 8
  %17 = load %struct.hfpll_data*, %struct.hfpll_data** %4, align 8
  %18 = getelementptr inbounds %struct.hfpll_data, %struct.hfpll_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @regmap_read(%struct.regmap* %16, i32 %19, i32* %6)
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %21, 7
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @PLL_BYPASSNL, align 4
  %25 = load i32, i32* @PLL_RESET_N, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @PLL_OUTCTRL, align 4
  %28 = or i32 %26, %27
  %29 = icmp eq i32 %23, %28
  %30 = zext i1 %29 to i32
  ret i32 %30
}

declare dso_local %struct.clk_hfpll* @to_clk_hfpll(%struct.clk_hw*) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
