; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-exynos/extr_mcpm-exynos.c_exynos_mcpm_setup_entry_point.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-exynos/extr_mcpm-exynos.c_exynos_mcpm_setup_entry_point.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ns_sram_base_addr = common dso_local global i64 0, align 8
@mcpm_entry_point = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @exynos_mcpm_setup_entry_point to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos_mcpm_setup_entry_point() #0 {
  %1 = load i64, i64* @ns_sram_base_addr, align 8
  %2 = call i32 @__raw_writel(i32 -442564608, i64 %1)
  %3 = load i64, i64* @ns_sram_base_addr, align 8
  %4 = add nsw i64 %3, 4
  %5 = call i32 @__raw_writel(i32 -516948208, i64 %4)
  %6 = load i32, i32* @mcpm_entry_point, align 4
  %7 = call i32 @__pa_symbol(i32 %6)
  %8 = load i64, i64* @ns_sram_base_addr, align 8
  %9 = add nsw i64 %8, 8
  %10 = call i32 @__raw_writel(i32 %7, i64 %9)
  ret void
}

declare dso_local i32 @__raw_writel(i32, i64) #1

declare dso_local i32 @__pa_symbol(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
