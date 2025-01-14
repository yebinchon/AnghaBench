
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_2__ {scalar_t__* cpustat; } ;


 size_t CPUTIME_IRQ ;
 size_t CPUTIME_NICE ;
 size_t CPUTIME_SOFTIRQ ;
 size_t CPUTIME_STEAL ;
 size_t CPUTIME_SYSTEM ;
 size_t CPUTIME_USER ;
 int NSEC_PER_USEC ;
 scalar_t__ div_u64 (scalar_t__,int ) ;
 int get_jiffies_64 () ;
 scalar_t__ jiffies64_to_nsecs (int ) ;
 TYPE_1__ kcpustat_cpu (unsigned int) ;

__attribute__((used)) static inline u64 get_cpu_idle_time_jiffy(unsigned int cpu, u64 *wall)
{
 u64 idle_time;
 u64 cur_wall_time;
 u64 busy_time;

 cur_wall_time = jiffies64_to_nsecs(get_jiffies_64());

 busy_time = kcpustat_cpu(cpu).cpustat[CPUTIME_USER];
 busy_time += kcpustat_cpu(cpu).cpustat[CPUTIME_SYSTEM];
 busy_time += kcpustat_cpu(cpu).cpustat[CPUTIME_IRQ];
 busy_time += kcpustat_cpu(cpu).cpustat[CPUTIME_SOFTIRQ];
 busy_time += kcpustat_cpu(cpu).cpustat[CPUTIME_STEAL];
 busy_time += kcpustat_cpu(cpu).cpustat[CPUTIME_NICE];

 idle_time = cur_wall_time - busy_time;
 if (wall)
  *wall = div_u64(cur_wall_time, NSEC_PER_USEC);

 return div_u64(idle_time, NSEC_PER_USEC);
}
