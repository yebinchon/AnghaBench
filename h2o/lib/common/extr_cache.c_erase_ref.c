
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int khiter_t ;
struct TYPE_10__ {int size; int table; } ;
typedef TYPE_2__ h2o_cache_t ;
struct TYPE_9__ {scalar_t__ len; } ;
struct TYPE_11__ {TYPE_1__ value; int _age_link; int _lru_link; } ;
typedef TYPE_3__ h2o_cache_ref_t ;


 int h2o_cache_release (TYPE_2__*,TYPE_3__*) ;
 int h2o_linklist_unlink (int *) ;
 int kh_del (TYPE_2__*,int ,int ) ;
 TYPE_3__* kh_key (int ,int ) ;

__attribute__((used)) static void erase_ref(h2o_cache_t *cache, khiter_t iter, int reuse)
{
    h2o_cache_ref_t *ref = kh_key(cache->table, iter);

    if (!reuse)
        kh_del(cache, cache->table, iter);
    h2o_linklist_unlink(&ref->_lru_link);
    h2o_linklist_unlink(&ref->_age_link);
    cache->size -= ref->value.len;

    h2o_cache_release(cache, ref);
}
