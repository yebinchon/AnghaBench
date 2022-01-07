
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_dcache_inval_all () ;
 int cpu_dcache_wb_all () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

void cpu_dcache_wbinval_all(void)
{

 unsigned long flags;
 local_irq_save(flags);

 cpu_dcache_wb_all();
 cpu_dcache_inval_all();

 local_irq_restore(flags);

}
