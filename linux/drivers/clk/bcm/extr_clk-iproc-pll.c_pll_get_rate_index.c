
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iproc_pll {int num_vco_entries; TYPE_1__* vco_param; } ;
struct TYPE_2__ {unsigned int rate; } ;


 int EINVAL ;

__attribute__((used)) static int pll_get_rate_index(struct iproc_pll *pll, unsigned int target_rate)
{
 int i;

 for (i = 0; i < pll->num_vco_entries; i++)
  if (target_rate == pll->vco_param[i].rate)
   break;

 if (i >= pll->num_vco_entries)
  return -EINVAL;

 return i;
}
