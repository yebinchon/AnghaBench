
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* suspend ) (int) ;} ;


 TYPE_1__* cpuidle_ops ;
 int smp_processor_id () ;
 int stub1 (int) ;

int arm_cpuidle_suspend(int index)
{
 int cpu = smp_processor_id();

 return cpuidle_ops[cpu].suspend(index);
}
