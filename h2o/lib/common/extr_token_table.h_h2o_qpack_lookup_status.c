
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

int32_t h2o_qpack_lookup_status(h2o_iovec_t value, int *is_exact)
{
    if (h2o_memis(value.base, value.len, H2O_STRLIT("103"))) {
        *is_exact = 1;
        return 24;
    }
    if (h2o_memis(value.base, value.len, H2O_STRLIT("200"))) {
        *is_exact = 1;
        return 25;
    }
    if (h2o_memis(value.base, value.len, H2O_STRLIT("304"))) {
        *is_exact = 1;
        return 26;
    }
    if (h2o_memis(value.base, value.len, H2O_STRLIT("404"))) {
        *is_exact = 1;
        return 27;
    }
    if (h2o_memis(value.base, value.len, H2O_STRLIT("503"))) {
        *is_exact = 1;
        return 28;
    }
    if (h2o_memis(value.base, value.len, H2O_STRLIT("100"))) {
        *is_exact = 1;
        return 63;
    }
    if (h2o_memis(value.base, value.len, H2O_STRLIT("204"))) {
        *is_exact = 1;
        return 64;
    }
    if (h2o_memis(value.base, value.len, H2O_STRLIT("206"))) {
        *is_exact = 1;
        return 65;
    }
    if (h2o_memis(value.base, value.len, H2O_STRLIT("302"))) {
        *is_exact = 1;
        return 66;
    }
    if (h2o_memis(value.base, value.len, H2O_STRLIT("400"))) {
        *is_exact = 1;
        return 67;
    }
    if (h2o_memis(value.base, value.len, H2O_STRLIT("403"))) {
        *is_exact = 1;
        return 68;
    }
    if (h2o_memis(value.base, value.len, H2O_STRLIT("421"))) {
        *is_exact = 1;
        return 69;
    }
    if (h2o_memis(value.base, value.len, H2O_STRLIT("425"))) {
        *is_exact = 1;
        return 70;
    }
    if (h2o_memis(value.base, value.len, H2O_STRLIT("500"))) {
        *is_exact = 1;
        return 71;
    }
    *is_exact = 0;
    return 24;
}
