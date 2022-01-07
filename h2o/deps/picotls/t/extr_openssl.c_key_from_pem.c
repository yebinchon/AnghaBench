
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptls_key_exchange_context_t ;
typedef int EVP_PKEY ;
typedef int BIO ;


 int BIO_free (int *) ;
 int * BIO_new_mem_buf (void*,int) ;
 int EVP_PKEY_free (int *) ;
 int * PEM_read_bio_PrivateKey (int *,int *,int *,int *) ;
 int assert (int ) ;
 int ptls_openssl_create_key_exchange (int **,int *) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static ptls_key_exchange_context_t *key_from_pem(const char *pem)
{
    BIO *bio = BIO_new_mem_buf((void *)pem, (int)strlen(pem));
    EVP_PKEY *pkey = PEM_read_bio_PrivateKey(bio, ((void*)0), ((void*)0), ((void*)0));
    assert(pkey != ((void*)0) && "failed to load private key");
    BIO_free(bio);

    ptls_key_exchange_context_t *ctx;
    int ret = ptls_openssl_create_key_exchange(&ctx, pkey);
    assert(ret == 0 && "failed to setup private key");

    EVP_PKEY_free(pkey);
    return ctx;
}
