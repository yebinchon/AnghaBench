; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-mmp/extr_pm-mmp2.c_mmp2_pm_enter_lowpower_mode.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-mmp/extr_pm-mmp2.c_mmp2_pm_enter_lowpower_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@APMU_PJ_IDLE_CFG = common dso_local global i32 0, align 4
@MPMU_PCR_PJ = common dso_local global i32 0, align 4
@MPMU_PCR_PJ_SLPEN = common dso_local global i32 0, align 4
@MPMU_PCR_PJ_DDRCORSD = common dso_local global i32 0, align 4
@MPMU_PCR_PJ_APBSD = common dso_local global i32 0, align 4
@MPMU_PCR_PJ_AXISD = common dso_local global i32 0, align 4
@MPMU_PCR_PJ_VCTCXOSD = common dso_local global i32 0, align 4
@APMU_PJ_IDLE_CFG_PJ_IDLE = common dso_local global i32 0, align 4
@APMU_PJ_IDLE_CFG_PJ_PWRDWN = common dso_local global i32 0, align 4
@MPMU_PCR_PJ_SPSD = common dso_local global i32 0, align 4
@APMU_PJ_IDLE_CFG_ISO_MODE_CNTRL_MASK = common dso_local global i32 0, align 4
@APMU_PJ_IDLE_CFG_L2_PWR_SW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mmp2_pm_enter_lowpower_mode(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @APMU_PJ_IDLE_CFG, align 4
  %6 = call i32 @__raw_readl(i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @MPMU_PCR_PJ, align 4
  %8 = call i32 @__raw_readl(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* @MPMU_PCR_PJ_SLPEN, align 4
  %10 = load i32, i32* @MPMU_PCR_PJ_DDRCORSD, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @MPMU_PCR_PJ_APBSD, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @MPMU_PCR_PJ_AXISD, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @MPMU_PCR_PJ_VCTCXOSD, align 4
  %17 = or i32 %15, %16
  %18 = or i32 %17, 8192
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* @APMU_PJ_IDLE_CFG_PJ_IDLE, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %3, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %2, align 4
  switch i32 %26, label %73 [
    i32 128, label %27
    i32 131, label %34
    i32 132, label %38
    i32 133, label %42
    i32 130, label %55
    i32 129, label %68
  ]

27:                                               ; preds = %1
  %28 = load i32, i32* @MPMU_PCR_PJ_SLPEN, align 4
  %29 = load i32, i32* %4, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* @MPMU_PCR_PJ_VCTCXOSD, align 4
  %32 = load i32, i32* %4, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %1, %27
  %35 = load i32, i32* @MPMU_PCR_PJ_SLPEN, align 4
  %36 = load i32, i32* %4, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %1, %34
  %39 = load i32, i32* @MPMU_PCR_PJ_APBSD, align 4
  %40 = load i32, i32* %4, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %1, %38
  %43 = load i32, i32* @MPMU_PCR_PJ_AXISD, align 4
  %44 = load i32, i32* %4, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* @MPMU_PCR_PJ_DDRCORSD, align 4
  %47 = load i32, i32* %4, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* @APMU_PJ_IDLE_CFG_PJ_PWRDWN, align 4
  %50 = load i32, i32* %3, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* @MPMU_PCR_PJ_SPSD, align 4
  %53 = load i32, i32* %4, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %1, %42
  %56 = load i32, i32* @APMU_PJ_IDLE_CFG_PJ_IDLE, align 4
  %57 = load i32, i32* %3, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %3, align 4
  %59 = load i32, i32* @APMU_PJ_IDLE_CFG_ISO_MODE_CNTRL_MASK, align 4
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %3, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %3, align 4
  %63 = call i32 @APMU_PJ_IDLE_CFG_PWR_SW(i32 3)
  %64 = load i32, i32* @APMU_PJ_IDLE_CFG_L2_PWR_SW, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* %3, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %3, align 4
  br label %73

68:                                               ; preds = %1
  %69 = load i32, i32* @MPMU_PCR_PJ_SPSD, align 4
  %70 = xor i32 %69, -1
  %71 = load i32, i32* %4, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %1, %68, %55
  %74 = load i32, i32* %4, align 4
  %75 = or i32 %74, 1107296256
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* %3, align 4
  %77 = load i32, i32* @APMU_PJ_IDLE_CFG, align 4
  %78 = call i32 @__raw_writel(i32 %76, i32 %77)
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @MPMU_PCR_PJ, align 4
  %81 = call i32 @__raw_writel(i32 %79, i32 %80)
  ret void
}

declare dso_local i32 @__raw_readl(i32) #1

declare dso_local i32 @APMU_PJ_IDLE_CFG_PWR_SW(i32) #1

declare dso_local i32 @__raw_writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
