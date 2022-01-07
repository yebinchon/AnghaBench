
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio_set {int bio_integrity_pool; int bvec_integrity_pool; } ;


 scalar_t__ biovec_init_pool (int *,int) ;
 int bip_slab ;
 int mempool_exit (int *) ;
 scalar_t__ mempool_init_slab_pool (int *,int,int ) ;
 scalar_t__ mempool_initialized (int *) ;

int bioset_integrity_create(struct bio_set *bs, int pool_size)
{
 if (mempool_initialized(&bs->bio_integrity_pool))
  return 0;

 if (mempool_init_slab_pool(&bs->bio_integrity_pool,
       pool_size, bip_slab))
  return -1;

 if (biovec_init_pool(&bs->bvec_integrity_pool, pool_size)) {
  mempool_exit(&bs->bio_integrity_pool);
  return -1;
 }

 return 0;
}
