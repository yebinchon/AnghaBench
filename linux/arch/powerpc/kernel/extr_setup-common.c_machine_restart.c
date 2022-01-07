
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* restart ) (char*) ;} ;


 int do_kernel_restart (char*) ;
 int machine_hang () ;
 int machine_shutdown () ;
 int mdelay (int) ;
 TYPE_1__ ppc_md ;
 int smp_send_stop () ;
 int stub1 (char*) ;

void machine_restart(char *cmd)
{
 machine_shutdown();
 if (ppc_md.restart)
  ppc_md.restart(cmd);

 smp_send_stop();

 do_kernel_restart(cmd);
 mdelay(1000);

 machine_hang();
}
