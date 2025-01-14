; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-imx/extr_cpuidle-imx6sx.c_imx6sx_enter_wait.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-imx/extr_cpuidle-imx6sx.c_imx6sx_enter_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuidle_device = type { i32 }
%struct.cpuidle_driver = type { i32 }

@WAIT_UNCLOCKED = common dso_local global i32 0, align 4
@v7_cpu_resume = common dso_local global i32 0, align 4
@imx6sx_idle_finish = common dso_local global i32 0, align 4
@WAIT_CLOCKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpuidle_device*, %struct.cpuidle_driver*, i32)* @imx6sx_enter_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx6sx_enter_wait(%struct.cpuidle_device* %0, %struct.cpuidle_driver* %1, i32 %2) #0 {
  %4 = alloca %struct.cpuidle_device*, align 8
  %5 = alloca %struct.cpuidle_driver*, align 8
  %6 = alloca i32, align 4
  store %struct.cpuidle_device* %0, %struct.cpuidle_device** %4, align 8
  store %struct.cpuidle_driver* %1, %struct.cpuidle_driver** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @WAIT_UNCLOCKED, align 4
  %8 = call i32 @imx6_set_lpm(i32 %7)
  %9 = load i32, i32* %6, align 4
  switch i32 %9, label %25 [
    i32 1, label %10
    i32 2, label %12
  ]

10:                                               ; preds = %3
  %11 = call i32 (...) @cpu_do_idle()
  br label %26

12:                                               ; preds = %3
  %13 = call i32 @imx6_enable_rbc(i32 1)
  %14 = call i32 @imx_gpc_set_arm_power_in_lpm(i32 1)
  %15 = load i32, i32* @v7_cpu_resume, align 4
  %16 = call i32 @imx_set_cpu_jump(i32 0, i32 %15)
  %17 = call i32 (...) @cpu_pm_enter()
  %18 = call i32 (...) @cpu_cluster_pm_enter()
  %19 = load i32, i32* @imx6sx_idle_finish, align 4
  %20 = call i32 @cpu_suspend(i32 0, i32 %19)
  %21 = call i32 (...) @cpu_cluster_pm_exit()
  %22 = call i32 (...) @cpu_pm_exit()
  %23 = call i32 @imx_gpc_set_arm_power_in_lpm(i32 0)
  %24 = call i32 @imx6_enable_rbc(i32 0)
  br label %26

25:                                               ; preds = %3
  br label %26

26:                                               ; preds = %25, %12, %10
  %27 = load i32, i32* @WAIT_CLOCKED, align 4
  %28 = call i32 @imx6_set_lpm(i32 %27)
  %29 = load i32, i32* %6, align 4
  ret i32 %29
}

declare dso_local i32 @imx6_set_lpm(i32) #1

declare dso_local i32 @cpu_do_idle(...) #1

declare dso_local i32 @imx6_enable_rbc(i32) #1

declare dso_local i32 @imx_gpc_set_arm_power_in_lpm(i32) #1

declare dso_local i32 @imx_set_cpu_jump(i32, i32) #1

declare dso_local i32 @cpu_pm_enter(...) #1

declare dso_local i32 @cpu_cluster_pm_enter(...) #1

declare dso_local i32 @cpu_suspend(i32, i32) #1

declare dso_local i32 @cpu_cluster_pm_exit(...) #1

declare dso_local i32 @cpu_pm_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
