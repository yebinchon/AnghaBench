
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct ubd {int lock; } ;
struct request {int dummy; } ;
struct blk_mq_queue_data {struct request* rq; } ;
struct blk_mq_hw_ctx {TYPE_1__* queue; } ;
typedef int blk_status_t ;
struct TYPE_2__ {struct ubd* queuedata; } ;


 int BLK_STS_DEV_RESOURCE ;
 int BLK_STS_NOTSUPP ;
 int BLK_STS_OK ;
 int BLK_STS_RESOURCE ;
 int ENOMEM ;





 int WARN_ON_ONCE (int) ;
 int blk_mq_start_request (struct request*) ;
 int blk_rq_pos (struct request*) ;
 int queue_rw_req (struct blk_mq_hw_ctx*,struct request*) ;
 int req_op (struct request*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int ubd_queue_one_vec (struct blk_mq_hw_ctx*,struct request*,int,int *) ;

__attribute__((used)) static blk_status_t ubd_queue_rq(struct blk_mq_hw_ctx *hctx,
     const struct blk_mq_queue_data *bd)
{
 struct ubd *ubd_dev = hctx->queue->queuedata;
 struct request *req = bd->rq;
 int ret = 0, res = BLK_STS_OK;

 blk_mq_start_request(req);

 spin_lock_irq(&ubd_dev->lock);

 switch (req_op(req)) {

 case 131:
  ret = ubd_queue_one_vec(hctx, req, 0, ((void*)0));
  break;
 case 130:
 case 129:
  ret = queue_rw_req(hctx, req);
  break;
 case 132:
 case 128:
  ret = ubd_queue_one_vec(hctx, req, (u64)blk_rq_pos(req) << 9, ((void*)0));
  break;
 default:
  WARN_ON_ONCE(1);
  res = BLK_STS_NOTSUPP;
 }

 spin_unlock_irq(&ubd_dev->lock);

 if (ret < 0) {
  if (ret == -ENOMEM)
   res = BLK_STS_RESOURCE;
  else
   res = BLK_STS_DEV_RESOURCE;
 }

 return res;
}
