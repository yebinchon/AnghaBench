
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int C_SW0 ;
 int EVPE_ENABLE ;
 int dvpe () ;
 int evpe (int ) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int read_vpe_c0_cause () ;
 int settc (int) ;
 int write_vpe_c0_cause (int) ;

void _interrupt_sp(void)
{
 unsigned long flags;

 local_irq_save(flags);
 dvpe();
 settc(1);
 write_vpe_c0_cause(read_vpe_c0_cause() | C_SW0);
 evpe(EVPE_ENABLE);
 local_irq_restore(flags);
}
