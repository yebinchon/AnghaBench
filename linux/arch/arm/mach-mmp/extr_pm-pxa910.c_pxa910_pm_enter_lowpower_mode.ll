; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-mmp/extr_pm-pxa910.c_pxa910_pm_enter_lowpower_mode.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-mmp/extr_pm-pxa910.c_pxa910_pm_enter_lowpower_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@APMU_MOH_IDLE_CFG = common dso_local global i32 0, align 4
@MPMU_APCR = common dso_local global i32 0, align 4
@MPMU_APCR_DDRCORSD = common dso_local global i32 0, align 4
@MPMU_APCR_APBSD = common dso_local global i32 0, align 4
@MPMU_APCR_AXISD = common dso_local global i32 0, align 4
@MPMU_APCR_VCTCXOSD = common dso_local global i32 0, align 4
@MPMU_APCR_STBYEN = common dso_local global i32 0, align 4
@APMU_MOH_IDLE_CFG_MOH_IDLE = common dso_local global i32 0, align 4
@APMU_MOH_IDLE_CFG_MOH_PWRDWN = common dso_local global i32 0, align 4
@MPMU_APCR_SLPEN = common dso_local global i32 0, align 4
@APMU_MOH_IDLE_CFG_MOH_DIS_MC_SW_REQ = common dso_local global i32 0, align 4
@APMU_MOH_IDLE_CFG_MOH_MC_WAKE_EN = common dso_local global i32 0, align 4
@APMU_MC_HW_SLP_TYPE = common dso_local global i32 0, align 4
@MPMU_APCR_DSPSD = common dso_local global i32 0, align 4
@MPMU_APCR_DTCMSD = common dso_local global i32 0, align 4
@MPMU_APCR_BBSD = common dso_local global i32 0, align 4
@MPMU_APCR_MSASLPEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pxa910_pm_enter_lowpower_mode(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @APMU_MOH_IDLE_CFG, align 4
  %6 = call i32 @__raw_readl(i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @MPMU_APCR, align 4
  %8 = call i32 @__raw_readl(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* @MPMU_APCR_DDRCORSD, align 4
  %10 = load i32, i32* @MPMU_APCR_APBSD, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @MPMU_APCR_AXISD, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @MPMU_APCR_VCTCXOSD, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @MPMU_APCR_STBYEN, align 4
  %17 = or i32 %15, %16
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %4, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* @APMU_MOH_IDLE_CFG_MOH_IDLE, align 4
  %22 = load i32, i32* @APMU_MOH_IDLE_CFG_MOH_PWRDWN, align 4
  %23 = or i32 %21, %22
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %3, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %2, align 4
  switch i32 %27, label %62 [
    i32 128, label %28
    i32 129, label %34
    i32 132, label %41
    i32 133, label %45
    i32 131, label %49
    i32 130, label %61
  ]

28:                                               ; preds = %1
  %29 = load i32, i32* @MPMU_APCR_STBYEN, align 4
  %30 = load i32, i32* @MPMU_APCR_APBSD, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* %4, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %1, %28
  %35 = load i32, i32* @MPMU_APCR_SLPEN, align 4
  %36 = load i32, i32* %4, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* @MPMU_APCR_VCTCXOSD, align 4
  %39 = load i32, i32* %4, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %1, %34
  %42 = load i32, i32* @MPMU_APCR_DDRCORSD, align 4
  %43 = load i32, i32* %4, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %1, %41
  %46 = load i32, i32* @MPMU_APCR_AXISD, align 4
  %47 = load i32, i32* %4, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %1, %45
  %50 = load i32, i32* @APMU_MOH_IDLE_CFG_MOH_IDLE, align 4
  %51 = load i32, i32* %3, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %3, align 4
  %53 = load i32, i32* @APMU_MOH_IDLE_CFG_MOH_PWRDWN, align 4
  %54 = load i32, i32* %3, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %3, align 4
  %56 = call i32 @APMU_MOH_IDLE_CFG_MOH_PWR_SW(i32 3)
  %57 = call i32 @APMU_MOH_IDLE_CFG_MOH_L2_PWR_SW(i32 3)
  %58 = or i32 %56, %57
  %59 = load i32, i32* %3, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %1, %49
  br label %62

62:                                               ; preds = %1, %61
  %63 = load i32, i32* @APMU_MOH_IDLE_CFG_MOH_DIS_MC_SW_REQ, align 4
  %64 = load i32, i32* %3, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %3, align 4
  %66 = load i32, i32* @APMU_MOH_IDLE_CFG_MOH_MC_WAKE_EN, align 4
  %67 = load i32, i32* %3, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %3, align 4
  %69 = load i32, i32* @APMU_MC_HW_SLP_TYPE, align 4
  %70 = call i32 @__raw_writel(i32 0, i32 %69)
  %71 = load i32, i32* @MPMU_APCR_DSPSD, align 4
  %72 = load i32, i32* @MPMU_APCR_DTCMSD, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @MPMU_APCR_BBSD, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @MPMU_APCR_MSASLPEN, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* %4, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %4, align 4
  %80 = load i32, i32* @MPMU_APCR_SLPEN, align 4
  %81 = load i32, i32* %4, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %4, align 4
  %83 = load i32, i32* %3, align 4
  %84 = load i32, i32* @APMU_MOH_IDLE_CFG, align 4
  %85 = call i32 @__raw_writel(i32 %83, i32 %84)
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* @MPMU_APCR, align 4
  %88 = call i32 @__raw_writel(i32 %86, i32 %87)
  ret void
}

declare dso_local i32 @__raw_readl(i32) #1

declare dso_local i32 @APMU_MOH_IDLE_CFG_MOH_PWR_SW(i32) #1

declare dso_local i32 @APMU_MOH_IDLE_CFG_MOH_L2_PWR_SW(i32) #1

declare dso_local i32 @__raw_writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
