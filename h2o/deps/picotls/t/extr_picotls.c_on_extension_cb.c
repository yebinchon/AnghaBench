
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
typedef int ptls_t ;
typedef int ptls_on_extension_t ;
struct TYPE_3__ {int base; } ;
typedef TYPE_1__ ptls_iovec_t ;


 int assert (int ) ;

__attribute__((used)) static int on_extension_cb(ptls_on_extension_t *self, ptls_t *tls, uint8_t hstype, uint16_t exttype, ptls_iovec_t extdata)
{
    assert(extdata.base);
    return 0;
}
