
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int key; } ;
typedef TYPE_1__ ptls_openssl_sign_certificate_t ;


 int EVP_PKEY_free (int ) ;

void ptls_openssl_dispose_sign_certificate(ptls_openssl_sign_certificate_t *self)
{
    EVP_PKEY_free(self->key);
}
