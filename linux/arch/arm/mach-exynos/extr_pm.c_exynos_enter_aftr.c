
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ARM_CPU_PART_CORTEX_A9 ;
 int C2_STATE ;
 int ENOSYS ;
 int S5P_CENTRAL_SEQ_OPTION ;
 int S5P_USE_STANDBY_WFE0 ;
 int S5P_USE_STANDBY_WFI0 ;
 int call_firmware_op (int ) ;
 int cpu_pm_enter () ;
 int cpu_pm_exit () ;
 int cpu_suspend (int ,int ) ;
 int exynos_aftr_finisher ;
 int exynos_clear_boot_flag (unsigned int,int ) ;
 int exynos_cpu_restore_register () ;
 int exynos_pm_central_resume () ;
 int exynos_pm_central_suspend () ;
 int exynos_scu_enable () ;
 int exynos_set_boot_flag (unsigned int,int ) ;
 int pmu_raw_writel (int,int ) ;
 scalar_t__ read_cpuid_part () ;
 int resume ;
 unsigned int smp_processor_id () ;
 scalar_t__ soc_is_exynos3250 () ;
 scalar_t__ soc_is_exynos4412 () ;

void exynos_enter_aftr(void)
{
 unsigned int cpuid = smp_processor_id();

 cpu_pm_enter();

 if (soc_is_exynos3250())
  exynos_set_boot_flag(cpuid, C2_STATE);

 exynos_pm_central_suspend();

 if (soc_is_exynos4412()) {

  pmu_raw_writel(S5P_USE_STANDBY_WFI0 | S5P_USE_STANDBY_WFE0,
          S5P_CENTRAL_SEQ_OPTION);
 }

 cpu_suspend(0, exynos_aftr_finisher);

 if (read_cpuid_part() == ARM_CPU_PART_CORTEX_A9) {
  exynos_scu_enable();
  if (call_firmware_op(resume) == -ENOSYS)
   exynos_cpu_restore_register();
 }

 exynos_pm_central_resume();

 if (soc_is_exynos3250())
  exynos_clear_boot_flag(cpuid, C2_STATE);

 cpu_pm_exit();
}
