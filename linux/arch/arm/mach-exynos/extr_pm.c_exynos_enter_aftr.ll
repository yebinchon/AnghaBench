; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-exynos/extr_pm.c_exynos_enter_aftr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-exynos/extr_pm.c_exynos_enter_aftr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@C2_STATE = common dso_local global i32 0, align 4
@S5P_USE_STANDBY_WFI0 = common dso_local global i32 0, align 4
@S5P_USE_STANDBY_WFE0 = common dso_local global i32 0, align 4
@S5P_CENTRAL_SEQ_OPTION = common dso_local global i32 0, align 4
@exynos_aftr_finisher = common dso_local global i32 0, align 4
@ARM_CPU_PART_CORTEX_A9 = common dso_local global i64 0, align 8
@resume = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @exynos_enter_aftr() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @smp_processor_id()
  store i32 %2, i32* %1, align 4
  %3 = call i32 (...) @cpu_pm_enter()
  %4 = call i64 (...) @soc_is_exynos3250()
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %0
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @C2_STATE, align 4
  %9 = call i32 @exynos_set_boot_flag(i32 %7, i32 %8)
  br label %10

10:                                               ; preds = %6, %0
  %11 = call i32 (...) @exynos_pm_central_suspend()
  %12 = call i64 (...) @soc_is_exynos4412()
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %10
  %15 = load i32, i32* @S5P_USE_STANDBY_WFI0, align 4
  %16 = load i32, i32* @S5P_USE_STANDBY_WFE0, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @S5P_CENTRAL_SEQ_OPTION, align 4
  %19 = call i32 @pmu_raw_writel(i32 %17, i32 %18)
  br label %20

20:                                               ; preds = %14, %10
  %21 = load i32, i32* @exynos_aftr_finisher, align 4
  %22 = call i32 @cpu_suspend(i32 0, i32 %21)
  %23 = call i64 (...) @read_cpuid_part()
  %24 = load i64, i64* @ARM_CPU_PART_CORTEX_A9, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %20
  %27 = call i32 (...) @exynos_scu_enable()
  %28 = load i32, i32* @resume, align 4
  %29 = call i32 @call_firmware_op(i32 %28)
  %30 = load i32, i32* @ENOSYS, align 4
  %31 = sub nsw i32 0, %30
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = call i32 (...) @exynos_cpu_restore_register()
  br label %35

35:                                               ; preds = %33, %26
  br label %36

36:                                               ; preds = %35, %20
  %37 = call i32 (...) @exynos_pm_central_resume()
  %38 = call i64 (...) @soc_is_exynos3250()
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load i32, i32* %1, align 4
  %42 = load i32, i32* @C2_STATE, align 4
  %43 = call i32 @exynos_clear_boot_flag(i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %40, %36
  %45 = call i32 (...) @cpu_pm_exit()
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @cpu_pm_enter(...) #1

declare dso_local i64 @soc_is_exynos3250(...) #1

declare dso_local i32 @exynos_set_boot_flag(i32, i32) #1

declare dso_local i32 @exynos_pm_central_suspend(...) #1

declare dso_local i64 @soc_is_exynos4412(...) #1

declare dso_local i32 @pmu_raw_writel(i32, i32) #1

declare dso_local i32 @cpu_suspend(i32, i32) #1

declare dso_local i64 @read_cpuid_part(...) #1

declare dso_local i32 @exynos_scu_enable(...) #1

declare dso_local i32 @call_firmware_op(i32) #1

declare dso_local i32 @exynos_cpu_restore_register(...) #1

declare dso_local i32 @exynos_pm_central_resume(...) #1

declare dso_local i32 @exynos_clear_boot_flag(i32, i32) #1

declare dso_local i32 @cpu_pm_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
