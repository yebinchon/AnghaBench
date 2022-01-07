
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pr_info (char*) ;

void bcm63xx_machine_halt(void)
{
 pr_info("System halted\n");
 while (1)
  ;
}
