
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* action; } ;
struct TYPE_5__ {int (* fn ) (TYPE_2__*) ;} ;


 int __arch_local_irq_stosm (int) ;
 int crash_kexec (int *) ;
 TYPE_2__ on_restart_trigger ;
 int smp_send_stop () ;
 int stop_run (TYPE_2__*) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static void __do_restart(void *ignore)
{
 __arch_local_irq_stosm(0x04);
 smp_send_stop();



 on_restart_trigger.action->fn(&on_restart_trigger);
 stop_run(&on_restart_trigger);
}
