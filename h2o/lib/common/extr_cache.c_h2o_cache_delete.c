
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint64_t ;
typedef int khiter_t ;
struct TYPE_12__ {int len; int base; } ;
typedef TYPE_1__ h2o_iovec_t ;
struct TYPE_13__ {int table; } ;
typedef TYPE_2__ h2o_cache_t ;
struct TYPE_14__ {scalar_t__ keyhash; TYPE_1__ key; } ;
typedef TYPE_3__ h2o_cache_ref_t ;
typedef scalar_t__ h2o_cache_hashcode_t ;


 int erase_ref (TYPE_2__*,int ,int ) ;
 scalar_t__ h2o_cache_calchash (int ,int ) ;
 int kh_end (int ) ;
 int kh_get (TYPE_2__*,int ,TYPE_3__*) ;
 int lock_cache (TYPE_2__*) ;
 int purge (TYPE_2__*,int ) ;
 int unlock_cache (TYPE_2__*) ;

void h2o_cache_delete(h2o_cache_t *cache, uint64_t now, h2o_iovec_t key, h2o_cache_hashcode_t keyhash)
{
    h2o_cache_ref_t search_key;
    khiter_t iter;

    if (keyhash == 0)
        keyhash = h2o_cache_calchash(key.base, key.len);
    search_key.key = key;
    search_key.keyhash = keyhash;

    lock_cache(cache);

    purge(cache, now);

    if ((iter = kh_get(cache, cache->table, &search_key)) != kh_end(cache->table))
        erase_ref(cache, iter, 0);

    unlock_cache(cache);
}
