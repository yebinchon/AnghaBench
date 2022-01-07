
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PMU_PWDCR ;
 int PMU_PWDSR ;
 int g_pmu_lock ;
 int panic (char*) ;
 unsigned int pmu_r32 (int ) ;
 int pmu_w32 (unsigned int,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void ltq_pmu_enable(unsigned int module)
{
 int retry = 1000000;

 spin_lock(&g_pmu_lock);
 pmu_w32(pmu_r32(PMU_PWDCR) & ~module, PMU_PWDCR);
 do {} while (--retry && (pmu_r32(PMU_PWDSR) & module));
 spin_unlock(&g_pmu_lock);

 if (!retry)
  panic("activating PMU module failed!");
}
