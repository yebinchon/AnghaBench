
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptls_openssl_sign_certificate_t ;
typedef int EVP_PKEY ;
typedef int BIO ;


 int BIO_free (int *) ;
 int * BIO_new_mem_buf (int ,int) ;
 int EVP_PKEY_free (int *) ;
 int * PEM_read_bio_PrivateKey (int *,int *,int *,int *) ;
 int RSA_PRIVATE_KEY ;
 int assert (int) ;
 int ptls_openssl_init_sign_certificate (int *,int *) ;
 scalar_t__ strlen (int ) ;

__attribute__((used)) static void setup_sign_certificate(ptls_openssl_sign_certificate_t *sc)
{
    BIO *bio = BIO_new_mem_buf(RSA_PRIVATE_KEY, (int)strlen(RSA_PRIVATE_KEY));
    EVP_PKEY *pkey = PEM_read_bio_PrivateKey(bio, ((void*)0), ((void*)0), ((void*)0));
    assert(pkey != ((void*)0) || !"failed to load private key");
    BIO_free(bio);

    ptls_openssl_init_sign_certificate(sc, pkey);

    EVP_PKEY_free(pkey);
}
