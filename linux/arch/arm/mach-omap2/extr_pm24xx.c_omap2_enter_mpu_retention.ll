; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_pm24xx.c_omap2_enter_mpu_retention.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_pm24xx.c_omap2_enter_mpu_retention.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CORE_MOD = common dso_local global i32 0, align 4
@PM_WKST1 = common dso_local global i32 0, align 4
@OMAP24XX_PM_WKST2 = common dso_local global i32 0, align 4
@WKUP_MOD = common dso_local global i32 0, align 4
@PM_WKST = common dso_local global i32 0, align 4
@mpu_pwrdm = common dso_local global i32 0, align 4
@PWRDM_POWER_RET = common dso_local global i32 0, align 4
@PWRDM_POWER_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @omap2_enter_mpu_retention to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap2_enter_mpu_retention() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i64 (...) @omap2_allow_mpu_retention()
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %17

4:                                                ; preds = %0
  %5 = load i32, i32* @CORE_MOD, align 4
  %6 = load i32, i32* @PM_WKST1, align 4
  %7 = call i32 @omap_prm_clear_mod_irqs(i32 %5, i32 %6, i32 -1)
  %8 = load i32, i32* @CORE_MOD, align 4
  %9 = load i32, i32* @OMAP24XX_PM_WKST2, align 4
  %10 = call i32 @omap_prm_clear_mod_irqs(i32 %8, i32 %9, i32 -1)
  %11 = load i32, i32* @WKUP_MOD, align 4
  %12 = load i32, i32* @PM_WKST, align 4
  %13 = call i32 @omap_prm_clear_mod_irqs(i32 %11, i32 %12, i32 -1)
  %14 = load i32, i32* @mpu_pwrdm, align 4
  %15 = load i32, i32* @PWRDM_POWER_RET, align 4
  %16 = call i32 @pwrdm_set_next_pwrst(i32 %14, i32 %15)
  br label %21

17:                                               ; preds = %0
  %18 = load i32, i32* @mpu_pwrdm, align 4
  %19 = load i32, i32* @PWRDM_POWER_ON, align 4
  %20 = call i32 @pwrdm_set_next_pwrst(i32 %18, i32 %19)
  br label %21

21:                                               ; preds = %17, %4
  call void asm sideeffect "mcr p15, 0, $0, c7, c0, 4", "r,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i32 0) #2, !srcloc !2
  %22 = load i32, i32* @mpu_pwrdm, align 4
  %23 = load i32, i32* @PWRDM_POWER_ON, align 4
  %24 = call i32 @pwrdm_set_next_pwrst(i32 %22, i32 %23)
  ret void
}

declare dso_local i64 @omap2_allow_mpu_retention(...) #1

declare dso_local i32 @omap_prm_clear_mod_irqs(i32, i32, i32) #1

declare dso_local i32 @pwrdm_set_next_pwrst(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 832}
