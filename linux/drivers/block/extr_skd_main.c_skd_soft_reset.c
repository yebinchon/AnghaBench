
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct skd_device {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int FIT_CONTROL ;
 int FIT_CR_SOFT_RESET ;
 int SKD_READL (struct skd_device*,int ) ;
 int SKD_WRITEL (struct skd_device*,int ,int ) ;
 int dev_dbg (int *,char*,int ) ;

__attribute__((used)) static void skd_soft_reset(struct skd_device *skdev)
{
 u32 val;

 val = SKD_READL(skdev, FIT_CONTROL);
 val |= (FIT_CR_SOFT_RESET);
 dev_dbg(&skdev->pdev->dev, "control=0x%x\n", val);
 SKD_WRITEL(skdev, val, FIT_CONTROL);
}
