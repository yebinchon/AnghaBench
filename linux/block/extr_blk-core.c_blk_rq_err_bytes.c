
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request {unsigned int cmd_flags; int rq_flags; struct bio* bio; } ;
struct TYPE_2__ {scalar_t__ bi_size; } ;
struct bio {unsigned int bi_opf; TYPE_1__ bi_iter; struct bio* bi_next; } ;


 int BUG_ON (int) ;
 unsigned int REQ_FAILFAST_MASK ;
 int RQF_MIXED_MERGE ;
 unsigned int blk_rq_bytes (struct request const*) ;

unsigned int blk_rq_err_bytes(const struct request *rq)
{
 unsigned int ff = rq->cmd_flags & REQ_FAILFAST_MASK;
 unsigned int bytes = 0;
 struct bio *bio;

 if (!(rq->rq_flags & RQF_MIXED_MERGE))
  return blk_rq_bytes(rq);
 for (bio = rq->bio; bio; bio = bio->bi_next) {
  if ((bio->bi_opf & ff) != ff)
   break;
  bytes += bio->bi_iter.bi_size;
 }


 BUG_ON(blk_rq_bytes(rq) && !bytes);
 return bytes;
}
