
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;


 unsigned long long get_cpu_idle_time_jiffy (unsigned int,unsigned long long*) ;
 unsigned long long get_cpu_idle_time_us (unsigned int,unsigned long long*) ;
 scalar_t__ get_cpu_iowait_time_us (unsigned int,unsigned long long*) ;

u64 get_cpu_idle_time(unsigned int cpu, u64 *wall, int io_busy)
{
 u64 idle_time = get_cpu_idle_time_us(cpu, io_busy ? wall : ((void*)0));

 if (idle_time == -1ULL)
  return get_cpu_idle_time_jiffy(cpu, wall);
 else if (!io_busy)
  idle_time += get_cpu_iowait_time_us(cpu, wall);

 return idle_time;
}
