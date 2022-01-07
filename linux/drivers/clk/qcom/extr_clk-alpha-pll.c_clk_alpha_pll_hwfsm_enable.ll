; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-alpha-pll.c_clk_alpha_pll_hwfsm_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-alpha-pll.c_clk_alpha_pll_hwfsm_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_alpha_pll = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PLL_FSM_ENA = common dso_local global i32 0, align 4
@SUPPORTS_OFFLINE_REQ = common dso_local global i32 0, align 4
@PLL_OFFLINE_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @clk_alpha_pll_hwfsm_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_alpha_pll_hwfsm_enable(%struct.clk_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_alpha_pll*, align 8
  %6 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  %7 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %8 = call %struct.clk_alpha_pll* @to_clk_alpha_pll(%struct.clk_hw* %7)
  store %struct.clk_alpha_pll* %8, %struct.clk_alpha_pll** %5, align 8
  %9 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %5, align 8
  %10 = getelementptr inbounds %struct.clk_alpha_pll, %struct.clk_alpha_pll* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %5, align 8
  %14 = call i32 @PLL_MODE(%struct.clk_alpha_pll* %13)
  %15 = call i32 @regmap_read(i32 %12, i32 %14, i32* %6)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %52

20:                                               ; preds = %1
  %21 = load i32, i32* @PLL_FSM_ENA, align 4
  %22 = load i32, i32* %6, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %6, align 4
  %24 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %5, align 8
  %25 = getelementptr inbounds %struct.clk_alpha_pll, %struct.clk_alpha_pll* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @SUPPORTS_OFFLINE_REQ, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %20
  %31 = load i32, i32* @PLL_OFFLINE_REQ, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %6, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %30, %20
  %36 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %5, align 8
  %37 = getelementptr inbounds %struct.clk_alpha_pll, %struct.clk_alpha_pll* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %5, align 8
  %41 = call i32 @PLL_MODE(%struct.clk_alpha_pll* %40)
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @regmap_write(i32 %39, i32 %41, i32 %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %35
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* %2, align 4
  br label %52

48:                                               ; preds = %35
  %49 = call i32 (...) @mb()
  %50 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %5, align 8
  %51 = call i32 @wait_for_pll_enable_active(%struct.clk_alpha_pll* %50)
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %48, %46, %18
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.clk_alpha_pll* @to_clk_alpha_pll(%struct.clk_hw*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @PLL_MODE(%struct.clk_alpha_pll*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @wait_for_pll_enable_active(%struct.clk_alpha_pll*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
