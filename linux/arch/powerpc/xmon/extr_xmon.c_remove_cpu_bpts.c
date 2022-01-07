
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hw_breakpoint_disable () ;
 int write_ciabr (int ) ;

__attribute__((used)) static void remove_cpu_bpts(void)
{
 hw_breakpoint_disable();
 write_ciabr(0);
}
