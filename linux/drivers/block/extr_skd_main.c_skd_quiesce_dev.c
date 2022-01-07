
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct skd_device {int state; TYPE_1__* pdev; int queue; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int blk_mq_stop_hw_queues (int ) ;
 int dev_dbg (int *,char*,...) ;

__attribute__((used)) static int skd_quiesce_dev(struct skd_device *skdev)
{
 int rc = 0;

 switch (skdev->state) {
 case 137:
 case 136:
  dev_dbg(&skdev->pdev->dev, "stopping queue\n");
  blk_mq_stop_hw_queues(skdev->queue);
  break;
 case 135:
 case 129:
 case 128:
 case 133:
 case 134:
 case 130:
 case 132:
 case 131:
 default:
  rc = -EINVAL;
  dev_dbg(&skdev->pdev->dev, "state [%d] not implemented\n",
   skdev->state);
 }
 return rc;
}
