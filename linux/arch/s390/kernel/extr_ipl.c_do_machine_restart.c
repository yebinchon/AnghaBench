
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* action; } ;
struct TYPE_4__ {int (* fn ) (TYPE_2__*) ;} ;


 TYPE_2__ on_reboot_trigger ;
 int reipl_run (int *) ;
 int smp_send_stop () ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static void do_machine_restart(char *__unused)
{
 smp_send_stop();
 on_reboot_trigger.action->fn(&on_reboot_trigger);
 reipl_run(((void*)0));
}
