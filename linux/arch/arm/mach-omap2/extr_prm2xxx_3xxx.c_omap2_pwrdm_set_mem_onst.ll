; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_prm2xxx_3xxx.c_omap2_pwrdm_set_mem_onst.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_prm2xxx_3xxx.c_omap2_pwrdm_set_mem_onst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.powerdomain = type { i32 }

@OMAP2_PM_PWSTCTRL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap2_pwrdm_set_mem_onst(%struct.powerdomain* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.powerdomain*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.powerdomain* %0, %struct.powerdomain** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @omap2_pwrdm_get_mem_bank_onstate_mask(i32 %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @__ffs(i32 %12)
  %14 = shl i32 %11, %13
  %15 = load %struct.powerdomain*, %struct.powerdomain** %4, align 8
  %16 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @OMAP2_PM_PWSTCTRL, align 4
  %19 = call i32 @omap2_prm_rmw_mod_reg_bits(i32 %10, i32 %14, i32 %17, i32 %18)
  ret i32 0
}

declare dso_local i32 @omap2_pwrdm_get_mem_bank_onstate_mask(i32) #1

declare dso_local i32 @omap2_prm_rmw_mod_reg_bits(i32, i32, i32, i32) #1

declare dso_local i32 @__ffs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
