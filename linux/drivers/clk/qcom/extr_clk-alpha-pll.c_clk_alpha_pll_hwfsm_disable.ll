; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-alpha-pll.c_clk_alpha_pll_hwfsm_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-alpha-pll.c_clk_alpha_pll_hwfsm_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_alpha_pll = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SUPPORTS_OFFLINE_REQ = common dso_local global i32 0, align 4
@PLL_OFFLINE_REQ = common dso_local global i32 0, align 4
@PLL_FSM_ENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_hw*)* @clk_alpha_pll_hwfsm_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clk_alpha_pll_hwfsm_disable(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_alpha_pll*, align 8
  %5 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %6 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %7 = call %struct.clk_alpha_pll* @to_clk_alpha_pll(%struct.clk_hw* %6)
  store %struct.clk_alpha_pll* %7, %struct.clk_alpha_pll** %4, align 8
  %8 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %4, align 8
  %9 = getelementptr inbounds %struct.clk_alpha_pll, %struct.clk_alpha_pll* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %4, align 8
  %13 = call i32 @PLL_MODE(%struct.clk_alpha_pll* %12)
  %14 = call i32 @regmap_read(i32 %11, i32 %13, i32* %5)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %60

18:                                               ; preds = %1
  %19 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %4, align 8
  %20 = getelementptr inbounds %struct.clk_alpha_pll, %struct.clk_alpha_pll* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @SUPPORTS_OFFLINE_REQ, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %45

25:                                               ; preds = %18
  %26 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %4, align 8
  %27 = getelementptr inbounds %struct.clk_alpha_pll, %struct.clk_alpha_pll* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %4, align 8
  %31 = call i32 @PLL_MODE(%struct.clk_alpha_pll* %30)
  %32 = load i32, i32* @PLL_OFFLINE_REQ, align 4
  %33 = load i32, i32* @PLL_OFFLINE_REQ, align 4
  %34 = call i32 @regmap_update_bits(i32 %29, i32 %31, i32 %32, i32 %33)
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %3, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %25
  br label %60

38:                                               ; preds = %25
  %39 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %4, align 8
  %40 = call i32 @wait_for_pll_offline(%struct.clk_alpha_pll* %39)
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %60

44:                                               ; preds = %38
  br label %45

45:                                               ; preds = %44, %18
  %46 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %4, align 8
  %47 = getelementptr inbounds %struct.clk_alpha_pll, %struct.clk_alpha_pll* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %4, align 8
  %51 = call i32 @PLL_MODE(%struct.clk_alpha_pll* %50)
  %52 = load i32, i32* @PLL_FSM_ENA, align 4
  %53 = call i32 @regmap_update_bits(i32 %49, i32 %51, i32 %52, i32 0)
  store i32 %53, i32* %3, align 4
  %54 = load i32, i32* %3, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %45
  br label %60

57:                                               ; preds = %45
  %58 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %4, align 8
  %59 = call i32 @wait_for_pll_disable(%struct.clk_alpha_pll* %58)
  br label %60

60:                                               ; preds = %57, %56, %43, %37, %17
  ret void
}

declare dso_local %struct.clk_alpha_pll* @to_clk_alpha_pll(%struct.clk_hw*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @PLL_MODE(%struct.clk_alpha_pll*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @wait_for_pll_offline(%struct.clk_alpha_pll*) #1

declare dso_local i32 @wait_for_pll_disable(%struct.clk_alpha_pll*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
