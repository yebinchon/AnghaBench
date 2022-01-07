
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

int32_t h2o_qpack_lookup_strict_transport_security(h2o_iovec_t value, int *is_exact)
{
    if (h2o_memis(value.base, value.len, H2O_STRLIT("max-age=31536000"))) {
        *is_exact = 1;
        return 56;
    }
    if (h2o_memis(value.base, value.len, H2O_STRLIT("max-age=31536000; includesubdomains"))) {
        *is_exact = 1;
        return 57;
    }
    if (h2o_memis(value.base, value.len, H2O_STRLIT("max-age=31536000; includesubdomains; preload"))) {
        *is_exact = 1;
        return 58;
    }
    *is_exact = 0;
    return 56;
}
