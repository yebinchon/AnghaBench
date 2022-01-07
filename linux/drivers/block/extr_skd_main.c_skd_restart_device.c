
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct skd_device {int timer_countdown; int state; scalar_t__ last_mtd; int drive_state; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int FIT_INT_DEF_MASK ;
 int FIT_INT_STATUS_HOST ;
 int FIT_SR_DRIVE_STATE_MASK ;
 int FIT_STATUS ;
 int SKD_DRVR_STATE_RESTARTING ;
 int SKD_READL (struct skd_device*,int ) ;
 int SKD_RESTARTING_TIMO ;
 int SKD_WRITEL (struct skd_device*,int ,int ) ;
 int dev_dbg (int *,char*,int ) ;
 int skd_soft_reset (struct skd_device*) ;

__attribute__((used)) static void skd_restart_device(struct skd_device *skdev)
{
 u32 state;


 SKD_WRITEL(skdev, FIT_INT_DEF_MASK, FIT_INT_STATUS_HOST);

 state = SKD_READL(skdev, FIT_STATUS);

 dev_dbg(&skdev->pdev->dev, "drive status=0x%x\n", state);

 state &= FIT_SR_DRIVE_STATE_MASK;
 skdev->drive_state = state;
 skdev->last_mtd = 0;

 skdev->state = SKD_DRVR_STATE_RESTARTING;
 skdev->timer_countdown = SKD_RESTARTING_TIMO;

 skd_soft_reset(skdev);
}
