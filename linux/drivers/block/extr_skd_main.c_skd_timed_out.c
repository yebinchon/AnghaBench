
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct skd_device {TYPE_2__* pdev; } ;
struct request {TYPE_1__* q; } ;
typedef enum blk_eh_timer_return { ____Placeholder_blk_eh_timer_return } blk_eh_timer_return ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {struct skd_device* queuedata; } ;


 int BLK_EH_RESET_TIMER ;
 int blk_mq_unique_tag (struct request*) ;
 int dev_err (int *,char*,int ) ;

__attribute__((used)) static enum blk_eh_timer_return skd_timed_out(struct request *req,
           bool reserved)
{
 struct skd_device *skdev = req->q->queuedata;

 dev_err(&skdev->pdev->dev, "request with tag %#x timed out\n",
  blk_mq_unique_tag(req));

 return BLK_EH_RESET_TIMER;
}
