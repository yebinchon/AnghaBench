
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int bits; int module; } ;


 int PWDCR (int ) ;
 int PWDCR_DIS_XRX (int ) ;
 int PWDSR (int ) ;
 int PWDSR_XRX (int ) ;
 int g_pmu_lock ;
 scalar_t__ of_machine_is_compatible (char*) ;
 int pmu_r32 (int ) ;
 int pmu_w32 (int,int ) ;
 int pr_warn (char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void pmu_disable(struct clk *clk)
{
 int retry = 1000000;

 if (of_machine_is_compatible("lantiq,ar10")
     || of_machine_is_compatible("lantiq,grx390")) {
  pmu_w32(clk->bits, PWDCR_DIS_XRX(clk->module));
  do {} while (--retry &&
        (pmu_r32(PWDSR_XRX(clk->module)) & clk->bits));
 } else {
  spin_lock(&g_pmu_lock);
  pmu_w32(pmu_r32(PWDCR(clk->module)) | clk->bits,
    PWDCR(clk->module));
  do {} while (--retry &&
        (!(pmu_r32(PWDSR(clk->module)) & clk->bits)));
  spin_unlock(&g_pmu_lock);
 }

 if (!retry)
  pr_warn("deactivating PMU module failed!");
}
