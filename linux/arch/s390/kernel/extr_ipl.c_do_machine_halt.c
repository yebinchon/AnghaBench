
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* action; } ;
struct TYPE_5__ {int (* fn ) (TYPE_2__*) ;} ;


 TYPE_2__ on_halt_trigger ;
 int smp_send_stop () ;
 int stop_run (TYPE_2__*) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static void do_machine_halt(void)
{
 smp_send_stop();
 on_halt_trigger.action->fn(&on_halt_trigger);
 stop_run(&on_halt_trigger);
}
