; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-dfll.c_dfll_pwm_set_output_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-dfll.c_dfll_pwm_set_output_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_dfll = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"setting enable state failed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DFLL_OUTPUT_CFG = common dso_local global i32 0, align 4
@DFLL_OUTPUT_CFG_PWM_DIV_MASK = common dso_local global i32 0, align 4
@DFLL_OUTPUT_CFG_PWM_DIV_SHIFT = common dso_local global i32 0, align 4
@DFLL_OUTPUT_CFG_PWM_ENABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"setting disable state failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_dfll*, i32)* @dfll_pwm_set_output_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dfll_pwm_set_output_enabled(%struct.tegra_dfll* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tegra_dfll*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tegra_dfll* %0, %struct.tegra_dfll** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %65

11:                                               ; preds = %2
  %12 = load %struct.tegra_dfll*, %struct.tegra_dfll** %4, align 8
  %13 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.tegra_dfll*, %struct.tegra_dfll** %4, align 8
  %16 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @pinctrl_select_state(i32 %14, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %11
  %22 = load %struct.tegra_dfll*, %struct.tegra_dfll** %4, align 8
  %23 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dev_err(i32 %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %95

28:                                               ; preds = %11
  %29 = load %struct.tegra_dfll*, %struct.tegra_dfll** %4, align 8
  %30 = load i32, i32* @DFLL_OUTPUT_CFG, align 4
  %31 = call i32 @dfll_readl(%struct.tegra_dfll* %29, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* @DFLL_OUTPUT_CFG_PWM_DIV_MASK, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %7, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %7, align 4
  %36 = load %struct.tegra_dfll*, %struct.tegra_dfll** %4, align 8
  %37 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.tegra_dfll*, %struct.tegra_dfll** %4, align 8
  %40 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @DIV_ROUND_UP(i32 %38, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @DFLL_OUTPUT_CFG_PWM_DIV_SHIFT, align 4
  %45 = shl i32 %43, %44
  %46 = load i32, i32* @DFLL_OUTPUT_CFG_PWM_DIV_MASK, align 4
  %47 = and i32 %45, %46
  %48 = load i32, i32* %7, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %7, align 4
  %50 = load %struct.tegra_dfll*, %struct.tegra_dfll** %4, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @DFLL_OUTPUT_CFG, align 4
  %53 = call i32 @dfll_writel(%struct.tegra_dfll* %50, i32 %51, i32 %52)
  %54 = load %struct.tegra_dfll*, %struct.tegra_dfll** %4, align 8
  %55 = call i32 @dfll_wmb(%struct.tegra_dfll* %54)
  %56 = load i32, i32* @DFLL_OUTPUT_CFG_PWM_ENABLE, align 4
  %57 = load i32, i32* %7, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %7, align 4
  %59 = load %struct.tegra_dfll*, %struct.tegra_dfll** %4, align 8
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @DFLL_OUTPUT_CFG, align 4
  %62 = call i32 @dfll_writel(%struct.tegra_dfll* %59, i32 %60, i32 %61)
  %63 = load %struct.tegra_dfll*, %struct.tegra_dfll** %4, align 8
  %64 = call i32 @dfll_wmb(%struct.tegra_dfll* %63)
  br label %94

65:                                               ; preds = %2
  %66 = load %struct.tegra_dfll*, %struct.tegra_dfll** %4, align 8
  %67 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.tegra_dfll*, %struct.tegra_dfll** %4, align 8
  %70 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @pinctrl_select_state(i32 %68, i32 %71)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %65
  %76 = load %struct.tegra_dfll*, %struct.tegra_dfll** %4, align 8
  %77 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @dev_warn(i32 %78, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %80

80:                                               ; preds = %75, %65
  %81 = load %struct.tegra_dfll*, %struct.tegra_dfll** %4, align 8
  %82 = load i32, i32* @DFLL_OUTPUT_CFG, align 4
  %83 = call i32 @dfll_readl(%struct.tegra_dfll* %81, i32 %82)
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* @DFLL_OUTPUT_CFG_PWM_ENABLE, align 4
  %85 = xor i32 %84, -1
  %86 = load i32, i32* %7, align 4
  %87 = and i32 %86, %85
  store i32 %87, i32* %7, align 4
  %88 = load %struct.tegra_dfll*, %struct.tegra_dfll** %4, align 8
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* @DFLL_OUTPUT_CFG, align 4
  %91 = call i32 @dfll_writel(%struct.tegra_dfll* %88, i32 %89, i32 %90)
  %92 = load %struct.tegra_dfll*, %struct.tegra_dfll** %4, align 8
  %93 = call i32 @dfll_wmb(%struct.tegra_dfll* %92)
  br label %94

94:                                               ; preds = %80, %28
  store i32 0, i32* %3, align 4
  br label %95

95:                                               ; preds = %94, %21
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @pinctrl_select_state(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dfll_readl(%struct.tegra_dfll*, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @dfll_writel(%struct.tegra_dfll*, i32, i32) #1

declare dso_local i32 @dfll_wmb(%struct.tegra_dfll*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
