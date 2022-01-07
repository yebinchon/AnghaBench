; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_powerdomains3xxx_data.c_ti81xx_pwrdm_read_pwrst.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_powerdomains3xxx_data.c_ti81xx_pwrdm_read_pwrst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.powerdomain = type { i64 }

@TI814X_PRM_GFX_MOD = common dso_local global i64 0, align 8
@TI81XX_RM_RSTCTRL = common dso_local global i32 0, align 4
@TI81XX_PM_PWSTST = common dso_local global i32 0, align 4
@OMAP_POWERSTATEST_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.powerdomain*)* @ti81xx_pwrdm_read_pwrst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti81xx_pwrdm_read_pwrst(%struct.powerdomain* %0) #0 {
  %2 = alloca %struct.powerdomain*, align 8
  store %struct.powerdomain* %0, %struct.powerdomain** %2, align 8
  %3 = load %struct.powerdomain*, %struct.powerdomain** %2, align 8
  %4 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.powerdomain*, %struct.powerdomain** %2, align 8
  %7 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @TI814X_PRM_GFX_MOD, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @TI81XX_RM_RSTCTRL, align 4
  br label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @TI81XX_PM_PWSTST, align 4
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i32 [ %12, %11 ], [ %14, %13 ]
  %17 = load i32, i32* @OMAP_POWERSTATEST_MASK, align 4
  %18 = call i32 @omap2_prm_read_mod_bits_shift(i64 %5, i32 %16, i32 %17)
  ret i32 %18
}

declare dso_local i32 @omap2_prm_read_mod_bits_shift(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
