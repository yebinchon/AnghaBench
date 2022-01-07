
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARM_CPU_PART_CORTEX_A9 ;
 int EXYNOS_AFTR_MAGIC ;


 int OP_TYPE_CLUSTER ;
 int OP_TYPE_CORE ;
 int SMC_CMD_CPU0AFTR ;
 int SMC_CMD_SAVE ;
 int SMC_CMD_SHUTDOWN ;
 int SMC_CMD_SLEEP ;
 int SMC_POWERSTATE_IDLE ;
 int __pa_symbol (int ) ;
 int exynos_cpu_resume_ns ;
 int exynos_save_cp15 () ;
 int exynos_smc (int ,int ,int ,int ) ;
 int flush_cache_all () ;
 int read_cpuid_part () ;
 int soc_is_exynos3250 () ;
 int sysram_ns_base_addr ;
 int writel_relaxed (int ,int ) ;

__attribute__((used)) static int exynos_do_idle(unsigned long mode)
{
 switch (mode) {
 case 129:
  if (read_cpuid_part() == ARM_CPU_PART_CORTEX_A9)
   exynos_save_cp15();
  writel_relaxed(__pa_symbol(exynos_cpu_resume_ns),
          sysram_ns_base_addr + 0x24);
  writel_relaxed(EXYNOS_AFTR_MAGIC, sysram_ns_base_addr + 0x20);
  if (soc_is_exynos3250()) {
   flush_cache_all();
   exynos_smc(SMC_CMD_SAVE, OP_TYPE_CORE,
       SMC_POWERSTATE_IDLE, 0);
   exynos_smc(SMC_CMD_SHUTDOWN, OP_TYPE_CLUSTER,
       SMC_POWERSTATE_IDLE, 0);
  } else
   exynos_smc(SMC_CMD_CPU0AFTR, 0, 0, 0);
  break;
 case 128:
  exynos_smc(SMC_CMD_SLEEP, 0, 0, 0);
 }
 return 0;
}
