; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-exynos/extr_firmware.c_exynos_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-exynos/extr_firmware.c_exynos_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ARM_CPU_PART_CORTEX_A9 = common dso_local global i64 0, align 8
@EXYNOS_SLEEP_MAGIC = common dso_local global i32 0, align 4
@sysram_ns_base_addr = common dso_local global i64 0, align 8
@EXYNOS_BOOT_FLAG = common dso_local global i64 0, align 8
@exynos_cpu_resume_ns = common dso_local global i32 0, align 4
@EXYNOS_BOOT_ADDR = common dso_local global i64 0, align 8
@exynos_cpu_suspend = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @exynos_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_suspend() #0 {
  %1 = call i64 (...) @read_cpuid_part()
  %2 = load i64, i64* @ARM_CPU_PART_CORTEX_A9, align 8
  %3 = icmp eq i64 %1, %2
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = call i32 (...) @exynos_save_cp15()
  br label %6

6:                                                ; preds = %4, %0
  %7 = load i32, i32* @EXYNOS_SLEEP_MAGIC, align 4
  %8 = load i64, i64* @sysram_ns_base_addr, align 8
  %9 = load i64, i64* @EXYNOS_BOOT_FLAG, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @writel(i32 %7, i64 %10)
  %12 = load i32, i32* @exynos_cpu_resume_ns, align 4
  %13 = call i32 @__pa_symbol(i32 %12)
  %14 = load i64, i64* @sysram_ns_base_addr, align 8
  %15 = load i64, i64* @EXYNOS_BOOT_ADDR, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @writel(i32 %13, i64 %16)
  %18 = load i32, i32* @exynos_cpu_suspend, align 4
  %19 = call i32 @cpu_suspend(i32 0, i32 %18)
  ret i32 %19
}

declare dso_local i64 @read_cpuid_part(...) #1

declare dso_local i32 @exynos_save_cp15(...) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @__pa_symbol(i32) #1

declare dso_local i32 @cpu_suspend(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
