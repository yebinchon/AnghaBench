
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* cpu_init_idle ) (unsigned int) ;scalar_t__ cpu_suspend; } ;


 int EOPNOTSUPP ;
 TYPE_1__** cpu_ops ;
 int stub1 (unsigned int) ;

int arm_cpuidle_init(unsigned int cpu)
{
 int ret = -EOPNOTSUPP;

 if (cpu_ops[cpu] && cpu_ops[cpu]->cpu_suspend &&
   cpu_ops[cpu]->cpu_init_idle)
  ret = cpu_ops[cpu]->cpu_init_idle(cpu);

 return ret;
}
