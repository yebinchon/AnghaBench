
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct biovec_slab {int slab; } ;
typedef int mempool_t ;


 int BVEC_POOL_MAX ;
 struct biovec_slab* bvec_slabs ;
 int mempool_init_slab_pool (int *,int,int ) ;

int biovec_init_pool(mempool_t *pool, int pool_entries)
{
 struct biovec_slab *bp = bvec_slabs + BVEC_POOL_MAX;

 return mempool_init_slab_pool(pool, pool_entries, bp->slab);
}
