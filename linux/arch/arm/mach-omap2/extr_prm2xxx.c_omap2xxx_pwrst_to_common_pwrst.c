
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int EINVAL ;



 int PWRDM_POWER_OFF ;
 int PWRDM_POWER_ON ;
 int PWRDM_POWER_RET ;

__attribute__((used)) static int omap2xxx_pwrst_to_common_pwrst(u8 omap2xxx_pwrst)
{
 u8 pwrst;

 switch (omap2xxx_pwrst) {
 case 130:
  pwrst = PWRDM_POWER_OFF;
  break;
 case 128:
  pwrst = PWRDM_POWER_RET;
  break;
 case 129:
  pwrst = PWRDM_POWER_ON;
  break;
 default:
  return -EINVAL;
 }

 return pwrst;
}
