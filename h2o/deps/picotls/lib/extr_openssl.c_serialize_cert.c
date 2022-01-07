
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char* base; int len; } ;
typedef TYPE_1__ ptls_iovec_t ;
typedef int X509 ;


 int PTLS_ERROR_NO_MEMORY ;
 int assert (int) ;
 void* i2d_X509 (int *,unsigned char**) ;
 unsigned char* malloc (int) ;

__attribute__((used)) static int serialize_cert(X509 *cert, ptls_iovec_t *dst)
{
    int len = i2d_X509(cert, ((void*)0));
    assert(len > 0);

    if ((dst->base = malloc(len)) == ((void*)0))
        return PTLS_ERROR_NO_MEMORY;
    unsigned char *p = dst->base;
    dst->len = i2d_X509(cert, &p);
    assert(len == dst->len);

    return 0;
}
