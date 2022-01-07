; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_prm2xxx.c_omap2xxx_clkdm_sleep.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_prm2xxx.c_omap2xxx_clkdm_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clockdomain = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@OMAP24XX_FORCESTATE_MASK = common dso_local global i32 0, align 4
@OMAP2_PM_PWSTCTRL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap2xxx_clkdm_sleep(%struct.clockdomain* %0) #0 {
  %2 = alloca %struct.clockdomain*, align 8
  store %struct.clockdomain* %0, %struct.clockdomain** %2, align 8
  %3 = load i32, i32* @OMAP24XX_FORCESTATE_MASK, align 4
  %4 = load %struct.clockdomain*, %struct.clockdomain** %2, align 8
  %5 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @OMAP2_PM_PWSTCTRL, align 4
  %11 = call i32 @omap2_prm_set_mod_reg_bits(i32 %3, i32 %9, i32 %10)
  ret i32 0
}

declare dso_local i32 @omap2_prm_set_mod_reg_bits(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
