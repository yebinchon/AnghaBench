
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509 ;
typedef int BIO ;


 int BIO_free (int *) ;
 int * BIO_new_mem_buf (void*,int) ;
 int * PEM_read_bio_X509 (int *,int *,int *,int *) ;
 int assert (int ) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static X509 *x509_from_pem(const char *pem)
{
    BIO *bio = BIO_new_mem_buf((void *)pem, (int)strlen(pem));
    X509 *cert = PEM_read_bio_X509(bio, ((void*)0), ((void*)0), ((void*)0));
    assert(cert != ((void*)0) && "failed to load certificate");
    BIO_free(bio);
    return cert;
}
