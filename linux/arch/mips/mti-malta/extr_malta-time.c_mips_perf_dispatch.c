
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int do_IRQ (int ) ;
 int mips_cpu_perf_irq ;

__attribute__((used)) static void mips_perf_dispatch(void)
{
 do_IRQ(mips_cpu_perf_irq);
}
