
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int hash; int lru; } ;
typedef TYPE_1__ h2o_filecache_t ;


 int assert (int) ;
 int free (TYPE_1__*) ;
 int h2o_filecache_clear (TYPE_1__*) ;
 int h2o_linklist_is_empty (int *) ;
 int kh_destroy (int ,int ) ;
 scalar_t__ kh_size (int ) ;
 int opencache_set ;

void h2o_filecache_destroy(h2o_filecache_t *cache)
{
    h2o_filecache_clear(cache);
    assert(kh_size(cache->hash) == 0);
    assert(h2o_linklist_is_empty(&cache->lru));
    kh_destroy(opencache_set, cache->hash);
    free(cache);
}
