
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuidle_device {struct cpuidle_coupled* coupled; int coupled_cpus; } ;
struct cpuidle_coupled {scalar_t__ refcnt; } ;


 scalar_t__ cpumask_empty (int *) ;
 int kfree (struct cpuidle_coupled*) ;

void cpuidle_coupled_unregister_device(struct cpuidle_device *dev)
{
 struct cpuidle_coupled *coupled = dev->coupled;

 if (cpumask_empty(&dev->coupled_cpus))
  return;

 if (--coupled->refcnt)
  kfree(coupled);
 dev->coupled = ((void*)0);
}
