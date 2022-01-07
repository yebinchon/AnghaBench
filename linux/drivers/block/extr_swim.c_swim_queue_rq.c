
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct swim_priv {int lock; } ;
struct request {int bio; } ;
struct floppy_state {int disk_in; struct swim_priv* swd; } ;
struct blk_mq_queue_data {struct request* rq; } ;
struct blk_mq_hw_ctx {TYPE_1__* queue; } ;
typedef int blk_status_t ;
struct TYPE_2__ {struct floppy_state* queuedata; } ;


 int BLK_STS_DEV_RESOURCE ;
 int BLK_STS_IOERR ;
 int BLK_STS_OK ;
 scalar_t__ WRITE ;
 int __blk_mq_end_request (struct request*,int ) ;
 int bio_data (int ) ;
 int blk_mq_start_request (struct request*) ;
 int blk_rq_cur_bytes (struct request*) ;
 int blk_rq_cur_sectors (struct request*) ;
 int blk_rq_pos (struct request*) ;
 scalar_t__ blk_update_request (struct request*,int ,int ) ;
 int floppy_read_sectors (struct floppy_state*,int ,int ,int ) ;
 scalar_t__ rq_data_dir (struct request*) ;
 int spin_trylock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static blk_status_t swim_queue_rq(struct blk_mq_hw_ctx *hctx,
      const struct blk_mq_queue_data *bd)
{
 struct floppy_state *fs = hctx->queue->queuedata;
 struct swim_priv *swd = fs->swd;
 struct request *req = bd->rq;
 blk_status_t err;

 if (!spin_trylock_irq(&swd->lock))
  return BLK_STS_DEV_RESOURCE;

 blk_mq_start_request(req);

 if (!fs->disk_in || rq_data_dir(req) == WRITE) {
  err = BLK_STS_IOERR;
  goto out;
 }

 do {
  err = floppy_read_sectors(fs, blk_rq_pos(req),
       blk_rq_cur_sectors(req),
       bio_data(req->bio));
 } while (blk_update_request(req, err, blk_rq_cur_bytes(req)));
 __blk_mq_end_request(req, err);

 err = BLK_STS_OK;
out:
 spin_unlock_irq(&swd->lock);
 return err;

}
