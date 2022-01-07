
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ccu_sdm_internal {unsigned int table_size; TYPE_1__* table; } ;
struct ccu_common {int features; } ;
struct TYPE_2__ {unsigned long rate; unsigned long m; unsigned long n; } ;


 int CCU_FEATURE_SIGMA_DELTA_MOD ;
 int EINVAL ;

int ccu_sdm_helper_get_factors(struct ccu_common *common,
          struct ccu_sdm_internal *sdm,
          unsigned long rate,
          unsigned long *m, unsigned long *n)
{
 unsigned int i;

 if (!(common->features & CCU_FEATURE_SIGMA_DELTA_MOD))
  return -EINVAL;

 for (i = 0; i < sdm->table_size; i++)
  if (sdm->table[i].rate == rate) {
   *m = sdm->table[i].m;
   *n = sdm->table[i].n;
   return 0;
  }


 return -EINVAL;
}
