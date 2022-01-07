
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bio_vec {int dummy; } ;
struct bio_set {unsigned int front_pad; int bio_pool; int bvec_pool; scalar_t__ rescue_workqueue; } ;
struct bio {unsigned long bi_flags; unsigned int bi_max_vecs; struct bio_vec* bi_io_vec; struct bio_set* bi_pool; struct bio_vec* bi_inline_vecs; } ;
typedef scalar_t__ gfp_t ;
struct TYPE_2__ {int * bio_list; } ;


 unsigned int BIO_INLINE_VECS ;
 unsigned long BVEC_POOL_OFFSET ;
 unsigned int UIO_MAXIOV ;
 scalar_t__ WARN_ON_ONCE (int) ;
 scalar_t__ __GFP_DIRECT_RECLAIM ;
 int bio_init (struct bio*,int *,int ) ;
 int bio_list_empty (int *) ;
 struct bio_vec* bvec_alloc (scalar_t__,unsigned int,unsigned long*,int *) ;
 TYPE_1__* current ;
 void* kmalloc (int,scalar_t__) ;
 void* mempool_alloc (int *,scalar_t__) ;
 int mempool_free (void*,int *) ;
 int mempool_initialized (int *) ;
 int punt_bios_to_rescuer (struct bio_set*) ;
 scalar_t__ unlikely (int) ;

struct bio *bio_alloc_bioset(gfp_t gfp_mask, unsigned int nr_iovecs,
        struct bio_set *bs)
{
 gfp_t saved_gfp = gfp_mask;
 unsigned front_pad;
 unsigned inline_vecs;
 struct bio_vec *bvl = ((void*)0);
 struct bio *bio;
 void *p;

 if (!bs) {
  if (nr_iovecs > UIO_MAXIOV)
   return ((void*)0);

  p = kmalloc(sizeof(struct bio) +
       nr_iovecs * sizeof(struct bio_vec),
       gfp_mask);
  front_pad = 0;
  inline_vecs = nr_iovecs;
 } else {

  if (WARN_ON_ONCE(!mempool_initialized(&bs->bvec_pool) &&
     nr_iovecs > 0))
   return ((void*)0);
  if (current->bio_list &&
      (!bio_list_empty(&current->bio_list[0]) ||
       !bio_list_empty(&current->bio_list[1])) &&
      bs->rescue_workqueue)
   gfp_mask &= ~__GFP_DIRECT_RECLAIM;

  p = mempool_alloc(&bs->bio_pool, gfp_mask);
  if (!p && gfp_mask != saved_gfp) {
   punt_bios_to_rescuer(bs);
   gfp_mask = saved_gfp;
   p = mempool_alloc(&bs->bio_pool, gfp_mask);
  }

  front_pad = bs->front_pad;
  inline_vecs = BIO_INLINE_VECS;
 }

 if (unlikely(!p))
  return ((void*)0);

 bio = p + front_pad;
 bio_init(bio, ((void*)0), 0);

 if (nr_iovecs > inline_vecs) {
  unsigned long idx = 0;

  bvl = bvec_alloc(gfp_mask, nr_iovecs, &idx, &bs->bvec_pool);
  if (!bvl && gfp_mask != saved_gfp) {
   punt_bios_to_rescuer(bs);
   gfp_mask = saved_gfp;
   bvl = bvec_alloc(gfp_mask, nr_iovecs, &idx, &bs->bvec_pool);
  }

  if (unlikely(!bvl))
   goto err_free;

  bio->bi_flags |= idx << BVEC_POOL_OFFSET;
 } else if (nr_iovecs) {
  bvl = bio->bi_inline_vecs;
 }

 bio->bi_pool = bs;
 bio->bi_max_vecs = nr_iovecs;
 bio->bi_io_vec = bvl;
 return bio;

err_free:
 mempool_free(p, &bs->bio_pool);
 return ((void*)0);
}
