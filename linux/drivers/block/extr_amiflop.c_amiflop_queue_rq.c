
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request {TYPE_1__* rq_disk; } ;
struct blk_mq_queue_data {struct request* rq; } ;
struct blk_mq_hw_ctx {int dummy; } ;
struct amiga_floppy_struct {int dummy; } ;
typedef int blk_status_t ;
struct TYPE_2__ {struct amiga_floppy_struct* private_data; } ;


 int BLK_STS_DEV_RESOURCE ;
 int BLK_STS_OK ;
 int amiflop_lock ;
 int amiflop_rw_cur_segment (struct amiga_floppy_struct*,struct request*) ;
 int blk_mq_end_request (struct request*,int ) ;
 int blk_mq_start_request (struct request*) ;
 int blk_rq_cur_bytes (struct request*) ;
 scalar_t__ blk_update_request (struct request*,int ,int ) ;
 int spin_trylock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static blk_status_t amiflop_queue_rq(struct blk_mq_hw_ctx *hctx,
         const struct blk_mq_queue_data *bd)
{
 struct request *rq = bd->rq;
 struct amiga_floppy_struct *floppy = rq->rq_disk->private_data;
 blk_status_t err;

 if (!spin_trylock_irq(&amiflop_lock))
  return BLK_STS_DEV_RESOURCE;

 blk_mq_start_request(rq);

 do {
  err = amiflop_rw_cur_segment(floppy, rq);
 } while (blk_update_request(rq, err, blk_rq_cur_bytes(rq)));
 blk_mq_end_request(rq, err);

 spin_unlock_irq(&amiflop_lock);
 return BLK_STS_OK;
}
