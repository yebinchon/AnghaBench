; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-alpha-pll.c_alpha_pll_huayra_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-alpha-pll.c_alpha_pll_huayra_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_alpha_pll = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PLL_ALPHA_EN = common dso_local global i32 0, align 4
@PLL_ALPHA_MODE = common dso_local global i32 0, align 4
@PLL_HUAYRA_M_SHIFT = common dso_local global i32 0, align 4
@PLL_HUAYRA_M_MASK = common dso_local global i32 0, align 4
@PLL_HUAYRA_N_SHIFT = common dso_local global i32 0, align 4
@PLL_HUAYRA_N_MASK = common dso_local global i32 0, align 4
@PLL_HUAYRA_M_WIDTH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @alpha_pll_huayra_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @alpha_pll_huayra_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.clk_alpha_pll*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %14 = load i64, i64* %5, align 8
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %6, align 4
  %16 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %17 = call %struct.clk_alpha_pll* @to_clk_alpha_pll(%struct.clk_hw* %16)
  store %struct.clk_alpha_pll* %17, %struct.clk_alpha_pll** %8, align 8
  store i32 0, i32* %10, align 4
  %18 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %8, align 8
  %19 = getelementptr inbounds %struct.clk_alpha_pll, %struct.clk_alpha_pll* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %8, align 8
  %23 = call i32 @PLL_L_VAL(%struct.clk_alpha_pll* %22)
  %24 = call i32 @regmap_read(i32 %21, i32 %23, i32* %9)
  %25 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %8, align 8
  %26 = getelementptr inbounds %struct.clk_alpha_pll, %struct.clk_alpha_pll* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %8, align 8
  %30 = call i32 @PLL_USER_CTL(%struct.clk_alpha_pll* %29)
  %31 = call i32 @regmap_read(i32 %28, i32 %30, i32* %11)
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* @PLL_ALPHA_EN, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %101

36:                                               ; preds = %2
  %37 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %8, align 8
  %38 = getelementptr inbounds %struct.clk_alpha_pll, %struct.clk_alpha_pll* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %8, align 8
  %42 = call i32 @PLL_ALPHA_VAL(%struct.clk_alpha_pll* %41)
  %43 = call i32 @regmap_read(i32 %40, i32 %42, i32* %10)
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @PLL_ALPHA_MODE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %36
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i64 @alpha_huayra_pll_calc_rate(i32 %49, i32 %50, i32 %51)
  store i64 %52, i64* %3, align 8
  br label %106

53:                                               ; preds = %36
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @PLL_HUAYRA_M_SHIFT, align 4
  %56 = ashr i32 %54, %55
  %57 = load i32, i32* @PLL_HUAYRA_M_MASK, align 4
  %58 = and i32 %56, %57
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* @PLL_HUAYRA_N_SHIFT, align 4
  %61 = ashr i32 %59, %60
  %62 = load i32, i32* @PLL_HUAYRA_N_MASK, align 4
  %63 = and i32 %61, %62
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %6, align 4
  %66 = mul nsw i32 %65, %64
  store i32 %66, i32* %6, align 4
  %67 = load i64, i64* %5, align 8
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %12, align 4
  %70 = load i64, i64* @PLL_HUAYRA_M_WIDTH, align 8
  %71 = sub nsw i64 %70, 1
  %72 = call i32 @BIT(i64 %71)
  %73 = icmp sge i32 %69, %72
  br i1 %73, label %74, label %88

74:                                               ; preds = %53
  %75 = load i64, i64* @PLL_HUAYRA_M_WIDTH, align 8
  %76 = call i32 @BIT(i64 %75)
  %77 = load i32, i32* %12, align 4
  %78 = sub nsw i32 %76, %77
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* %7, align 4
  %81 = mul nsw i32 %80, %79
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %13, align 4
  %84 = call i32 @do_div(i32 %82, i32 %83)
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* %6, align 4
  %87 = sub nsw i32 %86, %85
  store i32 %87, i32* %6, align 4
  br label %98

88:                                               ; preds = %53
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* %7, align 4
  %91 = mul nsw i32 %90, %89
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %13, align 4
  %94 = call i32 @do_div(i32 %92, i32 %93)
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* %6, align 4
  %97 = add nsw i32 %96, %95
  store i32 %97, i32* %6, align 4
  br label %98

98:                                               ; preds = %88, %74
  %99 = load i32, i32* %6, align 4
  %100 = sext i32 %99 to i64
  store i64 %100, i64* %3, align 8
  br label %106

101:                                              ; preds = %2
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* %10, align 4
  %105 = call i64 @alpha_huayra_pll_calc_rate(i32 %102, i32 %103, i32 %104)
  store i64 %105, i64* %3, align 8
  br label %106

106:                                              ; preds = %101, %98, %48
  %107 = load i64, i64* %3, align 8
  ret i64 %107
}

declare dso_local %struct.clk_alpha_pll* @to_clk_alpha_pll(%struct.clk_hw*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @PLL_L_VAL(%struct.clk_alpha_pll*) #1

declare dso_local i32 @PLL_USER_CTL(%struct.clk_alpha_pll*) #1

declare dso_local i32 @PLL_ALPHA_VAL(%struct.clk_alpha_pll*) #1

declare dso_local i64 @alpha_huayra_pll_calc_rate(i32, i32, i32) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @do_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
