
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ len; int base; } ;
struct TYPE_6__ {TYPE_1__ key; } ;
typedef TYPE_2__ h2o_cache_ref_t ;


 scalar_t__ memcmp (int ,int ,scalar_t__) ;

__attribute__((used)) static int is_equal(h2o_cache_ref_t *x, h2o_cache_ref_t *y)
{
    return x->key.len == y->key.len && memcmp(x->key.base, y->key.base, x->key.len) == 0;
}
