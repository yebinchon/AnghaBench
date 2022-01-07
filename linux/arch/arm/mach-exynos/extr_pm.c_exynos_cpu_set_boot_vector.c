
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long __pa_symbol (int ) ;
 int exynos_boot_vector_addr () ;
 int exynos_boot_vector_flag () ;
 int exynos_cpu_resume ;
 int writel_relaxed (long,int ) ;

__attribute__((used)) static void exynos_cpu_set_boot_vector(long flags)
{
 writel_relaxed(__pa_symbol(exynos_cpu_resume),
         exynos_boot_vector_addr());
 writel_relaxed(flags, exynos_boot_vector_flag());
}
