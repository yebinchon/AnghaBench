
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {size_t len; int * base; } ;
typedef TYPE_1__ ptls_iovec_t ;



inline ptls_iovec_t ptls_iovec_init(const void *p, size_t len)
{



    ptls_iovec_t r;
    r.base = (uint8_t *)p;
    r.len = len;
    return r;
}
