
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void ebsa110_idle(void)
{
 const char *irq_stat = (char *)0xff000000;


 asm volatile ("mcr p15, 0, ip, c15, c2, 2" : : : "cc");


 while (!*irq_stat);


 asm volatile ("mcr p15, 0, ip, c15, c1, 2" : : : "cc");
}
