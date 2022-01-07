
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int isb () ;
 int local_irq_disable () ;
 int local_irq_enable () ;

__attribute__((used)) static u32 get_ccsidr(u32 csselr)
{
 u32 ccsidr;


 local_irq_disable();

 asm volatile("mcr p15, 2, %0, c0, c0, 0" : : "r" (csselr));
 isb();

 asm volatile("mrc p15, 1, %0, c0, c0, 0" : "=r" (ccsidr));
 local_irq_enable();

 return ccsidr;
}
