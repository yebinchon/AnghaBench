
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
struct request {int rq_flags; } ;
struct bio {int bi_opf; } ;
typedef int gfp_t ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct bio*) ;
 int PTR_ERR (struct bio*) ;
 scalar_t__ READ ;
 int REQ_OP_MASK ;
 int RQF_COPY_USER ;
 struct bio* bio_copy_kern (struct request_queue*,void*,unsigned int,int ,int) ;
 struct bio* bio_map_kern (struct request_queue*,void*,unsigned int,int ) ;
 int bio_put (struct bio*) ;
 int blk_rq_aligned (struct request_queue*,unsigned long,unsigned int) ;
 int blk_rq_append_bio (struct request*,struct bio**) ;
 scalar_t__ object_is_on_stack (void*) ;
 int queue_max_hw_sectors (struct request_queue*) ;
 int req_op (struct request*) ;
 scalar_t__ rq_data_dir (struct request*) ;
 scalar_t__ unlikely (int) ;

int blk_rq_map_kern(struct request_queue *q, struct request *rq, void *kbuf,
      unsigned int len, gfp_t gfp_mask)
{
 int reading = rq_data_dir(rq) == READ;
 unsigned long addr = (unsigned long) kbuf;
 int do_copy = 0;
 struct bio *bio, *orig_bio;
 int ret;

 if (len > (queue_max_hw_sectors(q) << 9))
  return -EINVAL;
 if (!len || !kbuf)
  return -EINVAL;

 do_copy = !blk_rq_aligned(q, addr, len) || object_is_on_stack(kbuf);
 if (do_copy)
  bio = bio_copy_kern(q, kbuf, len, gfp_mask, reading);
 else
  bio = bio_map_kern(q, kbuf, len, gfp_mask);

 if (IS_ERR(bio))
  return PTR_ERR(bio);

 bio->bi_opf &= ~REQ_OP_MASK;
 bio->bi_opf |= req_op(rq);

 if (do_copy)
  rq->rq_flags |= RQF_COPY_USER;

 orig_bio = bio;
 ret = blk_rq_append_bio(rq, &bio);
 if (unlikely(ret)) {

  bio_put(orig_bio);
  return ret;
 }

 return 0;
}
