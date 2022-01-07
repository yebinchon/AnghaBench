
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ loff_t ;


 int cpu_online_mask ;
 scalar_t__ cpumask_next (scalar_t__,int ) ;
 scalar_t__ nr_cpu_ids ;

__attribute__((used)) static inline void *c_update(loff_t *pos)
{
 if (*pos)
  *pos = cpumask_next(*pos - 1, cpu_online_mask);
 return *pos < nr_cpu_ids ? (void *)*pos + 1 : ((void*)0);
}
