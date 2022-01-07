; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-exynos/extr_suspend.c_exynos5420_cpu_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-exynos/extr_suspend.c_exynos5420_cpu_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONFIG_EXYNOS_MCPM = common dso_local global i32 0, align 4
@exynos_cpu_resume = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to suspend the system\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @exynos5420_cpu_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos5420_cpu_suspend(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %6 = call i32 (...) @read_cpuid_mpidr()
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @MPIDR_AFFINITY_LEVEL(i32 %7, i32 1)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @MPIDR_AFFINITY_LEVEL(i32 %9, i32 0)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* @CONFIG_EXYNOS_MCPM, align 4
  %12 = call i64 @IS_ENABLED(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @exynos_cpu_resume, align 4
  %18 = call i32 @mcpm_set_entry_vector(i32 %15, i32 %16, i32 %17)
  %19 = call i32 (...) @mcpm_cpu_suspend()
  br label %20

20:                                               ; preds = %14, %1
  %21 = call i32 @pr_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  ret i32 1
}

declare dso_local i32 @read_cpuid_mpidr(...) #1

declare dso_local i32 @MPIDR_AFFINITY_LEVEL(i32, i32) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @mcpm_set_entry_vector(i32, i32, i32) #1

declare dso_local i32 @mcpm_cpu_suspend(...) #1

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
