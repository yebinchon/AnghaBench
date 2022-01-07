
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio_set {int * bio_slab; int bvec_pool; int bio_pool; int * rescue_workqueue; } ;


 int bio_put_slab (struct bio_set*) ;
 int bioset_integrity_free (struct bio_set*) ;
 int destroy_workqueue (int *) ;
 int mempool_exit (int *) ;

void bioset_exit(struct bio_set *bs)
{
 if (bs->rescue_workqueue)
  destroy_workqueue(bs->rescue_workqueue);
 bs->rescue_workqueue = ((void*)0);

 mempool_exit(&bs->bio_pool);
 mempool_exit(&bs->bvec_pool);

 bioset_integrity_free(bs);
 if (bs->bio_slab)
  bio_put_slab(bs);
 bs->bio_slab = ((void*)0);
}
