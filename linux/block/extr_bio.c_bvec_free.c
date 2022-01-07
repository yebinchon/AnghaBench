
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct biovec_slab {int slab; } ;
struct bio_vec {int dummy; } ;
typedef int mempool_t ;


 int BIO_BUG_ON (int) ;
 unsigned int BVEC_POOL_MAX ;
 unsigned int BVEC_POOL_NR ;
 struct biovec_slab* bvec_slabs ;
 int kmem_cache_free (int ,struct bio_vec*) ;
 int mempool_free (struct bio_vec*,int *) ;

void bvec_free(mempool_t *pool, struct bio_vec *bv, unsigned int idx)
{
 if (!idx)
  return;
 idx--;

 BIO_BUG_ON(idx >= BVEC_POOL_NR);

 if (idx == BVEC_POOL_MAX) {
  mempool_free(bv, pool);
 } else {
  struct biovec_slab *bvs = bvec_slabs + idx;

  kmem_cache_free(bvs->slab, bv);
 }
}
