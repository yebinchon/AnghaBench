; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-exynos/extr_firmware.c_exynos_cpu_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-exynos/extr_firmware.c_exynos_cpu_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SMC_CMD_SLEEP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to suspend the system\0A\00", align 1
@sysram_ns_base_addr = common dso_local global i64 0, align 8
@EXYNOS_BOOT_FLAG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @exynos_cpu_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_cpu_suspend(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = call i32 (...) @flush_cache_all()
  %4 = call i32 (...) @outer_flush_all()
  %5 = load i32, i32* @SMC_CMD_SLEEP, align 4
  %6 = call i32 @exynos_smc(i32 %5, i32 0, i32 0, i32 0)
  %7 = call i32 @pr_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %8 = load i64, i64* @sysram_ns_base_addr, align 8
  %9 = load i64, i64* @EXYNOS_BOOT_FLAG, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @writel(i32 0, i64 %10)
  ret i32 1
}

declare dso_local i32 @flush_cache_all(...) #1

declare dso_local i32 @outer_flush_all(...) #1

declare dso_local i32 @exynos_smc(i32, i32, i32, i32) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
