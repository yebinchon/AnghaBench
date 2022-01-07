; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-hfpll.c___clk_hfpll_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-hfpll.c___clk_hfpll_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_hfpll = type { %struct.TYPE_2__, %struct.hfpll_data* }
%struct.TYPE_2__ = type { %struct.regmap* }
%struct.regmap = type { i32 }
%struct.hfpll_data = type { i32, i64, i32 }

@PLL_BYPASSNL = common dso_local global i32 0, align 4
@PLL_RESET_N = common dso_local global i32 0, align 4
@PLL_OUTCTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_hw*)* @__clk_hfpll_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__clk_hfpll_enable(%struct.clk_hw* %0) #0 {
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
  %16 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %17 = call i32 @__clk_hfpll_init_once(%struct.clk_hw* %16)
  %18 = load %struct.regmap*, %struct.regmap** %5, align 8
  %19 = load %struct.hfpll_data*, %struct.hfpll_data** %4, align 8
  %20 = getelementptr inbounds %struct.hfpll_data, %struct.hfpll_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @PLL_BYPASSNL, align 4
  %23 = load i32, i32* @PLL_BYPASSNL, align 4
  %24 = call i32 @regmap_update_bits(%struct.regmap* %18, i32 %21, i32 %22, i32 %23)
  %25 = call i32 @udelay(i32 10)
  %26 = load %struct.regmap*, %struct.regmap** %5, align 8
  %27 = load %struct.hfpll_data*, %struct.hfpll_data** %4, align 8
  %28 = getelementptr inbounds %struct.hfpll_data, %struct.hfpll_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @PLL_RESET_N, align 4
  %31 = load i32, i32* @PLL_RESET_N, align 4
  %32 = call i32 @regmap_update_bits(%struct.regmap* %26, i32 %29, i32 %30, i32 %31)
  %33 = load %struct.hfpll_data*, %struct.hfpll_data** %4, align 8
  %34 = getelementptr inbounds %struct.hfpll_data, %struct.hfpll_data* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %54

37:                                               ; preds = %1
  br label %38

38:                                               ; preds = %44, %37
  %39 = load %struct.regmap*, %struct.regmap** %5, align 8
  %40 = load %struct.hfpll_data*, %struct.hfpll_data** %4, align 8
  %41 = getelementptr inbounds %struct.hfpll_data, %struct.hfpll_data* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @regmap_read(%struct.regmap* %39, i64 %42, i32* %6)
  br label %44

44:                                               ; preds = %38
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.hfpll_data*, %struct.hfpll_data** %4, align 8
  %47 = getelementptr inbounds %struct.hfpll_data, %struct.hfpll_data* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @BIT(i32 %48)
  %50 = and i32 %45, %49
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  br i1 %52, label %38, label %53

53:                                               ; preds = %44
  br label %56

54:                                               ; preds = %1
  %55 = call i32 @udelay(i32 60)
  br label %56

56:                                               ; preds = %54, %53
  %57 = load %struct.regmap*, %struct.regmap** %5, align 8
  %58 = load %struct.hfpll_data*, %struct.hfpll_data** %4, align 8
  %59 = getelementptr inbounds %struct.hfpll_data, %struct.hfpll_data* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @PLL_OUTCTRL, align 4
  %62 = load i32, i32* @PLL_OUTCTRL, align 4
  %63 = call i32 @regmap_update_bits(%struct.regmap* %57, i32 %60, i32 %61, i32 %62)
  ret void
}

declare dso_local %struct.clk_hfpll* @to_clk_hfpll(%struct.clk_hw*) #1

declare dso_local i32 @__clk_hfpll_init_once(%struct.clk_hw*) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i64, i32*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
