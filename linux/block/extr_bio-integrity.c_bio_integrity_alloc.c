
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio_set {int bio_integrity_pool; int bvec_integrity_pool; } ;
struct bio_integrity_payload {unsigned int bip_max_vcnt; unsigned long bip_slab; struct bio* bip_bio; scalar_t__ bip_inline_vecs; scalar_t__ bip_vec; } ;
struct bio {int bi_opf; struct bio_integrity_payload* bi_integrity; struct bio_set* bi_pool; } ;
typedef int gfp_t ;


 unsigned int BIP_INLINE_VECS ;
 int ENOMEM ;
 struct bio_integrity_payload* ERR_PTR (int ) ;
 int REQ_INTEGRITY ;
 int bip_inline_vecs ;
 scalar_t__ bvec_alloc (int ,unsigned int,unsigned long*,int *) ;
 unsigned int bvec_nr_vecs (unsigned long) ;
 struct bio_integrity_payload* kmalloc (int ,int ) ;
 struct bio_integrity_payload* mempool_alloc (int *,int ) ;
 int mempool_free (struct bio_integrity_payload*,int *) ;
 int mempool_initialized (int *) ;
 int memset (struct bio_integrity_payload*,int ,int) ;
 int struct_size (struct bio_integrity_payload*,int ,unsigned int) ;
 scalar_t__ unlikely (int) ;

struct bio_integrity_payload *bio_integrity_alloc(struct bio *bio,
        gfp_t gfp_mask,
        unsigned int nr_vecs)
{
 struct bio_integrity_payload *bip;
 struct bio_set *bs = bio->bi_pool;
 unsigned inline_vecs;

 if (!bs || !mempool_initialized(&bs->bio_integrity_pool)) {
  bip = kmalloc(struct_size(bip, bip_inline_vecs, nr_vecs), gfp_mask);
  inline_vecs = nr_vecs;
 } else {
  bip = mempool_alloc(&bs->bio_integrity_pool, gfp_mask);
  inline_vecs = BIP_INLINE_VECS;
 }

 if (unlikely(!bip))
  return ERR_PTR(-ENOMEM);

 memset(bip, 0, sizeof(*bip));

 if (nr_vecs > inline_vecs) {
  unsigned long idx = 0;

  bip->bip_vec = bvec_alloc(gfp_mask, nr_vecs, &idx,
       &bs->bvec_integrity_pool);
  if (!bip->bip_vec)
   goto err;
  bip->bip_max_vcnt = bvec_nr_vecs(idx);
  bip->bip_slab = idx;
 } else {
  bip->bip_vec = bip->bip_inline_vecs;
  bip->bip_max_vcnt = inline_vecs;
 }

 bip->bip_bio = bio;
 bio->bi_integrity = bip;
 bio->bi_opf |= REQ_INTEGRITY;

 return bip;
err:
 mempool_free(bip, &bs->bio_integrity_pool);
 return ERR_PTR(-ENOMEM);
}
