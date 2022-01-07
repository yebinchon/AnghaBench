
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {scalar_t__ len; int * base; } ;
typedef TYPE_1__ ptls_iovec_t ;
typedef int X509 ;


 int * d2i_X509 (int *,int const**,long) ;

__attribute__((used)) static X509 *to_x509(ptls_iovec_t vec)
{
    const uint8_t *p = vec.base;
    return d2i_X509(((void*)0), &p, (long)vec.len);
}
