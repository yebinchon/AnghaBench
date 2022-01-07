
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccu_frac_internal {unsigned long* rates; } ;
struct ccu_common {int features; } ;


 int CCU_FEATURE_FRACTIONAL ;

bool ccu_frac_helper_has_rate(struct ccu_common *common,
         struct ccu_frac_internal *cf,
         unsigned long rate)
{
 if (!(common->features & CCU_FEATURE_FRACTIONAL))
  return 0;

 return (cf->rates[0] == rate) || (cf->rates[1] == rate);
}
