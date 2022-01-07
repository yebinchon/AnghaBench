
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {int bi_io_vec; int bi_iter; int bi_write_hint; int bi_ioprio; int bi_opf; int bi_partno; int bi_disk; scalar_t__ bi_pool; } ;


 int BIO_CLONED ;
 int BIO_THROTTLED ;
 int BUG_ON (int) ;
 scalar_t__ BVEC_POOL_IDX (struct bio*) ;
 int bio_clone_blkg_association (struct bio*,struct bio*) ;
 scalar_t__ bio_flagged (struct bio*,int ) ;
 int bio_set_flag (struct bio*,int ) ;
 int blkcg_bio_issue_init (struct bio*) ;

void __bio_clone_fast(struct bio *bio, struct bio *bio_src)
{
 BUG_ON(bio->bi_pool && BVEC_POOL_IDX(bio));





 bio->bi_disk = bio_src->bi_disk;
 bio->bi_partno = bio_src->bi_partno;
 bio_set_flag(bio, BIO_CLONED);
 if (bio_flagged(bio_src, BIO_THROTTLED))
  bio_set_flag(bio, BIO_THROTTLED);
 bio->bi_opf = bio_src->bi_opf;
 bio->bi_ioprio = bio_src->bi_ioprio;
 bio->bi_write_hint = bio_src->bi_write_hint;
 bio->bi_iter = bio_src->bi_iter;
 bio->bi_io_vec = bio_src->bi_io_vec;

 bio_clone_blkg_association(bio, bio_src);
 blkcg_bio_issue_init(bio);
}
