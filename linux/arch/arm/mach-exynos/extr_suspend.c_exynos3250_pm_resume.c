
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ ARM_CPU_PART_CORTEX_A9 ;
 int ENOSYS ;
 int S5P_CENTRAL_SEQ_OPTION ;
 int S5P_INFORM1 ;
 int S5P_USE_STANDBY_WFI_ALL ;
 int call_firmware_op (int ) ;
 int exynos_cpu_restore_register () ;
 scalar_t__ exynos_pm_central_resume () ;
 int pmu_raw_writel (int,int ) ;
 scalar_t__ read_cpuid_part () ;
 int resume ;

__attribute__((used)) static void exynos3250_pm_resume(void)
{
 u32 cpuid = read_cpuid_part();

 if (exynos_pm_central_resume())
  goto early_wakeup;

 pmu_raw_writel(S5P_USE_STANDBY_WFI_ALL, S5P_CENTRAL_SEQ_OPTION);

 if (call_firmware_op(resume) == -ENOSYS
     && cpuid == ARM_CPU_PART_CORTEX_A9)
  exynos_cpu_restore_register();

early_wakeup:


 pmu_raw_writel(0x0, S5P_INFORM1);
}
