; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-spmi-pmic-div.c_clk_spmi_pmic_div_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-spmi-pmic-div.c_clk_spmi_pmic_div_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clkdiv = type { i64, i32 }

@REG_DIV_CTL1 = common dso_local global i64 0, align 8
@DIV_CTL1_DIV_FACTOR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @clk_spmi_pmic_div_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clk_spmi_pmic_div_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.clkdiv*, align 8
  %6 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %8 = call %struct.clkdiv* @to_clkdiv(%struct.clk_hw* %7)
  store %struct.clkdiv* %8, %struct.clkdiv** %5, align 8
  %9 = load %struct.clkdiv*, %struct.clkdiv** %5, align 8
  %10 = getelementptr inbounds %struct.clkdiv, %struct.clkdiv* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.clkdiv*, %struct.clkdiv** %5, align 8
  %13 = getelementptr inbounds %struct.clkdiv, %struct.clkdiv* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @REG_DIV_CTL1, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @regmap_read(i32 %11, i64 %16, i32* %6)
  %18 = load i32, i32* @DIV_CTL1_DIV_FACTOR_MASK, align 4
  %19 = load i32, i32* %6, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %6, align 4
  %21 = load i64, i64* %4, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i64 @div_factor_to_div(i32 %22)
  %24 = udiv i64 %21, %23
  ret i64 %24
}

declare dso_local %struct.clkdiv* @to_clkdiv(%struct.clk_hw*) #1

declare dso_local i32 @regmap_read(i32, i64, i32*) #1

declare dso_local i64 @div_factor_to_div(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
