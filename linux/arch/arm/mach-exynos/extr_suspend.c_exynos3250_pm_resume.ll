; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-exynos/extr_suspend.c_exynos3250_pm_resume.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-exynos/extr_suspend.c_exynos3250_pm_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S5P_USE_STANDBY_WFI_ALL = common dso_local global i32 0, align 4
@S5P_CENTRAL_SEQ_OPTION = common dso_local global i32 0, align 4
@resume = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@ARM_CPU_PART_CORTEX_A9 = common dso_local global i64 0, align 8
@S5P_INFORM1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @exynos3250_pm_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos3250_pm_resume() #0 {
  %1 = alloca i64, align 8
  %2 = call i64 (...) @read_cpuid_part()
  store i64 %2, i64* %1, align 8
  %3 = call i64 (...) @exynos_pm_central_resume()
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %22

6:                                                ; preds = %0
  %7 = load i32, i32* @S5P_USE_STANDBY_WFI_ALL, align 4
  %8 = load i32, i32* @S5P_CENTRAL_SEQ_OPTION, align 4
  %9 = call i32 @pmu_raw_writel(i32 %7, i32 %8)
  %10 = load i32, i32* @resume, align 4
  %11 = call i32 @call_firmware_op(i32 %10)
  %12 = load i32, i32* @ENOSYS, align 4
  %13 = sub nsw i32 0, %12
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %6
  %16 = load i64, i64* %1, align 8
  %17 = load i64, i64* @ARM_CPU_PART_CORTEX_A9, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = call i32 (...) @exynos_cpu_restore_register()
  br label %21

21:                                               ; preds = %19, %15, %6
  br label %22

22:                                               ; preds = %21, %5
  %23 = load i32, i32* @S5P_INFORM1, align 4
  %24 = call i32 @pmu_raw_writel(i32 0, i32 %23)
  ret void
}

declare dso_local i64 @read_cpuid_part(...) #1

declare dso_local i64 @exynos_pm_central_resume(...) #1

declare dso_local i32 @pmu_raw_writel(i32, i32) #1

declare dso_local i32 @call_firmware_op(i32) #1

declare dso_local i32 @exynos_cpu_restore_register(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
