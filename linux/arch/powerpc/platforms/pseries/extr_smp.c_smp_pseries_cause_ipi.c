
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* cause_ipi ) (int) ;} ;


 scalar_t__ doorbell_try_core_ipi (int) ;
 TYPE_1__* icp_ops ;
 int stub1 (int) ;

__attribute__((used)) static void smp_pseries_cause_ipi(int cpu)
{

 if (doorbell_try_core_ipi(cpu))
  return;

 icp_ops->cause_ipi(cpu);
}
