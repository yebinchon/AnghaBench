; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_pm34xx.c_omap3_core_save_context.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_pm34xx.c_omap3_core_save_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OMAP343X_PADCONF_ETK_D14 = common dso_local global i32 0, align 4
@OMAP343X_CONTROL_MEM_WKUP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @omap3_core_save_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap3_core_save_context() #0 {
  %1 = call i32 (...) @omap3_ctrl_save_padconf()
  %2 = load i32, i32* @OMAP343X_PADCONF_ETK_D14, align 4
  %3 = call i32 @omap_ctrl_readl(i32 %2)
  %4 = load i64, i64* @OMAP343X_CONTROL_MEM_WKUP, align 8
  %5 = add nsw i64 %4, 672
  %6 = call i32 @omap_ctrl_writel(i32 %3, i64 %5)
  %7 = call i32 (...) @omap_intc_save_context()
  %8 = call i32 (...) @omap3_gpmc_save_context()
  %9 = call i32 (...) @omap3_control_save_context()
  %10 = call i32 (...) @omap_dma_global_context_save()
  ret void
}

declare dso_local i32 @omap3_ctrl_save_padconf(...) #1

declare dso_local i32 @omap_ctrl_writel(i32, i64) #1

declare dso_local i32 @omap_ctrl_readl(i32) #1

declare dso_local i32 @omap_intc_save_context(...) #1

declare dso_local i32 @omap3_gpmc_save_context(...) #1

declare dso_local i32 @omap3_control_save_context(...) #1

declare dso_local i32 @omap_dma_global_context_save(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
