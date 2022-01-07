
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cert_store; } ;
typedef TYPE_1__ ptls_openssl_verify_certificate_t ;


 int X509_STORE_free (int ) ;
 int free (TYPE_1__*) ;

void ptls_openssl_dispose_verify_certificate(ptls_openssl_verify_certificate_t *self)
{
    X509_STORE_free(self->cert_store);
    free(self);
}
