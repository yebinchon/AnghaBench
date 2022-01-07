
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_3__ {int len; int base; } ;
typedef TYPE_1__ h2o_iovec_t ;


 int H2O_STRLIT (char*) ;
 scalar_t__ h2o_memis (int ,int ,int ) ;

int32_t h2o_qpack_lookup_method(h2o_iovec_t value, int *is_exact)
{
    if (h2o_memis(value.base, value.len, H2O_STRLIT("CONNECT"))) {
        *is_exact = 1;
        return 15;
    }
    if (h2o_memis(value.base, value.len, H2O_STRLIT("DELETE"))) {
        *is_exact = 1;
        return 16;
    }
    if (h2o_memis(value.base, value.len, H2O_STRLIT("GET"))) {
        *is_exact = 1;
        return 17;
    }
    if (h2o_memis(value.base, value.len, H2O_STRLIT("HEAD"))) {
        *is_exact = 1;
        return 18;
    }
    if (h2o_memis(value.base, value.len, H2O_STRLIT("OPTIONS"))) {
        *is_exact = 1;
        return 19;
    }
    if (h2o_memis(value.base, value.len, H2O_STRLIT("POST"))) {
        *is_exact = 1;
        return 20;
    }
    if (h2o_memis(value.base, value.len, H2O_STRLIT("PUT"))) {
        *is_exact = 1;
        return 21;
    }
    *is_exact = 0;
    return 15;
}
