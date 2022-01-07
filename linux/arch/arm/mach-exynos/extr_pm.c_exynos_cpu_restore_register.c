
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long* save_arm_register ;

void exynos_cpu_restore_register(void)
{
 unsigned long tmp;


 tmp = save_arm_register[0];

 asm volatile ("mcr p15, 0, %0, c15, c0, 0"
        : : "r" (tmp)
        : "cc");


 tmp = save_arm_register[1];

 asm volatile ("mcr p15, 0, %0, c15, c0, 1"
        : : "r" (tmp)
        : "cc");
}
