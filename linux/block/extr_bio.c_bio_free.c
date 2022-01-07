
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio_set {int bio_pool; int front_pad; int bvec_pool; } ;
struct bio {int bi_io_vec; struct bio_set* bi_pool; } ;


 int BVEC_POOL_IDX (struct bio*) ;
 int bio_uninit (struct bio*) ;
 int bvec_free (int *,int ,int ) ;
 int kfree (struct bio*) ;
 int mempool_free (void*,int *) ;

__attribute__((used)) static void bio_free(struct bio *bio)
{
 struct bio_set *bs = bio->bi_pool;
 void *p;

 bio_uninit(bio);

 if (bs) {
  bvec_free(&bs->bvec_pool, bio->bi_io_vec, BVEC_POOL_IDX(bio));




  p = bio;
  p -= bs->front_pad;

  mempool_free(p, &bs->bio_pool);
 } else {

  kfree(bio);
 }
}
