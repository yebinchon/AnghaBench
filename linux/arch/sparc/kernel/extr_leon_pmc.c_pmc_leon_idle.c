
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int local_irq_enable () ;

__attribute__((used)) static void pmc_leon_idle(void)
{

 local_irq_enable();


 __asm__ __volatile__ ("wr	%g0, %asr19\n\t");
}
