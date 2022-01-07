
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SMC_CMD_CPU1BOOT ;
 int exynos_smc (int ,int,int ,int ) ;
 scalar_t__ soc_is_exynos3250 () ;

__attribute__((used)) static int exynos_cpu_boot(int cpu)
{




 if (soc_is_exynos3250())
  return 0;




 exynos_smc(SMC_CMD_CPU1BOOT, cpu, 0, 0);
 return 0;
}
