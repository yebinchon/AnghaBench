; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-exynos/extr_suspend.c_exynos_pm_resume.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-exynos/extr_suspend.c_exynos_pm_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ARM_CPU_PART_CORTEX_A9 = common dso_local global i64 0, align 8
@resume = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@S5P_INFORM1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @exynos_pm_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos_pm_resume() #0 {
  %1 = alloca i64, align 8
  %2 = call i64 (...) @read_cpuid_part()
  store i64 %2, i64* %1, align 8
  %3 = call i64 (...) @exynos_pm_central_resume()
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %25

6:                                                ; preds = %0
  %7 = load i64, i64* %1, align 8
  %8 = load i64, i64* @ARM_CPU_PART_CORTEX_A9, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = call i32 (...) @exynos_scu_enable()
  br label %12

12:                                               ; preds = %10, %6
  %13 = load i32, i32* @resume, align 4
  %14 = call i32 @call_firmware_op(i32 %13)
  %15 = load i32, i32* @ENOSYS, align 4
  %16 = sub nsw i32 0, %15
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %12
  %19 = load i64, i64* %1, align 8
  %20 = load i64, i64* @ARM_CPU_PART_CORTEX_A9, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = call i32 (...) @exynos_cpu_restore_register()
  br label %24

24:                                               ; preds = %22, %18, %12
  br label %25

25:                                               ; preds = %24, %5
  %26 = load i32, i32* @S5P_INFORM1, align 4
  %27 = call i32 @pmu_raw_writel(i32 0, i32 %26)
  %28 = call i32 @exynos_set_delayed_reset_assertion(i32 1)
  ret void
}

declare dso_local i64 @read_cpuid_part(...) #1

declare dso_local i64 @exynos_pm_central_resume(...) #1

declare dso_local i32 @exynos_scu_enable(...) #1

declare dso_local i32 @call_firmware_op(i32) #1

declare dso_local i32 @exynos_cpu_restore_register(...) #1

declare dso_local i32 @pmu_raw_writel(i32, i32) #1

declare dso_local i32 @exynos_set_delayed_reset_assertion(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
