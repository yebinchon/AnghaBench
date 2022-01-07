
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_10__ {int member_0; } ;
typedef TYPE_2__ h2o_iovec_t ;
typedef int h2o_cache_t ;
struct TYPE_9__ {int len; int base; } ;
struct TYPE_11__ {TYPE_1__ value; } ;
typedef TYPE_3__ h2o_cache_ref_t ;


 int H2O_CACHE_FLAG_EARLY_UPDATE ;
 int H2O_STRLIT (char*) ;
 int bytes_destroyed ;
 int * h2o_cache_create (int ,int,int,int ) ;
 int h2o_cache_delete (int *,int,TYPE_2__,int ) ;
 int h2o_cache_destroy (int *) ;
 TYPE_3__* h2o_cache_fetch (int *,int,TYPE_2__,int ) ;
 int h2o_cache_release (int *,TYPE_3__*) ;
 int h2o_cache_set (int *,int,TYPE_2__,int ,int ) ;
 int h2o_iovec_init (int ) ;
 int h2o_memis (int ,int ,int ) ;
 int ok (int) ;
 int on_destroy ;

void test_lib__common__cache_c(void)
{
    h2o_cache_t *cache = h2o_cache_create(H2O_CACHE_FLAG_EARLY_UPDATE, 1024, 1000, on_destroy);
    uint64_t now = 0;
    h2o_iovec_t key = {H2O_STRLIT("key")};
    h2o_cache_ref_t *ref;


    ref = h2o_cache_fetch(cache, now, key, 0);
    ok(ref == ((void*)0));


    h2o_cache_set(cache, now, key, 0, h2o_iovec_init(H2O_STRLIT("value")));


    h2o_cache_delete(cache, now, key, 0);
    ref = h2o_cache_fetch(cache, now, key, 0);
    ok(ref == ((void*)0));


    h2o_cache_set(cache, now, key, 0, h2o_iovec_init(H2O_STRLIT("value")));


    ref = h2o_cache_fetch(cache, now, key, 0);
    ok(h2o_memis(ref->value.base, ref->value.len, H2O_STRLIT("value")));
    h2o_cache_release(cache, ref);


    now += 999;


    ref = h2o_cache_fetch(cache, now, key, 0);
    ok(ref == ((void*)0));


    ref = h2o_cache_fetch(cache, now, key, 0);
    ok(h2o_memis(ref->value.base, ref->value.len, H2O_STRLIT("value")));
    h2o_cache_release(cache, ref);


    h2o_cache_set(cache, now, key, 0, h2o_iovec_init(H2O_STRLIT("value2")));


    ref = h2o_cache_fetch(cache, now, key, 0);
    ok(h2o_memis(ref->value.base, ref->value.len, H2O_STRLIT("value2")));
    h2o_cache_release(cache, ref);

    ok(bytes_destroyed == 10);

    h2o_cache_destroy(cache);

    ok(bytes_destroyed == 16);
}
