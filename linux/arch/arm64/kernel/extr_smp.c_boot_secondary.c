
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct TYPE_2__ {int (* cpu_boot ) (unsigned int) ;} ;


 int EOPNOTSUPP ;
 TYPE_1__** cpu_ops ;
 int stub1 (unsigned int) ;

__attribute__((used)) static int boot_secondary(unsigned int cpu, struct task_struct *idle)
{
 if (cpu_ops[cpu]->cpu_boot)
  return cpu_ops[cpu]->cpu_boot(cpu);

 return -EOPNOTSUPP;
}
