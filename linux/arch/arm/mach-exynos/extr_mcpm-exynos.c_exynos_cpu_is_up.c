
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exynos_cpu_powerup (unsigned int,unsigned int) ;

__attribute__((used)) static void exynos_cpu_is_up(unsigned int cpu, unsigned int cluster)
{

 exynos_cpu_powerup(cpu, cluster);
}
