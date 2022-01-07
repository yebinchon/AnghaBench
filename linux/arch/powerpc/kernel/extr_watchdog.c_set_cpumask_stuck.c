
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct cpumask {int dummy; } ;


 int cpumask_andnot (int *,int *,struct cpumask const*) ;
 scalar_t__ cpumask_empty (int *) ;
 int cpumask_or (struct cpumask const*,struct cpumask const*,struct cpumask const*) ;
 int wd_cpus_enabled ;
 int wd_smp_cpus_pending ;
 struct cpumask const wd_smp_cpus_stuck ;
 int wd_smp_last_reset_tb ;

__attribute__((used)) static void set_cpumask_stuck(const struct cpumask *cpumask, u64 tb)
{
 cpumask_or(&wd_smp_cpus_stuck, &wd_smp_cpus_stuck, cpumask);
 cpumask_andnot(&wd_smp_cpus_pending, &wd_smp_cpus_pending, cpumask);
 if (cpumask_empty(&wd_smp_cpus_pending)) {
  wd_smp_last_reset_tb = tb;
  cpumask_andnot(&wd_smp_cpus_pending,
    &wd_cpus_enabled,
    &wd_smp_cpus_stuck);
 }
}
