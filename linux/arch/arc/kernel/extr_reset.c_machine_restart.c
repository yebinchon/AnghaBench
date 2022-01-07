
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int machine_halt () ;
 int pr_info (char*) ;

void machine_restart(char *__unused)
{

 pr_info("Put your restart handler here\n");
 machine_halt();
}
