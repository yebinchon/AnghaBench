; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_prm33xx.c_am33xx_pwrdm_clear_all_prev_pwrst.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_prm33xx.c_am33xx_pwrdm_clear_all_prev_pwrst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.powerdomain = type { i32, i32 }

@AM33XX_LASTPOWERSTATEENTERED_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.powerdomain*)* @am33xx_pwrdm_clear_all_prev_pwrst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @am33xx_pwrdm_clear_all_prev_pwrst(%struct.powerdomain* %0) #0 {
  %2 = alloca %struct.powerdomain*, align 8
  store %struct.powerdomain* %0, %struct.powerdomain** %2, align 8
  %3 = load i32, i32* @AM33XX_LASTPOWERSTATEENTERED_MASK, align 4
  %4 = load i32, i32* @AM33XX_LASTPOWERSTATEENTERED_MASK, align 4
  %5 = load %struct.powerdomain*, %struct.powerdomain** %2, align 8
  %6 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.powerdomain*, %struct.powerdomain** %2, align 8
  %9 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @am33xx_prm_rmw_reg_bits(i32 %3, i32 %4, i32 %7, i32 %10)
  ret i32 0
}

declare dso_local i32 @am33xx_prm_rmw_reg_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
