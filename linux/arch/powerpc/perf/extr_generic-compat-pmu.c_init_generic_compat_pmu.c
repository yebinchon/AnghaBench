
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cpu_user_features2; } ;


 int PPC_FEATURE2_EBB ;
 TYPE_1__* cur_cpu_spec ;
 int generic_compat_pmu ;
 int register_power_pmu (int *) ;

int init_generic_compat_pmu(void)
{
 int rc = 0;

 rc = register_power_pmu(&generic_compat_pmu);
 if (rc)
  return rc;


 cur_cpu_spec->cpu_user_features2 |= PPC_FEATURE2_EBB;

 return 0;
}
