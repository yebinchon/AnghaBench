
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int status; } ;
struct skd_request_context {int status; int retries; int err_info; TYPE_2__ completion; } ;
struct skd_device {int timer_countdown; int state; TYPE_1__* pdev; } ;
struct request {int dummy; } ;
struct TYPE_3__ {int dev; } ;


 int BLK_STS_IOERR ;
 int BLK_STS_OK ;





 int SKD_DRVR_STATE_BUSY_IMMINENT ;
 int SKD_MAX_RETRIES ;
 int SKD_TIMER_MINUTES (int) ;
 int blk_mq_complete_request (struct request*) ;
 int blk_mq_requeue_request (struct request*,int) ;
 int dev_info (int *,char*) ;
 int skd_check_status (struct skd_device*,int ,int *) ;
 int skd_log_skreq (struct skd_device*,struct skd_request_context*,char*) ;
 int skd_quiesce_dev (struct skd_device*) ;

__attribute__((used)) static void skd_resolve_req_exception(struct skd_device *skdev,
          struct skd_request_context *skreq,
          struct request *req)
{
 u8 cmp_status = skreq->completion.status;

 switch (skd_check_status(skdev, cmp_status, &skreq->err_info)) {
 case 130:
 case 129:
  skreq->status = BLK_STS_OK;
  blk_mq_complete_request(req);
  break;

 case 132:
  skd_log_skreq(skdev, skreq, "retry(busy)");
  blk_mq_requeue_request(req, 1);
  dev_info(&skdev->pdev->dev, "drive BUSY imminent\n");
  skdev->state = SKD_DRVR_STATE_BUSY_IMMINENT;
  skdev->timer_countdown = SKD_TIMER_MINUTES(20);
  skd_quiesce_dev(skdev);
  break;

 case 128:
  if (++skreq->retries < SKD_MAX_RETRIES) {
   skd_log_skreq(skdev, skreq, "retry");
   blk_mq_requeue_request(req, 1);
   break;
  }


 case 131:
 default:
  skreq->status = BLK_STS_IOERR;
  blk_mq_complete_request(req);
  break;
 }
}
