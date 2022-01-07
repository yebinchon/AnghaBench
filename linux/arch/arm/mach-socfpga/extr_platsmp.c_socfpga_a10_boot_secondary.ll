; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-socfpga/extr_platsmp.c_socfpga_a10_boot_secondary.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-socfpga/extr_platsmp.c_socfpga_a10_boot_secondary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }

@secondary_trampoline_end = common dso_local global i32 0, align 4
@secondary_trampoline = common dso_local global i32 0, align 4
@socfpga_cpu1start_addr = common dso_local global i32 0, align 4
@RSTMGR_MPUMODRST_CPU1 = common dso_local global i32 0, align 4
@rst_manager_base_addr = common dso_local global i64 0, align 8
@SOCFPGA_A10_RSTMGR_MODMPURST = common dso_local global i64 0, align 8
@secondary_startup = common dso_local global i32 0, align 4
@sys_manager_base_addr = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.task_struct*)* @socfpga_a10_boot_secondary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @socfpga_a10_boot_secondary(i32 %0, %struct.task_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.task_struct* %1, %struct.task_struct** %4, align 8
  store i32 trunc (i64 sdiv exact (i64 sub (i64 ptrtoint (i32* @secondary_trampoline_end to i64), i64 ptrtoint (i32* @secondary_trampoline to i64)), i64 4) to i32), i32* %5, align 4
  %6 = load i32, i32* @socfpga_cpu1start_addr, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %33

8:                                                ; preds = %2
  %9 = load i32, i32* @RSTMGR_MPUMODRST_CPU1, align 4
  %10 = load i64, i64* @rst_manager_base_addr, align 8
  %11 = load i64, i64* @SOCFPGA_A10_RSTMGR_MODMPURST, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @writel(i32 %9, i64 %12)
  %14 = call i32 @phys_to_virt(i32 0)
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @memcpy(i32 %14, i32* @secondary_trampoline, i32 %15)
  %17 = load i32, i32* @secondary_startup, align 4
  %18 = call i32 @__pa_symbol(i32 %17)
  %19 = load i64, i64* @sys_manager_base_addr, align 8
  %20 = load i32, i32* @socfpga_cpu1start_addr, align 4
  %21 = and i32 %20, 4095
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %19, %22
  %24 = call i32 @writel(i32 %18, i64 %23)
  %25 = call i32 (...) @flush_cache_all()
  %26 = call i32 (...) @smp_wmb()
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @outer_clean_range(i32 0, i32 %27)
  %29 = load i64, i64* @rst_manager_base_addr, align 8
  %30 = load i64, i64* @SOCFPGA_A10_RSTMGR_MODMPURST, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @writel(i32 0, i64 %31)
  br label %33

33:                                               ; preds = %8, %2
  ret i32 0
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @phys_to_virt(i32) #1

declare dso_local i32 @__pa_symbol(i32) #1

declare dso_local i32 @flush_cache_all(...) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @outer_clean_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
