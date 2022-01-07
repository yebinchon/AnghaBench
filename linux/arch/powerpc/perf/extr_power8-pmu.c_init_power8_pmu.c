
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cpu_user_features2; int oprofile_cpu_type; } ;


 int CPU_FTR_PMAO_BUG ;
 int ENODEV ;
 int PPC_FEATURE2_EBB ;
 scalar_t__ cpu_has_feature (int ) ;
 TYPE_1__* cur_cpu_spec ;
 int power8_pmu ;
 int pr_info (char*) ;
 int register_power_pmu (int *) ;
 scalar_t__ strcmp (int ,char*) ;

int init_power8_pmu(void)
{
 int rc;

 if (!cur_cpu_spec->oprofile_cpu_type ||
     strcmp(cur_cpu_spec->oprofile_cpu_type, "ppc64/power8"))
  return -ENODEV;

 rc = register_power_pmu(&power8_pmu);
 if (rc)
  return rc;


 cur_cpu_spec->cpu_user_features2 |= PPC_FEATURE2_EBB;

 if (cpu_has_feature(CPU_FTR_PMAO_BUG))
  pr_info("PMAO restore workaround active.\n");

 return 0;
}
