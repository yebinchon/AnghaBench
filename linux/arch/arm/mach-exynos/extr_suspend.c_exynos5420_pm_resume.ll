; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-exynos/extr_suspend.c_exynos5420_pm_resume.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-exynos/extr_suspend.c_exynos5420_pm_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i64, i64, i32 }

@EXYNOS5_ARM_CORE0_SYS_PWR_REG = common dso_local global i32 0, align 4
@S5P_CORE_LOCAL_PWR_EN = common dso_local global i64 0, align 8
@pm_state = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@EXYNOS5420_CPU_STATE = common dso_local global i64 0, align 8
@SMC_CMD_REG = common dso_local global i32 0, align 4
@EXYNOS_AFTR_MAGIC = common dso_local global i32 0, align 4
@EXYNOS5420_USE_STANDBY_WFI_ALL = common dso_local global i32 0, align 4
@S5P_CENTRAL_SEQ_OPTION = common dso_local global i32 0, align 4
@S5P_PMU_SPARE3 = common dso_local global i32 0, align 4
@EXYNOS5420_SFR_AXI_CGDIS1 = common dso_local global i32 0, align 4
@EXYNOS5420_UFS = common dso_local global i64 0, align 8
@EXYNOS5420_FSYS2_OPTION = common dso_local global i32 0, align 4
@EXYNOS5420_EMULATION = common dso_local global i64 0, align 8
@EXYNOS5420_PSGEN_OPTION = common dso_local global i32 0, align 4
@S5P_INFORM1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @exynos5420_pm_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos5420_pm_resume() #0 {
  %1 = alloca i64, align 8
  %2 = load i32, i32* @EXYNOS5_ARM_CORE0_SYS_PWR_REG, align 4
  %3 = call i64 @pmu_raw_readl(i32 %2)
  store i64 %3, i64* %1, align 8
  %4 = load i64, i64* %1, align 8
  %5 = load i64, i64* @S5P_CORE_LOCAL_PWR_EN, align 8
  %6 = or i64 %4, %5
  %7 = trunc i64 %6 to i32
  %8 = load i32, i32* @EXYNOS5_ARM_CORE0_SYS_PWR_REG, align 4
  %9 = call i32 @pmu_raw_writel(i32 %7, i32 %8)
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pm_state, i32 0, i32 4), align 8
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pm_state, i32 0, i32 3), align 8
  %12 = load i64, i64* @EXYNOS5420_CPU_STATE, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @writel_relaxed(i32 %10, i64 %13)
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pm_state, i32 0, i32 2), align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %0
  %18 = load i32, i32* @SMC_CMD_REG, align 4
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pm_state, i32 0, i32 1), align 8
  %20 = load i64, i64* @EXYNOS5420_CPU_STATE, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @SMC_REG_ID_SFR_W(i64 %21)
  %23 = load i32, i32* @EXYNOS_AFTR_MAGIC, align 4
  %24 = call i32 @exynos_smc(i32 %18, i32 %22, i32 %23, i32 0)
  br label %25

25:                                               ; preds = %17, %0
  %26 = load i32, i32* @EXYNOS5420_USE_STANDBY_WFI_ALL, align 4
  %27 = load i32, i32* @S5P_CENTRAL_SEQ_OPTION, align 4
  %28 = call i32 @pmu_raw_writel(i32 %26, i32 %27)
  %29 = call i64 (...) @exynos_pm_central_resume()
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %36

32:                                               ; preds = %25
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pm_state, i32 0, i32 0), align 8
  %34 = load i32, i32* @S5P_PMU_SPARE3, align 4
  %35 = call i32 @pmu_raw_writel(i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %32, %31
  %37 = load i32, i32* @EXYNOS5420_SFR_AXI_CGDIS1, align 4
  %38 = call i64 @pmu_raw_readl(i32 %37)
  store i64 %38, i64* %1, align 8
  %39 = load i64, i64* @EXYNOS5420_UFS, align 8
  %40 = xor i64 %39, -1
  %41 = load i64, i64* %1, align 8
  %42 = and i64 %41, %40
  store i64 %42, i64* %1, align 8
  %43 = load i64, i64* %1, align 8
  %44 = trunc i64 %43 to i32
  %45 = load i32, i32* @EXYNOS5420_SFR_AXI_CGDIS1, align 4
  %46 = call i32 @pmu_raw_writel(i32 %44, i32 %45)
  %47 = load i32, i32* @EXYNOS5420_FSYS2_OPTION, align 4
  %48 = call i64 @pmu_raw_readl(i32 %47)
  store i64 %48, i64* %1, align 8
  %49 = load i64, i64* @EXYNOS5420_EMULATION, align 8
  %50 = xor i64 %49, -1
  %51 = load i64, i64* %1, align 8
  %52 = and i64 %51, %50
  store i64 %52, i64* %1, align 8
  %53 = load i64, i64* %1, align 8
  %54 = trunc i64 %53 to i32
  %55 = load i32, i32* @EXYNOS5420_FSYS2_OPTION, align 4
  %56 = call i32 @pmu_raw_writel(i32 %54, i32 %55)
  %57 = load i32, i32* @EXYNOS5420_PSGEN_OPTION, align 4
  %58 = call i64 @pmu_raw_readl(i32 %57)
  store i64 %58, i64* %1, align 8
  %59 = load i64, i64* @EXYNOS5420_EMULATION, align 8
  %60 = xor i64 %59, -1
  %61 = load i64, i64* %1, align 8
  %62 = and i64 %61, %60
  store i64 %62, i64* %1, align 8
  %63 = load i64, i64* %1, align 8
  %64 = trunc i64 %63 to i32
  %65 = load i32, i32* @EXYNOS5420_PSGEN_OPTION, align 4
  %66 = call i32 @pmu_raw_writel(i32 %64, i32 %65)
  %67 = load i32, i32* @S5P_INFORM1, align 4
  %68 = call i32 @pmu_raw_writel(i32 0, i32 %67)
  ret void
}

declare dso_local i64 @pmu_raw_readl(i32) #1

declare dso_local i32 @pmu_raw_writel(i32, i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @exynos_smc(i32, i32, i32, i32) #1

declare dso_local i32 @SMC_REG_ID_SFR_W(i64) #1

declare dso_local i64 @exynos_pm_central_resume(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
