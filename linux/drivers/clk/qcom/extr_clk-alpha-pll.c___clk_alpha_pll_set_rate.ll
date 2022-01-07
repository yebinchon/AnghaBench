; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-alpha-pll.c___clk_alpha_pll_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-alpha-pll.c___clk_alpha_pll_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_alpha_pll = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.pll_vco = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"alpha pll not in a valid vco range\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ALPHA_BITWIDTH = common dso_local global i32 0, align 4
@PLL_VCO_MASK = common dso_local global i32 0, align 4
@PLL_VCO_SHIFT = common dso_local global i32 0, align 4
@PLL_ALPHA_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64, i32 (%struct.clk_hw*)*)* @__clk_alpha_pll_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__clk_alpha_pll_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2, i32 (%struct.clk_hw*)* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.clk_hw*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32 (%struct.clk_hw*)*, align 8
  %10 = alloca %struct.clk_alpha_pll*, align 8
  %11 = alloca %struct.pll_vco*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 (%struct.clk_hw*)* %3, i32 (%struct.clk_hw*)** %9, align 8
  %15 = load %struct.clk_hw*, %struct.clk_hw** %6, align 8
  %16 = call %struct.clk_alpha_pll* @to_clk_alpha_pll(%struct.clk_hw* %15)
  store %struct.clk_alpha_pll* %16, %struct.clk_alpha_pll** %10, align 8
  %17 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %10, align 8
  %18 = call i32 @pll_alpha_width(%struct.clk_alpha_pll* %17)
  store i32 %18, i32* %13, align 4
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load i32, i32* %13, align 4
  %22 = call i64 @alpha_pll_round_rate(i64 %19, i64 %20, i32* %12, i32* %14, i32 %21)
  store i64 %22, i64* %7, align 8
  %23 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %10, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call %struct.pll_vco* @alpha_pll_find_vco(%struct.clk_alpha_pll* %23, i64 %24)
  store %struct.pll_vco* %25, %struct.pll_vco** %11, align 8
  %26 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %10, align 8
  %27 = getelementptr inbounds %struct.clk_alpha_pll, %struct.clk_alpha_pll* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %4
  %31 = load %struct.pll_vco*, %struct.pll_vco** %11, align 8
  %32 = icmp ne %struct.pll_vco* %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  %34 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %108

37:                                               ; preds = %30, %4
  %38 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %10, align 8
  %39 = getelementptr inbounds %struct.clk_alpha_pll, %struct.clk_alpha_pll* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %10, align 8
  %43 = call i32 @PLL_L_VAL(%struct.clk_alpha_pll* %42)
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @regmap_write(i32 %41, i32 %43, i32 %44)
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* @ALPHA_BITWIDTH, align 4
  %48 = icmp sgt i32 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %37
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* @ALPHA_BITWIDTH, align 4
  %52 = sub nsw i32 %50, %51
  %53 = load i32, i32* %14, align 4
  %54 = shl i32 %53, %52
  store i32 %54, i32* %14, align 4
  br label %55

55:                                               ; preds = %49, %37
  %56 = load i32, i32* %13, align 4
  %57 = icmp sgt i32 %56, 32
  br i1 %57, label %58, label %68

58:                                               ; preds = %55
  %59 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %10, align 8
  %60 = getelementptr inbounds %struct.clk_alpha_pll, %struct.clk_alpha_pll* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %10, align 8
  %64 = call i32 @PLL_ALPHA_VAL_U(%struct.clk_alpha_pll* %63)
  %65 = load i32, i32* %14, align 4
  %66 = ashr i32 %65, 32
  %67 = call i32 @regmap_write(i32 %62, i32 %64, i32 %66)
  br label %68

68:                                               ; preds = %58, %55
  %69 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %10, align 8
  %70 = getelementptr inbounds %struct.clk_alpha_pll, %struct.clk_alpha_pll* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %10, align 8
  %74 = call i32 @PLL_ALPHA_VAL(%struct.clk_alpha_pll* %73)
  %75 = load i32, i32* %14, align 4
  %76 = call i32 @regmap_write(i32 %72, i32 %74, i32 %75)
  %77 = load %struct.pll_vco*, %struct.pll_vco** %11, align 8
  %78 = icmp ne %struct.pll_vco* %77, null
  br i1 %78, label %79, label %95

79:                                               ; preds = %68
  %80 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %10, align 8
  %81 = getelementptr inbounds %struct.clk_alpha_pll, %struct.clk_alpha_pll* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %10, align 8
  %85 = call i32 @PLL_USER_CTL(%struct.clk_alpha_pll* %84)
  %86 = load i32, i32* @PLL_VCO_MASK, align 4
  %87 = load i32, i32* @PLL_VCO_SHIFT, align 4
  %88 = shl i32 %86, %87
  %89 = load %struct.pll_vco*, %struct.pll_vco** %11, align 8
  %90 = getelementptr inbounds %struct.pll_vco, %struct.pll_vco* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @PLL_VCO_SHIFT, align 4
  %93 = shl i32 %91, %92
  %94 = call i32 @regmap_update_bits(i32 %83, i32 %85, i32 %88, i32 %93)
  br label %95

95:                                               ; preds = %79, %68
  %96 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %10, align 8
  %97 = getelementptr inbounds %struct.clk_alpha_pll, %struct.clk_alpha_pll* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %10, align 8
  %101 = call i32 @PLL_USER_CTL(%struct.clk_alpha_pll* %100)
  %102 = load i32, i32* @PLL_ALPHA_EN, align 4
  %103 = load i32, i32* @PLL_ALPHA_EN, align 4
  %104 = call i32 @regmap_update_bits(i32 %99, i32 %101, i32 %102, i32 %103)
  %105 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %10, align 8
  %106 = load i32 (%struct.clk_hw*)*, i32 (%struct.clk_hw*)** %9, align 8
  %107 = call i32 @clk_alpha_pll_update_latch(%struct.clk_alpha_pll* %105, i32 (%struct.clk_hw*)* %106)
  store i32 %107, i32* %5, align 4
  br label %108

108:                                              ; preds = %95, %33
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local %struct.clk_alpha_pll* @to_clk_alpha_pll(%struct.clk_hw*) #1

declare dso_local i32 @pll_alpha_width(%struct.clk_alpha_pll*) #1

declare dso_local i64 @alpha_pll_round_rate(i64, i64, i32*, i32*, i32) #1

declare dso_local %struct.pll_vco* @alpha_pll_find_vco(%struct.clk_alpha_pll*, i64) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @PLL_L_VAL(%struct.clk_alpha_pll*) #1

declare dso_local i32 @PLL_ALPHA_VAL_U(%struct.clk_alpha_pll*) #1

declare dso_local i32 @PLL_ALPHA_VAL(%struct.clk_alpha_pll*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @PLL_USER_CTL(%struct.clk_alpha_pll*) #1

declare dso_local i32 @clk_alpha_pll_update_latch(%struct.clk_alpha_pll*, i32 (%struct.clk_hw*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
