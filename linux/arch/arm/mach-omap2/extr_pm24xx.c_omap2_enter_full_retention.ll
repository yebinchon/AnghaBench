; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_pm24xx.c_omap2_enter_full_retention.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_pm24xx.c_omap2_enter_full_retention.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@osc_ck = common dso_local global i32 0, align 4
@CORE_MOD = common dso_local global i32 0, align 4
@PM_WKST1 = common dso_local global i32 0, align 4
@OMAP24XX_PM_WKST2 = common dso_local global i32 0, align 4
@WKUP_MOD = common dso_local global i32 0, align 4
@PM_WKST = common dso_local global i32 0, align 4
@core_pwrdm = common dso_local global i32 0, align 4
@PWRDM_POWER_RET = common dso_local global i32 0, align 4
@mpu_pwrdm = common dso_local global i32 0, align 4
@OMAP2_CONTROL_DEVCONF0 = common dso_local global i32 0, align 4
@OMAP24XX_USBSTANDBYCTRL = common dso_local global i32 0, align 4
@SDRC_DLLA_CTRL = common dso_local global i32 0, align 4
@SDRC_POWER = common dso_local global i32 0, align 4
@OCP_MOD = common dso_local global i32 0, align 4
@OMAP2_PRCM_IRQSTATUS_MPU_OFFSET = common dso_local global i32 0, align 4
@PWRDM_POWER_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @omap2_enter_full_retention to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap2_enter_full_retention() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @osc_ck, align 4
  %3 = call i32 @clk_disable(i32 %2)
  %4 = load i32, i32* @CORE_MOD, align 4
  %5 = load i32, i32* @PM_WKST1, align 4
  %6 = call i32 @omap_prm_clear_mod_irqs(i32 %4, i32 %5, i32 -1)
  %7 = load i32, i32* @CORE_MOD, align 4
  %8 = load i32, i32* @OMAP24XX_PM_WKST2, align 4
  %9 = call i32 @omap_prm_clear_mod_irqs(i32 %7, i32 %8, i32 -1)
  %10 = load i32, i32* @WKUP_MOD, align 4
  %11 = load i32, i32* @PM_WKST, align 4
  %12 = call i32 @omap_prm_clear_mod_irqs(i32 %10, i32 %11, i32 -1)
  %13 = load i32, i32* @core_pwrdm, align 4
  %14 = load i32, i32* @PWRDM_POWER_RET, align 4
  %15 = call i32 @pwrdm_set_next_pwrst(i32 %13, i32 %14)
  %16 = load i32, i32* @mpu_pwrdm, align 4
  %17 = load i32, i32* @PWRDM_POWER_RET, align 4
  %18 = call i32 @pwrdm_set_next_pwrst(i32 %16, i32 %17)
  %19 = load i32, i32* @OMAP2_CONTROL_DEVCONF0, align 4
  %20 = call i32 @omap_ctrl_readl(i32 %19)
  %21 = load i32, i32* @OMAP24XX_USBSTANDBYCTRL, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %1, align 4
  %23 = load i32, i32* %1, align 4
  %24 = load i32, i32* @OMAP2_CONTROL_DEVCONF0, align 4
  %25 = call i32 @omap_ctrl_writel(i32 %23, i32 %24)
  %26 = call i32 (...) @cpu_cluster_pm_enter()
  %27 = call i64 (...) @omap_irq_pending()
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %0
  br label %38

30:                                               ; preds = %0
  %31 = load i32, i32* @SDRC_DLLA_CTRL, align 4
  %32 = call i32 @sdrc_read_reg(i32 %31)
  %33 = load i32, i32* @SDRC_DLLA_CTRL, align 4
  %34 = call i32 @OMAP_SDRC_REGADDR(i32 %33)
  %35 = load i32, i32* @SDRC_POWER, align 4
  %36 = call i32 @OMAP_SDRC_REGADDR(i32 %35)
  %37 = call i32 @omap2_sram_suspend(i32 %32, i32 %34, i32 %36)
  br label %38

38:                                               ; preds = %30, %29
  %39 = call i32 (...) @cpu_cluster_pm_exit()
  %40 = load i32, i32* @osc_ck, align 4
  %41 = call i32 @clk_enable(i32 %40)
  %42 = load i32, i32* @CORE_MOD, align 4
  %43 = load i32, i32* @PM_WKST1, align 4
  %44 = call i32 @omap_prm_clear_mod_irqs(i32 %42, i32 %43, i32 -1)
  %45 = load i32, i32* @CORE_MOD, align 4
  %46 = load i32, i32* @OMAP24XX_PM_WKST2, align 4
  %47 = call i32 @omap_prm_clear_mod_irqs(i32 %45, i32 %46, i32 -1)
  %48 = load i32, i32* @WKUP_MOD, align 4
  %49 = load i32, i32* @PM_WKST, align 4
  %50 = call i32 @omap_prm_clear_mod_irqs(i32 %48, i32 %49, i32 5)
  %51 = load i32, i32* @OCP_MOD, align 4
  %52 = load i32, i32* @OMAP2_PRCM_IRQSTATUS_MPU_OFFSET, align 4
  %53 = call i32 @omap_prm_clear_mod_irqs(i32 %51, i32 %52, i32 1)
  %54 = load i32, i32* @OCP_MOD, align 4
  %55 = load i32, i32* @OMAP2_PRCM_IRQSTATUS_MPU_OFFSET, align 4
  %56 = call i32 @omap_prm_clear_mod_irqs(i32 %54, i32 %55, i32 32)
  %57 = load i32, i32* @mpu_pwrdm, align 4
  %58 = load i32, i32* @PWRDM_POWER_ON, align 4
  %59 = call i32 @pwrdm_set_next_pwrst(i32 %57, i32 %58)
  %60 = load i32, i32* @core_pwrdm, align 4
  %61 = load i32, i32* @PWRDM_POWER_ON, align 4
  %62 = call i32 @pwrdm_set_next_pwrst(i32 %60, i32 %61)
  ret i32 0
}

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @omap_prm_clear_mod_irqs(i32, i32, i32) #1

declare dso_local i32 @pwrdm_set_next_pwrst(i32, i32) #1

declare dso_local i32 @omap_ctrl_readl(i32) #1

declare dso_local i32 @omap_ctrl_writel(i32, i32) #1

declare dso_local i32 @cpu_cluster_pm_enter(...) #1

declare dso_local i64 @omap_irq_pending(...) #1

declare dso_local i32 @omap2_sram_suspend(i32, i32, i32) #1

declare dso_local i32 @sdrc_read_reg(i32) #1

declare dso_local i32 @OMAP_SDRC_REGADDR(i32) #1

declare dso_local i32 @cpu_cluster_pm_exit(...) #1

declare dso_local i32 @clk_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
