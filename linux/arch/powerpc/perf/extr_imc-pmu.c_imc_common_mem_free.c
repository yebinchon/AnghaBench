
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct imc_pmu {TYPE_1__** attr_groups; } ;
struct TYPE_2__ {struct TYPE_2__* attrs; } ;


 size_t IMC_EVENT_ATTR ;
 int kfree (TYPE_1__*) ;

__attribute__((used)) static void imc_common_mem_free(struct imc_pmu *pmu_ptr)
{
 if (pmu_ptr->attr_groups[IMC_EVENT_ATTR])
  kfree(pmu_ptr->attr_groups[IMC_EVENT_ATTR]->attrs);
 kfree(pmu_ptr->attr_groups[IMC_EVENT_ATTR]);
}
