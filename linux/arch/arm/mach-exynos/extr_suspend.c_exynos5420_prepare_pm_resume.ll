; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-exynos/extr_suspend.c_exynos5420_prepare_pm_resume.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-exynos/extr_suspend.c_exynos5420_prepare_pm_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONFIG_EXYNOS_MCPM = common dso_local global i32 0, align 4
@CONFIG_HW_PERF_EVENTS = common dso_local global i32 0, align 4
@S5P_CORE_LOCAL_PWR_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @exynos5420_prepare_pm_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos5420_prepare_pm_resume() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @read_cpuid_mpidr()
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  %5 = call i32 @MPIDR_AFFINITY_LEVEL(i32 %4, i32 1)
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* @CONFIG_EXYNOS_MCPM, align 4
  %7 = call i64 @IS_ENABLED(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %0
  %10 = call i32 (...) @mcpm_cpu_powered_up()
  %11 = call i32 @WARN_ON(i32 %10)
  br label %12

12:                                               ; preds = %9, %0
  %13 = load i32, i32* @CONFIG_HW_PERF_EVENTS, align 4
  %14 = call i64 @IS_ENABLED(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %12
  %17 = load i32, i32* %2, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load i32, i32* @S5P_CORE_LOCAL_PWR_EN, align 4
  %21 = call i32 @EXYNOS_COMMON_CONFIGURATION(i32 0)
  %22 = call i32 @pmu_raw_writel(i32 %20, i32 %21)
  %23 = call i32 @EXYNOS_COMMON_CONFIGURATION(i32 0)
  %24 = call i32 @pmu_raw_writel(i32 0, i32 %23)
  br label %25

25:                                               ; preds = %19, %16, %12
  ret void
}

declare dso_local i32 @read_cpuid_mpidr(...) #1

declare dso_local i32 @MPIDR_AFFINITY_LEVEL(i32, i32) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mcpm_cpu_powered_up(...) #1

declare dso_local i32 @pmu_raw_writel(i32, i32) #1

declare dso_local i32 @EXYNOS_COMMON_CONFIGURATION(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
