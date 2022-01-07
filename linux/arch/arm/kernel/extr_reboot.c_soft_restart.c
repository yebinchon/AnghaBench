
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _soft_restart (unsigned long,int) ;
 int num_online_cpus () ;

void soft_restart(unsigned long addr)
{
 _soft_restart(addr, num_online_cpus() == 1);
}
