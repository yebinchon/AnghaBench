
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int do_kernel_restart (char*) ;
 int mdelay (int) ;
 int pr_emerg (char*) ;

void machine_restart(char *cmd)
{
 do_kernel_restart(cmd);

 mdelay(1000);
 pr_emerg("Reboot failed -- System halted\n");
 while (1);
}
