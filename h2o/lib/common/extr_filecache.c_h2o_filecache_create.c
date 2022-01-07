
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t capacity; int lru; int hash; } ;
typedef TYPE_1__ h2o_filecache_t ;


 int h2o_linklist_init_anchor (int *) ;
 TYPE_1__* h2o_mem_alloc (int) ;
 int kh_init (int ) ;
 int opencache_set ;

h2o_filecache_t *h2o_filecache_create(size_t capacity)
{
    h2o_filecache_t *cache = h2o_mem_alloc(sizeof(*cache));

    cache->hash = kh_init(opencache_set);
    h2o_linklist_init_anchor(&cache->lru);
    cache->capacity = capacity;

    return cache;
}
