
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_CLUSTERS ;
 scalar_t__ is_bL_switching_enabled () ;
 int raw_cpu_to_cluster (int) ;

__attribute__((used)) static inline int cpu_to_cluster(int cpu)
{
 return is_bL_switching_enabled() ?
  MAX_CLUSTERS : raw_cpu_to_cluster(cpu);
}
