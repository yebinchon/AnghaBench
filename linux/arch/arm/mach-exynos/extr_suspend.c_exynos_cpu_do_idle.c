
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_do_idle () ;
 int pr_info (char*) ;

__attribute__((used)) static int exynos_cpu_do_idle(void)
{

 cpu_do_idle();

 pr_info("Failed to suspend the system\n");
 return 1;
}
