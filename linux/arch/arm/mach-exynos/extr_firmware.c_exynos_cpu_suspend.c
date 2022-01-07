
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EXYNOS_BOOT_FLAG ;
 int SMC_CMD_SLEEP ;
 int exynos_smc (int ,int ,int ,int ) ;
 int flush_cache_all () ;
 int outer_flush_all () ;
 int pr_info (char*) ;
 scalar_t__ sysram_ns_base_addr ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int exynos_cpu_suspend(unsigned long arg)
{
 flush_cache_all();
 outer_flush_all();

 exynos_smc(SMC_CMD_SLEEP, 0, 0, 0);

 pr_info("Failed to suspend the system\n");
 writel(0, sysram_ns_base_addr + EXYNOS_BOOT_FLAG);
 return 1;
}
