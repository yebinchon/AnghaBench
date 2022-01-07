
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ccu_sdm_internal {unsigned int table_size; TYPE_1__* table; } ;
struct ccu_common {int features; } ;
struct TYPE_2__ {unsigned long rate; } ;


 int CCU_FEATURE_SIGMA_DELTA_MOD ;

bool ccu_sdm_helper_has_rate(struct ccu_common *common,
        struct ccu_sdm_internal *sdm,
        unsigned long rate)
{
 unsigned int i;

 if (!(common->features & CCU_FEATURE_SIGMA_DELTA_MOD))
  return 0;

 for (i = 0; i < sdm->table_size; i++)
  if (sdm->table[i].rate == rate)
   return 1;

 return 0;
}
