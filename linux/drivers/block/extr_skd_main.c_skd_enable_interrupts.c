
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct skd_device {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int FIT_CONTROL ;
 scalar_t__ FIT_CR_ENABLE_INTERRUPTS ;
 int FIT_INT_MASK_HOST ;
 scalar_t__ FIT_ISH_COMPLETION_POSTED ;
 scalar_t__ FIT_ISH_FW_STATE_CHANGE ;
 scalar_t__ FIT_ISH_MSG_FROM_DEV ;
 scalar_t__ SKD_READL (struct skd_device*,int ) ;
 int SKD_WRITEL (struct skd_device*,scalar_t__,int ) ;
 int dev_dbg (int *,char*,scalar_t__) ;

__attribute__((used)) static void skd_enable_interrupts(struct skd_device *skdev)
{
 u32 val;


 val = FIT_ISH_FW_STATE_CHANGE +
       FIT_ISH_COMPLETION_POSTED + FIT_ISH_MSG_FROM_DEV;



 SKD_WRITEL(skdev, ~val, FIT_INT_MASK_HOST);
 dev_dbg(&skdev->pdev->dev, "interrupt mask=0x%x\n", ~val);

 val = SKD_READL(skdev, FIT_CONTROL);
 val |= FIT_CR_ENABLE_INTERRUPTS;
 dev_dbg(&skdev->pdev->dev, "control=0x%x\n", val);
 SKD_WRITEL(skdev, val, FIT_CONTROL);
}
