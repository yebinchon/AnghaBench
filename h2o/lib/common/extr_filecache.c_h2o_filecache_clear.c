
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ khiter_t ;
struct TYPE_4__ {int hash; } ;
typedef TYPE_1__ h2o_filecache_t ;


 int assert (int) ;
 scalar_t__ kh_begin (int ) ;
 scalar_t__ kh_end (int ) ;
 int kh_exist (int ,scalar_t__) ;
 scalar_t__ kh_size (int ) ;
 int release_from_cache (TYPE_1__*,scalar_t__) ;

void h2o_filecache_clear(h2o_filecache_t *cache)
{
    khiter_t iter;
    for (iter = kh_begin(cache->hash); iter != kh_end(cache->hash); ++iter) {
        if (!kh_exist(cache->hash, iter))
            continue;
        release_from_cache(cache, iter);
    }
    assert(kh_size(cache->hash) == 0);
}
