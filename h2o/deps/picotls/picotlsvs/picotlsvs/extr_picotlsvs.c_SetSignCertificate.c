
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int super; } ;
typedef TYPE_1__ ptls_openssl_sign_certificate_t ;
struct TYPE_6__ {int * sign_certificate; } ;
typedef TYPE_2__ ptls_context_t ;
typedef int EVP_PKEY ;
typedef int BIO ;


 int * BIO_new_file (char const*,char*) ;
 int EVP_PKEY_free (int *) ;
 int * EVP_PKEY_new () ;
 int PEM_read_bio_PrivateKey (int *,int **,int *,int *) ;
 int ptls_openssl_init_sign_certificate (TYPE_1__*,int *) ;

void SetSignCertificate(char const * keypem, ptls_context_t * ctx)
{
    static ptls_openssl_sign_certificate_t signer;

    EVP_PKEY *pkey = EVP_PKEY_new();
    BIO* bio_key = BIO_new_file(keypem, "rb");
    PEM_read_bio_PrivateKey(bio_key, &pkey, ((void*)0), ((void*)0));
    ptls_openssl_init_sign_certificate(&signer, pkey);
    EVP_PKEY_free(pkey);
    ctx->sign_certificate = &signer.super;
}
