; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-exynos/extr_suspend.c_exynos5420_pm_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-exynos/extr_suspend.c_exynos5420_pm_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i32, i8* }

@S5P_PMU_SPARE3 = common dso_local global i32 0, align 4
@pm_state = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@EXYNOS5420_CPU_STATE = common dso_local global i64 0, align 8
@SMC_CMD_REG = common dso_local global i32 0, align 4
@CONFIG_EXYNOS_MCPM = common dso_local global i32 0, align 4
@mcpm_entry_point = common dso_local global i32 0, align 4
@S5P_INFORM0 = common dso_local global i32 0, align 4
@EXYNOS_L2_USE_RETENTION = common dso_local global i32 0, align 4
@EXYNOS5420_SFR_AXI_CGDIS1 = common dso_local global i32 0, align 4
@EXYNOS5420_UFS = common dso_local global i32 0, align 4
@EXYNOS5420_ARM_COMMON_OPTION = common dso_local global i32 0, align 4
@EXYNOS5420_L2RSTDISABLE_VALUE = common dso_local global i32 0, align 4
@EXYNOS5420_FSYS2_OPTION = common dso_local global i32 0, align 4
@EXYNOS5420_EMULATION = common dso_local global i32 0, align 4
@EXYNOS5420_PSGEN_OPTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @exynos5420_pm_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos5420_pm_prepare() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @exynos_pm_set_wakeup_mask()
  %3 = load i32, i32* @S5P_PMU_SPARE3, align 4
  %4 = call i8* @pmu_raw_readl(i32 %3)
  store i8* %4, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pm_state, i32 0, i32 4), align 8
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pm_state, i32 0, i32 2), align 8
  %6 = load i64, i64* @EXYNOS5420_CPU_STATE, align 8
  %7 = add nsw i64 %5, %6
  %8 = call i32 @readl_relaxed(i64 %7)
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pm_state, i32 0, i32 3), align 8
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pm_state, i32 0, i32 2), align 8
  %10 = load i64, i64* @EXYNOS5420_CPU_STATE, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @writel_relaxed(i32 0, i64 %11)
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pm_state, i32 0, i32 1), align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %0
  %16 = load i32, i32* @SMC_CMD_REG, align 4
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pm_state, i32 0, i32 0), align 8
  %18 = load i64, i64* @EXYNOS5420_CPU_STATE, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @SMC_REG_ID_SFR_W(i64 %19)
  %21 = call i32 @exynos_smc(i32 %16, i32 %20, i32 0, i32 0)
  br label %22

22:                                               ; preds = %15, %0
  %23 = call i32 (...) @exynos_pm_enter_sleep_mode()
  %24 = load i32, i32* @CONFIG_EXYNOS_MCPM, align 4
  %25 = call i64 @IS_ENABLED(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load i32, i32* @mcpm_entry_point, align 4
  %29 = call i32 @__pa_symbol(i32 %28)
  %30 = load i32, i32* @S5P_INFORM0, align 4
  %31 = call i32 @pmu_raw_writel(i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %27, %22
  %33 = call i32 @EXYNOS_L2_OPTION(i32 0)
  %34 = call i8* @pmu_raw_readl(i32 %33)
  %35 = ptrtoint i8* %34 to i32
  store i32 %35, i32* %1, align 4
  %36 = load i32, i32* @EXYNOS_L2_USE_RETENTION, align 4
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %1, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %1, align 4
  %40 = load i32, i32* %1, align 4
  %41 = call i32 @EXYNOS_L2_OPTION(i32 0)
  %42 = call i32 @pmu_raw_writel(i32 %40, i32 %41)
  %43 = load i32, i32* @EXYNOS5420_SFR_AXI_CGDIS1, align 4
  %44 = call i8* @pmu_raw_readl(i32 %43)
  %45 = ptrtoint i8* %44 to i32
  store i32 %45, i32* %1, align 4
  %46 = load i32, i32* @EXYNOS5420_UFS, align 4
  %47 = load i32, i32* %1, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %1, align 4
  %49 = load i32, i32* %1, align 4
  %50 = load i32, i32* @EXYNOS5420_SFR_AXI_CGDIS1, align 4
  %51 = call i32 @pmu_raw_writel(i32 %49, i32 %50)
  %52 = load i32, i32* @EXYNOS5420_ARM_COMMON_OPTION, align 4
  %53 = call i8* @pmu_raw_readl(i32 %52)
  %54 = ptrtoint i8* %53 to i32
  store i32 %54, i32* %1, align 4
  %55 = load i32, i32* @EXYNOS5420_L2RSTDISABLE_VALUE, align 4
  %56 = xor i32 %55, -1
  %57 = load i32, i32* %1, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %1, align 4
  %59 = load i32, i32* %1, align 4
  %60 = load i32, i32* @EXYNOS5420_ARM_COMMON_OPTION, align 4
  %61 = call i32 @pmu_raw_writel(i32 %59, i32 %60)
  %62 = load i32, i32* @EXYNOS5420_FSYS2_OPTION, align 4
  %63 = call i8* @pmu_raw_readl(i32 %62)
  %64 = ptrtoint i8* %63 to i32
  store i32 %64, i32* %1, align 4
  %65 = load i32, i32* @EXYNOS5420_EMULATION, align 4
  %66 = load i32, i32* %1, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %1, align 4
  %68 = load i32, i32* %1, align 4
  %69 = load i32, i32* @EXYNOS5420_FSYS2_OPTION, align 4
  %70 = call i32 @pmu_raw_writel(i32 %68, i32 %69)
  %71 = load i32, i32* @EXYNOS5420_PSGEN_OPTION, align 4
  %72 = call i8* @pmu_raw_readl(i32 %71)
  %73 = ptrtoint i8* %72 to i32
  store i32 %73, i32* %1, align 4
  %74 = load i32, i32* @EXYNOS5420_EMULATION, align 4
  %75 = load i32, i32* %1, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %1, align 4
  %77 = load i32, i32* %1, align 4
  %78 = load i32, i32* @EXYNOS5420_PSGEN_OPTION, align 4
  %79 = call i32 @pmu_raw_writel(i32 %77, i32 %78)
  ret void
}

declare dso_local i32 @exynos_pm_set_wakeup_mask(...) #1

declare dso_local i8* @pmu_raw_readl(i32) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @exynos_smc(i32, i32, i32, i32) #1

declare dso_local i32 @SMC_REG_ID_SFR_W(i64) #1

declare dso_local i32 @exynos_pm_enter_sleep_mode(...) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @pmu_raw_writel(i32, i32) #1

declare dso_local i32 @__pa_symbol(i32) #1

declare dso_local i32 @EXYNOS_L2_OPTION(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
