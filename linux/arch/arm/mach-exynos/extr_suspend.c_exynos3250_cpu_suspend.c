
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exynos_cpu_do_idle () ;
 int flush_cache_all () ;

__attribute__((used)) static int exynos3250_cpu_suspend(unsigned long arg)
{
 flush_cache_all();
 return exynos_cpu_do_idle();
}
