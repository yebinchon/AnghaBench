; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-s5pv210/extr_pm.c_s5pv210_pm_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-s5pv210/extr_pm.c_s5pv210_pm_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@s5pv210_irqwake_intmask = common dso_local global i32 0, align 4
@S5P_WAKEUP_MASK = common dso_local global i32 0, align 4
@s5pv210_cpu_resume = common dso_local global i32 0, align 4
@S5P_INFORM0 = common dso_local global i32 0, align 4
@S5P_SLEEP_CFG = common dso_local global i32 0, align 4
@S5P_SLEEP_CFG_OSC_EN = common dso_local global i32 0, align 4
@S5P_SLEEP_CFG_USBOSC_EN = common dso_local global i32 0, align 4
@S5P_PWR_CFG = common dso_local global i32 0, align 4
@S5P_CFG_WFI_CLEAN = common dso_local global i32 0, align 4
@S5P_CFG_WFI_SLEEP = common dso_local global i32 0, align 4
@S5P_OTHERS = common dso_local global i32 0, align 4
@S5P_OTHER_SYSC_INTOFF = common dso_local global i32 0, align 4
@s5pv210_core_save = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @s5pv210_pm_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s5pv210_pm_prepare() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @s5pv210_irqwake_intmask, align 4
  %3 = load i32, i32* @S5P_WAKEUP_MASK, align 4
  %4 = call i32 @__raw_writel(i32 %2, i32 %3)
  %5 = load i32, i32* @s5pv210_cpu_resume, align 4
  %6 = call i32 @__pa_symbol(i32 %5)
  %7 = load i32, i32* @S5P_INFORM0, align 4
  %8 = call i32 @__raw_writel(i32 %6, i32 %7)
  %9 = load i32, i32* @S5P_SLEEP_CFG, align 4
  %10 = call i32 @__raw_readl(i32 %9)
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* @S5P_SLEEP_CFG_OSC_EN, align 4
  %12 = load i32, i32* @S5P_SLEEP_CFG_USBOSC_EN, align 4
  %13 = or i32 %11, %12
  %14 = xor i32 %13, -1
  %15 = load i32, i32* %1, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %1, align 4
  %17 = load i32, i32* %1, align 4
  %18 = load i32, i32* @S5P_SLEEP_CFG, align 4
  %19 = call i32 @__raw_writel(i32 %17, i32 %18)
  %20 = load i32, i32* @S5P_PWR_CFG, align 4
  %21 = call i32 @__raw_readl(i32 %20)
  store i32 %21, i32* %1, align 4
  %22 = load i32, i32* @S5P_CFG_WFI_CLEAN, align 4
  %23 = load i32, i32* %1, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %1, align 4
  %25 = load i32, i32* @S5P_CFG_WFI_SLEEP, align 4
  %26 = load i32, i32* %1, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %1, align 4
  %28 = load i32, i32* %1, align 4
  %29 = load i32, i32* @S5P_PWR_CFG, align 4
  %30 = call i32 @__raw_writel(i32 %28, i32 %29)
  %31 = load i32, i32* @S5P_OTHERS, align 4
  %32 = call i32 @__raw_readl(i32 %31)
  store i32 %32, i32* %1, align 4
  %33 = load i32, i32* @S5P_OTHER_SYSC_INTOFF, align 4
  %34 = load i32, i32* %1, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %1, align 4
  %36 = load i32, i32* %1, align 4
  %37 = load i32, i32* @S5P_OTHERS, align 4
  %38 = call i32 @__raw_writel(i32 %36, i32 %37)
  %39 = load i32, i32* @s5pv210_core_save, align 4
  %40 = load i32, i32* @s5pv210_core_save, align 4
  %41 = call i32 @ARRAY_SIZE(i32 %40)
  %42 = call i32 @s3c_pm_do_save(i32 %39, i32 %41)
  ret void
}

declare dso_local i32 @__raw_writel(i32, i32) #1

declare dso_local i32 @__pa_symbol(i32) #1

declare dso_local i32 @__raw_readl(i32) #1

declare dso_local i32 @s3c_pm_do_save(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
