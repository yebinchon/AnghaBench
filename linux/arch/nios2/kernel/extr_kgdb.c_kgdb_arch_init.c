
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int wait_for_remote_debugger ;

int kgdb_arch_init(void)
{
 wait_for_remote_debugger = 1;
 return 0;
}
