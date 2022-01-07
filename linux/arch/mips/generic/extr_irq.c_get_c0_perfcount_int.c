
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MIPS_CPU_IRQ_BASE ;
 int cp0_perfcount_irq ;
 scalar_t__ cpu_has_veic ;
 int gic_get_c0_perfcount_int () ;
 scalar_t__ mips_gic_present () ;
 int panic (char*) ;

int get_c0_perfcount_int(void)
{
 int mips_cpu_perf_irq;

 if (mips_gic_present())
  mips_cpu_perf_irq = gic_get_c0_perfcount_int();
 else if (cpu_has_veic)
  panic("Unimplemented!");
 else if (cp0_perfcount_irq >= 0)
  mips_cpu_perf_irq = MIPS_CPU_IRQ_BASE + cp0_perfcount_irq;
 else
  mips_cpu_perf_irq = -1;

 return mips_cpu_perf_irq;
}
