; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-hfpll.c_clk_hfpll_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-hfpll.c_clk_hfpll_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_hfpll = type { %struct.TYPE_2__, %struct.hfpll_data* }
%struct.TYPE_2__ = type { %struct.regmap* }
%struct.regmap = type { i32 }
%struct.hfpll_data = type { i32, i64, i64 }

@PLL_BYPASSNL = common dso_local global i32 0, align 4
@PLL_RESET_N = common dso_local global i32 0, align 4
@PLL_OUTCTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"HFPLL %s is ON, but not locked!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_hw*)* @clk_hfpll_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clk_hfpll_init(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.clk_hfpll*, align 8
  %4 = alloca %struct.hfpll_data*, align 8
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %8 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %9 = call %struct.clk_hfpll* @to_clk_hfpll(%struct.clk_hw* %8)
  store %struct.clk_hfpll* %9, %struct.clk_hfpll** %3, align 8
  %10 = load %struct.clk_hfpll*, %struct.clk_hfpll** %3, align 8
  %11 = getelementptr inbounds %struct.clk_hfpll, %struct.clk_hfpll* %10, i32 0, i32 1
  %12 = load %struct.hfpll_data*, %struct.hfpll_data** %11, align 8
  store %struct.hfpll_data* %12, %struct.hfpll_data** %4, align 8
  %13 = load %struct.clk_hfpll*, %struct.clk_hfpll** %3, align 8
  %14 = getelementptr inbounds %struct.clk_hfpll, %struct.clk_hfpll* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.regmap*, %struct.regmap** %15, align 8
  store %struct.regmap* %16, %struct.regmap** %5, align 8
  %17 = load %struct.regmap*, %struct.regmap** %5, align 8
  %18 = load %struct.hfpll_data*, %struct.hfpll_data** %4, align 8
  %19 = getelementptr inbounds %struct.hfpll_data, %struct.hfpll_data* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @regmap_read(%struct.regmap* %17, i64 %20, i32* %6)
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @PLL_BYPASSNL, align 4
  %24 = load i32, i32* @PLL_RESET_N, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @PLL_OUTCTRL, align 4
  %27 = or i32 %25, %26
  %28 = icmp ne i32 %22, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %1
  %30 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %31 = call i32 @__clk_hfpll_init_once(%struct.clk_hw* %30)
  br label %61

32:                                               ; preds = %1
  %33 = load %struct.hfpll_data*, %struct.hfpll_data** %4, align 8
  %34 = getelementptr inbounds %struct.hfpll_data, %struct.hfpll_data* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %61

37:                                               ; preds = %32
  %38 = load %struct.regmap*, %struct.regmap** %5, align 8
  %39 = load %struct.hfpll_data*, %struct.hfpll_data** %4, align 8
  %40 = getelementptr inbounds %struct.hfpll_data, %struct.hfpll_data* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @regmap_read(%struct.regmap* %38, i64 %41, i32* %7)
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.hfpll_data*, %struct.hfpll_data** %4, align 8
  %45 = getelementptr inbounds %struct.hfpll_data, %struct.hfpll_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @BIT(i32 %46)
  %48 = and i32 %43, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %60, label %50

50:                                               ; preds = %37
  %51 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %52 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @__clk_get_name(i32 %53)
  %55 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %57 = call i32 @clk_hfpll_disable(%struct.clk_hw* %56)
  %58 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %59 = call i32 @__clk_hfpll_init_once(%struct.clk_hw* %58)
  br label %60

60:                                               ; preds = %50, %37
  br label %61

61:                                               ; preds = %29, %60, %32
  ret void
}

declare dso_local %struct.clk_hfpll* @to_clk_hfpll(%struct.clk_hw*) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i64, i32*) #1

declare dso_local i32 @__clk_hfpll_init_once(%struct.clk_hw*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local i32 @__clk_get_name(i32) #1

declare dso_local i32 @clk_hfpll_disable(%struct.clk_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
