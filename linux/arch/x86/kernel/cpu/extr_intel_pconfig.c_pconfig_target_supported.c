
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum pconfig_target { ____Placeholder_pconfig_target } pconfig_target ;


 int BUILD_BUG_ON (int) ;
 int PCONFIG_TARGET_NR ;
 scalar_t__ WARN_ON_ONCE (int) ;
 unsigned long long targets_supported ;

int pconfig_target_supported(enum pconfig_target target)
{




 BUILD_BUG_ON(PCONFIG_TARGET_NR >= 64);

 if (WARN_ON_ONCE(target >= 64))
  return 0;
 return targets_supported & (1ULL << target);
}
