
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* enable_pmcs ) () ;} ;


 scalar_t__ __this_cpu_read (int ) ;
 int __this_cpu_write (int ,int) ;
 int pmcs_enabled ;
 TYPE_1__ ppc_md ;
 int ppc_set_pmu_inuse (int) ;
 int stub1 () ;

void ppc_enable_pmcs(void)
{
 ppc_set_pmu_inuse(1);


 if (__this_cpu_read(pmcs_enabled))
  return;

 __this_cpu_write(pmcs_enabled, 1);

 if (ppc_md.enable_pmcs)
  ppc_md.enable_pmcs();
}
