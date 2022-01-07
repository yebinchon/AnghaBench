
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PMU_PWDCR ;
 int PMU_PWDSR ;
 int g_pmu_lock ;
 unsigned int pmu_r32 (int ) ;
 int pmu_w32 (unsigned int,int ) ;
 int pr_warn (char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void ltq_pmu_disable(unsigned int module)
{
 int retry = 1000000;

 spin_lock(&g_pmu_lock);
 pmu_w32(pmu_r32(PMU_PWDCR) | module, PMU_PWDCR);
 do {} while (--retry && (!(pmu_r32(PMU_PWDSR) & module)));
 spin_unlock(&g_pmu_lock);

 if (!retry)
  pr_warn("deactivating PMU module failed!");
}
