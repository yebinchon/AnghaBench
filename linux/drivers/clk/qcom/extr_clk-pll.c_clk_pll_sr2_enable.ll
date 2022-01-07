; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-pll.c_clk_pll_sr2_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-pll.c_clk_pll_sr2_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_pll = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PLL_BYPASSNL = common dso_local global i32 0, align 4
@PLL_RESET_N = common dso_local global i32 0, align 4
@PLL_OUTCTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @clk_pll_sr2_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_pll_sr2_enable(%struct.clk_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.clk_pll*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  %7 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %8 = call %struct.clk_pll* @to_clk_pll(%struct.clk_hw* %7)
  store %struct.clk_pll* %8, %struct.clk_pll** %4, align 8
  %9 = load %struct.clk_pll*, %struct.clk_pll** %4, align 8
  %10 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.clk_pll*, %struct.clk_pll** %4, align 8
  %14 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @regmap_read(i32 %12, i32 %15, i32* %6)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %2, align 4
  br label %70

21:                                               ; preds = %1
  %22 = load %struct.clk_pll*, %struct.clk_pll** %4, align 8
  %23 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.clk_pll*, %struct.clk_pll** %4, align 8
  %27 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @PLL_BYPASSNL, align 4
  %30 = load i32, i32* @PLL_BYPASSNL, align 4
  %31 = call i32 @regmap_update_bits(i32 %25, i32 %28, i32 %29, i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %21
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %2, align 4
  br label %70

36:                                               ; preds = %21
  %37 = call i32 @udelay(i32 10)
  %38 = load %struct.clk_pll*, %struct.clk_pll** %4, align 8
  %39 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.clk_pll*, %struct.clk_pll** %4, align 8
  %43 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @PLL_RESET_N, align 4
  %46 = load i32, i32* @PLL_RESET_N, align 4
  %47 = call i32 @regmap_update_bits(i32 %41, i32 %44, i32 %45, i32 %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %36
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %2, align 4
  br label %70

52:                                               ; preds = %36
  %53 = load %struct.clk_pll*, %struct.clk_pll** %4, align 8
  %54 = call i32 @wait_for_pll(%struct.clk_pll* %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, i32* %5, align 4
  store i32 %58, i32* %2, align 4
  br label %70

59:                                               ; preds = %52
  %60 = load %struct.clk_pll*, %struct.clk_pll** %4, align 8
  %61 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.clk_pll*, %struct.clk_pll** %4, align 8
  %65 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @PLL_OUTCTRL, align 4
  %68 = load i32, i32* @PLL_OUTCTRL, align 4
  %69 = call i32 @regmap_update_bits(i32 %63, i32 %66, i32 %67, i32 %68)
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %59, %57, %50, %34, %19
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local %struct.clk_pll* @to_clk_pll(%struct.clk_hw*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @wait_for_pll(%struct.clk_pll*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
