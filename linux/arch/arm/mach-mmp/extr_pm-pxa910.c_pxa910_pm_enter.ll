; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-mmp/extr_pm-pxa910.c_pxa910_pm_enter.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-mmp/extr_pm-pxa910.c_pxa910_pm_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IRQ_PXA910_PMIC_INT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@APMU_MOH_IDLE_CFG = common dso_local global i32 0, align 4
@APMU_MOH_IDLE_CFG_MOH_PWRDWN = common dso_local global i32 0, align 4
@APMU_MOH_IDLE_CFG_MOH_SRAM_PWRDWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @pxa910_pm_enter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa910_pm_enter(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @IRQ_PXA910_PMIC_INT, align 4
  %7 = call i32 @ICU_INT_CONF(i32 %6)
  %8 = call i32 @__raw_readl(i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = and i32 %9, 3
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @EAGAIN, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %58

15:                                               ; preds = %1
  %16 = load i32, i32* @APMU_MOH_IDLE_CFG, align 4
  %17 = call i32 @__raw_readl(i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* @APMU_MOH_IDLE_CFG_MOH_PWRDWN, align 4
  %19 = load i32, i32* @APMU_MOH_IDLE_CFG_MOH_SRAM_PWRDWN, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* %4, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @APMU_MOH_IDLE_CFG, align 4
  %25 = call i32 @__raw_writel(i32 %23, i32 %24)
  %26 = call i32 (...) @outer_disable()
  br label %27

27:                                               ; preds = %33, %15
  %28 = call i32 @CIU_REG(i32 8)
  %29 = call i32 @readl(i32 %28)
  %30 = and i32 %29, 65536
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = call i32 @udelay(i32 1)
  br label %27

35:                                               ; preds = %27
  %36 = call i32 (...) @cpu_do_idle()
  %37 = call i32 (...) @outer_resume()
  br label %38

38:                                               ; preds = %44, %35
  %39 = call i32 @CIU_REG(i32 8)
  %40 = call i32 @readl(i32 %39)
  %41 = and i32 %40, 65536
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = call i32 @udelay(i32 1)
  br label %38

46:                                               ; preds = %38
  %47 = load i32, i32* @APMU_MOH_IDLE_CFG, align 4
  %48 = call i32 @__raw_readl(i32 %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* @APMU_MOH_IDLE_CFG_MOH_PWRDWN, align 4
  %50 = load i32, i32* @APMU_MOH_IDLE_CFG_MOH_SRAM_PWRDWN, align 4
  %51 = or i32 %49, %50
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %4, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @APMU_MOH_IDLE_CFG, align 4
  %57 = call i32 @__raw_writel(i32 %55, i32 %56)
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %46, %12
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @__raw_readl(i32) #1

declare dso_local i32 @ICU_INT_CONF(i32) #1

declare dso_local i32 @__raw_writel(i32, i32) #1

declare dso_local i32 @outer_disable(...) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @CIU_REG(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @cpu_do_idle(...) #1

declare dso_local i32 @outer_resume(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
