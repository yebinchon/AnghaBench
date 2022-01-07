
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int smp_cross_call (int *,int ,int ,int ) ;
 int xcall_fetch_glob_regs ;

void smp_fetch_global_regs(void)
{
 smp_cross_call(&xcall_fetch_glob_regs, 0, 0, 0);
}
