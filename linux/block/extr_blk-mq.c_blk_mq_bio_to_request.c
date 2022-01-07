
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request {int write_hint; int __sector; int cmd_flags; } ;
struct TYPE_2__ {int bi_sector; } ;
struct bio {int bi_opf; int bi_write_hint; TYPE_1__ bi_iter; } ;


 int REQ_FAILFAST_MASK ;
 int REQ_RAHEAD ;
 int blk_account_io_start (struct request*,int) ;
 int blk_rq_bio_prep (struct request*,struct bio*,unsigned int) ;

__attribute__((used)) static void blk_mq_bio_to_request(struct request *rq, struct bio *bio,
  unsigned int nr_segs)
{
 if (bio->bi_opf & REQ_RAHEAD)
  rq->cmd_flags |= REQ_FAILFAST_MASK;

 rq->__sector = bio->bi_iter.bi_sector;
 rq->write_hint = bio->bi_write_hint;
 blk_rq_bio_prep(rq, bio, nr_segs);

 blk_account_io_start(rq, 1);
}
