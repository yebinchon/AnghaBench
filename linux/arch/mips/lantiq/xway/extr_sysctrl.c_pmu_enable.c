
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int bits; int module; } ;


 int PWDCR (int ) ;
 int PWDCR_EN_XRX (int ) ;
 int PWDSR (int ) ;
 int PWDSR_XRX (int ) ;
 int g_pmu_lock ;
 scalar_t__ of_machine_is_compatible (char*) ;
 int panic (char*) ;
 int pmu_r32 (int ) ;
 int pmu_w32 (int,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int pmu_enable(struct clk *clk)
{
 int retry = 1000000;

 if (of_machine_is_compatible("lantiq,ar10")
     || of_machine_is_compatible("lantiq,grx390")) {
  pmu_w32(clk->bits, PWDCR_EN_XRX(clk->module));
  do {} while (--retry &&
        (!(pmu_r32(PWDSR_XRX(clk->module)) & clk->bits)));

 } else {
  spin_lock(&g_pmu_lock);
  pmu_w32(pmu_r32(PWDCR(clk->module)) & ~clk->bits,
    PWDCR(clk->module));
  do {} while (--retry &&
        (pmu_r32(PWDSR(clk->module)) & clk->bits));
  spin_unlock(&g_pmu_lock);
 }

 if (!retry)
  panic("activating PMU module failed!");

 return 0;
}
