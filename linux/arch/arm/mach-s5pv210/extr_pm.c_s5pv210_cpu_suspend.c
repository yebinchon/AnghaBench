
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pr_info (char*) ;

__attribute__((used)) static int s5pv210_cpu_suspend(unsigned long arg)
{
 unsigned long tmp;




 tmp = 0;

 asm("b 1f\n\t"
     ".align 5\n\t"
     "1:\n\t"
     "mcr p15, 0, %0, c7, c10, 5\n\t"
     "mcr p15, 0, %0, c7, c10, 4\n\t"
     "wfi" : : "r" (tmp));

 pr_info("Failed to suspend the system\n");
 return 1;
}
