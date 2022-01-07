
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio_set {int bvec_integrity_pool; int bio_integrity_pool; } ;


 int mempool_exit (int *) ;

void bioset_integrity_free(struct bio_set *bs)
{
 mempool_exit(&bs->bio_integrity_pool);
 mempool_exit(&bs->bvec_integrity_pool);
}
