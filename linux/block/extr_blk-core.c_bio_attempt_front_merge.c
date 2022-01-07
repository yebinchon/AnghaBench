
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request {int const cmd_flags; int __data_len; int __sector; struct bio* bio; int q; } ;
struct TYPE_2__ {scalar_t__ bi_size; int bi_sector; } ;
struct bio {int const bi_opf; TYPE_1__ bi_iter; struct bio* bi_next; } ;


 int const REQ_FAILFAST_MASK ;
 int blk_account_io_start (struct request*,int) ;
 int blk_rq_set_mixed_merge (struct request*) ;
 int ll_front_merge_fn (struct request*,struct bio*,unsigned int) ;
 int rq_qos_merge (int ,struct request*,struct bio*) ;
 int trace_block_bio_frontmerge (int ,struct request*,struct bio*) ;

bool bio_attempt_front_merge(struct request *req, struct bio *bio,
  unsigned int nr_segs)
{
 const int ff = bio->bi_opf & REQ_FAILFAST_MASK;

 if (!ll_front_merge_fn(req, bio, nr_segs))
  return 0;

 trace_block_bio_frontmerge(req->q, req, bio);
 rq_qos_merge(req->q, req, bio);

 if ((req->cmd_flags & REQ_FAILFAST_MASK) != ff)
  blk_rq_set_mixed_merge(req);

 bio->bi_next = req->bio;
 req->bio = bio;

 req->__sector = bio->bi_iter.bi_sector;
 req->__data_len += bio->bi_iter.bi_size;

 blk_account_io_start(req, 0);
 return 1;
}
