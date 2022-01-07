; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-alpha-pll.c_clk_trion_pll_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-alpha-pll.c_clk_trion_pll_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_alpha_pll = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.regmap* }
%struct.regmap = type { i32 }

@PLL_VOTE_FSM_ENA = common dso_local global i32 0, align 4
@PLL_OUTCTRL = common dso_local global i32 0, align 4
@TRION_PLL_OUT_MASK = common dso_local global i32 0, align 4
@TRION_PLL_STANDBY = common dso_local global i32 0, align 4
@PLL_RESET_N = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_hw*)* @clk_trion_pll_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clk_trion_pll_disable(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.clk_alpha_pll*, align 8
  %4 = alloca %struct.regmap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %7 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %8 = call %struct.clk_alpha_pll* @to_clk_alpha_pll(%struct.clk_hw* %7)
  store %struct.clk_alpha_pll* %8, %struct.clk_alpha_pll** %3, align 8
  %9 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %3, align 8
  %10 = getelementptr inbounds %struct.clk_alpha_pll, %struct.clk_alpha_pll* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.regmap*, %struct.regmap** %11, align 8
  store %struct.regmap* %12, %struct.regmap** %4, align 8
  %13 = load %struct.regmap*, %struct.regmap** %4, align 8
  %14 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %3, align 8
  %15 = call i32 @PLL_MODE(%struct.clk_alpha_pll* %14)
  %16 = call i32 @regmap_read(%struct.regmap* %13, i32 %15, i32* %5)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %58

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @PLL_VOTE_FSM_ENA, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %27 = call i32 @clk_disable_regmap(%struct.clk_hw* %26)
  br label %58

28:                                               ; preds = %20
  %29 = load %struct.regmap*, %struct.regmap** %4, align 8
  %30 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %3, align 8
  %31 = call i32 @PLL_MODE(%struct.clk_alpha_pll* %30)
  %32 = load i32, i32* @PLL_OUTCTRL, align 4
  %33 = call i32 @regmap_update_bits(%struct.regmap* %29, i32 %31, i32 %32, i32 0)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %58

37:                                               ; preds = %28
  %38 = load %struct.regmap*, %struct.regmap** %4, align 8
  %39 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %3, align 8
  %40 = call i32 @PLL_USER_CTL(%struct.clk_alpha_pll* %39)
  %41 = load i32, i32* @TRION_PLL_OUT_MASK, align 4
  %42 = call i32 @regmap_update_bits(%struct.regmap* %38, i32 %40, i32 %41, i32 0)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %58

46:                                               ; preds = %37
  %47 = load %struct.regmap*, %struct.regmap** %4, align 8
  %48 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %3, align 8
  %49 = call i32 @PLL_OPMODE(%struct.clk_alpha_pll* %48)
  %50 = load i32, i32* @TRION_PLL_STANDBY, align 4
  %51 = call i32 @regmap_write(%struct.regmap* %47, i32 %49, i32 %50)
  %52 = load %struct.regmap*, %struct.regmap** %4, align 8
  %53 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %3, align 8
  %54 = call i32 @PLL_MODE(%struct.clk_alpha_pll* %53)
  %55 = load i32, i32* @PLL_RESET_N, align 4
  %56 = load i32, i32* @PLL_RESET_N, align 4
  %57 = call i32 @regmap_update_bits(%struct.regmap* %52, i32 %54, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %46, %45, %36, %25, %19
  ret void
}

declare dso_local %struct.clk_alpha_pll* @to_clk_alpha_pll(%struct.clk_hw*) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @PLL_MODE(%struct.clk_alpha_pll*) #1

declare dso_local i32 @clk_disable_regmap(%struct.clk_hw*) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @PLL_USER_CTL(%struct.clk_alpha_pll*) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @PLL_OPMODE(%struct.clk_alpha_pll*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
