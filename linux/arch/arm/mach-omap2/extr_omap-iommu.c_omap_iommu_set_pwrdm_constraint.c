
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct powerdomain {int dummy; } ;
struct platform_device {int dummy; } ;
struct omap_device {int hwmods_cnt; int * hwmods; } ;


 int EINVAL ;
 int ENODEV ;
 int PWRDM_POWER_ON ;
 int PWRDM_POWER_RET ;
 struct powerdomain* omap_hwmod_get_pwrdm (int ) ;
 int pwrdm_read_next_pwrst (struct powerdomain*) ;
 int pwrdm_set_next_pwrst (struct powerdomain*,int ) ;
 struct omap_device* to_omap_device (struct platform_device*) ;

int omap_iommu_set_pwrdm_constraint(struct platform_device *pdev, bool request,
        u8 *pwrst)
{
 struct powerdomain *pwrdm;
 struct omap_device *od;
 u8 next_pwrst;

 od = to_omap_device(pdev);
 if (!od)
  return -ENODEV;

 if (od->hwmods_cnt != 1)
  return -EINVAL;

 pwrdm = omap_hwmod_get_pwrdm(od->hwmods[0]);
 if (!pwrdm)
  return -EINVAL;

 if (request)
  *pwrst = pwrdm_read_next_pwrst(pwrdm);

 if (*pwrst > PWRDM_POWER_RET)
  return 0;

 next_pwrst = request ? PWRDM_POWER_ON : *pwrst;

 return pwrdm_set_next_pwrst(pwrdm, next_pwrst);
}
