
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ ARM_CPU_PART_CORTEX_A9 ;
 int ENOSYS ;
 int S5P_INFORM1 ;
 int call_firmware_op (int ) ;
 int exynos_cpu_restore_register () ;
 scalar_t__ exynos_pm_central_resume () ;
 int exynos_scu_enable () ;
 int exynos_set_delayed_reset_assertion (int) ;
 int pmu_raw_writel (int,int ) ;
 scalar_t__ read_cpuid_part () ;
 int resume ;

__attribute__((used)) static void exynos_pm_resume(void)
{
 u32 cpuid = read_cpuid_part();

 if (exynos_pm_central_resume())
  goto early_wakeup;

 if (cpuid == ARM_CPU_PART_CORTEX_A9)
  exynos_scu_enable();

 if (call_firmware_op(resume) == -ENOSYS
     && cpuid == ARM_CPU_PART_CORTEX_A9)
  exynos_cpu_restore_register();

early_wakeup:


 pmu_raw_writel(0x0, S5P_INFORM1);
 exynos_set_delayed_reset_assertion(1);
}
