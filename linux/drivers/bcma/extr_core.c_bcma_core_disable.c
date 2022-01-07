
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bcma_device {int dummy; } ;


 int BCMA_IOCTL ;
 int BCMA_RESET_CTL ;
 int BCMA_RESET_CTL_RESET ;
 int BCMA_RESET_ST ;
 int bcma_aread32 (struct bcma_device*,int ) ;
 int bcma_awrite32 (struct bcma_device*,int ,int) ;
 int bcma_core_wait_value (struct bcma_device*,int ,int ,int ,int) ;
 int udelay (int) ;

void bcma_core_disable(struct bcma_device *core, u32 flags)
{
 if (bcma_aread32(core, BCMA_RESET_CTL) & BCMA_RESET_CTL_RESET)
  return;

 bcma_core_wait_value(core, BCMA_RESET_ST, ~0, 0, 300);

 bcma_awrite32(core, BCMA_RESET_CTL, BCMA_RESET_CTL_RESET);
 bcma_aread32(core, BCMA_RESET_CTL);
 udelay(1);

 bcma_awrite32(core, BCMA_IOCTL, flags);
 bcma_aread32(core, BCMA_IOCTL);
 udelay(10);
}
