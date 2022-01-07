
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int duration; } ;
typedef TYPE_1__ h2o_cache_t ;



uint64_t h2o_cache_get_duration(h2o_cache_t *cache)
{
    return cache->duration;
}
