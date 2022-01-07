; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-tegra/extr_platsmp.c_tegra114_boot_secondary.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-tegra/extr_platsmp.c_tegra114_boot_secondary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }

@tegra_cpu_init_mask = common dso_local global i32 0, align 4
@FLOW_CTRL_WAITEVENT = common dso_local global i32 0, align 4
@FLOW_CTRL_SCLK_RESUME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.task_struct*)* @tegra114_boot_secondary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra114_boot_secondary(i32 %0, %struct.task_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.task_struct* %1, %struct.task_struct** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @cpu_logical_map(i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i64 @cpumask_test_cpu(i32 %8, i32* @tegra_cpu_init_mask)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @flowctrl_write_cpu_csr(i32 %12, i32 1)
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @FLOW_CTRL_WAITEVENT, align 4
  %16 = load i32, i32* @FLOW_CTRL_SCLK_RESUME, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @flowctrl_write_cpu_halt(i32 %14, i32 %17)
  br label %22

19:                                               ; preds = %2
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @tegra_pmc_cpu_power_on(i32 %20)
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %19, %11
  %23 = load i32, i32* %5, align 4
  ret i32 %23
}

declare dso_local i32 @cpu_logical_map(i32) #1

declare dso_local i64 @cpumask_test_cpu(i32, i32*) #1

declare dso_local i32 @flowctrl_write_cpu_csr(i32, i32) #1

declare dso_local i32 @flowctrl_write_cpu_halt(i32, i32) #1

declare dso_local i32 @tegra_pmc_cpu_power_on(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
