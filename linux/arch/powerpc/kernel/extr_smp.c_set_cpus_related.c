
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpumask_set_cpu (int,struct cpumask*) ;

__attribute__((used)) static void set_cpus_related(int i, int j, struct cpumask *(*get_cpumask)(int))
{
 cpumask_set_cpu(i, get_cpumask(j));
 cpumask_set_cpu(j, get_cpumask(i));
}
