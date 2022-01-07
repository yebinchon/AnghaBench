
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct skd_device {TYPE_1__* pdev; int state; } ;
struct TYPE_2__ {int dev; } ;


 int SKD_DRVR_STATE_DISAPPEARED ;
 int dev_err (int *,char*) ;

__attribute__((used)) static void skd_drive_disappeared(struct skd_device *skdev)
{
 skdev->state = SKD_DRVR_STATE_DISAPPEARED;
 dev_err(&skdev->pdev->dev, "Drive DISAPPEARED\n");
}
