
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int flags; int mutex; int table; } ;
typedef TYPE_1__ h2o_cache_t ;


 int H2O_CACHE_FLAG_MULTITHREADED ;
 int free (TYPE_1__*) ;
 int h2o_cache_clear (TYPE_1__*) ;
 int kh_destroy (TYPE_1__*,int ) ;
 int pthread_mutex_destroy (int *) ;

void h2o_cache_destroy(h2o_cache_t *cache)
{
    h2o_cache_clear(cache);
    kh_destroy(cache, cache->table);
    if ((cache->flags & H2O_CACHE_FLAG_MULTITHREADED) != 0)
        pthread_mutex_destroy(&cache->mutex);
    free(cache);
}
