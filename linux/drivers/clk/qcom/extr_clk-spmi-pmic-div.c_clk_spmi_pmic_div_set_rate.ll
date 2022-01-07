; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-spmi-pmic-div.c_clk_spmi_pmic_div_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-spmi-pmic-div.c_clk_spmi_pmic_div_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clkdiv = type { i32, i64, i32 }

@REG_DIV_CTL1 = common dso_local global i64 0, align 8
@DIV_CTL1_DIV_FACTOR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @clk_spmi_pmic_div_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_spmi_pmic_div_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.clkdiv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %13 = call %struct.clkdiv* @to_clkdiv(%struct.clk_hw* %12)
  store %struct.clkdiv* %13, %struct.clkdiv** %7, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* %5, align 8
  %16 = udiv i64 %14, %15
  %17 = call i32 @div_to_div_factor(i64 %16)
  store i32 %17, i32* %8, align 4
  %18 = load %struct.clkdiv*, %struct.clkdiv** %7, align 8
  %19 = getelementptr inbounds %struct.clkdiv, %struct.clkdiv* %18, i32 0, i32 0
  %20 = load i64, i64* %9, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.clkdiv*, %struct.clkdiv** %7, align 8
  %23 = call i32 @is_spmi_pmic_clkdiv_enabled(%struct.clkdiv* %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %3
  %27 = load %struct.clkdiv*, %struct.clkdiv** %7, align 8
  %28 = call i32 @spmi_pmic_clkdiv_set_enable_state(%struct.clkdiv* %27, i32 0)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %56

32:                                               ; preds = %26
  br label %33

33:                                               ; preds = %32, %3
  %34 = load %struct.clkdiv*, %struct.clkdiv** %7, align 8
  %35 = getelementptr inbounds %struct.clkdiv, %struct.clkdiv* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.clkdiv*, %struct.clkdiv** %7, align 8
  %38 = getelementptr inbounds %struct.clkdiv, %struct.clkdiv* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @REG_DIV_CTL1, align 8
  %41 = add nsw i64 %39, %40
  %42 = load i32, i32* @DIV_CTL1_DIV_FACTOR_MASK, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @regmap_update_bits(i32 %36, i64 %41, i32 %42, i32 %43)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %33
  br label %56

48:                                               ; preds = %33
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load %struct.clkdiv*, %struct.clkdiv** %7, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @__spmi_pmic_clkdiv_set_enable_state(%struct.clkdiv* %52, i32 1, i32 %53)
  store i32 %54, i32* %11, align 4
  br label %55

55:                                               ; preds = %51, %48
  br label %56

56:                                               ; preds = %55, %47, %31
  %57 = load %struct.clkdiv*, %struct.clkdiv** %7, align 8
  %58 = getelementptr inbounds %struct.clkdiv, %struct.clkdiv* %57, i32 0, i32 0
  %59 = load i64, i64* %9, align 8
  %60 = call i32 @spin_unlock_irqrestore(i32* %58, i64 %59)
  %61 = load i32, i32* %11, align 4
  ret i32 %61
}

declare dso_local %struct.clkdiv* @to_clkdiv(%struct.clk_hw*) #1

declare dso_local i32 @div_to_div_factor(i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @is_spmi_pmic_clkdiv_enabled(%struct.clkdiv*) #1

declare dso_local i32 @spmi_pmic_clkdiv_set_enable_state(%struct.clkdiv*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i64, i32, i32) #1

declare dso_local i32 @__spmi_pmic_clkdiv_set_enable_state(%struct.clkdiv*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
