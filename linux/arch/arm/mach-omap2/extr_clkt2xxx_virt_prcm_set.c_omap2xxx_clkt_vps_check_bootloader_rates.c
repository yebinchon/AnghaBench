
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prcm_config {int flags; scalar_t__ xtal_speed; unsigned long dpll_speed; scalar_t__ mpu_speed; } ;


 int cpu_mask ;
 struct prcm_config const* curr_prcm_set ;
 unsigned long omap2xxx_clk_get_core_rate () ;
 struct prcm_config* rate_table ;
 scalar_t__ sys_ck_rate ;

void omap2xxx_clkt_vps_check_bootloader_rates(void)
{
 const struct prcm_config *prcm = ((void*)0);
 unsigned long rate;

 rate = omap2xxx_clk_get_core_rate();
 for (prcm = rate_table; prcm->mpu_speed; prcm++) {
  if (!(prcm->flags & cpu_mask))
   continue;
  if (prcm->xtal_speed != sys_ck_rate)
   continue;
  if (prcm->dpll_speed <= rate)
   break;
 }
 curr_prcm_set = prcm;
}
