
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct request {TYPE_3__* bio; TYPE_1__* q; } ;
struct loop_device {scalar_t__ lo_state; int use_dio; int worker; } ;
struct loop_cmd {int use_aio; int work; int * css; } ;
struct blk_mq_queue_data {struct request* rq; } ;
struct blk_mq_hw_ctx {int dummy; } ;
typedef int blk_status_t ;
struct TYPE_6__ {scalar_t__ bi_blkg; } ;
struct TYPE_5__ {int css; } ;
struct TYPE_4__ {struct loop_device* queuedata; } ;


 int BLK_STS_IOERR ;
 int BLK_STS_OK ;
 scalar_t__ Lo_bound ;



 TYPE_2__* bio_blkcg (TYPE_3__*) ;
 struct loop_cmd* blk_mq_rq_to_pdu (struct request*) ;
 int blk_mq_start_request (struct request*) ;
 int css_get (int *) ;
 int kthread_queue_work (int *,int *) ;
 int req_op (struct request*) ;

__attribute__((used)) static blk_status_t loop_queue_rq(struct blk_mq_hw_ctx *hctx,
  const struct blk_mq_queue_data *bd)
{
 struct request *rq = bd->rq;
 struct loop_cmd *cmd = blk_mq_rq_to_pdu(rq);
 struct loop_device *lo = rq->q->queuedata;

 blk_mq_start_request(rq);

 if (lo->lo_state != Lo_bound)
  return BLK_STS_IOERR;

 switch (req_op(rq)) {
 case 129:
 case 130:
 case 128:
  cmd->use_aio = 0;
  break;
 default:
  cmd->use_aio = lo->use_dio;
  break;
 }
  cmd->css = ((void*)0);
 kthread_queue_work(&lo->worker, &cmd->work);

 return BLK_STS_OK;
}
