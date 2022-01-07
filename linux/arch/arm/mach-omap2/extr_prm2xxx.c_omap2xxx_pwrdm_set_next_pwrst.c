
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct powerdomain {int prcm_offs; } ;


 int EINVAL ;
 int OMAP24XX_PWRDM_POWER_OFF ;
 int OMAP24XX_PWRDM_POWER_ON ;
 int OMAP24XX_PWRDM_POWER_RET ;
 int OMAP2_PM_PWSTCTRL ;
 int OMAP_POWERSTATE_MASK ;
 int OMAP_POWERSTATE_SHIFT ;



 int omap2_prm_rmw_mod_reg_bits (int ,int,int ,int ) ;

__attribute__((used)) static int omap2xxx_pwrdm_set_next_pwrst(struct powerdomain *pwrdm, u8 pwrst)
{
 u8 omap24xx_pwrst;

 switch (pwrst) {
 case 130:
  omap24xx_pwrst = OMAP24XX_PWRDM_POWER_OFF;
  break;
 case 128:
  omap24xx_pwrst = OMAP24XX_PWRDM_POWER_RET;
  break;
 case 129:
  omap24xx_pwrst = OMAP24XX_PWRDM_POWER_ON;
  break;
 default:
  return -EINVAL;
 }

 omap2_prm_rmw_mod_reg_bits(OMAP_POWERSTATE_MASK,
       (omap24xx_pwrst << OMAP_POWERSTATE_SHIFT),
       pwrdm->prcm_offs, OMAP2_PM_PWSTCTRL);
 return 0;
}
