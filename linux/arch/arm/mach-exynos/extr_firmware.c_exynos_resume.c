
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EXYNOS_BOOT_FLAG ;
 scalar_t__ sysram_ns_base_addr ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int exynos_resume(void)
{
 writel(0, sysram_ns_base_addr + EXYNOS_BOOT_FLAG);

 return 0;
}
