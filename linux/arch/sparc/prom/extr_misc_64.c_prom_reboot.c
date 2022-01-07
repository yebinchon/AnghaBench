
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ldom_domaining_enabled ;
 int ldom_reboot (char const*) ;
 int p1275_cmd_direct (unsigned long*) ;

void prom_reboot(const char *bcommand)
{
 unsigned long args[4];





 args[0] = (unsigned long) "boot";
 args[1] = 1;
 args[2] = 0;
 args[3] = (unsigned long) bcommand;

 p1275_cmd_direct(args);
}
