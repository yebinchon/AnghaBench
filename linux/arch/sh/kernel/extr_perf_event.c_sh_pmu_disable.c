
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pmu {int dummy; } ;
struct TYPE_2__ {int (* disable_all ) () ;} ;


 TYPE_1__* sh_pmu ;
 int sh_pmu_initialized () ;
 int stub1 () ;

__attribute__((used)) static void sh_pmu_disable(struct pmu *pmu)
{
 if (!sh_pmu_initialized())
  return;

 sh_pmu->disable_all();
}
