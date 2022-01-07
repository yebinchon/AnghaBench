
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rq_map_data {int dummy; } ;
struct request_queue {int dummy; } ;
struct request {struct request_queue* q; } ;
struct iov_iter {int dummy; } ;
struct bio {int bi_opf; } ;
typedef int gfp_t ;


 scalar_t__ IS_ERR (struct bio*) ;
 int PTR_ERR (struct bio*) ;
 int REQ_OP_MASK ;
 int __blk_rq_unmap_user (struct bio*) ;
 struct bio* bio_copy_user_iov (struct request_queue*,struct rq_map_data*,struct iov_iter*,int ) ;
 int bio_get (struct bio*) ;
 struct bio* bio_map_user_iov (struct request_queue*,struct iov_iter*,int ) ;
 int blk_rq_append_bio (struct request*,struct bio**) ;
 int req_op (struct request*) ;

__attribute__((used)) static int __blk_rq_map_user_iov(struct request *rq,
  struct rq_map_data *map_data, struct iov_iter *iter,
  gfp_t gfp_mask, bool copy)
{
 struct request_queue *q = rq->q;
 struct bio *bio, *orig_bio;
 int ret;

 if (copy)
  bio = bio_copy_user_iov(q, map_data, iter, gfp_mask);
 else
  bio = bio_map_user_iov(q, iter, gfp_mask);

 if (IS_ERR(bio))
  return PTR_ERR(bio);

 bio->bi_opf &= ~REQ_OP_MASK;
 bio->bi_opf |= req_op(rq);

 orig_bio = bio;





 ret = blk_rq_append_bio(rq, &bio);
 if (ret) {
  __blk_rq_unmap_user(orig_bio);
  return ret;
 }
 bio_get(bio);

 return 0;
}
