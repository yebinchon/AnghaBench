
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct ccu_sdm_internal {unsigned int table_size; TYPE_1__* table; scalar_t__ tuning_reg; } ;
struct ccu_common {int features; int hw; scalar_t__ base; } ;
struct TYPE_2__ {scalar_t__ pattern; scalar_t__ m; scalar_t__ n; unsigned long rate; } ;


 int CCU_FEATURE_SIGMA_DELTA_MOD ;
 int clk_hw_get_name (int *) ;
 int pr_debug (char*,int ,...) ;
 scalar_t__ readl (scalar_t__) ;

unsigned long ccu_sdm_helper_read_rate(struct ccu_common *common,
           struct ccu_sdm_internal *sdm,
           u32 m, u32 n)
{
 unsigned int i;
 u32 reg;

 pr_debug("%s: Read sigma-delta modulation setting\n",
   clk_hw_get_name(&common->hw));

 if (!(common->features & CCU_FEATURE_SIGMA_DELTA_MOD))
  return 0;

 pr_debug("%s: clock is sigma-delta modulated\n",
   clk_hw_get_name(&common->hw));

 reg = readl(common->base + sdm->tuning_reg);

 pr_debug("%s: pattern reg is 0x%x",
   clk_hw_get_name(&common->hw), reg);

 for (i = 0; i < sdm->table_size; i++)
  if (sdm->table[i].pattern == reg &&
      sdm->table[i].m == m && sdm->table[i].n == n)
   return sdm->table[i].rate;


 return 0;
}
