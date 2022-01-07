
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcma_drv_cc_b {scalar_t__ mii; } ;


 int iounmap (scalar_t__) ;

void bcma_core_chipcommon_b_free(struct bcma_drv_cc_b *ccb)
{
 if (ccb->mii)
  iounmap(ccb->mii);
}
