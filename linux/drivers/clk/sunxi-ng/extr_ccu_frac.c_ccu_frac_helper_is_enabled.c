
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccu_frac_internal {int enable; } ;
struct ccu_common {int features; scalar_t__ reg; scalar_t__ base; } ;


 int CCU_FEATURE_FRACTIONAL ;
 int readl (scalar_t__) ;

bool ccu_frac_helper_is_enabled(struct ccu_common *common,
    struct ccu_frac_internal *cf)
{
 if (!(common->features & CCU_FEATURE_FRACTIONAL))
  return 0;

 return !(readl(common->base + common->reg) & cf->enable);
}
