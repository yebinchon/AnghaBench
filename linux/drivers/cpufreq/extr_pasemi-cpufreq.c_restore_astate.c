
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int current_astate ;
 int set_astate (int,int ) ;

void restore_astate(int cpu)
{
 set_astate(cpu, current_astate);
}
