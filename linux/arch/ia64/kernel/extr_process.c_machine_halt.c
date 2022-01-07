
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIE_MACHINE_HALT ;
 int cpu_halt () ;
 int notify_die (int ,char*,int *,int ,int ,int ) ;

void
machine_halt (void)
{
 (void) notify_die(DIE_MACHINE_HALT, "", ((void*)0), 0, 0, 0);
 cpu_halt();
}
