
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rq_map_data {int dummy; } ;
struct request_queue {unsigned long dma_pad_mask; } ;
struct request {struct bio* bio; int rq_flags; } ;
struct iov_iter {int dummy; } ;
struct bio {int dummy; } ;
typedef int gfp_t ;


 int BIO_USER_MAPPED ;
 int EINVAL ;
 int RQF_COPY_USER ;
 int __blk_rq_map_user_iov (struct request*,struct rq_map_data*,struct iov_iter*,int ,int) ;
 int __blk_rq_unmap_user (struct bio*) ;
 int bio_flagged (struct bio*,int ) ;
 unsigned long iov_iter_alignment (struct iov_iter const*) ;
 scalar_t__ iov_iter_count (struct iov_iter*) ;
 int iov_iter_gap_alignment (struct iov_iter const*) ;
 int iter_is_iovec (struct iov_iter const*) ;
 unsigned long queue_dma_alignment (struct request_queue*) ;
 int queue_virt_boundary (struct request_queue*) ;

int blk_rq_map_user_iov(struct request_queue *q, struct request *rq,
   struct rq_map_data *map_data,
   const struct iov_iter *iter, gfp_t gfp_mask)
{
 bool copy = 0;
 unsigned long align = q->dma_pad_mask | queue_dma_alignment(q);
 struct bio *bio = ((void*)0);
 struct iov_iter i;
 int ret = -EINVAL;

 if (!iter_is_iovec(iter))
  goto fail;

 if (map_data)
  copy = 1;
 else if (iov_iter_alignment(iter) & align)
  copy = 1;
 else if (queue_virt_boundary(q))
  copy = queue_virt_boundary(q) & iov_iter_gap_alignment(iter);

 i = *iter;
 do {
  ret =__blk_rq_map_user_iov(rq, map_data, &i, gfp_mask, copy);
  if (ret)
   goto unmap_rq;
  if (!bio)
   bio = rq->bio;
 } while (iov_iter_count(&i));

 if (!bio_flagged(bio, BIO_USER_MAPPED))
  rq->rq_flags |= RQF_COPY_USER;
 return 0;

unmap_rq:
 __blk_rq_unmap_user(bio);
fail:
 rq->bio = ((void*)0);
 return ret;
}
