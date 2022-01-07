; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-alpha-pll.c_clk_trion_pll_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-alpha-pll.c_clk_trion_pll_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_alpha_pll = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.regmap* }
%struct.regmap = type { i32 }

@PLL_VOTE_FSM_ENA = common dso_local global i32 0, align 4
@TRION_PLL_RUN = common dso_local global i32 0, align 4
@TRION_PLL_OUT_MASK = common dso_local global i32 0, align 4
@PLL_OUTCTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @clk_trion_pll_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_trion_pll_enable(%struct.clk_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.clk_alpha_pll*, align 8
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  %8 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %9 = call %struct.clk_alpha_pll* @to_clk_alpha_pll(%struct.clk_hw* %8)
  store %struct.clk_alpha_pll* %9, %struct.clk_alpha_pll** %4, align 8
  %10 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %4, align 8
  %11 = getelementptr inbounds %struct.clk_alpha_pll, %struct.clk_alpha_pll* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.regmap*, %struct.regmap** %12, align 8
  store %struct.regmap* %13, %struct.regmap** %5, align 8
  %14 = load %struct.regmap*, %struct.regmap** %5, align 8
  %15 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %4, align 8
  %16 = call i32 @PLL_MODE(%struct.clk_alpha_pll* %15)
  %17 = call i32 @regmap_read(%struct.regmap* %14, i32 %16, i32* %6)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %2, align 4
  br label %67

22:                                               ; preds = %1
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @PLL_VOTE_FSM_ENA, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %22
  %28 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %29 = call i32 @clk_enable_regmap(%struct.clk_hw* %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %2, align 4
  br label %67

34:                                               ; preds = %27
  %35 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %4, align 8
  %36 = call i32 @wait_for_pll_enable_active(%struct.clk_alpha_pll* %35)
  store i32 %36, i32* %2, align 4
  br label %67

37:                                               ; preds = %22
  %38 = load %struct.regmap*, %struct.regmap** %5, align 8
  %39 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %4, align 8
  %40 = call i32 @PLL_OPMODE(%struct.clk_alpha_pll* %39)
  %41 = load i32, i32* @TRION_PLL_RUN, align 4
  %42 = call i32 @regmap_write(%struct.regmap* %38, i32 %40, i32 %41)
  %43 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %4, align 8
  %44 = call i32 @wait_for_pll_enable_lock(%struct.clk_alpha_pll* %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %37
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %2, align 4
  br label %67

49:                                               ; preds = %37
  %50 = load %struct.regmap*, %struct.regmap** %5, align 8
  %51 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %4, align 8
  %52 = call i32 @PLL_USER_CTL(%struct.clk_alpha_pll* %51)
  %53 = load i32, i32* @TRION_PLL_OUT_MASK, align 4
  %54 = load i32, i32* @TRION_PLL_OUT_MASK, align 4
  %55 = call i32 @regmap_update_bits(%struct.regmap* %50, i32 %52, i32 %53, i32 %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %49
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %2, align 4
  br label %67

60:                                               ; preds = %49
  %61 = load %struct.regmap*, %struct.regmap** %5, align 8
  %62 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %4, align 8
  %63 = call i32 @PLL_MODE(%struct.clk_alpha_pll* %62)
  %64 = load i32, i32* @PLL_OUTCTRL, align 4
  %65 = load i32, i32* @PLL_OUTCTRL, align 4
  %66 = call i32 @regmap_update_bits(%struct.regmap* %61, i32 %63, i32 %64, i32 %65)
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %60, %58, %47, %34, %32, %20
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local %struct.clk_alpha_pll* @to_clk_alpha_pll(%struct.clk_hw*) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @PLL_MODE(%struct.clk_alpha_pll*) #1

declare dso_local i32 @clk_enable_regmap(%struct.clk_hw*) #1

declare dso_local i32 @wait_for_pll_enable_active(%struct.clk_alpha_pll*) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @PLL_OPMODE(%struct.clk_alpha_pll*) #1

declare dso_local i32 @wait_for_pll_enable_lock(%struct.clk_alpha_pll*) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @PLL_USER_CTL(%struct.clk_alpha_pll*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
