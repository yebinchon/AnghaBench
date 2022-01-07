
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int suspend_state_t ;
struct TYPE_2__ {int (* valid ) (int ) ;} ;


 int EINVAL ;
 TYPE_1__* pxa_cpu_pm_fns ;
 int stub1 (int ) ;

__attribute__((used)) static int pxa_pm_valid(suspend_state_t state)
{
 if (pxa_cpu_pm_fns)
  return pxa_cpu_pm_fns->valid(state);

 return -EINVAL;
}
