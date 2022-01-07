; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-exynos/extr_firmware.c_exynos_do_idle.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-exynos/extr_firmware.c_exynos_do_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ARM_CPU_PART_CORTEX_A9 = common dso_local global i32 0, align 4
@exynos_cpu_resume_ns = common dso_local global i32 0, align 4
@sysram_ns_base_addr = common dso_local global i32 0, align 4
@EXYNOS_AFTR_MAGIC = common dso_local global i32 0, align 4
@SMC_CMD_SAVE = common dso_local global i32 0, align 4
@OP_TYPE_CORE = common dso_local global i32 0, align 4
@SMC_POWERSTATE_IDLE = common dso_local global i32 0, align 4
@SMC_CMD_SHUTDOWN = common dso_local global i32 0, align 4
@OP_TYPE_CLUSTER = common dso_local global i32 0, align 4
@SMC_CMD_CPU0AFTR = common dso_local global i32 0, align 4
@SMC_CMD_SLEEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @exynos_do_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_do_idle(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  switch i64 %3, label %39 [
    i64 129, label %4
    i64 128, label %36
  ]

4:                                                ; preds = %1
  %5 = call i32 (...) @read_cpuid_part()
  %6 = load i32, i32* @ARM_CPU_PART_CORTEX_A9, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = call i32 (...) @exynos_save_cp15()
  br label %10

10:                                               ; preds = %8, %4
  %11 = load i32, i32* @exynos_cpu_resume_ns, align 4
  %12 = call i32 @__pa_symbol(i32 %11)
  %13 = load i32, i32* @sysram_ns_base_addr, align 4
  %14 = add nsw i32 %13, 36
  %15 = call i32 @writel_relaxed(i32 %12, i32 %14)
  %16 = load i32, i32* @EXYNOS_AFTR_MAGIC, align 4
  %17 = load i32, i32* @sysram_ns_base_addr, align 4
  %18 = add nsw i32 %17, 32
  %19 = call i32 @writel_relaxed(i32 %16, i32 %18)
  %20 = call i32 (...) @soc_is_exynos3250()
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %10
  %23 = call i32 (...) @flush_cache_all()
  %24 = load i32, i32* @SMC_CMD_SAVE, align 4
  %25 = load i32, i32* @OP_TYPE_CORE, align 4
  %26 = load i32, i32* @SMC_POWERSTATE_IDLE, align 4
  %27 = call i32 @exynos_smc(i32 %24, i32 %25, i32 %26, i32 0)
  %28 = load i32, i32* @SMC_CMD_SHUTDOWN, align 4
  %29 = load i32, i32* @OP_TYPE_CLUSTER, align 4
  %30 = load i32, i32* @SMC_POWERSTATE_IDLE, align 4
  %31 = call i32 @exynos_smc(i32 %28, i32 %29, i32 %30, i32 0)
  br label %35

32:                                               ; preds = %10
  %33 = load i32, i32* @SMC_CMD_CPU0AFTR, align 4
  %34 = call i32 @exynos_smc(i32 %33, i32 0, i32 0, i32 0)
  br label %35

35:                                               ; preds = %32, %22
  br label %39

36:                                               ; preds = %1
  %37 = load i32, i32* @SMC_CMD_SLEEP, align 4
  %38 = call i32 @exynos_smc(i32 %37, i32 0, i32 0, i32 0)
  br label %39

39:                                               ; preds = %36, %1, %35
  ret i32 0
}

declare dso_local i32 @read_cpuid_part(...) #1

declare dso_local i32 @exynos_save_cp15(...) #1

declare dso_local i32 @writel_relaxed(i32, i32) #1

declare dso_local i32 @__pa_symbol(i32) #1

declare dso_local i32 @soc_is_exynos3250(...) #1

declare dso_local i32 @flush_cache_all(...) #1

declare dso_local i32 @exynos_smc(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
