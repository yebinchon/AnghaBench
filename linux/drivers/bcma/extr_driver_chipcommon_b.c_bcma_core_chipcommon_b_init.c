
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bcma_drv_cc_b {int setup_done; int mii; TYPE_1__* core; } ;
struct TYPE_2__ {int * addr_s; } ;


 int BCMA_CORE_SIZE ;
 int ENOMEM ;
 int ioremap_nocache (int ,int ) ;

int bcma_core_chipcommon_b_init(struct bcma_drv_cc_b *ccb)
{
 if (ccb->setup_done)
  return 0;

 ccb->setup_done = 1;
 ccb->mii = ioremap_nocache(ccb->core->addr_s[1], BCMA_CORE_SIZE);
 if (!ccb->mii)
  return -ENOMEM;

 return 0;
}
