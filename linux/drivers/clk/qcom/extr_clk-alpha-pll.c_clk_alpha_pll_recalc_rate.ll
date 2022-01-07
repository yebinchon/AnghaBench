; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-alpha-pll.c_clk_alpha_pll_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-alpha-pll.c_clk_alpha_pll_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_alpha_pll = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PLL_ALPHA_EN = common dso_local global i32 0, align 4
@ALPHA_BITWIDTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @clk_alpha_pll_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clk_alpha_pll_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.clk_alpha_pll*, align 8
  %12 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %9, align 4
  %13 = load i64, i64* %4, align 8
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %10, align 4
  %15 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %16 = call %struct.clk_alpha_pll* @to_clk_alpha_pll(%struct.clk_hw* %15)
  store %struct.clk_alpha_pll* %16, %struct.clk_alpha_pll** %11, align 8
  %17 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %11, align 8
  %18 = call i32 @pll_alpha_width(%struct.clk_alpha_pll* %17)
  store i32 %18, i32* %12, align 4
  %19 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %11, align 8
  %20 = getelementptr inbounds %struct.clk_alpha_pll, %struct.clk_alpha_pll* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %11, align 8
  %24 = call i32 @PLL_L_VAL(%struct.clk_alpha_pll* %23)
  %25 = call i32 @regmap_read(i32 %22, i32 %24, i32* %5)
  %26 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %11, align 8
  %27 = getelementptr inbounds %struct.clk_alpha_pll, %struct.clk_alpha_pll* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %11, align 8
  %31 = call i32 @PLL_USER_CTL(%struct.clk_alpha_pll* %30)
  %32 = call i32 @regmap_read(i32 %29, i32 %31, i32* %8)
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @PLL_ALPHA_EN, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %76

37:                                               ; preds = %2
  %38 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %11, align 8
  %39 = getelementptr inbounds %struct.clk_alpha_pll, %struct.clk_alpha_pll* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %11, align 8
  %43 = call i32 @PLL_ALPHA_VAL(%struct.clk_alpha_pll* %42)
  %44 = call i32 @regmap_read(i32 %41, i32 %43, i32* %6)
  %45 = load i32, i32* %12, align 4
  %46 = icmp sgt i32 %45, 32
  br i1 %46, label %47, label %59

47:                                               ; preds = %37
  %48 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %11, align 8
  %49 = getelementptr inbounds %struct.clk_alpha_pll, %struct.clk_alpha_pll* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %11, align 8
  %53 = call i32 @PLL_ALPHA_VAL_U(%struct.clk_alpha_pll* %52)
  %54 = call i32 @regmap_read(i32 %51, i32 %53, i32* %7)
  %55 = load i32, i32* %7, align 4
  %56 = shl i32 %55, 32
  %57 = load i32, i32* %6, align 4
  %58 = or i32 %56, %57
  store i32 %58, i32* %9, align 4
  br label %65

59:                                               ; preds = %37
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %12, align 4
  %62 = sub nsw i32 %61, 1
  %63 = call i32 @GENMASK(i32 %62, i32 0)
  %64 = and i32 %60, %63
  store i32 %64, i32* %9, align 4
  br label %65

65:                                               ; preds = %59, %47
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* @ALPHA_BITWIDTH, align 4
  %68 = icmp sgt i32 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %65
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* @ALPHA_BITWIDTH, align 4
  %72 = sub nsw i32 %70, %71
  %73 = load i32, i32* %9, align 4
  %74 = ashr i32 %73, %72
  store i32 %74, i32* %9, align 4
  br label %75

75:                                               ; preds = %69, %65
  br label %76

76:                                               ; preds = %75, %2
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %12, align 4
  %81 = call i64 @alpha_pll_calc_rate(i32 %77, i32 %78, i32 %79, i32 %80)
  ret i64 %81
}

declare dso_local %struct.clk_alpha_pll* @to_clk_alpha_pll(%struct.clk_hw*) #1

declare dso_local i32 @pll_alpha_width(%struct.clk_alpha_pll*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @PLL_L_VAL(%struct.clk_alpha_pll*) #1

declare dso_local i32 @PLL_USER_CTL(%struct.clk_alpha_pll*) #1

declare dso_local i32 @PLL_ALPHA_VAL(%struct.clk_alpha_pll*) #1

declare dso_local i32 @PLL_ALPHA_VAL_U(%struct.clk_alpha_pll*) #1

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local i64 @alpha_pll_calc_rate(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
