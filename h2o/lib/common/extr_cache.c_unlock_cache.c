
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; int mutex; } ;
typedef TYPE_1__ h2o_cache_t ;


 int H2O_CACHE_FLAG_MULTITHREADED ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static void unlock_cache(h2o_cache_t *cache)
{
    if ((cache->flags & H2O_CACHE_FLAG_MULTITHREADED) != 0)
        pthread_mutex_unlock(&cache->mutex);
}
