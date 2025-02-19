; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_imx6q-cpufreq.c_imx6q_cpufreq_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_imx6q-cpufreq.c_imx6q_cpufreq_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }

@imx6q_cpufreq_driver = common dso_local global i32 0, align 4
@cpu_dev = common dso_local global i32 0, align 4
@freq_table = common dso_local global i32 0, align 4
@free_opp = common dso_local global i64 0, align 8
@arm_reg = common dso_local global i32 0, align 4
@pu_reg = common dso_local global i32 0, align 4
@soc_reg = common dso_local global i32 0, align 4
@num_clks = common dso_local global i32 0, align 4
@clks = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @imx6q_cpufreq_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx6q_cpufreq_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %3 = call i32 @cpufreq_unregister_driver(i32* @imx6q_cpufreq_driver)
  %4 = load i32, i32* @cpu_dev, align 4
  %5 = call i32 @dev_pm_opp_free_cpufreq_table(i32 %4, i32* @freq_table)
  %6 = load i64, i64* @free_opp, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* @cpu_dev, align 4
  %10 = call i32 @dev_pm_opp_of_remove_table(i32 %9)
  br label %11

11:                                               ; preds = %8, %1
  %12 = load i32, i32* @arm_reg, align 4
  %13 = call i32 @regulator_put(i32 %12)
  %14 = load i32, i32* @pu_reg, align 4
  %15 = call i32 @IS_ERR(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %11
  %18 = load i32, i32* @pu_reg, align 4
  %19 = call i32 @regulator_put(i32 %18)
  br label %20

20:                                               ; preds = %17, %11
  %21 = load i32, i32* @soc_reg, align 4
  %22 = call i32 @regulator_put(i32 %21)
  %23 = load i32, i32* @num_clks, align 4
  %24 = load i32, i32* @clks, align 4
  %25 = call i32 @clk_bulk_put(i32 %23, i32 %24)
  ret i32 0
}

declare dso_local i32 @cpufreq_unregister_driver(i32*) #1

declare dso_local i32 @dev_pm_opp_free_cpufreq_table(i32, i32*) #1

declare dso_local i32 @dev_pm_opp_of_remove_table(i32) #1

declare dso_local i32 @regulator_put(i32) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @clk_bulk_put(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
