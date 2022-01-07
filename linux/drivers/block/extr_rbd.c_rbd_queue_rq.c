
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;
struct request {int dummy; } ;
struct blk_mq_queue_data {struct request* rq; } ;
struct blk_mq_hw_ctx {int dummy; } ;
typedef int blk_status_t ;


 int BLK_STS_OK ;
 struct work_struct* blk_mq_rq_to_pdu (struct request*) ;
 int queue_work (int ,struct work_struct*) ;
 int rbd_wq ;

__attribute__((used)) static blk_status_t rbd_queue_rq(struct blk_mq_hw_ctx *hctx,
  const struct blk_mq_queue_data *bd)
{
 struct request *rq = bd->rq;
 struct work_struct *work = blk_mq_rq_to_pdu(rq);

 queue_work(rbd_wq, work);
 return BLK_STS_OK;
}
