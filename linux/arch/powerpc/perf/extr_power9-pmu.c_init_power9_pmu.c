
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int cpu_user_features2; int oprofile_cpu_type; } ;
struct TYPE_4__ {void* n_blacklist_ev; void* blacklist_ev; } ;


 void* ARRAY_SIZE (void*) ;
 int ENODEV ;
 int PPC_FEATURE2_EBB ;
 int PVR_CFG (unsigned int) ;
 int PVR_MIN (unsigned int) ;
 unsigned int PVR_POWER9_CUMULUS ;
 int SPRN_PVR ;
 TYPE_3__* cur_cpu_spec ;
 unsigned int mfspr (int ) ;
 void* p9_dd21_bl_ev ;
 void* p9_dd22_bl_ev ;
 TYPE_1__ power9_pmu ;
 int register_power_pmu (TYPE_1__*) ;
 scalar_t__ strcmp (int ,char*) ;

int init_power9_pmu(void)
{
 int rc = 0;
 unsigned int pvr = mfspr(SPRN_PVR);


 if (!cur_cpu_spec->oprofile_cpu_type ||
     strcmp(cur_cpu_spec->oprofile_cpu_type, "ppc64/power9"))
  return -ENODEV;


 if (!(pvr & PVR_POWER9_CUMULUS)) {
  if ((PVR_CFG(pvr) == 2) && (PVR_MIN(pvr) == 1)) {
   power9_pmu.blacklist_ev = p9_dd21_bl_ev;
   power9_pmu.n_blacklist_ev = ARRAY_SIZE(p9_dd21_bl_ev);
  } else if ((PVR_CFG(pvr) == 2) && (PVR_MIN(pvr) == 2)) {
   power9_pmu.blacklist_ev = p9_dd22_bl_ev;
   power9_pmu.n_blacklist_ev = ARRAY_SIZE(p9_dd22_bl_ev);
  }
 }

 rc = register_power_pmu(&power9_pmu);
 if (rc)
  return rc;


 cur_cpu_spec->cpu_user_features2 |= PPC_FEATURE2_EBB;

 return 0;
}
