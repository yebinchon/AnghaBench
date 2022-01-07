
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509 ;
typedef int BIO ;


 int * BIO_new_file (char*,char*) ;
 int PEM_read_bio_X509 (int *,int **,int *,int *) ;
 int * X509_new () ;

X509* openPemFile(char* filename)
{

    X509* cert = X509_new();
    BIO* bio_cert = BIO_new_file(filename, "rb");
    PEM_read_bio_X509(bio_cert, &cert, ((void*)0), ((void*)0));
    return cert;
}
