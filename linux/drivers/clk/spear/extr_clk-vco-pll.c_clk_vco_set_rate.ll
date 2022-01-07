; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/spear/extr_clk-vco-pll.c_clk_vco_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/spear/extr_clk-vco-pll.c_clk_vco_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_vco = type { i64, i32, i32, i32, %struct.pll_rate_tbl* }
%struct.pll_rate_tbl = type { i64, i64, i64 }

@vco_calc_rate = common dso_local global i32 0, align 4
@PLL_MODE_MASK = common dso_local global i64 0, align 8
@PLL_MODE_SHIFT = common dso_local global i64 0, align 8
@PLL_DIV_N_MASK = common dso_local global i64 0, align 8
@PLL_DIV_N_SHIFT = common dso_local global i64 0, align 8
@PLL_DITH_FDBK_M_MASK = common dso_local global i64 0, align 8
@PLL_DITH_FDBK_M_SHIFT = common dso_local global i64 0, align 8
@PLL_NORM_FDBK_M_MASK = common dso_local global i64 0, align 8
@PLL_NORM_FDBK_M_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @clk_vco_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_vco_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.clk_vco*, align 8
  %8 = alloca %struct.pll_rate_tbl*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %13 = call %struct.clk_vco* @to_clk_vco(%struct.clk_hw* %12)
  store %struct.clk_vco* %13, %struct.clk_vco** %7, align 8
  %14 = load %struct.clk_vco*, %struct.clk_vco** %7, align 8
  %15 = getelementptr inbounds %struct.clk_vco, %struct.clk_vco* %14, i32 0, i32 4
  %16 = load %struct.pll_rate_tbl*, %struct.pll_rate_tbl** %15, align 8
  store %struct.pll_rate_tbl* %16, %struct.pll_rate_tbl** %8, align 8
  store i64 0, i64* %9, align 8
  %17 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load i32, i32* @vco_calc_rate, align 4
  %21 = load %struct.clk_vco*, %struct.clk_vco** %7, align 8
  %22 = getelementptr inbounds %struct.clk_vco, %struct.clk_vco* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @clk_round_rate_index(%struct.clk_hw* %17, i64 %18, i64 %19, i32 %20, i32 %23, i32* %11)
  %25 = load %struct.clk_vco*, %struct.clk_vco** %7, align 8
  %26 = getelementptr inbounds %struct.clk_vco, %struct.clk_vco* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %3
  %30 = load %struct.clk_vco*, %struct.clk_vco** %7, align 8
  %31 = getelementptr inbounds %struct.clk_vco, %struct.clk_vco* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %9, align 8
  %34 = call i32 @spin_lock_irqsave(i64 %32, i64 %33)
  br label %35

35:                                               ; preds = %29, %3
  %36 = load %struct.clk_vco*, %struct.clk_vco** %7, align 8
  %37 = getelementptr inbounds %struct.clk_vco, %struct.clk_vco* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @readl_relaxed(i32 %38)
  store i64 %39, i64* %10, align 8
  %40 = load i64, i64* @PLL_MODE_MASK, align 8
  %41 = load i64, i64* @PLL_MODE_SHIFT, align 8
  %42 = shl i64 %40, %41
  %43 = xor i64 %42, -1
  %44 = load i64, i64* %10, align 8
  %45 = and i64 %44, %43
  store i64 %45, i64* %10, align 8
  %46 = load %struct.pll_rate_tbl*, %struct.pll_rate_tbl** %8, align 8
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.pll_rate_tbl, %struct.pll_rate_tbl* %46, i64 %48
  %50 = getelementptr inbounds %struct.pll_rate_tbl, %struct.pll_rate_tbl* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @PLL_MODE_MASK, align 8
  %53 = and i64 %51, %52
  %54 = load i64, i64* @PLL_MODE_SHIFT, align 8
  %55 = shl i64 %53, %54
  %56 = load i64, i64* %10, align 8
  %57 = or i64 %56, %55
  store i64 %57, i64* %10, align 8
  %58 = load i64, i64* %10, align 8
  %59 = load %struct.clk_vco*, %struct.clk_vco** %7, align 8
  %60 = getelementptr inbounds %struct.clk_vco, %struct.clk_vco* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @writel_relaxed(i64 %58, i32 %61)
  %63 = load %struct.clk_vco*, %struct.clk_vco** %7, align 8
  %64 = getelementptr inbounds %struct.clk_vco, %struct.clk_vco* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @readl_relaxed(i32 %65)
  store i64 %66, i64* %10, align 8
  %67 = load i64, i64* @PLL_DIV_N_MASK, align 8
  %68 = load i64, i64* @PLL_DIV_N_SHIFT, align 8
  %69 = shl i64 %67, %68
  %70 = xor i64 %69, -1
  %71 = load i64, i64* %10, align 8
  %72 = and i64 %71, %70
  store i64 %72, i64* %10, align 8
  %73 = load %struct.pll_rate_tbl*, %struct.pll_rate_tbl** %8, align 8
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.pll_rate_tbl, %struct.pll_rate_tbl* %73, i64 %75
  %77 = getelementptr inbounds %struct.pll_rate_tbl, %struct.pll_rate_tbl* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @PLL_DIV_N_MASK, align 8
  %80 = and i64 %78, %79
  %81 = load i64, i64* @PLL_DIV_N_SHIFT, align 8
  %82 = shl i64 %80, %81
  %83 = load i64, i64* %10, align 8
  %84 = or i64 %83, %82
  store i64 %84, i64* %10, align 8
  %85 = load i64, i64* @PLL_DITH_FDBK_M_MASK, align 8
  %86 = load i64, i64* @PLL_DITH_FDBK_M_SHIFT, align 8
  %87 = shl i64 %85, %86
  %88 = xor i64 %87, -1
  %89 = load i64, i64* %10, align 8
  %90 = and i64 %89, %88
  store i64 %90, i64* %10, align 8
  %91 = load %struct.pll_rate_tbl*, %struct.pll_rate_tbl** %8, align 8
  %92 = load i32, i32* %11, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.pll_rate_tbl, %struct.pll_rate_tbl* %91, i64 %93
  %95 = getelementptr inbounds %struct.pll_rate_tbl, %struct.pll_rate_tbl* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %111

98:                                               ; preds = %35
  %99 = load %struct.pll_rate_tbl*, %struct.pll_rate_tbl** %8, align 8
  %100 = load i32, i32* %11, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.pll_rate_tbl, %struct.pll_rate_tbl* %99, i64 %101
  %103 = getelementptr inbounds %struct.pll_rate_tbl, %struct.pll_rate_tbl* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @PLL_DITH_FDBK_M_MASK, align 8
  %106 = and i64 %104, %105
  %107 = load i64, i64* @PLL_DITH_FDBK_M_SHIFT, align 8
  %108 = shl i64 %106, %107
  %109 = load i64, i64* %10, align 8
  %110 = or i64 %109, %108
  store i64 %110, i64* %10, align 8
  br label %124

111:                                              ; preds = %35
  %112 = load %struct.pll_rate_tbl*, %struct.pll_rate_tbl** %8, align 8
  %113 = load i32, i32* %11, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.pll_rate_tbl, %struct.pll_rate_tbl* %112, i64 %114
  %116 = getelementptr inbounds %struct.pll_rate_tbl, %struct.pll_rate_tbl* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @PLL_NORM_FDBK_M_MASK, align 8
  %119 = and i64 %117, %118
  %120 = load i64, i64* @PLL_NORM_FDBK_M_SHIFT, align 8
  %121 = shl i64 %119, %120
  %122 = load i64, i64* %10, align 8
  %123 = or i64 %122, %121
  store i64 %123, i64* %10, align 8
  br label %124

124:                                              ; preds = %111, %98
  %125 = load i64, i64* %10, align 8
  %126 = load %struct.clk_vco*, %struct.clk_vco** %7, align 8
  %127 = getelementptr inbounds %struct.clk_vco, %struct.clk_vco* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @writel_relaxed(i64 %125, i32 %128)
  %130 = load %struct.clk_vco*, %struct.clk_vco** %7, align 8
  %131 = getelementptr inbounds %struct.clk_vco, %struct.clk_vco* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %124
  %135 = load %struct.clk_vco*, %struct.clk_vco** %7, align 8
  %136 = getelementptr inbounds %struct.clk_vco, %struct.clk_vco* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* %9, align 8
  %139 = call i32 @spin_unlock_irqrestore(i64 %137, i64 %138)
  br label %140

140:                                              ; preds = %134, %124
  ret i32 0
}

declare dso_local %struct.clk_vco* @to_clk_vco(%struct.clk_hw*) #1

declare dso_local i32 @clk_round_rate_index(%struct.clk_hw*, i64, i64, i32, i32, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i64, i64) #1

declare dso_local i64 @readl_relaxed(i32) #1

declare dso_local i32 @writel_relaxed(i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
