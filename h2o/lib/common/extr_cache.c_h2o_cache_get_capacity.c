
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t capacity; } ;
typedef TYPE_1__ h2o_cache_t ;



size_t h2o_cache_get_capacity(h2o_cache_t *cache)
{
    return cache->capacity;
}
