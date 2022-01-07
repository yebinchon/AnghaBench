
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MIPS_CPU_IRQ_BASE ;
 int cp0_compare_irq ;
 scalar_t__ cpu_has_veic ;
 int gic_get_c0_compare_int () ;
 scalar_t__ mips_gic_present () ;
 int panic (char*) ;

unsigned int get_c0_compare_int(void)
{
 int mips_cpu_timer_irq;

 if (mips_gic_present())
  mips_cpu_timer_irq = gic_get_c0_compare_int();
 else if (cpu_has_veic)
  panic("Unimplemented!");
 else
  mips_cpu_timer_irq = MIPS_CPU_IRQ_BASE + cp0_compare_irq;

 return mips_cpu_timer_irq;
}
