
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bw_set_prof_limit (int,unsigned int) ;
 unsigned int timer_value (unsigned int) ;

__attribute__((used)) static void sun4d_load_profile_irq(int cpu, unsigned int limit)
{
 unsigned int value = limit ? timer_value(limit) : 0;
 bw_set_prof_limit(cpu, value);
}
