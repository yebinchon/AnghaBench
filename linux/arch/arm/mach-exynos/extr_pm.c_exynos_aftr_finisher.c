
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ARM_CPU_PART_CORTEX_A9 ;
 int ENOSYS ;
 int FW_DO_IDLE_AFTR ;
 int S5P_CHECK_AFTR ;
 int SYS_AFTR ;
 int call_firmware_op (int ,int ) ;
 int cpu_do_idle () ;
 int do_idle ;
 int exynos_cpu_save_register () ;
 int exynos_cpu_set_boot_vector (int ) ;
 int exynos_set_wakeupmask (int) ;
 int exynos_sys_powerdown_conf (int ) ;
 scalar_t__ read_cpuid_part () ;
 scalar_t__ soc_is_exynos3250 () ;

__attribute__((used)) static int exynos_aftr_finisher(unsigned long flags)
{
 int ret;

 exynos_set_wakeupmask(soc_is_exynos3250() ? 0x40003ffe : 0x0000ff3e);

 exynos_sys_powerdown_conf(SYS_AFTR);

 ret = call_firmware_op(do_idle, FW_DO_IDLE_AFTR);
 if (ret == -ENOSYS) {
  if (read_cpuid_part() == ARM_CPU_PART_CORTEX_A9)
   exynos_cpu_save_register();
  exynos_cpu_set_boot_vector(S5P_CHECK_AFTR);
  cpu_do_idle();
 }

 return 1;
}
