
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct skd_device {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int FIT_CONTROL ;
 int FIT_CR_ENABLE_INTERRUPTS ;
 int FIT_INT_MASK_HOST ;
 int SKD_READL (struct skd_device*,int ) ;
 int SKD_WRITEL (struct skd_device*,int ,int ) ;
 int dev_dbg (int *,char*,int ) ;

__attribute__((used)) static void skd_disable_interrupts(struct skd_device *skdev)
{
 u32 sense;

 sense = SKD_READL(skdev, FIT_CONTROL);
 sense &= ~FIT_CR_ENABLE_INTERRUPTS;
 SKD_WRITEL(skdev, sense, FIT_CONTROL);
 dev_dbg(&skdev->pdev->dev, "sense 0x%x\n", sense);




 SKD_WRITEL(skdev, ~0, FIT_INT_MASK_HOST);
}
