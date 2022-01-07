
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

int32_t h2o_qpack_lookup_content_type(h2o_iovec_t value, int *is_exact)
{
    if (h2o_memis(value.base, value.len, H2O_STRLIT("application/dns-message"))) {
        *is_exact = 1;
        return 44;
    }
    if (h2o_memis(value.base, value.len, H2O_STRLIT("application/javascript"))) {
        *is_exact = 1;
        return 45;
    }
    if (h2o_memis(value.base, value.len, H2O_STRLIT("application/json"))) {
        *is_exact = 1;
        return 46;
    }
    if (h2o_memis(value.base, value.len, H2O_STRLIT("application/x-www-form-urlencoded"))) {
        *is_exact = 1;
        return 47;
    }
    if (h2o_memis(value.base, value.len, H2O_STRLIT("image/gif"))) {
        *is_exact = 1;
        return 48;
    }
    if (h2o_memis(value.base, value.len, H2O_STRLIT("image/jpeg"))) {
        *is_exact = 1;
        return 49;
    }
    if (h2o_memis(value.base, value.len, H2O_STRLIT("image/png"))) {
        *is_exact = 1;
        return 50;
    }
    if (h2o_memis(value.base, value.len, H2O_STRLIT("text/css"))) {
        *is_exact = 1;
        return 51;
    }
    if (h2o_memis(value.base, value.len, H2O_STRLIT("text/html; charset=utf-8"))) {
        *is_exact = 1;
        return 52;
    }
    if (h2o_memis(value.base, value.len, H2O_STRLIT("text/plain"))) {
        *is_exact = 1;
        return 53;
    }
    if (h2o_memis(value.base, value.len, H2O_STRLIT("text/plain;charset=utf-8"))) {
        *is_exact = 1;
        return 54;
    }
    *is_exact = 0;
    return 44;
}
