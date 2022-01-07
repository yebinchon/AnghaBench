
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* halt ) () ;} ;


 int machine_hang () ;
 int machine_shutdown () ;
 TYPE_1__ ppc_md ;
 int smp_send_stop () ;
 int stub1 () ;

void machine_halt(void)
{
 machine_shutdown();
 if (ppc_md.halt)
  ppc_md.halt();

 smp_send_stop();
 machine_hang();
}
