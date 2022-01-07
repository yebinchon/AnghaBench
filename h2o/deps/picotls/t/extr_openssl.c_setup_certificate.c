
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * base; int len; } ;
typedef TYPE_1__ ptls_iovec_t ;
typedef int X509 ;


 int RSA_CERTIFICATE ;
 int X509_free (int *) ;
 int i2d_X509 (int *,int **) ;
 int * x509_from_pem (int ) ;

__attribute__((used)) static void setup_certificate(ptls_iovec_t *dst)
{
    X509 *cert = x509_from_pem(RSA_CERTIFICATE);

    dst->base = ((void*)0);
    dst->len = i2d_X509(cert, &dst->base);

    X509_free(cert);
}
