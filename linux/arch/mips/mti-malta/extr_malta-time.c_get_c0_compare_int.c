
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int MIPS_CPU_IRQ_BASE ;
 unsigned int MSC01E_INT_BASE ;
 unsigned int MSC01E_INT_CPUCTR ;
 unsigned int cp0_compare_irq ;
 scalar_t__ cpu_has_veic ;
 unsigned int gic_get_c0_compare_int () ;
 unsigned int mips_cpu_timer_irq ;
 scalar_t__ mips_gic_present () ;
 int mips_timer_dispatch ;
 int set_vi_handler (unsigned int,int ) ;

unsigned int get_c0_compare_int(void)
{
 if (cpu_has_veic) {
  set_vi_handler(MSC01E_INT_CPUCTR, mips_timer_dispatch);
  mips_cpu_timer_irq = MSC01E_INT_BASE + MSC01E_INT_CPUCTR;
 } else if (mips_gic_present()) {
  mips_cpu_timer_irq = gic_get_c0_compare_int();
 } else {
  mips_cpu_timer_irq = MIPS_CPU_IRQ_BASE + cp0_compare_irq;
 }

 return mips_cpu_timer_irq;
}
