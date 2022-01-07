
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_do_split (int ) ;
 int new_split_mode ;
 int smp_rmb () ;

bool cpu_core_split_required(void)
{
 smp_rmb();

 if (!new_split_mode)
  return 0;

 cpu_do_split(new_split_mode);

 return 1;
}
