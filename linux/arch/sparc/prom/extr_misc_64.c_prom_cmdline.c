
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int p1275_cmd_direct (unsigned long*) ;
 int smp_capture () ;
 int smp_release () ;

void prom_cmdline(void)
{
 unsigned long args[3];
 unsigned long flags;

 local_irq_save(flags);





 args[0] = (unsigned long) "enter";
 args[1] = 0;
 args[2] = 0;

 p1275_cmd_direct(args);





 local_irq_restore(flags);
}
