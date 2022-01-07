; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-pll.c_clk_pll_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-pll.c_clk_pll_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_pll = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PLL_OUTCTRL = common dso_local global i32 0, align 4
@PLL_RESET_N = common dso_local global i32 0, align 4
@PLL_BYPASSNL = common dso_local global i32 0, align 4
@PLL_VOTE_FSM_ENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @clk_pll_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_pll_enable(%struct.clk_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.clk_pll*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  %8 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %9 = call %struct.clk_pll* @to_clk_pll(%struct.clk_hw* %8)
  store %struct.clk_pll* %9, %struct.clk_pll** %4, align 8
  %10 = load i32, i32* @PLL_OUTCTRL, align 4
  %11 = load i32, i32* @PLL_RESET_N, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @PLL_BYPASSNL, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %6, align 4
  %15 = load %struct.clk_pll*, %struct.clk_pll** %4, align 8
  %16 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.clk_pll*, %struct.clk_pll** %4, align 8
  %20 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @regmap_read(i32 %18, i32 %21, i32* %7)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %2, align 4
  br label %82

27:                                               ; preds = %1
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* %6, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %38, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @PLL_VOTE_FSM_ENA, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33, %27
  store i32 0, i32* %2, align 4
  br label %82

39:                                               ; preds = %33
  %40 = load %struct.clk_pll*, %struct.clk_pll** %4, align 8
  %41 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.clk_pll*, %struct.clk_pll** %4, align 8
  %45 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @PLL_BYPASSNL, align 4
  %48 = load i32, i32* @PLL_BYPASSNL, align 4
  %49 = call i32 @regmap_update_bits(i32 %43, i32 %46, i32 %47, i32 %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %39
  %53 = load i32, i32* %5, align 4
  store i32 %53, i32* %2, align 4
  br label %82

54:                                               ; preds = %39
  %55 = call i32 @udelay(i32 10)
  %56 = load %struct.clk_pll*, %struct.clk_pll** %4, align 8
  %57 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.clk_pll*, %struct.clk_pll** %4, align 8
  %61 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @PLL_RESET_N, align 4
  %64 = load i32, i32* @PLL_RESET_N, align 4
  %65 = call i32 @regmap_update_bits(i32 %59, i32 %62, i32 %63, i32 %64)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %54
  %69 = load i32, i32* %5, align 4
  store i32 %69, i32* %2, align 4
  br label %82

70:                                               ; preds = %54
  %71 = call i32 @udelay(i32 50)
  %72 = load %struct.clk_pll*, %struct.clk_pll** %4, align 8
  %73 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.clk_pll*, %struct.clk_pll** %4, align 8
  %77 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @PLL_OUTCTRL, align 4
  %80 = load i32, i32* @PLL_OUTCTRL, align 4
  %81 = call i32 @regmap_update_bits(i32 %75, i32 %78, i32 %79, i32 %80)
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %70, %68, %52, %38, %25
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local %struct.clk_pll* @to_clk_pll(%struct.clk_hw*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
