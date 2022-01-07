; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-alpha-pll.c_clk_alpha_pll_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-alpha-pll.c_clk_alpha_pll_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_alpha_pll = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PLL_OUTCTRL = common dso_local global i32 0, align 4
@PLL_RESET_N = common dso_local global i32 0, align 4
@PLL_BYPASSNL = common dso_local global i32 0, align 4
@PLL_VOTE_FSM_ENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @clk_alpha_pll_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_alpha_pll_enable(%struct.clk_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_alpha_pll*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  %8 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %9 = call %struct.clk_alpha_pll* @to_clk_alpha_pll(%struct.clk_hw* %8)
  store %struct.clk_alpha_pll* %9, %struct.clk_alpha_pll** %5, align 8
  %10 = load i32, i32* @PLL_OUTCTRL, align 4
  %11 = load i32, i32* @PLL_RESET_N, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @PLL_BYPASSNL, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %7, align 4
  %15 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %5, align 8
  %16 = getelementptr inbounds %struct.clk_alpha_pll, %struct.clk_alpha_pll* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %5, align 8
  %20 = call i32 @PLL_MODE(%struct.clk_alpha_pll* %19)
  %21 = call i32 @regmap_read(i32 %18, i32 %20, i32* %6)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %97

26:                                               ; preds = %1
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @PLL_VOTE_FSM_ENA, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %26
  %32 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %33 = call i32 @clk_enable_regmap(%struct.clk_hw* %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %97

38:                                               ; preds = %31
  %39 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %5, align 8
  %40 = call i32 @wait_for_pll_enable_active(%struct.clk_alpha_pll* %39)
  store i32 %40, i32* %2, align 4
  br label %97

41:                                               ; preds = %26
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = and i32 %42, %43
  %45 = load i32, i32* %7, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %97

48:                                               ; preds = %41
  %49 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %5, align 8
  %50 = getelementptr inbounds %struct.clk_alpha_pll, %struct.clk_alpha_pll* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %5, align 8
  %54 = call i32 @PLL_MODE(%struct.clk_alpha_pll* %53)
  %55 = load i32, i32* @PLL_BYPASSNL, align 4
  %56 = load i32, i32* @PLL_BYPASSNL, align 4
  %57 = call i32 @regmap_update_bits(i32 %52, i32 %54, i32 %55, i32 %56)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %48
  %61 = load i32, i32* %4, align 4
  store i32 %61, i32* %2, align 4
  br label %97

62:                                               ; preds = %48
  %63 = call i32 (...) @mb()
  %64 = call i32 @udelay(i32 5)
  %65 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %5, align 8
  %66 = getelementptr inbounds %struct.clk_alpha_pll, %struct.clk_alpha_pll* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %5, align 8
  %70 = call i32 @PLL_MODE(%struct.clk_alpha_pll* %69)
  %71 = load i32, i32* @PLL_RESET_N, align 4
  %72 = load i32, i32* @PLL_RESET_N, align 4
  %73 = call i32 @regmap_update_bits(i32 %68, i32 %70, i32 %71, i32 %72)
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %62
  %77 = load i32, i32* %4, align 4
  store i32 %77, i32* %2, align 4
  br label %97

78:                                               ; preds = %62
  %79 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %5, align 8
  %80 = call i32 @wait_for_pll_enable_lock(%struct.clk_alpha_pll* %79)
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* %4, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = load i32, i32* %4, align 4
  store i32 %84, i32* %2, align 4
  br label %97

85:                                               ; preds = %78
  %86 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %5, align 8
  %87 = getelementptr inbounds %struct.clk_alpha_pll, %struct.clk_alpha_pll* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %5, align 8
  %91 = call i32 @PLL_MODE(%struct.clk_alpha_pll* %90)
  %92 = load i32, i32* @PLL_OUTCTRL, align 4
  %93 = load i32, i32* @PLL_OUTCTRL, align 4
  %94 = call i32 @regmap_update_bits(i32 %89, i32 %91, i32 %92, i32 %93)
  store i32 %94, i32* %4, align 4
  %95 = call i32 (...) @mb()
  %96 = load i32, i32* %4, align 4
  store i32 %96, i32* %2, align 4
  br label %97

97:                                               ; preds = %85, %83, %76, %60, %47, %38, %36, %24
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local %struct.clk_alpha_pll* @to_clk_alpha_pll(%struct.clk_hw*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @PLL_MODE(%struct.clk_alpha_pll*) #1

declare dso_local i32 @clk_enable_regmap(%struct.clk_hw*) #1

declare dso_local i32 @wait_for_pll_enable_active(%struct.clk_alpha_pll*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @wait_for_pll_enable_lock(%struct.clk_alpha_pll*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
